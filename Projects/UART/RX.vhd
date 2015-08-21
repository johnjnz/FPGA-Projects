library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity RX IS
	port
	(
		clk:		in		STD_LOGIC;
		rx_line:	in		STD_LOGIC;
		data:		out	STD_LOGIC_VECTOR( 7 downto 0);
		busy:		out	STD_LOGIC
	);
end RX;



ARCHITECTURE MAIN OF RX IS

signal datafill:	STD_LOGIC_VECTOR(9 downto 0);
signal rx_flag:	STD_LOGIC:='0';
signal prscl:		INTEGER RANGE 0 TO 5208:=0;
signal index:		INTEGER RANGE 0 TO 9:=0;

begin

	process (clk)
	begin
		if (clk'EVENT AND clk = '1') then
			
			if (rx_flag = '0' AND rx_line = '0') then
				index <= 0;
				prscl <= 0;
				busy <= '1';
				rx_flag <= '1';
			end if;
			
			if (rx_flag = '1') then
				datafill(index) <= rx_line;
				
				if( prscl < 5207 ) then
					prscl <= prscl + 1;
				else
					prscl <= 0;
				end if;
				
				if (prscl = 2500) then
					
					if( index < 9) then
						index <= index + 1;
					else
						if( datafill(0) = '0' and datafill(9) = '1') then
							data <= datafill( 8 downto 1);
						else
							data <= (OTHERS => '0');
						end if;
						
						rx_flag <= '0';
						busy <= '0';
						
					end if;
				end if;
			end if;
		end if;
	end process;
end MAIN;
