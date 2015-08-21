--------------------------------------------------------------------------------
--   CLOCK FREQUENCY: to change system clock frequency, change Line 65
--
--   LCD INITIALIZATION SETTINGS: to change, comment/uncomment lines:
--
--   Function Set  
--      2-line mode, display on             Line 93    lcd_data <= "00111100";
--      1-line mode, display on             Line 94    lcd_data <= "00110100";
--      1-line mode, display off            Line 95    lcd_data <= "00110000";
--      2-line mode, display off            Line 96    lcd_data <= "00111000";
--   Display ON/OFF
--      display on, cursor off, blink off   Line 104   lcd_data <= "00001100";
--      display on, cursor off, blink on    Line 105   lcd_data <= "00001101";
--      display on, cursor on, blink off    Line 106   lcd_data <= "00001110";
--      display on, cursor on, blink on     Line 107   lcd_data <= "00001111";
--      display off, cursor off, blink off  Line 108   lcd_data <= "00001000";
--      display off, cursor off, blink on   Line 109   lcd_data <= "00001001";
--      display off, cursor on, blink off   Line 110   lcd_data <= "00001010";
--      display off, cursor on, blink on    Line 111   lcd_data <= "00001011";
--   Entry Mode Set
--      increment mode, entire shift off    Line 127   lcd_data <= "00000110";
--      increment mode, entire shift on     Line 128   lcd_data <= "00000111";
--      decrement mode, entire shift off    Line 129   lcd_data <= "00000100";
--      decrement mode, entire shift on     Line 130   lcd_data <= "00000101";
--    
--------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity lcd_controller is
	port(
		clk        	: 	in    STD_LOGIC;
		reset_n    	: 	in   STD_LOGIC;  
		lcd_enable	: 	in    STD_LOGIC;
		lcd_bus    	: 	in    STD_LOGIC_VECTOR(9 downto 0);  
		busy       	: 	out   STD_LOGIC := '1';  
		rw  			: 	out   STD_LOGIC;
		rs  			: 	out   STD_LOGIC;
		e  			: 	out   STD_LOGIC;  
		lcd_data   	:	out   STD_LOGIC_VECTOR(7 downto 0)
	);
end lcd_controller;

ARCHITECTURE MAIN OF lcd_controller is
	type CONTROL is(power_up, initialize, ready, send);
	signal    state      : CONTROL;
	constant  freq       : INTEGER := 50;
begin
	process(clk)
		variable clk_count : INTEGER := 0; --event counter for timing
	begin
	if(clk'EVENT and clk = '1') then
    
		case state is
        
        --wait 50 ms to ensure Vdd has risen and required LCD wait is met
        when power_up =>
          busy <= '1';
          if(clk_count < (50000 * freq)) then    --wait 50 ms
            clk_count := clk_count + 1;
            state <= power_up;
          ELSE                                   --power-up complete
            clk_count := 0;
            rs <= '0';
            rw <= '0';
            lcd_data <= "00110000";
            --state <= initialize;
				state <= ready;
          end if;
          
--        --cycle through initialization sequence  
        when initialize =>
          busy <= '1';
          clk_count := clk_count + 1;
          if(clk_count < (10 * freq)) then       --function set
            lcd_data <= "00111100";      --2-line mode, display on
            --lcd_data <= "00110100";    --1-line mode, display on
            --lcd_data <= "00110000";    --1-line mdoe, display off
            --lcd_data <= "00111000";    --2-line mode, display off
            e <= '1';
            state <= initialize;
          elsif(clk_count < (60 * freq)) then    --wait 50 us
            lcd_data <= "00000000";
            e <= '0';
            state <= initialize;
          elsif(clk_count < (70 * freq)) then    --display on/off control
            lcd_data <= "00001100";      --display on, cursor off, blink off
            --lcd_data <= "00001101";    --display on, cursor off, blink on
            --lcd_data <= "00001110";    --display on, cursor on, blink off
            --lcd_data <= "00001111";    --display on, cursor on, blink on
            --lcd_data <= "00001000";    --display off, cursor off, blink off
            --lcd_data <= "00001001";    --display off, cursor off, blink on
            --lcd_data <= "00001010";    --display off, cursor on, blink off
            --lcd_data <= "00001011";    --display off, cursor on, blink on            
            e <= '1';
            state <= initialize;
          elsif(clk_count < (120 * freq)) then   --wait 50 us
            lcd_data <= "00000000";
            e <= '0';
            state <= initialize;
          elsif(clk_count < (130 * freq)) then   --display clear
            lcd_data <= "00000001";
            e <= '1';
            state <= initialize;
          elsif(clk_count < (2130 * freq)) then  --wait 2 ms
            lcd_data <= "00000000";
            e <= '0';
            state <= initialize;
          elsif(clk_count < (2140 * freq)) then  --entry mode set
            lcd_data <= "00000110";      --increment mode, entire shift off
            --lcd_data <= "00000111";    --increment mode, entire shift on
            --lcd_data <= "00000100";    --decrement mode, entire shift off
            --lcd_data <= "00000101";    --decrement mode, entire shift on
            e <= '1';
            state <= initialize;
          elsif(clk_count < (2200 * freq)) then  --wait 60 us
            lcd_data <= "00000000";
            e <= '0';
            state <= initialize;
          else                                   --initialization complete
            clk_count := 0;
            busy <= '0';
            state <= ready;
          end if;    
       
        --wait for the enable signal and then latch in the instruction
        when ready =>
          if(lcd_enable = '1') then
            busy <= '1';
            rs <= lcd_bus(9);
            rw <= lcd_bus(8);
            lcd_data <= lcd_bus(7 downto 0);
            clk_count := 0;            
            state <= send;
          else
            busy <= '0';
            rs <= '0';
            rw <= '0';
            lcd_data <= "00000000";
            clk_count := 0;
            state <= ready;
          end if;
        
        --send instruction to lcd        
        when send =>
        busy <= '1';
        if(clk_count < (50 * freq)) then  --do not exit for 50us
           busy <= '1';
           if(clk_count < freq) then      --negative enable
            e <= '0';
           elsif(clk_count < (14 * freq)) then  --positive enable half-cycle
            e <= '1';
           elsif(clk_count < (27 * freq)) then  --negative enable half-cycle
            e <= '0';
           end if;
           clk_count := clk_count + 1;
           state <= send;
        else
          clk_count := 0;
          state <= ready;
        end if;

      end CASE;    
    
      --reset
      if(reset_n = '0') then
          state <= power_up;
      end if;
    
    end if;
  end process;
end MAIN;
