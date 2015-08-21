library ieee;
use ieee.std_logic_1164.all;

entity lcd_controller_tb is
 
end entity lcd_controller_tb;


architecture behavior of lcd_controller_tb is
  
  signal clk        : STD_LOGIC;
  signal reset_n    : STD_LOGIC;
  signal lcd_enable : STD_LOGIC;
  signal lcd_bus    : STD_LOGIC_VECTOR(9 downto 0); 
  signal busy       : STD_LOGIC := '1';
  signal rw  			    : STD_LOGIC;
	signal rs  			    : STD_LOGIC;
	signal e  			     : STD_LOGIC;  
  signal lcd_data   : STD_LOGIC_VECTOR(7 downto 0);
 
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
      
 
  -- clock generation
  clk <= not clk after 10 ns;
  reset_n <= '0';
  lcd_bus <= "0000001100";
 
  -- waveform generation
  WaveGen_Proc: process
  begin
    -- insert signal assignments here
 
    wait until 1lk = '1';
  end process WaveGen_Proc;
 
end architecture behavior;
 
-------------------------------------------------------------------------------
 
configuration lcd_controller_tb_behavior_cfg of lcd_controller_tb is
  for behavior
  end for;
end lcd_controller_tb_behavior_cfg;