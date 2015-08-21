library ieee;
use ieee.std_logic_1164.all;

entity lcd_controller_tb is
 
end entity lcd_controller_tb;


architecture behavior of lcd_controller_tb is
  constant  T          : time := 20 ns;
  signal    clk        : STD_LOGIC;
  signal    reset_n    : STD_LOGIC;
  signal    lcd_enable : STD_LOGIC;
  signal    lcd_bus    : STD_LOGIC_VECTOR(9 downto 0); 
  signal    busy       : STD_LOGIC := '1';
  signal    rw  			    : STD_LOGIC;
	signal    rs  			    : STD_LOGIC;
	signal    e  			     : STD_LOGIC;  
  signal    lcd_data   : STD_LOGIC_VECTOR(7 downto 0);
 
begin
  
  DUT: entity work.lcd_controller
    port map 
    (
      clk          => clk,
      reset_n      => reset_n,
      lcd_enable   => lcd_enable,
      lcd_bus      => lcd_bus,
      busy         => busy,
      rw           => rw,
      rs           => rs,
      e            => e,
      lcd_data     => lcd_data
    );
      
 
 -- clock generator
    process
    begin
        clk <= '1';
        wait for T / 2;
        clk <= '0';
        wait for T / 2;
    end process;
  
reset_n <= '1';



WaveGen_Proc: process
  begin
    -- insert signal assignments here
    wait until busy = '0';
    lcd_enable <= '1';
    lcd_bus <= "0010101010";
    wait for 50 us;
    lcd_enable <= '0';
    
    
    wait until busy = '0';
    lcd_enable <= '1';
    lcd_bus <= "0000001111";
    wait for 50 us;
    lcd_enable <= '0';

    
  
    -- end of simulation
    assert false
    report "Simulation completed."
    severity failure;
 
    --wait until Clk = '1';
  end process WaveGen_Proc;
 
  end architecture behavior;
 
-------------------------------------------------------------------------------
 
configuration lcd_controller_tb_behavior_cfg of lcd_controller_tb is
  for behavior
  end for;
end lcd_controller_tb_behavior_cfg;
