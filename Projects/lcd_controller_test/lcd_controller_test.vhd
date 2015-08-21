--------------------------------------------------------------------------------
--
--   FileName:         lcd_controller_test.vhd
--   Dependencies:     none
--   Design Software:  Quartus II 32-bit Version 11.1 Build 173 SJ Full Version
--
--   HDL CODE IS PROVIDED "AS IS."  DIGI-KEY EXPRESSLY DISCLAIMS ANY
--   WARRANTY OF ANY KIND, WHETHER EXPRESS OR IMPLIED, INCLUDING BUT NOT
--   LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
--   PARTICULAR PURPOSE, OR NON-INFRINGEMENT. IN NO EVENT SHALL DIGI-KEY
--   BE LIABLE FOR ANY INCIDENTAL, SPECIAL, INDIRECT OR CONSEQUENTIAL
--   DAMAGES, LOST PROFITS OR LOST DATA, HARM TO YOUR EQUIPMENT, COST OF
--   PROCUREMENT OF SUBSTITUTE GOODS, TECHNOLOGY OR SERVICES, ANY CLAIMS
--   BY THIRD PARTIES (INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF),
--   ANY CLAIMS FOR INDEMNITY OR CONTRIBUTION, OR OTHER SIMILAR COSTS.
--
--   Version History
--   Version 1.0 6/13/2012 Scott Larson
--     Initial Public Release
--
--   Prints "123456789" on a HD44780 compatible 8-bit interface character LCD 
--   module using the lcd_controller.vhd component.
--
--------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY lcd_controller_test IS
	PORT(
		clk       				: IN  STD_LOGIC;  
      rw, rs, e 				: OUT STD_LOGIC;  
      lcd_data  				: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		
		QuadA 					: in std_logic;	
		QuadB 					: in std_logic;	
		CounterValue 			: out std_logic_vector(15 downto 0)
	);	
		
END lcd_controller_test;

ARCHITECTURE behavior OF lcd_controller_test IS
  SIGNAL   	lcd_enable 		: STD_LOGIC;
  SIGNAL   	lcd_bus    		: STD_LOGIC_VECTOR(9 DOWNTO 0);
  SIGNAL   	lcd_busy   		: STD_LOGIC;
  signal		lcd_reset		: STD_LOGIC;
  signal		CountEnable 	: std_logic;
  signal 	CountDirection : std_logic;
  signal 	Count 			: std_logic_vector(15 downto 0);
  TYPE 		CONTROL IS(idle,send,clear);
  SIGNAL		state				: CONTROL;
  
  COMPONENT lcd_controller IS
	PORT(
       clk        			: IN  STD_LOGIC; --system clock
       reset_n    			: IN  STD_LOGIC; --active low reinitializes lcd
       lcd_enable 			: IN  STD_LOGIC; --latches data into lcd controller
       lcd_bus    			: IN  STD_LOGIC_VECTOR(9 DOWNTO 0); --data and control signals
       busy       			: OUT STD_LOGIC; --lcd controller busy/idle feedback
       rw, rs, e  			: OUT STD_LOGIC; --read/write, setup/data, and enable for lcd
       lcd_data   			: OUT STD_LOGIC_VECTOR(7 DOWNTO 0)); --data signals for lcd
	END COMPONENT;
  	
	component QuadratureDecoderPorts
    		Port (
        			clock     	: in    std_logic;
        			QuadA     	: in    std_logic;
        			QuadB     	: in    std_logic;
        			Direction 	: out std_logic;
	   			CountEnable : out std_logic
    			);
	end component;
  
BEGIN
	
  --instantiate the lcd controller
	dut: lcd_controller
   PORT MAP(
		clk => clk, 
		reset_n => lcd_reset, 
		lcd_enable => lcd_enable, 
		lcd_bus => lcd_bus, 
      busy => lcd_busy, 
		rw => rw, 
		rs => rs, 
		e => e, 
		lcd_data => lcd_data
	);
  
	quad: QuadratureDecoderPorts
	port map	( 
 		clock => clk,
	   QuadA => QuadA,
		QuadB => QuadB,
    	Direction => CountDirection,
	   CountEnable => CountEnable
	);
 
  
  PROCESS(clk)
    VARIABLE char  		:  INTEGER RANGE 0 TO 10 := 0;
  BEGIN
  
	
	IF(clk'EVENT AND clk = '1') THEN

		case state is
			WHEN send =>			
				IF(lcd_busy = '0' AND lcd_enable = '0') THEN
					lcd_enable <= '1';
					lcd_reset <= '1';
					state <= idle;
				
					CASE char IS
						WHEN 1 => lcd_bus <= "1000110001";
						WHEN 2 => lcd_bus <= "1000110010";
						WHEN 3 => lcd_bus <= "1000110011";
						WHEN 4 => lcd_bus <= "1000110100";
						WHEN 5 => lcd_bus <= "1000110101";
						WHEN 6 => lcd_bus <= "1000110110";
						WHEN 7 => lcd_bus <= "1000110111";
						WHEN 8 => lcd_bus <= "1000111000";
						WHEN 9 => lcd_bus <= "1000111001";
						WHEN OTHERS => lcd_enable <= '0';
					END CASE;
			
				ELSE
					lcd_enable <= '0';
				END IF;
			WHEN idle =>
				if (CountEnable = '1') then
					if (CountDirection = '1') then 
						char := char + 1; 
						state <= clear;
					end if;
						
					if (CountDirection = '0') then 
						char := char - 1; 							
						state <= clear;
					end if;					
				end if;
			WHEN clear =>
				lcd_reset <= '0';
				state <= send;
			end case;
				
		
    END IF;
  END PROCESS;
  
END behavior;
