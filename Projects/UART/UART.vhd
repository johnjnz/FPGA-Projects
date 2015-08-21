library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity UART is
port 
(
	clk_50Mhz	: in 		STD_LOGIC;

	sw				: in 		STD_LOGIC_VECTOR( 9 downto 0);
	key			: in		STD_LOGIC_VECTOR( 3 downto 0);
	led_r			: out		STD_LOGIC_VECTOR( 9 downto 0);
	led_g			: out		STD_LOGIC_VECTOR( 7 downto 0);

	uart_txd		: out		STD_LOGIC;
	uart_rxd		: in		STD_LOGIC;
   
   
   lcd_on		: out		STD_LOGIC:= '1';
   lcd_rw		: out   	STD_LOGIC;
	lcd_rs		: out   	STD_LOGIC;
	lcd_e			: out   	STD_LOGIC;  
   lcd_data		: out   	STD_LOGIC_VECTOR(7 downto 0)


);
end UART;


ARCHITECTURE main OF UART is
type CONTROL 				is (SETUP, IDLE, TXD, RXD, TXD_UPDATE, RXD_UPDATE, TXD_POSITION, RXD_POSITION, PAUSE, RESET);
type CMD_STRING 			is array (0 to 13) of STD_LOGIC_VECTOR (7 downto 0);

signal STATE      		: 	CONTROL := SETUP;
constant SETUP_STRING	: 	CMD_STRING:=(x"54",x"58",x"44",x"3A",x"7E",x"20",x"C0",x"52",x"58",x"44",x"3A",x"7F",x"20", x"86"); 

signal tx_data				: 	STD_LOGIC_VECTOR( 7 downto 0);
signal tx_start			:	STD_LOGIC;
signal tx_busy				:	STD_LOGIC;

signal rx_data				:	STD_LOGIC_VECTOR( 7 downto 0);
signal rx_busy				:	STD_LOGIC;

signal lcd_busy			:  STD_LOGIC:='1';  
signal lcd_bus				:  STD_LOGIC_VECTOR(9 downto 0);  
signal lcd_enable			:  STD_LOGIC;  
signal reset_pressed		:	STD_LOGIC;
signal lcd_reset			:  STD_LOGIC:='1';

component TX
port
(
	clk			: in		STD_LOGIC;
	start			: in		STD_LOGIC;
	busy			: out		STD_LOGIC;
	data			: in		STD_LOGIC_VECTOR( 7 downto 0);
	tx_line		: out		STD_LOGIC
);
end component TX;

component RX
port
(
	clk			: in		STD_LOGIC;
	rx_line		: in		STD_LOGIC;
	data			: out		STD_LOGIC_VECTOR( 7 downto 0);
	busy			: out		STD_LOGIC
);
end component RX;

component lcd_controller
port
(
	clk			: in 		STD_LOGIC;
   reset_n		: in		STD_LOGIC;
   lcd_enable	: in		STD_LOGIC;
   lcd_bus		: in 		STD_LOGIC_VECTOR(9 downto 0); 
   busy			: out		STD_LOGIC := '1';
   rw				: out		STD_LOGIC;
	rs				: out		STD_LOGIC;
	e				: out		STD_LOGIC;
   lcd_data		: out		STD_LOGIC_VECTOR(7 downto 0)
);
end component lcd_controller;


begin
	
	TX_COM: TX port map 
	(
		clk 			=> clk_50Mhz, 
		start 		=> tx_start, 
		busy 			=> tx_busy, 
		data 			=> tx_data, 
		tx_line 		=> uart_txd
	);
	
	RX_COM: RX port map 
	(
		clk			=> clk_50Mhz, 
		rx_line 		=> uart_rxd, 
		data 			=> rx_data, 
		busy			=> rx_busy
	);
	
	LCD_COM: lcd_controller port map
	(
		clk			=> clk_50Mhz, 
		reset_n		=>	lcd_reset,
		lcd_enable	=>	lcd_enable,
		lcd_bus		=> lcd_bus,
		busy			=> lcd_busy,
		rw				=>	lcd_rw,
		rs				=> lcd_rs,
		e				=> lcd_e,
		lcd_data		=> lcd_data
	);
	
	process( clk_50Mhz, STATE )
	
	constant  	clk_freq    	: INTEGER := 50;
	variable 	char_index		: INTEGER range 0 to 8 := 0;
	variable		tx_pressed 	: INTEGER range 0 to 1 :=0;
	variable 	clk_count 		: INTEGER := 0;
	variable		cmd_index 		: INTEGER range 0 to 14:= 0;
	
	begin
	
		if (clk_50Mhz'EVENT AND clk_50Mhz = '1' ) THEN
	
			case STATE is
				when SETUP =>
					reset_pressed <= '0';		

					if (lcd_busy = '0' AND lcd_enable = '0') then
						
						if (cmd_index < 14) then
							lcd_enable <= '1';
							
							case cmd_index is
								when 0  =>		lcd_bus <= "10" & SETUP_STRING(cmd_index);
								when 1  =>		lcd_bus <= "10" & SETUP_STRING(cmd_index);
								when 2  =>		lcd_bus <= "10" & SETUP_STRING(cmd_index);
								when 3  =>		lcd_bus <= "10" & SETUP_STRING(cmd_index);
								when 4  => 		lcd_bus <= "10" & SETUP_STRING(cmd_index);
								when 5  =>		lcd_bus <= "10" & SETUP_STRING(cmd_index);
								when 6  =>		lcd_bus <= "00" & SETUP_STRING(cmd_index);
								when 7  =>		lcd_bus <= "10" & SETUP_STRING(cmd_index);
								when 8  =>		lcd_bus <= "10" & SETUP_STRING(cmd_index);
								when 9  =>		lcd_bus <= "10" & SETUP_STRING(cmd_index);
								when 10 =>		lcd_bus <= "10" & SETUP_STRING(cmd_index);
								when 11 => 		lcd_bus <= "10" & SETUP_STRING(cmd_index);
								when 12 =>		lcd_bus <= "10" & SETUP_STRING(cmd_index);
								when 13  =>		lcd_bus <= "00" & SETUP_STRING(cmd_index);
								when others => lcd_bus <= (others => '0');
							end case;

							cmd_index := cmd_index + 1;
											
						else	
							cmd_index := 0;
							lcd_bus <= (others => '0');
							STATE <= IDLE;
						end if;
					else
							lcd_enable <= '0';
					end if;
					
				when IDLE =>
					lcd_enable <= '0';
					tx_start <= '0';
					
					-- tx key
					if (key(0) = '0' AND tx_busy = '0' AND tx_pressed = 0) THEN
						tx_pressed := 1;
						STATE <= TXD;
					end if;
					
					-- reset key
					if( key(1) = '0' AND tx_pressed = 0) then
						reset_pressed <= '1';		
						STATE <= RESET;
					end if;
					
					-- no key pressed 
					if( key(0) = '1' AND key(1) = '1' AND tx_pressed = 1) then	
						tx_pressed := 0;
					end if;
							
				when TXD =>
					-- set start and data
					tx_data <= sw(7 downto 0);
					tx_start <= '1';
				
					led_g <= sw(7 downto 0);
									
					STATE <= TXD_POSITION;

				when TXD_POSITION =>
					tx_start <= '0';

					if (lcd_busy = '0' AND lcd_enable = '0') then
						lcd_enable <= '1';
						lcd_bus <= "0010000110";
					
						STATE <= TXD_UPDATE;
					else
						lcd_enable <= '0';
					end if;

				when TXD_UPDATE =>
					if( char_index < 8 ) then

						if (lcd_busy = '0' AND lcd_enable = '0') then

							lcd_enable <= '1';
							lcd_bus <= "100011000" & sw(7 - char_index);
							char_index := char_index + 1;
							
						else
							lcd_enable <= '0';
						end if;
					else
						char_index := 0;
						STATE <= IDLE;
					end if;
	

				when RXD =>
					STATE <= RXD_POSITION;

				when RXD_POSITION =>
					if (lcd_busy = '0' AND lcd_enable = '0') then
						lcd_enable <= '1';
						lcd_bus <= "0011000110";
					
						STATE <= RXD_UPDATE;
					else
						lcd_enable <= '0';
					end if;
					
					
					
				when RXD_UPDATE =>
					if( char_index < 8 ) then

						if (lcd_busy = '0' AND lcd_enable = '0') then

							lcd_enable <= '1';
							lcd_bus <= "100011000" & rx_data(7 - char_index);
							char_index := char_index + 1;
							
						else
							lcd_enable <= '0';
						end if;
					else
						char_index := 0;
						STATE <= IDLE;
					end if;
				
						

				when PAUSE =>
					lcd_enable <= '0';
					
					clk_count := clk_count + 1;
					if(clk_count < (2200 * clk_freq)) then
						STATE <= PAUSE;
					else	
						clk_count := 0;
						STATE <= SETUP;
					end if;
						
				when RESET =>
					if (lcd_busy = '0' AND lcd_enable = '0') then
						lcd_enable <= '1';
						lcd_bus <= "0000000001";

						led_g <= (others => '0');
						
						char_index := 0;
						
						STATE <= PAUSE;
					else
						lcd_enable <= '0';
					end if;
			end case;
		end if;
	
		
	
	end process;
	
	
	
	--
	--- RX data
	--
	process( rx_busy)
	begin
	
		if( rx_busy'EVENT AND rx_busy = '0') THEN

			if( STATE = IDLE ) then
				led_r(7 downto 0) <= rx_data;		
			end if;
		end if;
	end process;

	process ( reset_pressed )
	begin
		
		if( reset_pressed'EVENT AND reset_pressed = '1' ) then
			lcd_reset <= '0';
		end if;
		
	end process;
	

		
	
end main;

