library IEEE;
library work;

use  IEEE.STD_LOGIC_1164.all;
use  IEEE.STD_LOGIC_ARITH.all;
use  IEEE.STD_LOGIC_UNSIGNED.all;

use work.seven_segment_display.all;

entity DE2_CLOCK is
	port(
		reset_key					: in 		STD_LOGIC; 
		clk_50Mhz					: in		STD_LOGIC;
		lcd_blon						: out		STD_LOGIC;
		lcd_rs						: out		STD_LOGIC;
		lcd_enable					: out		STD_LOGIC; 
		lcd_on						: out 	STD_LOGIC;
		led_reset					: out		STD_LOGIC;
		led_second					: out		STD_LOGIC;
		led_counter					: out		STD_LOGIC_VECTOR(7 downto 0);
		lcd_rw						: buffer STD_LOGIC;
		data_bus						: inout	STD_LOGIC_VECTOR(7 downto 0);
		hex0							: out		STD_LOGIC_VECTOR(6 downto 0);
		hex1 							: out		STD_LOGIC_VECTOR(6 downto 0);
		hex2 							: out		STD_LOGIC_VECTOR(6 downto 0);
		hex3 							: out		STD_LOGIC_VECTOR(6 downto 0);
		hex4 							: out		STD_LOGIC_VECTOR(6 downto 0);
		hex5 							: out		STD_LOGIC_VECTOR(6 downto 0);
		hex6 							: out		STD_LOGIC_VECTOR(6 downto 0);
		hex7 							: out		STD_LOGIC_VECTOR(6 downto 0)
		
	);
end DE2_CLOCK;


architecture DE2_CLOCK_ARCH OF DE2_CLOCK is
	
	type state_type is 
	(
		HOLD, FUNC_SET, DISPLAY_ON, MODE_SET, WRITE_CHAR1, WRITE_CHAR2,
		WRITE_CHAR3,WRITE_CHAR4,WRITE_CHAR5,WRITE_CHAR6,WRITE_CHAR7,
		WRITE_CHAR8, WRITE_CHAR9, WRITE_CHAR10, RETURN_HOME, TOGGLE_E, 
		RESET1, RESET2, RESET3, DISPLAY_OFF, DISPLAY_CLEAR
	);
	
	signal current_state			: state_type;
	signal next_state				: state_type;
	signal data_bus_value		: STD_LOGIC_VECTOR(7 downto 0);
	signal count_clk_400Hz		: STD_LOGIC_VECTOR(19 downto 0);
	signal count_clk_10Hz		: STD_LOGIC_VECTOR(7 downto 0);
	
	signal bcd_sec_d0				: STD_LOGIC_VECTOR(3 downto 0);
	signal bcd_sec_d1				: STD_LOGIC_VECTOR(3 downto 0);
	signal bcd_min_d0				: STD_LOGIC_VECTOR(3 downto 0);
	signal bcd_min_d1				: STD_LOGIC_VECTOR(3 downto 0);
	signal bcd_hr_d0				: STD_LOGIC_VECTOR(3 downto 0);
	signal bcd_hr_d1				: STD_LOGIC_VECTOR(3 downto 0);
	signal bcd_tsec				: STD_LOGIC_VECTOR(3 downto 0);
	signal clk_400Hz				: STD_LOGIC;
	signal clk_10Hz				: STD_LOGIC;
	
begin
	lcd_on <= '1';
	lcd_blon <= '1';
	led_reset <= NOT reset_key;
	led_second <= bcd_sec_d0(0);
	led_counter <= bcd_sec_d1 & bcd_sec_d0;
	data_bus <= data_bus_value when lcd_rw = '0' else "ZZZZZZZZ";
	hex1 <= "1111111";

	
	process
	begin
		wait until clk_50Mhz'event AND clk_50Mhz = '1';
		if reset_key = '0' then
			count_clk_400Hz <= X"00000";
			clk_400Hz <= '0';
		else
			if count_clk_400Hz < X"0F424" then 
				count_clk_400Hz <= count_clk_400Hz + 1;
			else
				count_clk_400Hz <= X"00000";
				clk_400Hz <= NOT clk_400Hz;
			end if;
		end if;
	end process;
	
	
	process (clk_400Hz, reset_key)
	begin
		if reset_key = '0' then
			current_state <= RESET1;
			data_bus_value <= X"38";
			next_state <= RESET2;
			lcd_enable <= '1';
			lcd_rs <= '0';
			lcd_rw <= '0';

		elsif clk_400Hz'event AND clk_400Hz = '1' then
			if count_clk_10Hz < 19 then
				count_clk_10Hz <= count_clk_10Hz + 1;
			else
				count_clk_10Hz <= X"00";
				clk_10Hz <= NOT clk_10Hz;
			end if;

			-- Send TIME TO LCD			
			case current_state is
				when RESET1 =>
					lcd_enable 		<= '1';
					lcd_rs 			<= '0';
					lcd_rw 			<= '0';
					data_bus_value <= X"38";
					current_state 	<= TOGGLE_E;
					next_state 		<= RESET2;
				when RESET2 =>
					lcd_enable <= '1';
					lcd_rs <= '0';
					lcd_rw <= '0';
					data_bus_value <= X"38";
					current_state <= TOGGLE_E;
					next_state <= RESET3;
				when RESET3 =>
					lcd_enable <= '1';
					lcd_rs <= '0';
					lcd_rw <= '0';
					data_bus_value <= X"38";
					current_state <= TOGGLE_E;
					next_state <= FUNC_SET;
				when FUNC_SET =>
					lcd_enable <= '1';
					lcd_rs <= '0';
					lcd_rw <= '0';
					data_bus_value <= X"38";
					current_state <= TOGGLE_E;
					next_state <= DISPLAY_OFF;
				when DISPLAY_OFF =>
					lcd_enable <= '1';
					lcd_rs <= '0';
					lcd_rw <= '0';
					data_bus_value <= X"08";
					current_state <= TOGGLE_E;
					next_state <= DISPLAY_CLEAR;
				when DISPLAY_CLEAR =>
					lcd_enable <= '1';
					lcd_rs <= '0';
					lcd_rw <= '0';
					data_bus_value <= X"01";
					current_state <= TOGGLE_E;
					next_state <= DISPLAY_ON;
				when DISPLAY_ON =>
					lcd_enable <= '1';
					lcd_rs <= '0';
					lcd_rw <= '0';
					data_bus_value <= X"0C";
					current_state <= TOGGLE_E;
					next_state <= MODE_SET;
				when MODE_SET =>
					lcd_enable <= '1';
					lcd_rs <= '0';
					lcd_rw <= '0';
					data_bus_value <= X"06";
					current_state <= TOGGLE_E;
					next_state <= WRITE_CHAR1;
				when WRITE_CHAR1 =>
					lcd_enable <= '1';
					lcd_rs <= '1';
					lcd_rw <= '0';
					data_bus_value <= X"3" & bcd_hr_d1;
					current_state <= TOGGLE_E;
					next_state <= WRITE_CHAR2;
				when WRITE_CHAR2 =>
					lcd_enable <= '1';
					lcd_rs <= '1';
					lcd_rw <= '0';
					data_bus_value <= X"3" & bcd_hr_d0;
					current_state <= TOGGLE_E;
					next_state <= WRITE_CHAR3;
				when WRITE_CHAR3 =>
					lcd_enable <= '1';
					lcd_rs <= '1';
					lcd_rw <= '0';
					data_bus_value <= X"3A" ;
					current_state <= TOGGLE_E;
					next_state <= WRITE_CHAR4;
				when WRITE_CHAR4 =>
					lcd_enable <= '1';
					lcd_rs <= '1';
					lcd_rw <= '0';
					data_bus_value <= X"3" & bcd_min_d1;
					current_state <= TOGGLE_E;
					next_state <= WRITE_CHAR5;
				when WRITE_CHAR5 =>
					lcd_enable <= '1';
					lcd_rs <= '1';
					lcd_rw <= '0';
					data_bus_value <= X"3" & bcd_min_d0;
					current_state <= TOGGLE_E;
					next_state <= WRITE_CHAR6;
				when WRITE_CHAR6 =>
					lcd_enable <= '1';
					lcd_rs <= '1';
					lcd_rw <= '0';
					data_bus_value <= X"3A" ;
					current_state <= TOGGLE_E;
					next_state <= WRITE_CHAR7;
				when WRITE_CHAR7 =>
					lcd_enable <= '1';
					lcd_rs <= '1';
					lcd_rw <= '0';
					data_bus_value <= X"3" & bcd_sec_d1;
					current_state <= TOGGLE_E;
					next_state <= WRITE_CHAR8;
				when WRITE_CHAR8 =>
					lcd_enable <= '1';
					lcd_rs <= '1';
					lcd_rw <= '0';
					data_bus_value <= X"3" & bcd_sec_d0;
					current_state <= TOGGLE_E;
					next_state <= WRITE_CHAR9;
				when WRITE_CHAR9 =>
					lcd_enable <= '1';
					lcd_rs <= '1';
					lcd_rw <= '0';
					data_bus_value <= X"2E";
					current_state <= TOGGLE_E;
					next_state <= WRITE_CHAR10;
				when WRITE_CHAR10 =>
					lcd_enable <= '1';
					lcd_rs <= '1';
					lcd_rw <= '0';
					data_bus_value <= X"3" & bcd_tsec;
					current_state <= TOGGLE_E;
					next_state <= RETURN_HOME;
				when RETURN_HOME =>
					lcd_enable <= '1';
					lcd_rs <= '0';
					lcd_rw <= '0';
					data_bus_value <= X"80";
					current_state <= TOGGLE_E;
					next_state <= WRITE_CHAR1;
				when TOGGLE_E =>
					lcd_enable <= '0';
					current_state <= HOLD;
				when HOLD =>
					current_state <= next_state;
			end case;
		end if;
	end process;
	
	
	process (Clk_10hz, reset_key)
	begin
		if reset_key = '0' then	
			bcd_hr_d1 <= X"0";			
			bcd_hr_d0 <= X"0";
			bcd_min_d1 <= X"0";
			bcd_min_d0 <= X"0";
			bcd_sec_d1 <= X"0";
			bcd_sec_d0 <= X"0";
			bcd_tsec  <= X"0";
		elsif clk_10HZ'event AND clk_10HZ = '1' then
			decode(bcd_tsec, hex0);
			decode(bcd_sec_d0, hex2);
			decode(bcd_sec_d1, hex3);
			decode(bcd_min_d0, hex4);
			decode(bcd_min_d1, hex5);
			decode(bcd_hr_d0, hex6);
			decode(bcd_hr_d1, hex7);
			
			if bcd_tsec < 9 then
				bcd_tsec <= bcd_tsec + 1;
			else
				bcd_tsec <= X"0";

				if bcd_sec_d0 < 9 then
					bcd_sec_d0 <= bcd_sec_d0 + 1;
				else
					bcd_sec_d0 <= "0000";
	 	  
					if bcd_sec_d1 < 5 then
						bcd_sec_d1 <= bcd_sec_d1 + 1;
					else
						bcd_sec_d1 <= "0000";

						if bcd_min_d0 < 9 then
							bcd_min_d0 <= bcd_min_d0 + 1;
						else
							bcd_min_d0 <= "0000";
							
							if bcd_min_d1 < 5 then
								bcd_min_d1 <= bcd_min_d1 + 1;
							else
								bcd_min_d1 <= "0000";
								
								if bcd_hr_d0 < 9 AND NOT((bcd_hr_d1 = 2) AND (bcd_hr_d0 = 3))then
									bcd_hr_d0 <= bcd_hr_d0 + 1;
								else
									if NOT((bcd_hr_d1 = 2) AND (bcd_hr_d0 = 3)) then
										bcd_hr_d1 <= bcd_hr_d1 + 1;
										bcd_hr_d0 <= "0000";
									else
										bcd_hr_d1 <= "0000";
										bcd_hr_d0 <= "0000";
									end if;
								end if;
							end if;
						end if;
					end if;
				end if;
			end if;
		end if;
	end process;
	
end DE2_CLOCK_ARCH;
