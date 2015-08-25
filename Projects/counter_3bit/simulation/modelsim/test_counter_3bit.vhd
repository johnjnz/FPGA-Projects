-- testbench for counter_3bit

-- Load Altera libraries for this chip
LIBRARY IEEE;
LIBRARY MAXII;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXII.MAXII_COMPONENTS.ALL;

-- Set up this testbench as an entity
entity test_counter_3bit is
end test_counter_3bit;

-- Create an implementation of the entity
-- (May have several per entity)
architecture testbench1 of test_counter_3bit is

  -- Set up the signals on the 3bit_counter
  signal button1 : std_logic;
  signal button2 : std_logic;
  signal led1    : std_logic;
  signal led2    : std_logic;
  signal led3    : std_logic;

  -- Set up the vcc signal as 1
  signal vcc  : std_logic := '1';
  
  begin
    -- dut = device under test (same name as top project from Quartus)
    dut : entity work.counter_3bit
      -- Map the ports from the dut to this testbench
      port map (
        button1 => button1,
        button2 => button2,
        led1 => led1,
        led2 => led2,
        led3 => led3 );
    
    -- Set up the signals    
    stimulus : process is
      begin
        -- Just make a clock on button1 to simulate pushing the button
        loop
          button1 <= '0'; wait for 10 ns;
          button1 <= '1'; wait for 10 ns;
	  button2 <= '0'; wait for 20 ns;
	  button2 <= '1'; wait for 20 ns;
        end loop;
      end process stimulus;
end architecture testbench1;
