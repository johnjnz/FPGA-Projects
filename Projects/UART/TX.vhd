library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity TX IS
PORT
(
	clk:		in		STD_LOGIC;
	start:	in		STD_LOGIC:='0';
	busy:		out	STD_LOGIC;
	data:		in		STD_LOGIC_VECTOR( 7 downto 0);
	tx_line:	out	STD_LOGIC
);
end TX;

ARCHITECTURE MAIN OF TX IS

signal prscl:		INTEGER range 0 TO 5206:=0;
signal index: 		INTEGER range 0 TO 9:=0;
signal datafill:	STD_LOGIC_VECTOR(9 downto 0);
signal tx_flag:	STD_LOGIC:='0';

begin

	process(clk)
	begin
		if( clk'EVENT AND clk='1') then
			if( tx_flag='0' AND start='1') then
				tx_flag <= '1';
				busy <= '1';
				datafill(0) <= '0';
				datafill(9) <= '1';
				datafill(8 downto 1) <= data;
			end if;
			
			if( tx_flag = '1') then
				if( prscl < 5207) then
					prscl <= prscl + 1;
				ELSE
					prscl <= 0;
				end if;
				
				if( prscl = 2607 ) then
					tx_line <= datafill(index);
					
					if( index < 9) then
						index <= index + 1;
					ELSE	
						tx_flag <= '0';
						busy <= '0';
						index <= 0;
					end if;
				end if;
			end if;
		end if;
		
	end process;
end MAIN;