library ieee;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;

use work.SSD.all;



entity SPI_Comms is
    Generic (   
        N                   :       positive  := 32;                                    -- Serial word length
        CPOL                :       std_logic := '0';                                    
        CPHA                :       std_logic := '0';                                    
        PREFETCH            :       positive  := 3  
        );                                  
    Port(
        clk50               : in    std_logic;
        
        s_spi_ssel_i        : in    std_logic;
        s_spi_sck_i         : in    std_logic;
        s_spi_mosi_i        : in    std_logic;
        s_spi_miso_o        : out   std_logic;
 
        ssd_hex0            : out	std_logic_vector(6 downto 0)    := (others => '1');
        leds                : out   std_logic_vector(25 downto 0)   := (others => '0');
        
        reset_key           : in    std_logic;                                          -- assigned to KEY0 for reset
        led_hb              : out   std_logic;                                          -- assigned to LEDG8 for Heartbeat
        
        lcd_e               : out   std_logic;
        lcd_rs              : out   std_logic;
        lcd_rw              : out   std_logic;
        lcd_db              : out   std_logic_vector(7 downto 4)
        
        );
end SPI_Comms;

architecture Structural of SPI_Comms is

    component spi_slave is
    generic (    
        N                   :       positive    := 32;  
        CPOL                :       std_logic   := '0'; 
        CPHA                :       std_logic   := '0'; 
        PREFETCH            :       positive    := 3
    );
    port (  
        clk_i               : IN    std_logic := 'X';  
        spi_ssel_i          : IN    std_logic := 'X'; 
        spi_sck_i           : IN    std_logic := 'X'; 
        spi_mosi_i          : IN    std_logic := 'X';
        spi_miso_o          : OUT   std_logic := 'X';
        di_req_o            : OUT   std_logic;
        di_i                : IN    std_logic_vector (N-1 downto 0) := (others => 'X'); 
        wren_i              : IN    std_logic := 'X';                                   
        wr_ack_o            : OUT   std_logic;                                       
        do_valid_o          : OUT   std_logic;                                     
        do_o                : OUT   std_logic_vector (N-1 downto 0)                     
    );          
    end component spi_slave;
    
 
    component lcd16x2_ctrl is
    generic (
        CLK_PERIOD_NS       : positive := 20
    );
    port (
        clk                 : in    std_logic;
        rst                 : in    std_logic;
        lcd_e               : out   std_logic;
        lcd_rs              : out   std_logic;
        lcd_rw              : out   std_logic;
        lcd_db              : out   std_logic_vector(7 downto 4);
        line1_buffer        : in    std_logic_vector(127 downto 0);  -- 16x8bit
        line2_buffer        : in    std_logic_vector(127 downto 0)
    ); 
    end component lcd16x2_ctrl;
    

    type SPI_STATE_T is (	
        SPI_IDLE,
        LOAD_DATA,
        SEND_DATA
    );
    
    type lcd_display_state_t is (
        LCD_WAIT_MSG,
        LCD_RX_MSG,
        LCD_RESET_MSG,
        LCD_MSG_DELAY
    );
    
    signal led_cmd          :       std_logic_vector(5 downto 0)    := (others => '0');

    signal spi_curr_state   :       SPI_STATE_T := SPI_IDLE;
    signal spi_next_state   :       SPI_STATE_T := SPI_IDLE;
    
    signal lcd_curr_state   :       lcd_display_state_t := LCD_WAIT_MSG;
    signal lcd_next_state   :       lcd_display_state_t := LCD_WAIT_MSG;
    
    signal s_di_i           :       std_logic_vector (N-1 downto 0) := (others => 'X');     
    signal s_wren_i         :       std_logic := 'X';                                     
    signal s_di_req_o       :       std_logic;                                         
    signal s_do_valid_o     :       std_logic;
    signal s_do_o           :       std_logic_vector (N-1 downto 0) := (others => '0');
    signal valid_data       :       std_logic_vector (N-1 downto 0);

    signal reset_n          :       std_logic;
    signal clk_1hz          :       std_logic;

    -- component generics
    constant CLK_PERIOD_NS  :       positive := 10;  -- 100 Mhz
 
    -- component ports
    signal line1_buffer     :       std_logic_vector(127 downto 0) := (others => '0');
    signal line2_buffer     :       std_logic_vector(127 downto 0) := (others => '0');
    
begin

    instance_spi_slave: spi_slave
    generic map (
        N               => N, 
        CPOL            => CPOL, 
        CPHA            => CPHA, 
        PREFETCH        => PREFETCH
    )
    port map(
        clk_i           => clk50,
        spi_ssel_i      => s_spi_ssel_i,
        spi_sck_i       => s_spi_sck_i,
        spi_mosi_i      => s_spi_mosi_i,
        spi_miso_o      => s_spi_miso_o,
        di_req_o        => s_di_req_o,
        di_i            => s_di_i,
        wren_i          => s_wren_i,
        do_valid_o      => s_do_valid_o,
        do_o            => s_do_o
    );

    
     -- component instantiation
    instance_lcd16x2: lcd16x2_ctrl
    generic map (
        CLK_PERIOD_NS   => CLK_PERIOD_NS
    )
    port map (
        clk             => clk50,
        rst             => reset_n,
        lcd_e           => lcd_e,
        lcd_rs          => lcd_rs,
        lcd_rw          => lcd_rw,
        lcd_db          => lcd_db,
        line1_buffer    => line1_buffer,
        line2_buffer    => line2_buffer
    );
 
  
    reset_n <= not reset_key;
    led_hb <= clk_1hz;
  
    --=============================================================================================
    -- Heartbeat clock
    --=============================================================================================
    heartbeat: process( clk50)
        variable count: integer := 0;
    begin
        if rising_edge(clk50) then
            if count = 25999999 then
                count := 0;
                clk_1hz <= not clk_1hz;
            else
                count := count + 1;
            end if;
        end if;
    end process heartbeat;

  
    --=============================================================================================
    --  FSM state
    --=============================================================================================
    fsm_state: process( clk50, reset_n)
    begin
        
        if rising_edge(clk50) then
            if reset_n then
                lcd_curr_state <= LCD_RESET_MSG;
            else
                spi_curr_state <= spi_next_state;
                lcd_curr_state <= lcd_next_state;
            end if;
        end if;
        
    end process fsm_state;
 

 
    --=============================================================================================
    --  Process RX data
    --=============================================================================================
    slave_rx: process (clk50, s_do_valid_o)
    begin
        
        if rising_edge(clk50) then
        
            if reset_n then
                ssd_hex0 <= (others => '1');
                leds <= (others => '0');
             
            elsif s_do_valid_o = '1' then
      
                SSD_decode(s_do_o(29 downto 26), ssd_hex0);
                
                leds(25 downto 0) <= s_do_o(25 downto 0);
                led_cmd(5 downto 0) <= s_do_o(31 downto 26);

            end if;
            
        end if;
        
     end process slave_rx;
     
    --=============================================================================================
    --  Process TX data
    --=============================================================================================
    slave_tx: process (clk50, s_do_valid_o, spi_curr_state)
    begin
        
        if rising_edge(clk50) then

            case spi_curr_state is
                when SPI_IDLE =>
                    s_wren_i <= '0';
                    s_di_i <= (others => 'X');
                    
                    
                    if s_do_valid_o = '1' then
                        s_di_i <= s_do_o;
                        spi_next_state <= SEND_DATA;
                    else
                        spi_next_state <= SPI_IDLE;
                    end if;

                when SEND_DATA =>
                    s_wren_i <= '1';
                    spi_next_state <= SPI_IDLE;
                    
                when others =>
                    spi_next_state <= SPI_IDLE;
                    
            end case;
            
        end if;
        
    end process slave_tx;
                
 
    --=============================================================================================
    --  Display LCD messages
    --=============================================================================================
    lcd_message: process (clk50, s_do_valid_o)
    
        variable count: integer := 0;
    begin
        
        if rising_edge(clk50) then
            
            case lcd_curr_state is
                when LCD_WAIT_MSG =>
                
                    line1_buffer(127 downto 120) <= X"57"; -- W
                    line1_buffer(119 downto 112) <= X"61"; -- a
                    line1_buffer(111 downto 104) <= X"69"; -- i
                    line1_buffer(103 downto 96)  <= X"74"; -- t
                    line1_buffer(95 downto 88)   <= X"69"; -- i
                    line1_buffer(87 downto 80)   <= X"6E"; -- n
                    line1_buffer(79 downto 72)   <= X"67"; -- g
                    line1_buffer(71 downto 64)   <= X"20"; --
                    line1_buffer(63 downto 56)   <= X"66"; -- f
                    line1_buffer(55 downto 48)   <= X"6F"; -- o
                    line1_buffer(47 downto 40)   <= X"72"; -- r
                    line1_buffer(39 downto 32)   <= X"20"; --
                    line1_buffer(31 downto 24)   <= X"64"; -- d 
                    line1_buffer(23 downto 16)   <= X"61"; -- a
                    line1_buffer(15 downto 8)    <= X"74"; -- t
                    line1_buffer(7 downto 0)     <= X"61"; -- a
                    
                    line2_buffer(127 downto 120) <= X"20"; --
                    line2_buffer(119 downto 112) <= X"20"; --
                    line2_buffer(111 downto 104) <= X"20"; --
                    line2_buffer(103 downto 96)  <= X"20"; --
                    line2_buffer(95 downto 88)   <= X"20"; --
                    line2_buffer(87 downto 80)   <= X"20"; --
                    line2_buffer(79 downto 72)   <= X"20"; --
                    line2_buffer(71 downto 64)   <= X"20"; --
                    line2_buffer(63 downto 56)   <= X"20"; --
                    line2_buffer(55 downto 48)   <= X"20"; --
                    line2_buffer(47 downto 40)   <= X"20"; --
                    line2_buffer(39 downto 32)   <= X"20"; --
                    line2_buffer(31 downto 24)   <= X"20"; --
                    line2_buffer(23 downto 16)   <= X"20"; -- 
                    line2_buffer(15 downto 8)    <= X"20"; -- 
                    line2_buffer(7 downto 0)     <= X"20"; -- 
                
               
                    if s_do_valid_o = '1' then
                        lcd_next_state <= LCD_RX_MSG;
                    else
                        lcd_next_state <= LCD_WAIT_MSG;
                    end if;
                        
                when LCD_RX_MSG =>
                
                    line1_buffer(127 downto 120) <= X"20"; -- 
                    line1_buffer(119 downto 112) <= X"52"; -- R
                    line1_buffer(111 downto 104) <= X"65"; -- e
                    line1_buffer(103 downto 96)  <= X"63"; -- c
                    line1_buffer(95 downto 88)   <= X"65"; -- e
                    line1_buffer(87 downto 80)   <= X"69"; -- i
                    line1_buffer(79 downto 72)   <= X"76"; -- v
                    line1_buffer(71 downto 64)   <= X"69"; -- i
                    line1_buffer(63 downto 56)   <= X"6E"; -- n
                    line1_buffer(55 downto 48)   <= X"67"; -- g
                    line1_buffer(47 downto 40)   <= X"20"; -- 
                    line1_buffer(39 downto 32)   <= X"64"; -- d
                    line1_buffer(31 downto 24)   <= X"61"; -- a 
                    line1_buffer(23 downto 16)   <= X"74"; -- t
                    line1_buffer(15 downto 8)    <= X"61"; -- a
                    line1_buffer(7 downto 0)     <= X"20"; -- 
                    
                    line2_buffer(127 downto 120) <= X"20"; --
                    line2_buffer(119 downto 112) <= X"20"; --
                    line2_buffer(111 downto 104) <= X"20"; --
                    line2_buffer(103 downto 96)  <= X"20"; --
                    line2_buffer(95 downto 88)   <= X"20"; --
                    line2_buffer(87 downto 80)   <= X"20"; --
                    line2_buffer(79 downto 72)   <= X"20"; --
                    line2_buffer(71 downto 64)   <= X"20"; --
                    line2_buffer(63 downto 56)   <= X"20"; --
                    line2_buffer(55 downto 48)   <= X"20"; --
                    line2_buffer(47 downto 40)   <= X"20"; --
                    line2_buffer(39 downto 32)   <= X"20"; --
                    line2_buffer(31 downto 24)   <= X"20"; --
                    line2_buffer(23 downto 16)   <= X"20"; -- 
                    line2_buffer(15 downto 8)    <= X"20"; -- 
                    line2_buffer(7 downto 0)     <= X"20"; -- 
                    
                    lcd_next_state <= LCD_MSG_DELAY;
                    
                when LCD_RESET_MSG =>
                
                    line1_buffer(127 downto 120) <= X"20"; -- 
                    line1_buffer(119 downto 112) <= X"20"; -- 
                    line1_buffer(111 downto 104) <= X"20"; -- 
                    line1_buffer(103 downto 96)  <= X"20"; -- 
                    line1_buffer(95 downto 88)   <= X"52"; -- R
                    line1_buffer(87 downto 80)   <= X"65"; -- e
                    line1_buffer(79 downto 72)   <= X"73"; -- s
                    line1_buffer(71 downto 64)   <= X"65"; -- e
                    line1_buffer(63 downto 56)   <= X"74"; -- t
                    line1_buffer(55 downto 48)   <= X"69"; -- i
                    line1_buffer(47 downto 40)   <= X"6E"; -- n
                    line1_buffer(39 downto 32)   <= X"67"; -- g
                    line1_buffer(31 downto 24)   <= X"20"; --  
                    line1_buffer(23 downto 16)   <= X"20"; -- 
                    line1_buffer(15 downto 8)    <= X"20"; -- 
                    line1_buffer(7 downto 0)     <= X"20"; -- 
                    
                    line2_buffer(127 downto 120) <= X"20"; --
                    line2_buffer(119 downto 112) <= X"20"; --
                    line2_buffer(111 downto 104) <= X"20"; --
                    line2_buffer(103 downto 96)  <= X"20"; --
                    line2_buffer(95 downto 88)   <= X"20"; --
                    line2_buffer(87 downto 80)   <= X"20"; --
                    line2_buffer(79 downto 72)   <= X"20"; --
                    line2_buffer(71 downto 64)   <= X"20"; --
                    line2_buffer(63 downto 56)   <= X"20"; --
                    line2_buffer(55 downto 48)   <= X"20"; --
                    line2_buffer(47 downto 40)   <= X"20"; --
                    line2_buffer(39 downto 32)   <= X"20"; --
                    line2_buffer(31 downto 24)   <= X"20"; --
                    line2_buffer(23 downto 16)   <= X"20"; -- 
                    line2_buffer(15 downto 8)    <= X"20"; -- 
                    line2_buffer(7 downto 0)     <= X"20"; -- 
                    
                    lcd_next_state <= LCD_MSG_DELAY;

                when LCD_MSG_DELAY =>
                    if count = 25999999 then
                        count := 0;
                        lcd_next_state <= LCD_WAIT_MSG;
                    else
                        count := count + 1;
                    end if;
            
            end case;
                
       
        end if;         -- rising_edge
    
    end process lcd_message;
                 

        
end Structural;

