
library IEEE;
use IEEE.std_logic_1164.all;

package seven_segment_display is
	procedure decode(
		signal hexcode		: in STD_LOGIC_VECTOR(3 downto 0);
		signal segment		: out STD_LOGIC_VECTOR(6 downto 0)
	);
end seven_segment_display;

package body seven_segment_display is  

	procedure decode(
		signal hexcode		: in STD_LOGIC_VECTOR(3 downto 0);
		signal segment		: out STD_LOGIC_VECTOR(6 downto 0)
	) is
	variable temp : STD_LOGIC_VECTOR(6 downto 0);
	begin 

		case(hexcode) is
			when x"1"	=>	temp := "1111001";
			when x"2"	=> temp := "0100100";
			when x"3"	=> temp := "0110000";
			when x"4"	=> temp := "0011001";
			when x"5"	=> temp := "0010010";
			when x"6"	=> temp := "0000010";
			when x"7"	=> temp := "1111000";
			when x"8"	=> temp := "0000000";
			when x"9"	=> temp := "0011000";
			when x"a"	=> temp := "0001000";
			when x"b"	=> temp := "0000011";
			when x"c"	=> temp := "1000110";
			when x"d"	=> temp := "0100001";
			when x"e"	=> temp := "0000110";
			when x"f"	=> temp := "0001110";
			when x"0"	=> temp := "1000000";
		end case;
		
		segment <= temp;
			
	end decode;
end seven_segment_display;