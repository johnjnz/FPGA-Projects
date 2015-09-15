library ieee;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;

use work.SSD.all;

entity sram_test is

    generic (
        ADDR_WIDTH      : positive := 8;
        DATA_WIDTH      : positive := 32;
        
        INPUTS          : positive := 4;                                                      
        PERIOD          : positive := 10000  
        );
    port (
        clk_50mhz       : in    std_logic;
       
        switch          : in    std_logic_vector(DATA_WIDTH-1 downto 0);
        keys            : in    std_logic_vector(3 downto 0);
        leds            : out   std_logic_vector(DATA_WIDTH-1 downto 0);
        
        ssd0            : out   std_logic_vector(6 downto 0);
        ssd1            : out   std_logic_vector(6 downto 0);
        --ssd2            : out   std_logic_vector(6 downto 0);
        --ssd3            : out   std_logic_vector(6 downto 0);
        
        heartbeat_led   : out   std_logic
        
	);
end entity;



architecture rtl of sram_test is
    
    component group_debounce is
    generic 
    (   
        INPUTS  :       positive := 4;                                                      
        PERIOD  :       positive := 10000);                                           
    Port 
    (  
        clk     : in    std_logic := 'X';                                            
        data_i  : in    std_logic_vector (INPUTS-1 downto 0) := (others => 'X');         
        data_o  : out   std_logic_vector (INPUTS-1 downto 0);                           
        strb_o  : out   std_logic                                                  
    );                      
    end component group_debounce;
    
    
    component single_port_ram is
	generic 
	(
		DATA_WIDTH  : positive := 32;
		ADDR_WIDTH  : positive := 8
	);
	port 
	(
		clk		    : in    std_logic;
		addr	    : in    natural range 0 to 2**ADDR_WIDTH - 1;
		data	    : in    std_logic_vector((DATA_WIDTH-1) downto 0);
		we		    : in    std_logic := '1';
		q		    : out   std_logic_vector((DATA_WIDTH -1) downto 0)
	);

    end component single_port_ram;
    
    
    signal ram_address      : natural range 0 to 2**ADDR_WIDTH-1;
    signal ram_data_in      : std_logic_vector(DATA_WIDTH-1 downto 0) := (others => '0');
    signal ram_data_out     : std_logic_vector(DATA_WIDTH-1 downto 0) := (others => '0');
    signal write_en         : std_logic;
    
    type STATE_T is (
        IDLE,
        READ_RAM,
        WRITE_RAM
        
    );
    
    signal led_cmd          :       std_logic_vector(5 downto 0)    := (others => '0');

    signal curr_state       :       STATE_T := IDLE;
    signal next_state       :       STATE_T := IDLE;
    
    signal reset_n          :       std_logic;
    signal clk_1hz          :       std_logic;
    
    signal keys_status      :       std_logic_vector(INPUTS-1 downto 0) := (others => 'X');
    signal keys_debounced   :       std_logic_vector(INPUTS-1 downto 0);
    signal key_pressed      :       std_logic;
    
    signal slv              :       std_logic_vector(ADDR_WIDTH-1 downto 0);

    
begin
	
    
    instance_ram : single_port_ram
    port map (
		clk		    => clk_50mhz,
		addr	    => ram_address,
		data	    => ram_data_in,
		we		    => write_en,
		q		    => ram_data_out
	);
	
    instance_debounce: group_debounce
    port map
    (  
        clk         => clk_50mhz,
        data_i      => keys_status,
        data_o      => keys_debounced,
        strb_o      => key_pressed                                             
    );                      
    
    
    reset_n         <= '0';
    heartbeat_led   <= clk_1hz;
    
    -- Pass keys to deboucer
    keys_status     <= keys;
    
    leds(DATA_WIDTH-1 downto 0) <= ram_data_out(DATA_WIDTH-1 downto 0);
    
    --=============================================================================================
    -- SSD Update
    --=============================================================================================
    update_ssd: process( clk_50mhz )
    begin

        if rising_edge(clk_50mhz) then
            slv <= std_logic_vector(to_unsigned(ram_address, slv'LENGTH));
            
            -- show ram address selected
            SSD_decode(slv(3  downto  0), SSD0);
            SSD_decode(slv(7  downto  4), SSD1);
            --SSD_decode(slv(11 downto  8), SSD2);
            --SSD_decode(slv(15 downto 12), SSD3);
        end if;
        
    end process update_ssd;
    
    
    --=============================================================================================
    -- Heartbeat clock
    --=============================================================================================
    heartbeat: process( clk_50mhz)
        variable count: integer := 0;
    begin
        if rising_edge(clk_50mhz) then
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
    fsm_state: process( clk_50mhz, reset_n)
    begin
        
        if rising_edge(clk_50mhz) then
            if reset_n  = '1' then
                curr_state <= IDLE;
            else
                curr_state <= next_state;

            end if;
        end if;
        
    end process fsm_state;

   
    --=============================================================================================
    --  RAM address selection
    --=============================================================================================
    keypress: process (clk_50mhz, key_pressed)
    begin
    
        if rising_edge(clk_50mhz) then
            if keys_debounced(0) = '0' and key_pressed = '1' then
                ram_address <= ram_address + 1;
            end if;
            
            if keys_debounced(1) = '0' and key_pressed = '1' then
                ram_address <= ram_address - 1;
            end if;
            
        end if;
    
    end process keypress;
 

    state: process (clk_50mhz, curr_state)
        variable count: integer := 0;
    begin
    
        if rising_edge(clk_50mhz) then
        
            case curr_state is
                when IDLE =>
                    write_en <= '0';
                    
                    if keys_debounced(2) = '0' and key_pressed = '1' then
                        next_state <= READ_RAM;
                    end if;
                    
                    if keys_debounced(3) = '0' and key_pressed = '1' then
                        next_state <= WRITE_RAM;
                    end if;
                    
                when READ_RAM =>
                    write_en <= '0';
                    next_state <= IDLE;
                
                when WRITE_RAM =>
                    ram_data_in(DATA_WIDTH-1 downto 0) <= switch(DATA_WIDTH-1downto 0);
                    write_en <= '1';
                    
                    next_state <= IDLE;
            end case;
                
        
        
        end if;
        
    
    
    
    end process state;
   
 
    
    
    -- FSM
    --  IDLE
    --  READ
    --  WRITE
    --  INC ADDR
    --  DEC ADDR
    --  UPDATE SSD
    
    --  KEY0 INC ADDR
    --  KEY1 DEC ADDR
    --  KEY2 WRITE
    --  KEY3 READ
    
    -- SWITCHES DATA to WRITE
    
    --  SSD
    --      SSD0 - 3 DATA   
    --      SSD4 - 5 ADDR
    
   
  
  
    
    
    
    
	
end architecture rtl;