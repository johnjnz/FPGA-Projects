library ieee;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;

use work.SSD.all;



entity SPI_Comms is
    Generic (   
        N                   :       positive  := 32;                                  -- Serial word length
        CPOL                :       std_logic := '0';                                    
        CPHA                :       std_logic := '0';                                    
        PREFETCH            :       positive  := 3  
        );                                  
    Port(
        s_clk_i             : IN    std_logic;
        s_spi_ssel_i        : IN    std_logic;
        s_spi_sck_i         : IN    std_logic;
        s_spi_mosi_i        : IN    std_logic;
        s_spi_miso_o        : OUT   std_logic;
 
        ssd_hex0            : OUT	STD_LOGIC_VECTOR(6 downto 0)    := (others => 'X');
		ssd_hex1            : OUT	STD_LOGIC_VECTOR(6 downto 0)    := (others => 'X');
        ssd_hex2            : OUT	STD_LOGIC_VECTOR(6 downto 0)    := (others => 'X');
        ssd_hex3            : OUT	STD_LOGIC_VECTOR(6 downto 0)    := (others => 'X');
        leds                : OUT   STD_LOGIC_VECTOR(25 downto 0)   := (others => '0')
        );
end SPI_Comms;

architecture Structural of SPI_Comms is

    component spi_slave is
    Generic (    
        N                   :       positive    := 32;  
        CPOL                :       std_logic   := '0'; 
        CPHA                :       std_logic   := '0'; 
        PREFETCH            :       positive    := 3);
    Port (  
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
    
    type STATE_T is (	
        IDLE,
        LOAD_DATA,
        SEND_DATA
    );
    
    signal all_zeros        :       std_logic_vector(3 downto 0)    :=(others => '0');
    
    signal led_cmd          :       STD_LOGIC_VECTOR(5 downto 0)    := (others => '0');

    signal current_state    :       STATE_T := IDLE;
    signal next_state       :       STATE_T := IDLE;
    
    signal s_di_i           :       std_logic_vector (N-1 downto 0) := (others => 'X');     
    signal s_wren_i         :       std_logic := 'X';                                     
    signal s_di_req_o       :       std_logic;                                         
    signal s_do_valid_o     :       std_logic;
    signal s_do_o           :       std_logic_vector (N-1 downto 0);
    signal valid_data       :       std_logic_vector (N-1 downto 0);

                 
begin

    instance_spi_slave: spi_slave
    generic map (
        N           => N, 
        CPOL        => CPOL, 
        CPHA        => CPHA, 
        PREFETCH    => PREFETCH
    )
    port map(
        clk_i       => s_clk_i,
        spi_ssel_i  => s_spi_ssel_i,
        spi_sck_i   => s_spi_sck_i,
        spi_mosi_i  => s_spi_mosi_i,
        spi_miso_o  => s_spi_miso_o,
        di_req_o    => s_di_req_o,
        di_i        => s_di_i,
        wren_i      => s_wren_i,
        do_valid_o  => s_do_valid_o,
        do_o        => s_do_o
    );

 
    --=============================================================================================
    --  FSM state
    --=============================================================================================
    fsm_state: process( s_clk_i)
    begin
        if rising_edge(s_clk_i) then
        
            current_state <= next_state;
            
        end if;
    end process fsm_state;
 
 
 
    --=============================================================================================
    --  Process RX data
    --=============================================================================================
    slave_rx: process (s_clk_i, s_do_valid_o)
    begin
        
        if rising_edge(s_clk_i) then
        
            if s_do_valid_o = '1' then
            
                SSD_decode(all_zeros, ssd_hex3);
                SSD_decode(all_zeros, ssd_hex2);
                SSD_decode(all_zeros, ssd_hex1);
                
                
                leds(25 downto 0) <= s_do_o(25 downto 0);
                led_cmd(5 downto 0) <= s_do_o(31 downto 26);
                
                SSD_decode(s_do_o(29 downto 26), ssd_hex0);
               
            end if;
        end if;
        
     end process slave_rx;
     
    --=============================================================================================
    --  Process TX data
    --=============================================================================================
    slave_tx: process (s_clk_i, s_do_valid_o, current_state)
    begin
        
        if rising_edge(s_clk_i) then

            case current_state is
                when IDLE =>
                    s_wren_i <= '0';
                    s_di_i <= (others => 'X');
                    
                    if s_do_valid_o = '1' then
                        s_di_i <= s_do_o;
                        next_state <= SEND_DATA;
                    else
                        next_state <= IDLE;
                    end if;

                when SEND_DATA =>
                    s_wren_i <= '1';
                    next_state <= IDLE;
                    
                when others =>
                    next_state <= IDLE;
                    
            end case;
            
        end if;
        
    end process slave_tx;
                
                

        
end Structural;

