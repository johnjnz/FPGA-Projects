library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;


entity sram_controller_tb is
    generic (
        ADDR_WIDTH      : positive := 20;
        DATA_WIDTH      : positive := 16
        );




end entity sram_controller_tb;

architecture behavior of sram_controller_tb is
   
    component sram_controller is
    generic (
        ADDR_WIDTH      : positive := 20;
        DATA_WIDTH      : positive := 16
        );
    port (
        clk             : in    std_logic;
        reset_n         : in    std_logic;
    
        -- controller interface
        address         : in    std_logic_vector(ADDR_WIDTH-1 downto 0);
        data_write      : in    std_logic_vector(DATA_WIDTH-1 downto 0);
        data_read       : out   std_logic_vector(DATA_WIDTH-1 downto 0);
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
    end component;


    signal t_clk             : std_logic;
    signal t_reset_n         : std_logic;
    
        -- controller interface
    signal t_address         : std_logic_vector(ADDR_WIDTH-1 downto 0);
    signal t_data_write      : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal t_data_read       : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal t_write_en        : std_logic;
    signal t_read_en         : std_logic;
    
        -- SRAM signals
    signal t_sram_data       : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal t_sram_addr       : std_logic_vector(ADDR_WIDTH-1 downto 0);
    signal t_sram_ce         : std_logic;
    signal t_sram_oe         : std_logic;
    signal t_sram_we         : std_logic;
    signal t_sram_ub         : std_logic;
    signal t_sram_lb         : std_logic;

    constant clk_period : time := 50 ns;
begin

    
    instance_sram : sram_controller
    port map (
        clk         => t_clk,
	reset_n     => t_reset_n,
		
	address     => t_address,
	data_write  => t_data_write,
	data_read   => t_data_read,
	write_en    => t_write_en,
	read_en     => t_read_en,
		
	sram_data   => t_sram_data,
	sram_addr   => t_sram_addr,
	sram_ce     => t_sram_ce,
	sram_oe     => t_sram_oe,
	sram_we     => t_sram_we,
	sram_ub     => t_sram_ub,
	sram_lb     => t_sram_lb
    );
	

    clock: process
    begin
	t_clk <= '1';
	wait for clk_period/2;
	t_clk <= '0';
	wait for clk_period/2;
    end process clock;

    t_reset_n <= '0';


    test: process
    begin
	t_read_en	<= '0';
	t_write_en	<= '0';
	t_data_write	<= (others => '0');
	
	wait until rising_edge(t_clk);
	t_address 	<= X"00000";
	t_data_write 	<= X"DEAD";
	t_write_en 	<= '1';
	wait for 10 ns;
	t_write_en	<= '0';

	wait until rising_edge(t_clk);
	t_address 	<= X"00001";
	t_data_write 	<= X"BEEF";
	t_write_en 	<= '1';
	wait for 10 ns;
	t_write_en	<= '0';
	
	wait until rising_edge(t_clk);
	t_address 	<= X"00002";
	t_data_write 	<= X"BAAD";
	t_write_en 	<= '1';
	wait for 10 ns;
	t_write_en	<= '0';

	wait until rising_edge(t_clk);
	t_address 	<= X"00003";
	t_data_write 	<= X"BEEF";
	t_write_en 	<= '1';
	wait for 10 ns;
	t_write_en	<= '0';

	wait for 10 ns;

	wait until rising_edge(t_clk);
	t_address 	<= X"00000";
	t_read_en 	<= '1';
	wait for 10 ns;
	t_read_en	<= '0';

	wait until rising_edge(t_clk);
	t_address 	<= X"00001";
	t_read_en 	<= '1';
	wait for 10 ns;
	t_read_en	<= '0';
	
	wait until rising_edge(t_clk);
	t_address 	<= X"00002";
	t_read_en 	<= '1';
	wait for 10 ns;
	t_read_en	<= '0';

	wait until rising_edge(t_clk);
	t_address 	<= X"00002";
	t_read_en 	<= '1';
	wait for 10 ns;
	t_read_en	<= '0';
	
	wait until rising_edge(t_clk);
	assert false report "simulation completed successfully" severity failure;
    end process test;



end architecture behavior;