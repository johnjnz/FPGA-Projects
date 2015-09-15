library ieee;
    use ieee.std_logic_1164.all;


entity SRAM_controller is
    generic (
        ADDR_WIDTH      : positive := 20;
        DATA_WIDTH      : positive := 16
        );
    port (
        clk             : in    std_logic;
        reset_n         : in    std_logic;
    
        -- controller interface
        ram_address         : in    std_logic_vector(ADDR_WIDTH-1 downto 0);
        ram_data_in      : in    std_logic_vector(DATA_WIDTH-1 downto 0);
        ram_data_out       : out   std_logic_vector(DATA_WIDTH-1 downto 0);
        write_en        : in    std_logic;
        read_en         : in    std_logic;
    
        -- SRAM signals
        sram_data       : inout std_logic_vector(DATA_WIDTH-1 downto 0);
        sram_addr       : out   std_logic_vector(ADDR_WIDTH-1 downto 0);
        sram_ce         : out   std_logic;
        sram_oe         : out   std_logic;
        sram_we         : out   std_logic;
        sram_ub         : out   std_logic;
        sram_lb         : out   std_logic
    );
end entity;

architecture rtl of SRAM_controller is

  
    type SRAM_STATE_T is (IDLE, WR0, WR1, RE0);

    signal sram_curr_state      : SRAM_STATE_T;
    signal sram_next_state      : SRAM_STATE_T;

    signal address_curr         : std_logic_vector(ADDR_WIDTH-1 downto 0);
    signal address_next         : std_logic_vector(ADDR_WIDTH-1 downto 0);
    signal data_curr            : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal data_next            : std_logic_vector(DATA_WIDTH-1 downto 0);

begin
    reset_proc : process (clk, reset_n)
    begin
        if reset_n = '0' then
            sram_curr_state <= IDLE;

        elsif rising_edge(clk) then
            sram_curr_state <= sram_next_state;
                
        end if;
    
    end process;

  
  
    state_proc : process (clk)
    begin
        if rising_edge(clk) then
        
            address_curr    <= address_next;
            data_curr       <= data_next;
            
        end if;
        
    end process;

  
  
    FSMASync : process (sram_curr_state, write_en, read_en, address_curr, data_curr, ram_address, ram_data_in, sram_data)
    begin
        
        sram_next_state     <= sram_curr_state;
        address_next        <= address_curr;
        sram_addr           <= address_curr;
        data_next           <= data_curr;
    
        
        sram_data           <= (others => 'Z');
        sram_we             <= '1';

    
        sram_ub             <= '1';
        sram_lb             <= '1';

        sram_ce             <= '1';
        sram_oe             <= '1';

        case sram_curr_state is
            when WR0 =>
            
                sram_next_state <= IDLE;
        
                sram_data   <= data_curr;
                sram_ce     <= '0';
                sram_we     <= '0';
                sram_ub     <= '0';
                sram_lb     <= '0';
        
            when RE0 =>
                sram_next_state <= IDLE;
                data_next    <= sram_data;
        
            when others =>
                if (write_en = '1') then
                    sram_next_state <= WR0;
          
                    data_next       <= ram_data_in;
                    address_next    <= ram_address;
                    sram_addr       <= ram_address;
          
                elsif read_en = '1' then
                    sram_next_state <= RE0;
          
                    sram_ce       <= '0';
                    sram_oe       <= '0';
                    sram_ub       <= '0';
                    sram_lb       <= '0';
            
                    address_next    <= ram_address;
                    sram_addr   <= ram_address;
          
                    data_next    <= (others => '1');
                end if;
        end case;
    end process;
  
  ram_data_out <= data_curr;
  
end architecture;


