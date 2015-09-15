library ieee;
    use ieee.std_logic_1164.all;


entity sram_controller is
    generic (
        ADDR_WIDTH      : positive := 20;
        DATA_WIDTH      : positive := 16
        );
    port (
        clk             : in    std_logic;
        reset_n         : in    std_logic;
    
        -- controller interface
        ram_address     : in    std_logic_vector(ADDR_WIDTH-1 downto 0);
        ram_data_in     : in    std_logic_vector(DATA_WIDTH-1 downto 0);
        ram_data_out    : out   std_logic_vector(DATA_WIDTH-1 downto 0);
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


begin
    sram_ce         <= '0';
    sram_oe         <= '0';
    sram_ub         <= '0';
    sram_lb         <= '0';

    sram_addr       <= ram_address;
    ram_data_out    <= sram_data;

  
    sram_proc : process (clk, write_en, read_en)
    begin
        if rising_edge(clk) then
        
            if read_en = '1' then
                sram_we <= '1';
                
            elsif write_en = '1' then
                sram_we <= '0';
                sram_data <= ram_data_in;
            end if;
            
        end if;
            
    
    end process sram_proc;
  
end architecture;