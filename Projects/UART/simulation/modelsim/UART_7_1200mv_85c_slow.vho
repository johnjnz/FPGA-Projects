-- Copyright (C) 1991-2014 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 14.0.0 Build 200 06/17/2014 SJ Web Edition"

-- DATE "11/08/2014 20:52:03"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	UART IS
    PORT (
	clk_50Mhz : IN std_logic;
	sw : IN std_logic_vector(9 DOWNTO 0);
	key : IN std_logic_vector(3 DOWNTO 0);
	led_r : OUT std_logic_vector(9 DOWNTO 0);
	led_g : OUT std_logic_vector(7 DOWNTO 0);
	uart_txd : OUT std_logic;
	uart_rxd : IN std_logic;
	lcd_on : OUT std_logic;
	lcd_rw : OUT std_logic;
	lcd_rs : OUT std_logic;
	lcd_e : OUT std_logic;
	lcd_data : OUT std_logic_vector(7 DOWNTO 0)
	);
END UART;

-- Design Ports Information
-- key[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_r[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- led_r[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- led_r[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- led_r[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- led_r[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- led_r[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- led_r[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- led_r[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- led_r[8]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- led_r[9]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- led_g[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- led_g[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- led_g[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- led_g[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- led_g[4]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- led_g[5]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- led_g[6]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- led_g[7]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- uart_txd	=>  Location: PIN_G9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- lcd_on	=>  Location: PIN_L5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- lcd_rw	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- lcd_rs	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- lcd_e	=>  Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- lcd_data[0]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- lcd_data[1]	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- lcd_data[2]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- lcd_data[3]	=>  Location: PIN_K7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- lcd_data[4]	=>  Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- lcd_data[5]	=>  Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- lcd_data[6]	=>  Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- lcd_data[7]	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- sw[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_50Mhz	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uart_rxd	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF UART IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_50Mhz : std_logic;
SIGNAL ww_sw : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_key : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_led_r : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_led_g : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_uart_txd : std_logic;
SIGNAL ww_uart_rxd : std_logic;
SIGNAL ww_lcd_on : std_logic;
SIGNAL ww_lcd_rw : std_logic;
SIGNAL ww_lcd_rs : std_logic;
SIGNAL ww_lcd_e : std_logic;
SIGNAL ww_lcd_data : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk_50Mhz~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RX_COM|busy~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \key[2]~input_o\ : std_logic;
SIGNAL \key[3]~input_o\ : std_logic;
SIGNAL \sw[8]~input_o\ : std_logic;
SIGNAL \sw[9]~input_o\ : std_logic;
SIGNAL \led_r[0]~output_o\ : std_logic;
SIGNAL \led_r[1]~output_o\ : std_logic;
SIGNAL \led_r[2]~output_o\ : std_logic;
SIGNAL \led_r[3]~output_o\ : std_logic;
SIGNAL \led_r[4]~output_o\ : std_logic;
SIGNAL \led_r[5]~output_o\ : std_logic;
SIGNAL \led_r[6]~output_o\ : std_logic;
SIGNAL \led_r[7]~output_o\ : std_logic;
SIGNAL \led_r[8]~output_o\ : std_logic;
SIGNAL \led_r[9]~output_o\ : std_logic;
SIGNAL \led_g[0]~output_o\ : std_logic;
SIGNAL \led_g[1]~output_o\ : std_logic;
SIGNAL \led_g[2]~output_o\ : std_logic;
SIGNAL \led_g[3]~output_o\ : std_logic;
SIGNAL \led_g[4]~output_o\ : std_logic;
SIGNAL \led_g[5]~output_o\ : std_logic;
SIGNAL \led_g[6]~output_o\ : std_logic;
SIGNAL \led_g[7]~output_o\ : std_logic;
SIGNAL \uart_txd~output_o\ : std_logic;
SIGNAL \lcd_on~output_o\ : std_logic;
SIGNAL \lcd_rw~output_o\ : std_logic;
SIGNAL \lcd_rs~output_o\ : std_logic;
SIGNAL \lcd_e~output_o\ : std_logic;
SIGNAL \lcd_data[0]~output_o\ : std_logic;
SIGNAL \lcd_data[1]~output_o\ : std_logic;
SIGNAL \lcd_data[2]~output_o\ : std_logic;
SIGNAL \lcd_data[3]~output_o\ : std_logic;
SIGNAL \lcd_data[4]~output_o\ : std_logic;
SIGNAL \lcd_data[5]~output_o\ : std_logic;
SIGNAL \lcd_data[6]~output_o\ : std_logic;
SIGNAL \lcd_data[7]~output_o\ : std_logic;
SIGNAL \clk_50Mhz~input_o\ : std_logic;
SIGNAL \clk_50Mhz~inputclkctrl_outclk\ : std_logic;
SIGNAL \uart_rxd~input_o\ : std_logic;
SIGNAL \RX_COM|rx_flag~1_combout\ : std_logic;
SIGNAL \RX_COM|rx_flag~q\ : std_logic;
SIGNAL \RX_COM|process_0~0_combout\ : std_logic;
SIGNAL \RX_COM|prscl[0]~26_combout\ : std_logic;
SIGNAL \RX_COM|LessThan0~0_combout\ : std_logic;
SIGNAL \RX_COM|LessThan0~1_combout\ : std_logic;
SIGNAL \RX_COM|prscl[0]~32_combout\ : std_logic;
SIGNAL \RX_COM|prscl[0]~33_combout\ : std_logic;
SIGNAL \RX_COM|prscl[0]~34_combout\ : std_logic;
SIGNAL \RX_COM|prscl~35_combout\ : std_logic;
SIGNAL \RX_COM|prscl[0]~27\ : std_logic;
SIGNAL \RX_COM|prscl[1]~28_combout\ : std_logic;
SIGNAL \RX_COM|prscl[1]~29\ : std_logic;
SIGNAL \RX_COM|prscl[2]~30_combout\ : std_logic;
SIGNAL \RX_COM|prscl[2]~31\ : std_logic;
SIGNAL \RX_COM|prscl[3]~36_combout\ : std_logic;
SIGNAL \RX_COM|prscl[3]~37\ : std_logic;
SIGNAL \RX_COM|prscl[4]~38_combout\ : std_logic;
SIGNAL \RX_COM|prscl[4]~39\ : std_logic;
SIGNAL \RX_COM|prscl[5]~40_combout\ : std_logic;
SIGNAL \RX_COM|prscl[5]~41\ : std_logic;
SIGNAL \RX_COM|prscl[6]~42_combout\ : std_logic;
SIGNAL \RX_COM|prscl[6]~43\ : std_logic;
SIGNAL \RX_COM|prscl[7]~44_combout\ : std_logic;
SIGNAL \RX_COM|prscl[7]~45\ : std_logic;
SIGNAL \RX_COM|prscl[8]~46_combout\ : std_logic;
SIGNAL \RX_COM|prscl[8]~47\ : std_logic;
SIGNAL \RX_COM|prscl[9]~48_combout\ : std_logic;
SIGNAL \RX_COM|prscl[9]~49\ : std_logic;
SIGNAL \RX_COM|prscl[10]~50_combout\ : std_logic;
SIGNAL \RX_COM|prscl[10]~51\ : std_logic;
SIGNAL \RX_COM|prscl[11]~52_combout\ : std_logic;
SIGNAL \RX_COM|prscl[11]~53\ : std_logic;
SIGNAL \RX_COM|prscl[12]~54_combout\ : std_logic;
SIGNAL \RX_COM|Equal0~2_combout\ : std_logic;
SIGNAL \RX_COM|Equal0~0_combout\ : std_logic;
SIGNAL \RX_COM|Equal0~1_combout\ : std_logic;
SIGNAL \RX_COM|Equal0~3_combout\ : std_logic;
SIGNAL \RX_COM|index~5_combout\ : std_logic;
SIGNAL \RX_COM|index~9_combout\ : std_logic;
SIGNAL \RX_COM|index~10_combout\ : std_logic;
SIGNAL \RX_COM|index~11_combout\ : std_logic;
SIGNAL \RX_COM|index~12_combout\ : std_logic;
SIGNAL \RX_COM|Decoder0~0_combout\ : std_logic;
SIGNAL \RX_COM|index~4_combout\ : std_logic;
SIGNAL \RX_COM|index~8_combout\ : std_logic;
SIGNAL \RX_COM|index~6_combout\ : std_logic;
SIGNAL \RX_COM|index~7_combout\ : std_logic;
SIGNAL \RX_COM|data[0]~1_combout\ : std_logic;
SIGNAL \RX_COM|busy~1_combout\ : std_logic;
SIGNAL \RX_COM|busy~feeder_combout\ : std_logic;
SIGNAL \RX_COM|busy~q\ : std_logic;
SIGNAL \RX_COM|busy~clkctrl_outclk\ : std_logic;
SIGNAL \RX_COM|Decoder0~1_combout\ : std_logic;
SIGNAL \RX_COM|datafill[9]~0_combout\ : std_logic;
SIGNAL \RX_COM|Decoder0~2_combout\ : std_logic;
SIGNAL \RX_COM|datafill[1]~1_combout\ : std_logic;
SIGNAL \RX_COM|Decoder0~3_combout\ : std_logic;
SIGNAL \RX_COM|datafill[0]~2_combout\ : std_logic;
SIGNAL \RX_COM|data~0_combout\ : std_logic;
SIGNAL \RX_COM|data[0]~2_combout\ : std_logic;
SIGNAL \led_r[0]~reg0feeder_combout\ : std_logic;
SIGNAL \cmd_index~2_combout\ : std_logic;
SIGNAL \TX_COM|index~2_combout\ : std_logic;
SIGNAL \TX_COM|prscl[0]~13_combout\ : std_logic;
SIGNAL \TX_COM|LessThan0~0_combout\ : std_logic;
SIGNAL \TX_COM|LessThan0~1_combout\ : std_logic;
SIGNAL \TX_COM|LessThan0~2_combout\ : std_logic;
SIGNAL \TX_COM|LessThan0~3_combout\ : std_logic;
SIGNAL \TX_COM|prscl[0]~14\ : std_logic;
SIGNAL \TX_COM|prscl[1]~15_combout\ : std_logic;
SIGNAL \TX_COM|prscl[1]~16\ : std_logic;
SIGNAL \TX_COM|prscl[2]~17_combout\ : std_logic;
SIGNAL \TX_COM|prscl[2]~18\ : std_logic;
SIGNAL \TX_COM|prscl[3]~19_combout\ : std_logic;
SIGNAL \TX_COM|prscl[3]~20\ : std_logic;
SIGNAL \TX_COM|prscl[4]~21_combout\ : std_logic;
SIGNAL \TX_COM|prscl[4]~22\ : std_logic;
SIGNAL \TX_COM|prscl[5]~23_combout\ : std_logic;
SIGNAL \TX_COM|prscl[5]~24\ : std_logic;
SIGNAL \TX_COM|prscl[6]~25_combout\ : std_logic;
SIGNAL \TX_COM|prscl[6]~26\ : std_logic;
SIGNAL \TX_COM|prscl[7]~27_combout\ : std_logic;
SIGNAL \TX_COM|prscl[7]~28\ : std_logic;
SIGNAL \TX_COM|prscl[8]~29_combout\ : std_logic;
SIGNAL \TX_COM|prscl[8]~30\ : std_logic;
SIGNAL \TX_COM|prscl[9]~31_combout\ : std_logic;
SIGNAL \TX_COM|prscl[9]~32\ : std_logic;
SIGNAL \TX_COM|prscl[10]~33_combout\ : std_logic;
SIGNAL \TX_COM|prscl[10]~34\ : std_logic;
SIGNAL \TX_COM|prscl[11]~35_combout\ : std_logic;
SIGNAL \TX_COM|prscl[11]~36\ : std_logic;
SIGNAL \TX_COM|prscl[12]~37_combout\ : std_logic;
SIGNAL \TX_COM|Equal0~2_combout\ : std_logic;
SIGNAL \TX_COM|Equal0~1_combout\ : std_logic;
SIGNAL \TX_COM|Equal0~0_combout\ : std_logic;
SIGNAL \TX_COM|Equal0~3_combout\ : std_logic;
SIGNAL \TX_COM|tx_line~0_combout\ : std_logic;
SIGNAL \TX_COM|index~0_combout\ : std_logic;
SIGNAL \TX_COM|index~1_combout\ : std_logic;
SIGNAL \TX_COM|index~3_combout\ : std_logic;
SIGNAL \TX_COM|busy~0_combout\ : std_logic;
SIGNAL \TX_COM|busy~1_combout\ : std_logic;
SIGNAL \TX_COM|busy~feeder_combout\ : std_logic;
SIGNAL \key[1]~input_o\ : std_logic;
SIGNAL \key[0]~input_o\ : std_logic;
SIGNAL \tx_pressed~0_combout\ : std_logic;
SIGNAL \tx_pressed~q\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \STATE.TXD~q\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \STATE.TXD_POSITION~q\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \tx_start~q\ : std_logic;
SIGNAL \TX_COM|busy~q\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \reset_pressed~q\ : std_logic;
SIGNAL \lcd_reset~feeder_combout\ : std_logic;
SIGNAL \lcd_reset~q\ : std_logic;
SIGNAL \LCD_COM|state~6_combout\ : std_logic;
SIGNAL \LCD_COM|state.power_up~q\ : std_logic;
SIGNAL \LCD_COM|state~9_combout\ : std_logic;
SIGNAL \LCD_COM|state.send~q\ : std_logic;
SIGNAL \LCD_COM|Add0~0_combout\ : std_logic;
SIGNAL \LCD_COM|Selector32~0_combout\ : std_logic;
SIGNAL \LCD_COM|Add0~1\ : std_logic;
SIGNAL \LCD_COM|Add0~2_combout\ : std_logic;
SIGNAL \LCD_COM|Selector31~0_combout\ : std_logic;
SIGNAL \LCD_COM|Add0~3\ : std_logic;
SIGNAL \LCD_COM|Add0~4_combout\ : std_logic;
SIGNAL \LCD_COM|Selector30~0_combout\ : std_logic;
SIGNAL \LCD_COM|Add0~5\ : std_logic;
SIGNAL \LCD_COM|Add0~6_combout\ : std_logic;
SIGNAL \LCD_COM|Selector29~0_combout\ : std_logic;
SIGNAL \LCD_COM|Add0~7\ : std_logic;
SIGNAL \LCD_COM|Add0~8_combout\ : std_logic;
SIGNAL \LCD_COM|Selector28~0_combout\ : std_logic;
SIGNAL \LCD_COM|Add0~9\ : std_logic;
SIGNAL \LCD_COM|Add0~10_combout\ : std_logic;
SIGNAL \LCD_COM|Selector27~0_combout\ : std_logic;
SIGNAL \LCD_COM|LessThan9~3_combout\ : std_logic;
SIGNAL \LCD_COM|Add0~11\ : std_logic;
SIGNAL \LCD_COM|Add0~12_combout\ : std_logic;
SIGNAL \LCD_COM|Selector26~0_combout\ : std_logic;
SIGNAL \LCD_COM|Add0~13\ : std_logic;
SIGNAL \LCD_COM|Add0~14_combout\ : std_logic;
SIGNAL \LCD_COM|Selector25~0_combout\ : std_logic;
SIGNAL \LCD_COM|Add0~15\ : std_logic;
SIGNAL \LCD_COM|Add0~16_combout\ : std_logic;
SIGNAL \LCD_COM|Selector24~0_combout\ : std_logic;
SIGNAL \LCD_COM|LessThan9~4_combout\ : std_logic;
SIGNAL \LCD_COM|Add0~17\ : std_logic;
SIGNAL \LCD_COM|Add0~18_combout\ : std_logic;
SIGNAL \LCD_COM|Selector23~0_combout\ : std_logic;
SIGNAL \LCD_COM|Add0~19\ : std_logic;
SIGNAL \LCD_COM|Add0~20_combout\ : std_logic;
SIGNAL \LCD_COM|Selector22~0_combout\ : std_logic;
SIGNAL \LCD_COM|LessThan9~5_combout\ : std_logic;
SIGNAL \LCD_COM|Add0~21\ : std_logic;
SIGNAL \LCD_COM|Add0~22_combout\ : std_logic;
SIGNAL \LCD_COM|Selector21~0_combout\ : std_logic;
SIGNAL \LCD_COM|Add0~53\ : std_logic;
SIGNAL \LCD_COM|Add0~54_combout\ : std_logic;
SIGNAL \LCD_COM|Selector5~0_combout\ : std_logic;
SIGNAL \LCD_COM|Add0~55\ : std_logic;
SIGNAL \LCD_COM|Add0~56_combout\ : std_logic;
SIGNAL \LCD_COM|Selector4~0_combout\ : std_logic;
SIGNAL \LCD_COM|Add0~57\ : std_logic;
SIGNAL \LCD_COM|Add0~58_combout\ : std_logic;
SIGNAL \LCD_COM|Selector3~0_combout\ : std_logic;
SIGNAL \LCD_COM|Add0~59\ : std_logic;
SIGNAL \LCD_COM|Add0~60_combout\ : std_logic;
SIGNAL \LCD_COM|Selector2~0_combout\ : std_logic;
SIGNAL \LCD_COM|LessThan0~9_combout\ : std_logic;
SIGNAL \LCD_COM|Add0~23\ : std_logic;
SIGNAL \LCD_COM|Add0~24_combout\ : std_logic;
SIGNAL \LCD_COM|Selector20~0_combout\ : std_logic;
SIGNAL \LCD_COM|Add0~25\ : std_logic;
SIGNAL \LCD_COM|Add0~26_combout\ : std_logic;
SIGNAL \LCD_COM|Selector19~0_combout\ : std_logic;
SIGNAL \LCD_COM|Add0~27\ : std_logic;
SIGNAL \LCD_COM|Add0~28_combout\ : std_logic;
SIGNAL \LCD_COM|Selector18~0_combout\ : std_logic;
SIGNAL \LCD_COM|Add0~29\ : std_logic;
SIGNAL \LCD_COM|Add0~30_combout\ : std_logic;
SIGNAL \LCD_COM|Selector17~0_combout\ : std_logic;
SIGNAL \LCD_COM|Add0~31\ : std_logic;
SIGNAL \LCD_COM|Add0~32_combout\ : std_logic;
SIGNAL \LCD_COM|Selector16~0_combout\ : std_logic;
SIGNAL \LCD_COM|Add0~33\ : std_logic;
SIGNAL \LCD_COM|Add0~34_combout\ : std_logic;
SIGNAL \LCD_COM|Selector15~0_combout\ : std_logic;
SIGNAL \LCD_COM|Add0~35\ : std_logic;
SIGNAL \LCD_COM|Add0~36_combout\ : std_logic;
SIGNAL \LCD_COM|Selector14~0_combout\ : std_logic;
SIGNAL \LCD_COM|Add0~37\ : std_logic;
SIGNAL \LCD_COM|Add0~38_combout\ : std_logic;
SIGNAL \LCD_COM|Selector13~0_combout\ : std_logic;
SIGNAL \LCD_COM|LessThan9~0_combout\ : std_logic;
SIGNAL \LCD_COM|LessThan0~3_combout\ : std_logic;
SIGNAL \LCD_COM|LessThan9~1_combout\ : std_logic;
SIGNAL \LCD_COM|LessThan9~2_combout\ : std_logic;
SIGNAL \LCD_COM|LessThan9~6_combout\ : std_logic;
SIGNAL \LCD_COM|Add0~61\ : std_logic;
SIGNAL \LCD_COM|Add0~62_combout\ : std_logic;
SIGNAL \LCD_COM|Selector1~0_combout\ : std_logic;
SIGNAL \LCD_COM|Selector10~0_combout\ : std_logic;
SIGNAL \LCD_COM|Add0~39\ : std_logic;
SIGNAL \LCD_COM|Add0~40_combout\ : std_logic;
SIGNAL \LCD_COM|Selector12~0_combout\ : std_logic;
SIGNAL \LCD_COM|Add0~41\ : std_logic;
SIGNAL \LCD_COM|Add0~42_combout\ : std_logic;
SIGNAL \LCD_COM|Selector11~0_combout\ : std_logic;
SIGNAL \LCD_COM|Add0~43\ : std_logic;
SIGNAL \LCD_COM|Add0~44_combout\ : std_logic;
SIGNAL \LCD_COM|Selector10~1_combout\ : std_logic;
SIGNAL \LCD_COM|Add0~45\ : std_logic;
SIGNAL \LCD_COM|Add0~46_combout\ : std_logic;
SIGNAL \LCD_COM|Selector9~0_combout\ : std_logic;
SIGNAL \LCD_COM|Add0~47\ : std_logic;
SIGNAL \LCD_COM|Add0~48_combout\ : std_logic;
SIGNAL \LCD_COM|Selector8~0_combout\ : std_logic;
SIGNAL \LCD_COM|Add0~49\ : std_logic;
SIGNAL \LCD_COM|Add0~50_combout\ : std_logic;
SIGNAL \LCD_COM|Selector7~0_combout\ : std_logic;
SIGNAL \LCD_COM|Add0~51\ : std_logic;
SIGNAL \LCD_COM|Add0~52_combout\ : std_logic;
SIGNAL \LCD_COM|Selector6~0_combout\ : std_logic;
SIGNAL \LCD_COM|LessThan0~7_combout\ : std_logic;
SIGNAL \LCD_COM|LessThan0~8_combout\ : std_logic;
SIGNAL \LCD_COM|LessThan0~0_combout\ : std_logic;
SIGNAL \LCD_COM|LessThan0~1_combout\ : std_logic;
SIGNAL \LCD_COM|LessThan0~2_combout\ : std_logic;
SIGNAL \LCD_COM|LessThan0~4_combout\ : std_logic;
SIGNAL \LCD_COM|LessThan0~5_combout\ : std_logic;
SIGNAL \LCD_COM|LessThan0~6_combout\ : std_logic;
SIGNAL \LCD_COM|LessThan0~10_combout\ : std_logic;
SIGNAL \LCD_COM|state~7_combout\ : std_logic;
SIGNAL \LCD_COM|state~8_combout\ : std_logic;
SIGNAL \LCD_COM|state.ready~q\ : std_logic;
SIGNAL \LCD_COM|Selector0~0_combout\ : std_logic;
SIGNAL \LCD_COM|busy~q\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \STATE.RESET~q\ : std_logic;
SIGNAL \Selector1~3_combout\ : std_logic;
SIGNAL \Selector34~0_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \STATE.TXD_UPDATE~q\ : std_logic;
SIGNAL \char_index[3]~5_combout\ : std_logic;
SIGNAL \Selector33~0_combout\ : std_logic;
SIGNAL \char_index[3]~4_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Selector32~0_combout\ : std_logic;
SIGNAL \char_index[3]~6_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector1~2_combout\ : std_logic;
SIGNAL \Selector1~4_combout\ : std_logic;
SIGNAL \lcd_enable~q\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \LessThan2~11_combout\ : std_logic;
SIGNAL \LessThan2~5_combout\ : std_logic;
SIGNAL \LessThan2~9_combout\ : std_logic;
SIGNAL \LessThan2~10_combout\ : std_logic;
SIGNAL \LessThan2~12_combout\ : std_logic;
SIGNAL \clk_count~22_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \clk_count~30_combout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \clk_count~29_combout\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \clk_count~28_combout\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \clk_count~27_combout\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \clk_count~26_combout\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \clk_count~25_combout\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \clk_count~24_combout\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \clk_count~23_combout\ : std_logic;
SIGNAL \Add3~15\ : std_logic;
SIGNAL \Add3~16_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \Add3~17\ : std_logic;
SIGNAL \Add3~18_combout\ : std_logic;
SIGNAL \LessThan2~2_combout\ : std_logic;
SIGNAL \LessThan2~3_combout\ : std_logic;
SIGNAL \LessThan2~4_combout\ : std_logic;
SIGNAL \clk_count~21_combout\ : std_logic;
SIGNAL \Add3~19\ : std_logic;
SIGNAL \Add3~20_combout\ : std_logic;
SIGNAL \clk_count~20_combout\ : std_logic;
SIGNAL \Add3~21\ : std_logic;
SIGNAL \Add3~22_combout\ : std_logic;
SIGNAL \clk_count~19_combout\ : std_logic;
SIGNAL \Add3~23\ : std_logic;
SIGNAL \Add3~24_combout\ : std_logic;
SIGNAL \clk_count~18_combout\ : std_logic;
SIGNAL \Add3~25\ : std_logic;
SIGNAL \Add3~26_combout\ : std_logic;
SIGNAL \clk_count~17_combout\ : std_logic;
SIGNAL \Add3~27\ : std_logic;
SIGNAL \Add3~28_combout\ : std_logic;
SIGNAL \clk_count~16_combout\ : std_logic;
SIGNAL \Add3~29\ : std_logic;
SIGNAL \Add3~30_combout\ : std_logic;
SIGNAL \clk_count~15_combout\ : std_logic;
SIGNAL \Add3~31\ : std_logic;
SIGNAL \Add3~32_combout\ : std_logic;
SIGNAL \clk_count~14_combout\ : std_logic;
SIGNAL \Add3~33\ : std_logic;
SIGNAL \Add3~34_combout\ : std_logic;
SIGNAL \clk_count~13_combout\ : std_logic;
SIGNAL \Add3~35\ : std_logic;
SIGNAL \Add3~36_combout\ : std_logic;
SIGNAL \clk_count~12_combout\ : std_logic;
SIGNAL \Add3~37\ : std_logic;
SIGNAL \Add3~38_combout\ : std_logic;
SIGNAL \clk_count~11_combout\ : std_logic;
SIGNAL \Add3~39\ : std_logic;
SIGNAL \Add3~40_combout\ : std_logic;
SIGNAL \clk_count~10_combout\ : std_logic;
SIGNAL \Add3~41\ : std_logic;
SIGNAL \Add3~42_combout\ : std_logic;
SIGNAL \clk_count~9_combout\ : std_logic;
SIGNAL \Add3~43\ : std_logic;
SIGNAL \Add3~44_combout\ : std_logic;
SIGNAL \clk_count~8_combout\ : std_logic;
SIGNAL \Add3~45\ : std_logic;
SIGNAL \Add3~46_combout\ : std_logic;
SIGNAL \clk_count~7_combout\ : std_logic;
SIGNAL \Add3~47\ : std_logic;
SIGNAL \Add3~48_combout\ : std_logic;
SIGNAL \clk_count~6_combout\ : std_logic;
SIGNAL \Add3~49\ : std_logic;
SIGNAL \Add3~50_combout\ : std_logic;
SIGNAL \clk_count~5_combout\ : std_logic;
SIGNAL \Add3~51\ : std_logic;
SIGNAL \Add3~52_combout\ : std_logic;
SIGNAL \clk_count~4_combout\ : std_logic;
SIGNAL \Add3~53\ : std_logic;
SIGNAL \Add3~54_combout\ : std_logic;
SIGNAL \clk_count~3_combout\ : std_logic;
SIGNAL \Add3~55\ : std_logic;
SIGNAL \Add3~56_combout\ : std_logic;
SIGNAL \clk_count~2_combout\ : std_logic;
SIGNAL \Add3~57\ : std_logic;
SIGNAL \Add3~58_combout\ : std_logic;
SIGNAL \clk_count~1_combout\ : std_logic;
SIGNAL \Add3~59\ : std_logic;
SIGNAL \Add3~60_combout\ : std_logic;
SIGNAL \clk_count~0_combout\ : std_logic;
SIGNAL \Add3~61\ : std_logic;
SIGNAL \Add3~62_combout\ : std_logic;
SIGNAL \Selector1~5_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan2~6_combout\ : std_logic;
SIGNAL \LessThan2~7_combout\ : std_logic;
SIGNAL \LessThan2~8_combout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \STATE.PAUSE~q\ : std_logic;
SIGNAL \Selector12~1_combout\ : std_logic;
SIGNAL \STATE.SETUP~q\ : std_logic;
SIGNAL \Selector13~4_combout\ : std_logic;
SIGNAL \cmd_index~0_combout\ : std_logic;
SIGNAL \cmd_index~3_combout\ : std_logic;
SIGNAL \cmd_index~1_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \Selector13~5_combout\ : std_logic;
SIGNAL \Selector13~2_combout\ : std_logic;
SIGNAL \Selector13~3_combout\ : std_logic;
SIGNAL \STATE.IDLE~q\ : std_logic;
SIGNAL \led_r[0]~reg0_q\ : std_logic;
SIGNAL \RX_COM|Decoder0~4_combout\ : std_logic;
SIGNAL \RX_COM|datafill[2]~3_combout\ : std_logic;
SIGNAL \RX_COM|data~3_combout\ : std_logic;
SIGNAL \led_r[1]~reg0feeder_combout\ : std_logic;
SIGNAL \led_r[1]~reg0_q\ : std_logic;
SIGNAL \RX_COM|Decoder0~5_combout\ : std_logic;
SIGNAL \RX_COM|datafill[3]~4_combout\ : std_logic;
SIGNAL \RX_COM|data~4_combout\ : std_logic;
SIGNAL \led_r[2]~reg0feeder_combout\ : std_logic;
SIGNAL \led_r[2]~reg0_q\ : std_logic;
SIGNAL \RX_COM|Decoder0~6_combout\ : std_logic;
SIGNAL \RX_COM|datafill[4]~5_combout\ : std_logic;
SIGNAL \RX_COM|data~5_combout\ : std_logic;
SIGNAL \led_r[3]~reg0feeder_combout\ : std_logic;
SIGNAL \led_r[3]~reg0_q\ : std_logic;
SIGNAL \RX_COM|datafill[5]~6_combout\ : std_logic;
SIGNAL \RX_COM|data~6_combout\ : std_logic;
SIGNAL \led_r[4]~reg0feeder_combout\ : std_logic;
SIGNAL \led_r[4]~reg0_q\ : std_logic;
SIGNAL \RX_COM|datafill[6]~7_combout\ : std_logic;
SIGNAL \RX_COM|data~7_combout\ : std_logic;
SIGNAL \led_r[5]~reg0feeder_combout\ : std_logic;
SIGNAL \led_r[5]~reg0_q\ : std_logic;
SIGNAL \RX_COM|datafill[7]~8_combout\ : std_logic;
SIGNAL \RX_COM|data~8_combout\ : std_logic;
SIGNAL \led_r[6]~reg0feeder_combout\ : std_logic;
SIGNAL \led_r[6]~reg0_q\ : std_logic;
SIGNAL \RX_COM|datafill[8]~9_combout\ : std_logic;
SIGNAL \RX_COM|data~9_combout\ : std_logic;
SIGNAL \led_r[7]~reg0feeder_combout\ : std_logic;
SIGNAL \led_r[7]~reg0_q\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \Selector30~0_combout\ : std_logic;
SIGNAL \Selector30~1_combout\ : std_logic;
SIGNAL \led_g[0]~reg0_q\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \Selector29~0_combout\ : std_logic;
SIGNAL \led_g[1]~reg0_q\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \Selector28~0_combout\ : std_logic;
SIGNAL \led_g[2]~reg0_q\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \Selector27~0_combout\ : std_logic;
SIGNAL \led_g[3]~reg0_q\ : std_logic;
SIGNAL \sw[4]~input_o\ : std_logic;
SIGNAL \Selector26~0_combout\ : std_logic;
SIGNAL \led_g[4]~reg0_q\ : std_logic;
SIGNAL \sw[5]~input_o\ : std_logic;
SIGNAL \Selector25~0_combout\ : std_logic;
SIGNAL \led_g[5]~reg0_q\ : std_logic;
SIGNAL \sw[6]~input_o\ : std_logic;
SIGNAL \Selector24~0_combout\ : std_logic;
SIGNAL \led_g[6]~reg0_q\ : std_logic;
SIGNAL \sw[7]~input_o\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \led_g[7]~reg0_q\ : std_logic;
SIGNAL \TX_COM|datafill[1]~feeder_combout\ : std_logic;
SIGNAL \TX_COM|process_0~0_combout\ : std_logic;
SIGNAL \tx_data[7]~feeder_combout\ : std_logic;
SIGNAL \TX_COM|Mux0~0_combout\ : std_logic;
SIGNAL \tx_data[2]~feeder_combout\ : std_logic;
SIGNAL \TX_COM|datafill[3]~feeder_combout\ : std_logic;
SIGNAL \TX_COM|Mux0~1_combout\ : std_logic;
SIGNAL \TX_COM|Mux0~2_combout\ : std_logic;
SIGNAL \tx_data[4]~feeder_combout\ : std_logic;
SIGNAL \TX_COM|datafill[5]~feeder_combout\ : std_logic;
SIGNAL \tx_data[3]~feeder_combout\ : std_logic;
SIGNAL \TX_COM|Mux0~3_combout\ : std_logic;
SIGNAL \TX_COM|datafill[6]~feeder_combout\ : std_logic;
SIGNAL \TX_COM|Mux0~4_combout\ : std_logic;
SIGNAL \TX_COM|Mux0~5_combout\ : std_logic;
SIGNAL \TX_COM|tx_line~q\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \Selector2~2_combout\ : std_logic;
SIGNAL \Selector2~3_combout\ : std_logic;
SIGNAL \LCD_COM|Selector35~0_combout\ : std_logic;
SIGNAL \LCD_COM|Selector36~0_combout\ : std_logic;
SIGNAL \LCD_COM|rs~q\ : std_logic;
SIGNAL \LCD_COM|LessThan11~0_combout\ : std_logic;
SIGNAL \LCD_COM|LessThan11~1_combout\ : std_logic;
SIGNAL \LCD_COM|e~3_combout\ : std_logic;
SIGNAL \LCD_COM|LessThan10~0_combout\ : std_logic;
SIGNAL \LCD_COM|LessThan10~1_combout\ : std_logic;
SIGNAL \LCD_COM|LessThan10~2_combout\ : std_logic;
SIGNAL \LCD_COM|e~2_combout\ : std_logic;
SIGNAL \LCD_COM|LessThan9~7_combout\ : std_logic;
SIGNAL \LCD_COM|LessThan12~0_combout\ : std_logic;
SIGNAL \LCD_COM|LessThan12~1_combout\ : std_logic;
SIGNAL \LCD_COM|e~0_combout\ : std_logic;
SIGNAL \LCD_COM|e~1_combout\ : std_logic;
SIGNAL \LCD_COM|e~4_combout\ : std_logic;
SIGNAL \LCD_COM|e~q\ : std_logic;
SIGNAL \LCD_COM|Selector44~0_combout\ : std_logic;
SIGNAL \Mux17~2_combout\ : std_logic;
SIGNAL \Mux17~3_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux17~1_combout\ : std_logic;
SIGNAL \Selector11~5_combout\ : std_logic;
SIGNAL \Selector11~3_combout\ : std_logic;
SIGNAL \Selector11~4_combout\ : std_logic;
SIGNAL \lcd_bus[2]~5_combout\ : std_logic;
SIGNAL \Selector11~1_combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \Selector11~2_combout\ : std_logic;
SIGNAL \Selector11~6_combout\ : std_logic;
SIGNAL \LCD_COM|Selector44~1_combout\ : std_logic;
SIGNAL \LCD_COM|Selector44~2_combout\ : std_logic;
SIGNAL \Selector10~1_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \Selector10~2_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \LCD_COM|Selector43~0_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \Selector9~1_combout\ : std_logic;
SIGNAL \LCD_COM|Selector42~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Selector8~1_combout\ : std_logic;
SIGNAL \LCD_COM|Selector41~0_combout\ : std_logic;
SIGNAL \LCD_COM|Selector40~1_combout\ : std_logic;
SIGNAL \Selector7~1_combout\ : std_logic;
SIGNAL \Selector7~2_combout\ : std_logic;
SIGNAL \LCD_COM|Selector40~0_combout\ : std_logic;
SIGNAL \LCD_COM|Selector40~2_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Selector6~1_combout\ : std_logic;
SIGNAL \LCD_COM|Selector39~0_combout\ : std_logic;
SIGNAL \LCD_COM|Selector39~1_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \LCD_COM|Selector38~0_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Selector4~1_combout\ : std_logic;
SIGNAL \LCD_COM|Selector37~0_combout\ : std_logic;
SIGNAL \RX_COM|data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL lcd_bus : std_logic_vector(9 DOWNTO 0);
SIGNAL \TX_COM|prscl\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \RX_COM|datafill\ : std_logic_vector(9 DOWNTO 0);
SIGNAL char_index : std_logic_vector(3 DOWNTO 0);
SIGNAL \TX_COM|datafill\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \RX_COM|index\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RX_COM|prscl\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \TX_COM|index\ : std_logic_vector(3 DOWNTO 0);
SIGNAL clk_count : std_logic_vector(31 DOWNTO 0);
SIGNAL cmd_index : std_logic_vector(3 DOWNTO 0);
SIGNAL tx_data : std_logic_vector(7 DOWNTO 0);
SIGNAL \LCD_COM|lcd_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \LCD_COM|clk_count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \TX_COM|ALT_INV_busy~q\ : std_logic;
SIGNAL \RX_COM|ALT_INV_busy~clkctrl_outclk\ : std_logic;

BEGIN

ww_clk_50Mhz <= clk_50Mhz;
ww_sw <= sw;
ww_key <= key;
led_r <= ww_led_r;
led_g <= ww_led_g;
uart_txd <= ww_uart_txd;
ww_uart_rxd <= uart_rxd;
lcd_on <= ww_lcd_on;
lcd_rw <= ww_lcd_rw;
lcd_rs <= ww_lcd_rs;
lcd_e <= ww_lcd_e;
lcd_data <= ww_lcd_data;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk_50Mhz~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_50Mhz~input_o\);

\RX_COM|busy~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RX_COM|busy~q\);
\TX_COM|ALT_INV_busy~q\ <= NOT \TX_COM|busy~q\;
\RX_COM|ALT_INV_busy~clkctrl_outclk\ <= NOT \RX_COM|busy~clkctrl_outclk\;

-- Location: IOOBUF_X69_Y73_N16
\led_r[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led_r[0]~reg0_q\,
	devoe => ww_devoe,
	o => \led_r[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\led_r[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led_r[1]~reg0_q\,
	devoe => ww_devoe,
	o => \led_r[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\led_r[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led_r[2]~reg0_q\,
	devoe => ww_devoe,
	o => \led_r[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\led_r[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led_r[3]~reg0_q\,
	devoe => ww_devoe,
	o => \led_r[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\led_r[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led_r[4]~reg0_q\,
	devoe => ww_devoe,
	o => \led_r[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\led_r[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led_r[5]~reg0_q\,
	devoe => ww_devoe,
	o => \led_r[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\led_r[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led_r[6]~reg0_q\,
	devoe => ww_devoe,
	o => \led_r[6]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\led_r[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led_r[7]~reg0_q\,
	devoe => ww_devoe,
	o => \led_r[7]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\led_r[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led_r[8]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\led_r[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led_r[9]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\led_g[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led_g[0]~reg0_q\,
	devoe => ww_devoe,
	o => \led_g[0]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\led_g[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led_g[1]~reg0_q\,
	devoe => ww_devoe,
	o => \led_g[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\led_g[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led_g[2]~reg0_q\,
	devoe => ww_devoe,
	o => \led_g[2]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\led_g[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led_g[3]~reg0_q\,
	devoe => ww_devoe,
	o => \led_g[3]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\led_g[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led_g[4]~reg0_q\,
	devoe => ww_devoe,
	o => \led_g[4]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\led_g[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led_g[5]~reg0_q\,
	devoe => ww_devoe,
	o => \led_g[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\led_g[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led_g[6]~reg0_q\,
	devoe => ww_devoe,
	o => \led_g[6]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\led_g[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led_g[7]~reg0_q\,
	devoe => ww_devoe,
	o => \led_g[7]~output_o\);

-- Location: IOOBUF_X13_Y73_N23
\uart_txd~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TX_COM|tx_line~q\,
	devoe => ww_devoe,
	o => \uart_txd~output_o\);

-- Location: IOOBUF_X0_Y58_N16
\lcd_on~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \lcd_on~output_o\);

-- Location: IOOBUF_X0_Y44_N23
\lcd_rw~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \lcd_rw~output_o\);

-- Location: IOOBUF_X0_Y44_N16
\lcd_rs~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LCD_COM|rs~q\,
	devoe => ww_devoe,
	o => \lcd_rs~output_o\);

-- Location: IOOBUF_X0_Y52_N2
\lcd_e~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LCD_COM|e~q\,
	devoe => ww_devoe,
	o => \lcd_e~output_o\);

-- Location: IOOBUF_X0_Y52_N16
\lcd_data[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LCD_COM|lcd_data\(0),
	devoe => ww_devoe,
	o => \lcd_data[0]~output_o\);

-- Location: IOOBUF_X0_Y44_N9
\lcd_data[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LCD_COM|lcd_data\(1),
	devoe => ww_devoe,
	o => \lcd_data[1]~output_o\);

-- Location: IOOBUF_X0_Y44_N2
\lcd_data[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LCD_COM|lcd_data\(2),
	devoe => ww_devoe,
	o => \lcd_data[2]~output_o\);

-- Location: IOOBUF_X0_Y49_N9
\lcd_data[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LCD_COM|lcd_data\(3),
	devoe => ww_devoe,
	o => \lcd_data[3]~output_o\);

-- Location: IOOBUF_X0_Y54_N9
\lcd_data[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LCD_COM|lcd_data\(4),
	devoe => ww_devoe,
	o => \lcd_data[4]~output_o\);

-- Location: IOOBUF_X0_Y55_N23
\lcd_data[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LCD_COM|lcd_data\(5),
	devoe => ww_devoe,
	o => \lcd_data[5]~output_o\);

-- Location: IOOBUF_X0_Y51_N16
\lcd_data[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LCD_COM|lcd_data\(6),
	devoe => ww_devoe,
	o => \lcd_data[6]~output_o\);

-- Location: IOOBUF_X0_Y47_N2
\lcd_data[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LCD_COM|lcd_data\(7),
	devoe => ww_devoe,
	o => \lcd_data[7]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\clk_50Mhz~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_50Mhz,
	o => \clk_50Mhz~input_o\);

-- Location: CLKCTRL_G4
\clk_50Mhz~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_50Mhz~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_50Mhz~inputclkctrl_outclk\);

-- Location: IOIBUF_X27_Y73_N8
\uart_rxd~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_uart_rxd,
	o => \uart_rxd~input_o\);

-- Location: LCCOMB_X47_Y23_N4
\RX_COM|rx_flag~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_COM|rx_flag~1_combout\ = (\RX_COM|rx_flag~q\ & ((!\RX_COM|data[0]~1_combout\))) # (!\RX_COM|rx_flag~q\ & (!\uart_rxd~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_rxd~input_o\,
	datac => \RX_COM|rx_flag~q\,
	datad => \RX_COM|data[0]~1_combout\,
	combout => \RX_COM|rx_flag~1_combout\);

-- Location: FF_X47_Y23_N5
\RX_COM|rx_flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \RX_COM|rx_flag~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX_COM|rx_flag~q\);

-- Location: LCCOMB_X48_Y23_N22
\RX_COM|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_COM|process_0~0_combout\ = (!\RX_COM|rx_flag~q\ & !\uart_rxd~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RX_COM|rx_flag~q\,
	datad => \uart_rxd~input_o\,
	combout => \RX_COM|process_0~0_combout\);

-- Location: LCCOMB_X49_Y23_N2
\RX_COM|prscl[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_COM|prscl[0]~26_combout\ = \RX_COM|prscl\(0) $ (VCC)
-- \RX_COM|prscl[0]~27\ = CARRY(\RX_COM|prscl\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RX_COM|prscl\(0),
	datad => VCC,
	combout => \RX_COM|prscl[0]~26_combout\,
	cout => \RX_COM|prscl[0]~27\);

-- Location: LCCOMB_X48_Y23_N10
\RX_COM|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_COM|LessThan0~0_combout\ = ((!\RX_COM|prscl\(2)) # (!\RX_COM|prscl\(0))) # (!\RX_COM|prscl\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX_COM|prscl\(1),
	datac => \RX_COM|prscl\(0),
	datad => \RX_COM|prscl\(2),
	combout => \RX_COM|LessThan0~0_combout\);

-- Location: LCCOMB_X48_Y23_N12
\RX_COM|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_COM|LessThan0~1_combout\ = (!\RX_COM|prscl\(5) & (((!\RX_COM|prscl\(3) & \RX_COM|LessThan0~0_combout\)) # (!\RX_COM|prscl\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX_COM|prscl\(4),
	datab => \RX_COM|prscl\(5),
	datac => \RX_COM|prscl\(3),
	datad => \RX_COM|LessThan0~0_combout\,
	combout => \RX_COM|LessThan0~1_combout\);

-- Location: LCCOMB_X48_Y23_N18
\RX_COM|prscl[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_COM|prscl[0]~32_combout\ = (!\RX_COM|prscl\(8) & (!\RX_COM|prscl\(9) & !\RX_COM|prscl\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RX_COM|prscl\(8),
	datac => \RX_COM|prscl\(9),
	datad => \RX_COM|prscl\(7),
	combout => \RX_COM|prscl[0]~32_combout\);

-- Location: LCCOMB_X48_Y23_N14
\RX_COM|prscl[0]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_COM|prscl[0]~33_combout\ = ((\RX_COM|prscl[0]~32_combout\ & ((\RX_COM|LessThan0~1_combout\) # (!\RX_COM|prscl\(6))))) # (!\RX_COM|prscl\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX_COM|LessThan0~1_combout\,
	datab => \RX_COM|prscl\(10),
	datac => \RX_COM|prscl\(6),
	datad => \RX_COM|prscl[0]~32_combout\,
	combout => \RX_COM|prscl[0]~33_combout\);

-- Location: LCCOMB_X49_Y23_N30
\RX_COM|prscl[0]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_COM|prscl[0]~34_combout\ = ((\RX_COM|prscl\(12) & ((\RX_COM|prscl\(11)) # (!\RX_COM|prscl[0]~33_combout\)))) # (!\RX_COM|rx_flag~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX_COM|prscl\(12),
	datab => \RX_COM|prscl\(11),
	datac => \RX_COM|rx_flag~q\,
	datad => \RX_COM|prscl[0]~33_combout\,
	combout => \RX_COM|prscl[0]~34_combout\);

-- Location: LCCOMB_X47_Y23_N26
\RX_COM|prscl~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_COM|prscl~35_combout\ = (\RX_COM|rx_flag~q\) # (!\uart_rxd~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_rxd~input_o\,
	datac => \RX_COM|rx_flag~q\,
	combout => \RX_COM|prscl~35_combout\);

-- Location: FF_X49_Y23_N3
\RX_COM|prscl[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \RX_COM|prscl[0]~26_combout\,
	sclr => \RX_COM|prscl[0]~34_combout\,
	ena => \RX_COM|prscl~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX_COM|prscl\(0));

-- Location: LCCOMB_X49_Y23_N4
\RX_COM|prscl[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_COM|prscl[1]~28_combout\ = (\RX_COM|prscl\(1) & (!\RX_COM|prscl[0]~27\)) # (!\RX_COM|prscl\(1) & ((\RX_COM|prscl[0]~27\) # (GND)))
-- \RX_COM|prscl[1]~29\ = CARRY((!\RX_COM|prscl[0]~27\) # (!\RX_COM|prscl\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RX_COM|prscl\(1),
	datad => VCC,
	cin => \RX_COM|prscl[0]~27\,
	combout => \RX_COM|prscl[1]~28_combout\,
	cout => \RX_COM|prscl[1]~29\);

-- Location: FF_X49_Y23_N5
\RX_COM|prscl[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \RX_COM|prscl[1]~28_combout\,
	sclr => \RX_COM|prscl[0]~34_combout\,
	ena => \RX_COM|prscl~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX_COM|prscl\(1));

-- Location: LCCOMB_X49_Y23_N6
\RX_COM|prscl[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_COM|prscl[2]~30_combout\ = (\RX_COM|prscl\(2) & (\RX_COM|prscl[1]~29\ $ (GND))) # (!\RX_COM|prscl\(2) & (!\RX_COM|prscl[1]~29\ & VCC))
-- \RX_COM|prscl[2]~31\ = CARRY((\RX_COM|prscl\(2) & !\RX_COM|prscl[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX_COM|prscl\(2),
	datad => VCC,
	cin => \RX_COM|prscl[1]~29\,
	combout => \RX_COM|prscl[2]~30_combout\,
	cout => \RX_COM|prscl[2]~31\);

-- Location: FF_X49_Y23_N7
\RX_COM|prscl[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \RX_COM|prscl[2]~30_combout\,
	sclr => \RX_COM|prscl[0]~34_combout\,
	ena => \RX_COM|prscl~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX_COM|prscl\(2));

-- Location: LCCOMB_X49_Y23_N8
\RX_COM|prscl[3]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_COM|prscl[3]~36_combout\ = (\RX_COM|prscl\(3) & (!\RX_COM|prscl[2]~31\)) # (!\RX_COM|prscl\(3) & ((\RX_COM|prscl[2]~31\) # (GND)))
-- \RX_COM|prscl[3]~37\ = CARRY((!\RX_COM|prscl[2]~31\) # (!\RX_COM|prscl\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX_COM|prscl\(3),
	datad => VCC,
	cin => \RX_COM|prscl[2]~31\,
	combout => \RX_COM|prscl[3]~36_combout\,
	cout => \RX_COM|prscl[3]~37\);

-- Location: FF_X49_Y23_N9
\RX_COM|prscl[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \RX_COM|prscl[3]~36_combout\,
	sclr => \RX_COM|prscl[0]~34_combout\,
	ena => \RX_COM|prscl~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX_COM|prscl\(3));

-- Location: LCCOMB_X49_Y23_N10
\RX_COM|prscl[4]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_COM|prscl[4]~38_combout\ = (\RX_COM|prscl\(4) & (\RX_COM|prscl[3]~37\ $ (GND))) # (!\RX_COM|prscl\(4) & (!\RX_COM|prscl[3]~37\ & VCC))
-- \RX_COM|prscl[4]~39\ = CARRY((\RX_COM|prscl\(4) & !\RX_COM|prscl[3]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RX_COM|prscl\(4),
	datad => VCC,
	cin => \RX_COM|prscl[3]~37\,
	combout => \RX_COM|prscl[4]~38_combout\,
	cout => \RX_COM|prscl[4]~39\);

-- Location: FF_X49_Y23_N11
\RX_COM|prscl[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \RX_COM|prscl[4]~38_combout\,
	sclr => \RX_COM|prscl[0]~34_combout\,
	ena => \RX_COM|prscl~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX_COM|prscl\(4));

-- Location: LCCOMB_X49_Y23_N12
\RX_COM|prscl[5]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_COM|prscl[5]~40_combout\ = (\RX_COM|prscl\(5) & (!\RX_COM|prscl[4]~39\)) # (!\RX_COM|prscl\(5) & ((\RX_COM|prscl[4]~39\) # (GND)))
-- \RX_COM|prscl[5]~41\ = CARRY((!\RX_COM|prscl[4]~39\) # (!\RX_COM|prscl\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RX_COM|prscl\(5),
	datad => VCC,
	cin => \RX_COM|prscl[4]~39\,
	combout => \RX_COM|prscl[5]~40_combout\,
	cout => \RX_COM|prscl[5]~41\);

-- Location: FF_X49_Y23_N13
\RX_COM|prscl[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \RX_COM|prscl[5]~40_combout\,
	sclr => \RX_COM|prscl[0]~34_combout\,
	ena => \RX_COM|prscl~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX_COM|prscl\(5));

-- Location: LCCOMB_X49_Y23_N14
\RX_COM|prscl[6]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_COM|prscl[6]~42_combout\ = (\RX_COM|prscl\(6) & (\RX_COM|prscl[5]~41\ $ (GND))) # (!\RX_COM|prscl\(6) & (!\RX_COM|prscl[5]~41\ & VCC))
-- \RX_COM|prscl[6]~43\ = CARRY((\RX_COM|prscl\(6) & !\RX_COM|prscl[5]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX_COM|prscl\(6),
	datad => VCC,
	cin => \RX_COM|prscl[5]~41\,
	combout => \RX_COM|prscl[6]~42_combout\,
	cout => \RX_COM|prscl[6]~43\);

-- Location: FF_X49_Y23_N15
\RX_COM|prscl[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \RX_COM|prscl[6]~42_combout\,
	sclr => \RX_COM|prscl[0]~34_combout\,
	ena => \RX_COM|prscl~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX_COM|prscl\(6));

-- Location: LCCOMB_X49_Y23_N16
\RX_COM|prscl[7]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_COM|prscl[7]~44_combout\ = (\RX_COM|prscl\(7) & (!\RX_COM|prscl[6]~43\)) # (!\RX_COM|prscl\(7) & ((\RX_COM|prscl[6]~43\) # (GND)))
-- \RX_COM|prscl[7]~45\ = CARRY((!\RX_COM|prscl[6]~43\) # (!\RX_COM|prscl\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX_COM|prscl\(7),
	datad => VCC,
	cin => \RX_COM|prscl[6]~43\,
	combout => \RX_COM|prscl[7]~44_combout\,
	cout => \RX_COM|prscl[7]~45\);

-- Location: FF_X49_Y23_N17
\RX_COM|prscl[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \RX_COM|prscl[7]~44_combout\,
	sclr => \RX_COM|prscl[0]~34_combout\,
	ena => \RX_COM|prscl~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX_COM|prscl\(7));

-- Location: LCCOMB_X49_Y23_N18
\RX_COM|prscl[8]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_COM|prscl[8]~46_combout\ = (\RX_COM|prscl\(8) & (\RX_COM|prscl[7]~45\ $ (GND))) # (!\RX_COM|prscl\(8) & (!\RX_COM|prscl[7]~45\ & VCC))
-- \RX_COM|prscl[8]~47\ = CARRY((\RX_COM|prscl\(8) & !\RX_COM|prscl[7]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RX_COM|prscl\(8),
	datad => VCC,
	cin => \RX_COM|prscl[7]~45\,
	combout => \RX_COM|prscl[8]~46_combout\,
	cout => \RX_COM|prscl[8]~47\);

-- Location: FF_X49_Y23_N19
\RX_COM|prscl[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \RX_COM|prscl[8]~46_combout\,
	sclr => \RX_COM|prscl[0]~34_combout\,
	ena => \RX_COM|prscl~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX_COM|prscl\(8));

-- Location: LCCOMB_X49_Y23_N20
\RX_COM|prscl[9]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_COM|prscl[9]~48_combout\ = (\RX_COM|prscl\(9) & (!\RX_COM|prscl[8]~47\)) # (!\RX_COM|prscl\(9) & ((\RX_COM|prscl[8]~47\) # (GND)))
-- \RX_COM|prscl[9]~49\ = CARRY((!\RX_COM|prscl[8]~47\) # (!\RX_COM|prscl\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RX_COM|prscl\(9),
	datad => VCC,
	cin => \RX_COM|prscl[8]~47\,
	combout => \RX_COM|prscl[9]~48_combout\,
	cout => \RX_COM|prscl[9]~49\);

-- Location: FF_X49_Y23_N21
\RX_COM|prscl[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \RX_COM|prscl[9]~48_combout\,
	sclr => \RX_COM|prscl[0]~34_combout\,
	ena => \RX_COM|prscl~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX_COM|prscl\(9));

-- Location: LCCOMB_X49_Y23_N22
\RX_COM|prscl[10]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_COM|prscl[10]~50_combout\ = (\RX_COM|prscl\(10) & (\RX_COM|prscl[9]~49\ $ (GND))) # (!\RX_COM|prscl\(10) & (!\RX_COM|prscl[9]~49\ & VCC))
-- \RX_COM|prscl[10]~51\ = CARRY((\RX_COM|prscl\(10) & !\RX_COM|prscl[9]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX_COM|prscl\(10),
	datad => VCC,
	cin => \RX_COM|prscl[9]~49\,
	combout => \RX_COM|prscl[10]~50_combout\,
	cout => \RX_COM|prscl[10]~51\);

-- Location: FF_X49_Y23_N23
\RX_COM|prscl[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \RX_COM|prscl[10]~50_combout\,
	sclr => \RX_COM|prscl[0]~34_combout\,
	ena => \RX_COM|prscl~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX_COM|prscl\(10));

-- Location: LCCOMB_X49_Y23_N24
\RX_COM|prscl[11]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_COM|prscl[11]~52_combout\ = (\RX_COM|prscl\(11) & (!\RX_COM|prscl[10]~51\)) # (!\RX_COM|prscl\(11) & ((\RX_COM|prscl[10]~51\) # (GND)))
-- \RX_COM|prscl[11]~53\ = CARRY((!\RX_COM|prscl[10]~51\) # (!\RX_COM|prscl\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RX_COM|prscl\(11),
	datad => VCC,
	cin => \RX_COM|prscl[10]~51\,
	combout => \RX_COM|prscl[11]~52_combout\,
	cout => \RX_COM|prscl[11]~53\);

-- Location: FF_X49_Y23_N25
\RX_COM|prscl[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \RX_COM|prscl[11]~52_combout\,
	sclr => \RX_COM|prscl[0]~34_combout\,
	ena => \RX_COM|prscl~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX_COM|prscl\(11));

-- Location: LCCOMB_X49_Y23_N26
\RX_COM|prscl[12]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_COM|prscl[12]~54_combout\ = \RX_COM|prscl\(12) $ (!\RX_COM|prscl[11]~53\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX_COM|prscl\(12),
	cin => \RX_COM|prscl[11]~53\,
	combout => \RX_COM|prscl[12]~54_combout\);

-- Location: FF_X49_Y23_N27
\RX_COM|prscl[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \RX_COM|prscl[12]~54_combout\,
	sclr => \RX_COM|prscl[0]~34_combout\,
	ena => \RX_COM|prscl~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX_COM|prscl\(12));

-- Location: LCCOMB_X50_Y23_N26
\RX_COM|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_COM|Equal0~2_combout\ = (\RX_COM|prscl\(11) & (\RX_COM|prscl\(8) & (!\RX_COM|prscl\(10) & !\RX_COM|prscl\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX_COM|prscl\(11),
	datab => \RX_COM|prscl\(8),
	datac => \RX_COM|prscl\(10),
	datad => \RX_COM|prscl\(9),
	combout => \RX_COM|Equal0~2_combout\);

-- Location: LCCOMB_X49_Y23_N0
\RX_COM|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_COM|Equal0~0_combout\ = (!\RX_COM|prscl\(0) & (!\RX_COM|prscl\(3) & (!\RX_COM|prscl\(1) & \RX_COM|prscl\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX_COM|prscl\(0),
	datab => \RX_COM|prscl\(3),
	datac => \RX_COM|prscl\(1),
	datad => \RX_COM|prscl\(2),
	combout => \RX_COM|Equal0~0_combout\);

-- Location: LCCOMB_X49_Y23_N28
\RX_COM|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_COM|Equal0~1_combout\ = (!\RX_COM|prscl\(5) & (\RX_COM|prscl\(7) & (\RX_COM|prscl\(6) & !\RX_COM|prscl\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX_COM|prscl\(5),
	datab => \RX_COM|prscl\(7),
	datac => \RX_COM|prscl\(6),
	datad => \RX_COM|prscl\(4),
	combout => \RX_COM|Equal0~1_combout\);

-- Location: LCCOMB_X50_Y23_N20
\RX_COM|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_COM|Equal0~3_combout\ = (!\RX_COM|prscl\(12) & (\RX_COM|Equal0~2_combout\ & (\RX_COM|Equal0~0_combout\ & \RX_COM|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX_COM|prscl\(12),
	datab => \RX_COM|Equal0~2_combout\,
	datac => \RX_COM|Equal0~0_combout\,
	datad => \RX_COM|Equal0~1_combout\,
	combout => \RX_COM|Equal0~3_combout\);

-- Location: LCCOMB_X48_Y23_N6
\RX_COM|index~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_COM|index~5_combout\ = (\RX_COM|rx_flag~q\ & \RX_COM|index~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RX_COM|rx_flag~q\,
	datad => \RX_COM|index~4_combout\,
	combout => \RX_COM|index~5_combout\);

-- Location: LCCOMB_X48_Y23_N20
\RX_COM|index~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_COM|index~9_combout\ = (\RX_COM|index~5_combout\ & ((\RX_COM|index\(0) $ (\RX_COM|index\(1))))) # (!\RX_COM|index~5_combout\ & (!\RX_COM|process_0~0_combout\ & ((\RX_COM|index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX_COM|process_0~0_combout\,
	datab => \RX_COM|index\(0),
	datac => \RX_COM|index\(1),
	datad => \RX_COM|index~5_combout\,
	combout => \RX_COM|index~9_combout\);

-- Location: FF_X48_Y23_N21
\RX_COM|index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \RX_COM|index~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX_COM|index\(1));

-- Location: LCCOMB_X48_Y23_N2
\RX_COM|index~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_COM|index~10_combout\ = (\RX_COM|index~4_combout\ & (\RX_COM|index\(2) $ (((\RX_COM|index\(0) & \RX_COM|index\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX_COM|index\(0),
	datab => \RX_COM|index\(2),
	datac => \RX_COM|index\(1),
	datad => \RX_COM|index~4_combout\,
	combout => \RX_COM|index~10_combout\);

-- Location: LCCOMB_X48_Y23_N0
\RX_COM|index~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_COM|index~11_combout\ = (\RX_COM|index~10_combout\) # ((\RX_COM|index\(2) & ((\RX_COM|index\(3)) # (!\RX_COM|Equal0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX_COM|index\(3),
	datab => \RX_COM|index\(2),
	datac => \RX_COM|Equal0~3_combout\,
	datad => \RX_COM|index~10_combout\,
	combout => \RX_COM|index~11_combout\);

-- Location: LCCOMB_X48_Y23_N26
\RX_COM|index~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_COM|index~12_combout\ = (\RX_COM|rx_flag~q\ & (((\RX_COM|index~11_combout\)))) # (!\RX_COM|rx_flag~q\ & (\uart_rxd~input_o\ & (\RX_COM|index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rxd~input_o\,
	datab => \RX_COM|rx_flag~q\,
	datac => \RX_COM|index\(2),
	datad => \RX_COM|index~11_combout\,
	combout => \RX_COM|index~12_combout\);

-- Location: FF_X48_Y23_N27
\RX_COM|index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \RX_COM|index~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX_COM|index\(2));

-- Location: LCCOMB_X48_Y23_N16
\RX_COM|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_COM|Decoder0~0_combout\ = (!\RX_COM|index\(2) & !\RX_COM|index\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RX_COM|index\(2),
	datad => \RX_COM|index\(1),
	combout => \RX_COM|Decoder0~0_combout\);

-- Location: LCCOMB_X50_Y23_N4
\RX_COM|index~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_COM|index~4_combout\ = (\RX_COM|Equal0~3_combout\ & (((!\RX_COM|index\(0) & \RX_COM|Decoder0~0_combout\)) # (!\RX_COM|index\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX_COM|index\(3),
	datab => \RX_COM|index\(0),
	datac => \RX_COM|Decoder0~0_combout\,
	datad => \RX_COM|Equal0~3_combout\,
	combout => \RX_COM|index~4_combout\);

-- Location: LCCOMB_X47_Y23_N14
\RX_COM|index~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_COM|index~8_combout\ = (\RX_COM|rx_flag~q\ & ((\RX_COM|index\(0) $ (\RX_COM|index~4_combout\)))) # (!\RX_COM|rx_flag~q\ & (\uart_rxd~input_o\ & (\RX_COM|index\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rxd~input_o\,
	datab => \RX_COM|rx_flag~q\,
	datac => \RX_COM|index\(0),
	datad => \RX_COM|index~4_combout\,
	combout => \RX_COM|index~8_combout\);

-- Location: FF_X47_Y23_N15
\RX_COM|index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \RX_COM|index~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX_COM|index\(0));

-- Location: LCCOMB_X48_Y23_N8
\RX_COM|index~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_COM|index~6_combout\ = (\RX_COM|index\(0) & (\RX_COM|index\(2) & \RX_COM|index\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX_COM|index\(0),
	datac => \RX_COM|index\(2),
	datad => \RX_COM|index\(1),
	combout => \RX_COM|index~6_combout\);

-- Location: LCCOMB_X48_Y23_N28
\RX_COM|index~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_COM|index~7_combout\ = (\RX_COM|process_0~0_combout\ & (\RX_COM|index~6_combout\ & ((\RX_COM|index~5_combout\)))) # (!\RX_COM|process_0~0_combout\ & ((\RX_COM|index\(3)) # ((\RX_COM|index~6_combout\ & \RX_COM|index~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX_COM|process_0~0_combout\,
	datab => \RX_COM|index~6_combout\,
	datac => \RX_COM|index\(3),
	datad => \RX_COM|index~5_combout\,
	combout => \RX_COM|index~7_combout\);

-- Location: FF_X48_Y23_N29
\RX_COM|index[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \RX_COM|index~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX_COM|index\(3));

-- Location: LCCOMB_X50_Y23_N22
\RX_COM|data[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_COM|data[0]~1_combout\ = (\RX_COM|index\(3) & (\RX_COM|Equal0~3_combout\ & ((\RX_COM|index\(0)) # (!\RX_COM|Decoder0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX_COM|index\(3),
	datab => \RX_COM|index\(0),
	datac => \RX_COM|Decoder0~0_combout\,
	datad => \RX_COM|Equal0~3_combout\,
	combout => \RX_COM|data[0]~1_combout\);

-- Location: LCCOMB_X48_Y23_N24
\RX_COM|busy~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_COM|busy~1_combout\ = (\RX_COM|rx_flag~q\ & (((!\RX_COM|data[0]~1_combout\ & \RX_COM|busy~q\)))) # (!\RX_COM|rx_flag~q\ & (((\RX_COM|busy~q\)) # (!\uart_rxd~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rxd~input_o\,
	datab => \RX_COM|data[0]~1_combout\,
	datac => \RX_COM|rx_flag~q\,
	datad => \RX_COM|busy~q\,
	combout => \RX_COM|busy~1_combout\);

-- Location: LCCOMB_X48_Y23_N30
\RX_COM|busy~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_COM|busy~feeder_combout\ = \RX_COM|busy~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RX_COM|busy~1_combout\,
	combout => \RX_COM|busy~feeder_combout\);

-- Location: FF_X48_Y23_N31
\RX_COM|busy\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \RX_COM|busy~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX_COM|busy~q\);

-- Location: CLKCTRL_G18
\RX_COM|busy~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RX_COM|busy~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RX_COM|busy~clkctrl_outclk\);

-- Location: LCCOMB_X47_Y23_N20
\RX_COM|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_COM|Decoder0~1_combout\ = (!\RX_COM|index\(1) & (!\RX_COM|index\(2) & (\RX_COM|rx_flag~q\ & \RX_COM|index\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX_COM|index\(1),
	datab => \RX_COM|index\(2),
	datac => \RX_COM|rx_flag~q\,
	datad => \RX_COM|index\(3),
	combout => \RX_COM|Decoder0~1_combout\);

-- Location: LCCOMB_X47_Y23_N8
\RX_COM|datafill[9]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_COM|datafill[9]~0_combout\ = (\RX_COM|index\(0) & ((\RX_COM|Decoder0~1_combout\ & (\uart_rxd~input_o\)) # (!\RX_COM|Decoder0~1_combout\ & ((\RX_COM|datafill\(9)))))) # (!\RX_COM|index\(0) & (((\RX_COM|datafill\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX_COM|index\(0),
	datab => \uart_rxd~input_o\,
	datac => \RX_COM|datafill\(9),
	datad => \RX_COM|Decoder0~1_combout\,
	combout => \RX_COM|datafill[9]~0_combout\);

-- Location: FF_X47_Y23_N9
\RX_COM|datafill[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \RX_COM|datafill[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX_COM|datafill\(9));

-- Location: LCCOMB_X47_Y23_N30
\RX_COM|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_COM|Decoder0~2_combout\ = (!\RX_COM|index\(3) & (\RX_COM|rx_flag~q\ & \RX_COM|index\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RX_COM|index\(3),
	datac => \RX_COM|rx_flag~q\,
	datad => \RX_COM|index\(0),
	combout => \RX_COM|Decoder0~2_combout\);

-- Location: LCCOMB_X47_Y23_N10
\RX_COM|datafill[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_COM|datafill[1]~1_combout\ = (\RX_COM|Decoder0~2_combout\ & ((\RX_COM|Decoder0~0_combout\ & ((\uart_rxd~input_o\))) # (!\RX_COM|Decoder0~0_combout\ & (\RX_COM|datafill\(1))))) # (!\RX_COM|Decoder0~2_combout\ & (((\RX_COM|datafill\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX_COM|Decoder0~2_combout\,
	datab => \RX_COM|Decoder0~0_combout\,
	datac => \RX_COM|datafill\(1),
	datad => \uart_rxd~input_o\,
	combout => \RX_COM|datafill[1]~1_combout\);

-- Location: FF_X47_Y23_N11
\RX_COM|datafill[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \RX_COM|datafill[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX_COM|datafill\(1));

-- Location: LCCOMB_X47_Y23_N16
\RX_COM|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_COM|Decoder0~3_combout\ = (!\RX_COM|index\(3) & (\RX_COM|rx_flag~q\ & !\RX_COM|index\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RX_COM|index\(3),
	datac => \RX_COM|rx_flag~q\,
	datad => \RX_COM|index\(0),
	combout => \RX_COM|Decoder0~3_combout\);

-- Location: LCCOMB_X50_Y23_N0
\RX_COM|datafill[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_COM|datafill[0]~2_combout\ = (\RX_COM|Decoder0~3_combout\ & ((\RX_COM|Decoder0~0_combout\ & (\uart_rxd~input_o\)) # (!\RX_COM|Decoder0~0_combout\ & ((\RX_COM|datafill\(0)))))) # (!\RX_COM|Decoder0~3_combout\ & (((\RX_COM|datafill\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX_COM|Decoder0~3_combout\,
	datab => \uart_rxd~input_o\,
	datac => \RX_COM|datafill\(0),
	datad => \RX_COM|Decoder0~0_combout\,
	combout => \RX_COM|datafill[0]~2_combout\);

-- Location: FF_X50_Y23_N1
\RX_COM|datafill[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \RX_COM|datafill[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX_COM|datafill\(0));

-- Location: LCCOMB_X50_Y23_N24
\RX_COM|data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_COM|data~0_combout\ = (\RX_COM|datafill\(9) & (\RX_COM|datafill\(1) & !\RX_COM|datafill\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX_COM|datafill\(9),
	datac => \RX_COM|datafill\(1),
	datad => \RX_COM|datafill\(0),
	combout => \RX_COM|data~0_combout\);

-- Location: LCCOMB_X50_Y23_N16
\RX_COM|data[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_COM|data[0]~2_combout\ = (\RX_COM|data[0]~1_combout\ & \RX_COM|rx_flag~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RX_COM|data[0]~1_combout\,
	datad => \RX_COM|rx_flag~q\,
	combout => \RX_COM|data[0]~2_combout\);

-- Location: FF_X50_Y23_N25
\RX_COM|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \RX_COM|data~0_combout\,
	ena => \RX_COM|data[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX_COM|data\(0));

-- Location: LCCOMB_X59_Y39_N24
\led_r[0]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \led_r[0]~reg0feeder_combout\ = \RX_COM|data\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RX_COM|data\(0),
	combout => \led_r[0]~reg0feeder_combout\);

-- Location: LCCOMB_X61_Y39_N16
\cmd_index~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \cmd_index~2_combout\ = (cmd_index(1) & ((cmd_index(2) & (!cmd_index(3) & !cmd_index(0))) # (!cmd_index(2) & ((cmd_index(0)))))) # (!cmd_index(1) & (((cmd_index(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cmd_index(1),
	datab => cmd_index(3),
	datac => cmd_index(2),
	datad => cmd_index(0),
	combout => \cmd_index~2_combout\);

-- Location: LCCOMB_X61_Y38_N8
\TX_COM|index~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX_COM|index~2_combout\ = (!\TX_COM|index\(3) & (\TX_COM|index\(1) $ (\TX_COM|index\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TX_COM|index\(3),
	datac => \TX_COM|index\(1),
	datad => \TX_COM|index\(0),
	combout => \TX_COM|index~2_combout\);

-- Location: LCCOMB_X60_Y38_N2
\TX_COM|prscl[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX_COM|prscl[0]~13_combout\ = \TX_COM|prscl\(0) $ (VCC)
-- \TX_COM|prscl[0]~14\ = CARRY(\TX_COM|prscl\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TX_COM|prscl\(0),
	datad => VCC,
	combout => \TX_COM|prscl[0]~13_combout\,
	cout => \TX_COM|prscl[0]~14\);

-- Location: LCCOMB_X60_Y38_N28
\TX_COM|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX_COM|LessThan0~0_combout\ = (!\TX_COM|prscl\(3) & (((!\TX_COM|prscl\(0)) # (!\TX_COM|prscl\(1))) # (!\TX_COM|prscl\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX_COM|prscl\(2),
	datab => \TX_COM|prscl\(1),
	datac => \TX_COM|prscl\(3),
	datad => \TX_COM|prscl\(0),
	combout => \TX_COM|LessThan0~0_combout\);

-- Location: LCCOMB_X61_Y38_N18
\TX_COM|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX_COM|LessThan0~1_combout\ = ((!\TX_COM|prscl\(5) & ((\TX_COM|LessThan0~0_combout\) # (!\TX_COM|prscl\(4))))) # (!\TX_COM|prscl\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX_COM|prscl\(5),
	datab => \TX_COM|LessThan0~0_combout\,
	datac => \TX_COM|prscl\(6),
	datad => \TX_COM|prscl\(4),
	combout => \TX_COM|LessThan0~1_combout\);

-- Location: LCCOMB_X61_Y38_N4
\TX_COM|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX_COM|LessThan0~2_combout\ = (!\TX_COM|prscl\(9) & (!\TX_COM|prscl\(8) & (!\TX_COM|prscl\(7) & \TX_COM|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX_COM|prscl\(9),
	datab => \TX_COM|prscl\(8),
	datac => \TX_COM|prscl\(7),
	datad => \TX_COM|LessThan0~1_combout\,
	combout => \TX_COM|LessThan0~2_combout\);

-- Location: LCCOMB_X60_Y38_N30
\TX_COM|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX_COM|LessThan0~3_combout\ = (\TX_COM|prscl\(12) & ((\TX_COM|prscl\(11)) # ((\TX_COM|prscl\(10) & !\TX_COM|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX_COM|prscl\(12),
	datab => \TX_COM|prscl\(11),
	datac => \TX_COM|prscl\(10),
	datad => \TX_COM|LessThan0~2_combout\,
	combout => \TX_COM|LessThan0~3_combout\);

-- Location: FF_X60_Y38_N3
\TX_COM|prscl[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \TX_COM|prscl[0]~13_combout\,
	sclr => \TX_COM|LessThan0~3_combout\,
	ena => \TX_COM|busy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX_COM|prscl\(0));

-- Location: LCCOMB_X60_Y38_N4
\TX_COM|prscl[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX_COM|prscl[1]~15_combout\ = (\TX_COM|prscl\(1) & (!\TX_COM|prscl[0]~14\)) # (!\TX_COM|prscl\(1) & ((\TX_COM|prscl[0]~14\) # (GND)))
-- \TX_COM|prscl[1]~16\ = CARRY((!\TX_COM|prscl[0]~14\) # (!\TX_COM|prscl\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TX_COM|prscl\(1),
	datad => VCC,
	cin => \TX_COM|prscl[0]~14\,
	combout => \TX_COM|prscl[1]~15_combout\,
	cout => \TX_COM|prscl[1]~16\);

-- Location: FF_X60_Y38_N5
\TX_COM|prscl[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \TX_COM|prscl[1]~15_combout\,
	sclr => \TX_COM|LessThan0~3_combout\,
	ena => \TX_COM|busy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX_COM|prscl\(1));

-- Location: LCCOMB_X60_Y38_N6
\TX_COM|prscl[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX_COM|prscl[2]~17_combout\ = (\TX_COM|prscl\(2) & (\TX_COM|prscl[1]~16\ $ (GND))) # (!\TX_COM|prscl\(2) & (!\TX_COM|prscl[1]~16\ & VCC))
-- \TX_COM|prscl[2]~18\ = CARRY((\TX_COM|prscl\(2) & !\TX_COM|prscl[1]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TX_COM|prscl\(2),
	datad => VCC,
	cin => \TX_COM|prscl[1]~16\,
	combout => \TX_COM|prscl[2]~17_combout\,
	cout => \TX_COM|prscl[2]~18\);

-- Location: FF_X60_Y38_N7
\TX_COM|prscl[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \TX_COM|prscl[2]~17_combout\,
	sclr => \TX_COM|LessThan0~3_combout\,
	ena => \TX_COM|busy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX_COM|prscl\(2));

-- Location: LCCOMB_X60_Y38_N8
\TX_COM|prscl[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX_COM|prscl[3]~19_combout\ = (\TX_COM|prscl\(3) & (!\TX_COM|prscl[2]~18\)) # (!\TX_COM|prscl\(3) & ((\TX_COM|prscl[2]~18\) # (GND)))
-- \TX_COM|prscl[3]~20\ = CARRY((!\TX_COM|prscl[2]~18\) # (!\TX_COM|prscl\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TX_COM|prscl\(3),
	datad => VCC,
	cin => \TX_COM|prscl[2]~18\,
	combout => \TX_COM|prscl[3]~19_combout\,
	cout => \TX_COM|prscl[3]~20\);

-- Location: FF_X60_Y38_N9
\TX_COM|prscl[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \TX_COM|prscl[3]~19_combout\,
	sclr => \TX_COM|LessThan0~3_combout\,
	ena => \TX_COM|busy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX_COM|prscl\(3));

-- Location: LCCOMB_X60_Y38_N10
\TX_COM|prscl[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX_COM|prscl[4]~21_combout\ = (\TX_COM|prscl\(4) & (\TX_COM|prscl[3]~20\ $ (GND))) # (!\TX_COM|prscl\(4) & (!\TX_COM|prscl[3]~20\ & VCC))
-- \TX_COM|prscl[4]~22\ = CARRY((\TX_COM|prscl\(4) & !\TX_COM|prscl[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TX_COM|prscl\(4),
	datad => VCC,
	cin => \TX_COM|prscl[3]~20\,
	combout => \TX_COM|prscl[4]~21_combout\,
	cout => \TX_COM|prscl[4]~22\);

-- Location: FF_X60_Y38_N11
\TX_COM|prscl[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \TX_COM|prscl[4]~21_combout\,
	sclr => \TX_COM|LessThan0~3_combout\,
	ena => \TX_COM|busy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX_COM|prscl\(4));

-- Location: LCCOMB_X60_Y38_N12
\TX_COM|prscl[5]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX_COM|prscl[5]~23_combout\ = (\TX_COM|prscl\(5) & (!\TX_COM|prscl[4]~22\)) # (!\TX_COM|prscl\(5) & ((\TX_COM|prscl[4]~22\) # (GND)))
-- \TX_COM|prscl[5]~24\ = CARRY((!\TX_COM|prscl[4]~22\) # (!\TX_COM|prscl\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TX_COM|prscl\(5),
	datad => VCC,
	cin => \TX_COM|prscl[4]~22\,
	combout => \TX_COM|prscl[5]~23_combout\,
	cout => \TX_COM|prscl[5]~24\);

-- Location: FF_X60_Y38_N13
\TX_COM|prscl[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \TX_COM|prscl[5]~23_combout\,
	sclr => \TX_COM|LessThan0~3_combout\,
	ena => \TX_COM|busy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX_COM|prscl\(5));

-- Location: LCCOMB_X60_Y38_N14
\TX_COM|prscl[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX_COM|prscl[6]~25_combout\ = (\TX_COM|prscl\(6) & (\TX_COM|prscl[5]~24\ $ (GND))) # (!\TX_COM|prscl\(6) & (!\TX_COM|prscl[5]~24\ & VCC))
-- \TX_COM|prscl[6]~26\ = CARRY((\TX_COM|prscl\(6) & !\TX_COM|prscl[5]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TX_COM|prscl\(6),
	datad => VCC,
	cin => \TX_COM|prscl[5]~24\,
	combout => \TX_COM|prscl[6]~25_combout\,
	cout => \TX_COM|prscl[6]~26\);

-- Location: FF_X60_Y38_N15
\TX_COM|prscl[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \TX_COM|prscl[6]~25_combout\,
	sclr => \TX_COM|LessThan0~3_combout\,
	ena => \TX_COM|busy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX_COM|prscl\(6));

-- Location: LCCOMB_X60_Y38_N16
\TX_COM|prscl[7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX_COM|prscl[7]~27_combout\ = (\TX_COM|prscl\(7) & (!\TX_COM|prscl[6]~26\)) # (!\TX_COM|prscl\(7) & ((\TX_COM|prscl[6]~26\) # (GND)))
-- \TX_COM|prscl[7]~28\ = CARRY((!\TX_COM|prscl[6]~26\) # (!\TX_COM|prscl\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TX_COM|prscl\(7),
	datad => VCC,
	cin => \TX_COM|prscl[6]~26\,
	combout => \TX_COM|prscl[7]~27_combout\,
	cout => \TX_COM|prscl[7]~28\);

-- Location: FF_X60_Y38_N17
\TX_COM|prscl[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \TX_COM|prscl[7]~27_combout\,
	sclr => \TX_COM|LessThan0~3_combout\,
	ena => \TX_COM|busy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX_COM|prscl\(7));

-- Location: LCCOMB_X60_Y38_N18
\TX_COM|prscl[8]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX_COM|prscl[8]~29_combout\ = (\TX_COM|prscl\(8) & (\TX_COM|prscl[7]~28\ $ (GND))) # (!\TX_COM|prscl\(8) & (!\TX_COM|prscl[7]~28\ & VCC))
-- \TX_COM|prscl[8]~30\ = CARRY((\TX_COM|prscl\(8) & !\TX_COM|prscl[7]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TX_COM|prscl\(8),
	datad => VCC,
	cin => \TX_COM|prscl[7]~28\,
	combout => \TX_COM|prscl[8]~29_combout\,
	cout => \TX_COM|prscl[8]~30\);

-- Location: FF_X60_Y38_N19
\TX_COM|prscl[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \TX_COM|prscl[8]~29_combout\,
	sclr => \TX_COM|LessThan0~3_combout\,
	ena => \TX_COM|busy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX_COM|prscl\(8));

-- Location: LCCOMB_X60_Y38_N20
\TX_COM|prscl[9]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX_COM|prscl[9]~31_combout\ = (\TX_COM|prscl\(9) & (!\TX_COM|prscl[8]~30\)) # (!\TX_COM|prscl\(9) & ((\TX_COM|prscl[8]~30\) # (GND)))
-- \TX_COM|prscl[9]~32\ = CARRY((!\TX_COM|prscl[8]~30\) # (!\TX_COM|prscl\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TX_COM|prscl\(9),
	datad => VCC,
	cin => \TX_COM|prscl[8]~30\,
	combout => \TX_COM|prscl[9]~31_combout\,
	cout => \TX_COM|prscl[9]~32\);

-- Location: FF_X60_Y38_N21
\TX_COM|prscl[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \TX_COM|prscl[9]~31_combout\,
	sclr => \TX_COM|LessThan0~3_combout\,
	ena => \TX_COM|busy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX_COM|prscl\(9));

-- Location: LCCOMB_X60_Y38_N22
\TX_COM|prscl[10]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX_COM|prscl[10]~33_combout\ = (\TX_COM|prscl\(10) & (\TX_COM|prscl[9]~32\ $ (GND))) # (!\TX_COM|prscl\(10) & (!\TX_COM|prscl[9]~32\ & VCC))
-- \TX_COM|prscl[10]~34\ = CARRY((\TX_COM|prscl\(10) & !\TX_COM|prscl[9]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TX_COM|prscl\(10),
	datad => VCC,
	cin => \TX_COM|prscl[9]~32\,
	combout => \TX_COM|prscl[10]~33_combout\,
	cout => \TX_COM|prscl[10]~34\);

-- Location: FF_X60_Y38_N23
\TX_COM|prscl[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \TX_COM|prscl[10]~33_combout\,
	sclr => \TX_COM|LessThan0~3_combout\,
	ena => \TX_COM|busy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX_COM|prscl\(10));

-- Location: LCCOMB_X60_Y38_N24
\TX_COM|prscl[11]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX_COM|prscl[11]~35_combout\ = (\TX_COM|prscl\(11) & (!\TX_COM|prscl[10]~34\)) # (!\TX_COM|prscl\(11) & ((\TX_COM|prscl[10]~34\) # (GND)))
-- \TX_COM|prscl[11]~36\ = CARRY((!\TX_COM|prscl[10]~34\) # (!\TX_COM|prscl\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \TX_COM|prscl\(11),
	datad => VCC,
	cin => \TX_COM|prscl[10]~34\,
	combout => \TX_COM|prscl[11]~35_combout\,
	cout => \TX_COM|prscl[11]~36\);

-- Location: FF_X60_Y38_N25
\TX_COM|prscl[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \TX_COM|prscl[11]~35_combout\,
	sclr => \TX_COM|LessThan0~3_combout\,
	ena => \TX_COM|busy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX_COM|prscl\(11));

-- Location: LCCOMB_X60_Y38_N26
\TX_COM|prscl[12]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX_COM|prscl[12]~37_combout\ = \TX_COM|prscl\(12) $ (!\TX_COM|prscl[11]~36\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \TX_COM|prscl\(12),
	cin => \TX_COM|prscl[11]~36\,
	combout => \TX_COM|prscl[12]~37_combout\);

-- Location: FF_X60_Y38_N27
\TX_COM|prscl[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \TX_COM|prscl[12]~37_combout\,
	sclr => \TX_COM|LessThan0~3_combout\,
	ena => \TX_COM|busy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX_COM|prscl\(12));

-- Location: LCCOMB_X61_Y38_N24
\TX_COM|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX_COM|Equal0~2_combout\ = (!\TX_COM|prscl\(6) & (\TX_COM|prscl\(9) & (\TX_COM|prscl\(11) & !\TX_COM|prscl\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX_COM|prscl\(6),
	datab => \TX_COM|prscl\(9),
	datac => \TX_COM|prscl\(11),
	datad => \TX_COM|prscl\(10),
	combout => \TX_COM|Equal0~2_combout\);

-- Location: LCCOMB_X61_Y38_N30
\TX_COM|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX_COM|Equal0~1_combout\ = (\TX_COM|prscl\(5) & (!\TX_COM|prscl\(8) & (!\TX_COM|prscl\(7) & !\TX_COM|prscl\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX_COM|prscl\(5),
	datab => \TX_COM|prscl\(8),
	datac => \TX_COM|prscl\(7),
	datad => \TX_COM|prscl\(4),
	combout => \TX_COM|Equal0~1_combout\);

-- Location: LCCOMB_X60_Y38_N0
\TX_COM|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX_COM|Equal0~0_combout\ = (\TX_COM|prscl\(2) & (\TX_COM|prscl\(1) & (\TX_COM|prscl\(3) & \TX_COM|prscl\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX_COM|prscl\(2),
	datab => \TX_COM|prscl\(1),
	datac => \TX_COM|prscl\(3),
	datad => \TX_COM|prscl\(0),
	combout => \TX_COM|Equal0~0_combout\);

-- Location: LCCOMB_X61_Y38_N26
\TX_COM|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX_COM|Equal0~3_combout\ = (!\TX_COM|prscl\(12) & (\TX_COM|Equal0~2_combout\ & (\TX_COM|Equal0~1_combout\ & \TX_COM|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX_COM|prscl\(12),
	datab => \TX_COM|Equal0~2_combout\,
	datac => \TX_COM|Equal0~1_combout\,
	datad => \TX_COM|Equal0~0_combout\,
	combout => \TX_COM|Equal0~3_combout\);

-- Location: LCCOMB_X61_Y38_N12
\TX_COM|tx_line~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX_COM|tx_line~0_combout\ = (\TX_COM|busy~q\ & \TX_COM|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TX_COM|busy~q\,
	datac => \TX_COM|Equal0~3_combout\,
	combout => \TX_COM|tx_line~0_combout\);

-- Location: FF_X61_Y38_N9
\TX_COM|index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \TX_COM|index~2_combout\,
	ena => \TX_COM|tx_line~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX_COM|index\(1));

-- Location: LCCOMB_X61_Y38_N2
\TX_COM|index~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX_COM|index~0_combout\ = (!\TX_COM|index\(0) & (((!\TX_COM|index\(1) & !\TX_COM|index\(2))) # (!\TX_COM|index\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX_COM|index\(3),
	datab => \TX_COM|index\(1),
	datac => \TX_COM|index\(0),
	datad => \TX_COM|index\(2),
	combout => \TX_COM|index~0_combout\);

-- Location: FF_X61_Y38_N3
\TX_COM|index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \TX_COM|index~0_combout\,
	ena => \TX_COM|tx_line~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX_COM|index\(0));

-- Location: LCCOMB_X61_Y38_N20
\TX_COM|index~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX_COM|index~1_combout\ = (\TX_COM|index\(0) & (\TX_COM|index\(1) & (!\TX_COM|index\(3) & \TX_COM|index\(2)))) # (!\TX_COM|index\(0) & (!\TX_COM|index\(1) & (\TX_COM|index\(3) & !\TX_COM|index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX_COM|index\(0),
	datab => \TX_COM|index\(1),
	datac => \TX_COM|index\(3),
	datad => \TX_COM|index\(2),
	combout => \TX_COM|index~1_combout\);

-- Location: FF_X61_Y38_N21
\TX_COM|index[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \TX_COM|index~1_combout\,
	ena => \TX_COM|tx_line~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX_COM|index\(3));

-- Location: LCCOMB_X61_Y38_N28
\TX_COM|index~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX_COM|index~3_combout\ = (!\TX_COM|index\(3) & (\TX_COM|index\(2) $ (((\TX_COM|index\(1) & \TX_COM|index\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX_COM|index\(3),
	datab => \TX_COM|index\(1),
	datac => \TX_COM|index\(2),
	datad => \TX_COM|index\(0),
	combout => \TX_COM|index~3_combout\);

-- Location: FF_X61_Y38_N29
\TX_COM|index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \TX_COM|index~3_combout\,
	ena => \TX_COM|tx_line~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX_COM|index\(2));

-- Location: LCCOMB_X61_Y38_N22
\TX_COM|busy~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX_COM|busy~0_combout\ = (!\TX_COM|index\(2) & !\TX_COM|index\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TX_COM|index\(2),
	datac => \TX_COM|index\(1),
	combout => \TX_COM|busy~0_combout\);

-- Location: LCCOMB_X61_Y38_N0
\TX_COM|busy~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX_COM|busy~1_combout\ = (((\TX_COM|busy~0_combout\ & !\TX_COM|index\(0))) # (!\TX_COM|Equal0~3_combout\)) # (!\TX_COM|index\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX_COM|busy~0_combout\,
	datab => \TX_COM|index\(3),
	datac => \TX_COM|Equal0~3_combout\,
	datad => \TX_COM|index\(0),
	combout => \TX_COM|busy~1_combout\);

-- Location: LCCOMB_X65_Y39_N16
\TX_COM|busy~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX_COM|busy~feeder_combout\ = \TX_COM|busy~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \TX_COM|busy~1_combout\,
	combout => \TX_COM|busy~feeder_combout\);

-- Location: IOIBUF_X115_Y53_N15
\key[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(1),
	o => \key[1]~input_o\);

-- Location: IOIBUF_X115_Y40_N8
\key[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(0),
	o => \key[0]~input_o\);

-- Location: LCCOMB_X65_Y39_N18
\tx_pressed~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_pressed~0_combout\ = (\key[0]~input_o\ & (!\key[1]~input_o\ & (\tx_pressed~q\))) # (!\key[0]~input_o\ & (((\tx_pressed~q\) # (!\TX_COM|busy~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key[1]~input_o\,
	datab => \key[0]~input_o\,
	datac => \tx_pressed~q\,
	datad => \TX_COM|busy~q\,
	combout => \tx_pressed~0_combout\);

-- Location: FF_X65_Y39_N19
tx_pressed : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \tx_pressed~0_combout\,
	ena => \STATE.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_pressed~q\);

-- Location: LCCOMB_X59_Y39_N28
\Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (!\TX_COM|busy~q\ & (!\tx_pressed~q\ & (!\key[0]~input_o\ & \STATE.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX_COM|busy~q\,
	datab => \tx_pressed~q\,
	datac => \key[0]~input_o\,
	datad => \STATE.IDLE~q\,
	combout => \Selector14~0_combout\);

-- Location: FF_X59_Y39_N29
\STATE.TXD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATE.TXD~q\);

-- Location: LCCOMB_X62_Y39_N10
\Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (\STATE.TXD~q\) # ((\STATE.TXD_POSITION~q\ & ((\lcd_enable~q\) # (!\LCD_COM|busy~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|busy~q\,
	datab => \lcd_enable~q\,
	datac => \STATE.TXD_POSITION~q\,
	datad => \STATE.TXD~q\,
	combout => \Selector18~0_combout\);

-- Location: FF_X62_Y39_N11
\STATE.TXD_POSITION\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \Selector18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATE.TXD_POSITION~q\);

-- Location: LCCOMB_X66_Y39_N8
\Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = (\STATE.TXD~q\) # ((!\STATE.IDLE~q\ & (\tx_start~q\ & !\STATE.TXD_POSITION~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATE.TXD~q\,
	datab => \STATE.IDLE~q\,
	datac => \tx_start~q\,
	datad => \STATE.TXD_POSITION~q\,
	combout => \Selector22~0_combout\);

-- Location: FF_X66_Y39_N9
tx_start : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \Selector22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_start~q\);

-- Location: FF_X65_Y39_N17
\TX_COM|busy\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \TX_COM|busy~feeder_combout\,
	asdata => \tx_start~q\,
	sload => \TX_COM|ALT_INV_busy~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX_COM|busy~q\);

-- Location: LCCOMB_X59_Y39_N6
\process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (\tx_pressed~q\) # ((\key[1]~input_o\) # ((!\TX_COM|busy~q\ & !\key[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX_COM|busy~q\,
	datab => \key[0]~input_o\,
	datac => \tx_pressed~q\,
	datad => \key[1]~input_o\,
	combout => \process_0~0_combout\);

-- Location: LCCOMB_X60_Y39_N20
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\reset_pressed~q\ & ((\STATE.SETUP~q\) # ((\STATE.IDLE~q\)))) # (!\reset_pressed~q\ & (((!\process_0~0_combout\ & \STATE.IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATE.SETUP~q\,
	datab => \process_0~0_combout\,
	datac => \reset_pressed~q\,
	datad => \STATE.IDLE~q\,
	combout => \Selector0~0_combout\);

-- Location: FF_X60_Y39_N21
reset_pressed : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~input_o\,
	d => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reset_pressed~q\);

-- Location: LCCOMB_X60_Y39_N10
\lcd_reset~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_reset~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \lcd_reset~feeder_combout\);

-- Location: FF_X60_Y39_N11
lcd_reset : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reset_pressed~q\,
	d => \lcd_reset~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_reset~q\);

-- Location: LCCOMB_X12_Y49_N10
\LCD_COM|state~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|state~6_combout\ = (!\lcd_reset~q\ & ((\LCD_COM|state.power_up~q\) # (!\LCD_COM|LessThan0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd_reset~q\,
	datac => \LCD_COM|state.power_up~q\,
	datad => \LCD_COM|LessThan0~10_combout\,
	combout => \LCD_COM|state~6_combout\);

-- Location: FF_X12_Y49_N11
\LCD_COM|state.power_up\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \LCD_COM|state~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_COM|state.power_up~q\);

-- Location: LCCOMB_X12_Y49_N26
\LCD_COM|state~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|state~9_combout\ = (!\lcd_reset~q\ & ((\LCD_COM|Selector10~0_combout\) # ((\LCD_COM|state.ready~q\ & \lcd_enable~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|state.ready~q\,
	datab => \lcd_reset~q\,
	datac => \LCD_COM|Selector10~0_combout\,
	datad => \lcd_enable~q\,
	combout => \LCD_COM|state~9_combout\);

-- Location: FF_X12_Y49_N27
\LCD_COM|state.send\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \LCD_COM|state~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_COM|state.send~q\);

-- Location: LCCOMB_X11_Y49_N0
\LCD_COM|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|Add0~0_combout\ = \LCD_COM|clk_count\(0) $ (VCC)
-- \LCD_COM|Add0~1\ = CARRY(\LCD_COM|clk_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_COM|clk_count\(0),
	datad => VCC,
	combout => \LCD_COM|Add0~0_combout\,
	cout => \LCD_COM|Add0~1\);

-- Location: LCCOMB_X10_Y49_N6
\LCD_COM|Selector32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|Selector32~0_combout\ = (\LCD_COM|Add0~0_combout\ & ((\LCD_COM|Selector10~0_combout\) # ((!\LCD_COM|state.power_up~q\ & \LCD_COM|LessThan0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|Selector10~0_combout\,
	datab => \LCD_COM|state.power_up~q\,
	datac => \LCD_COM|Add0~0_combout\,
	datad => \LCD_COM|LessThan0~10_combout\,
	combout => \LCD_COM|Selector32~0_combout\);

-- Location: FF_X10_Y49_N7
\LCD_COM|clk_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \LCD_COM|Selector32~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_COM|clk_count\(0));

-- Location: LCCOMB_X11_Y49_N2
\LCD_COM|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|Add0~2_combout\ = (\LCD_COM|clk_count\(1) & (!\LCD_COM|Add0~1\)) # (!\LCD_COM|clk_count\(1) & ((\LCD_COM|Add0~1\) # (GND)))
-- \LCD_COM|Add0~3\ = CARRY((!\LCD_COM|Add0~1\) # (!\LCD_COM|clk_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_COM|clk_count\(1),
	datad => VCC,
	cin => \LCD_COM|Add0~1\,
	combout => \LCD_COM|Add0~2_combout\,
	cout => \LCD_COM|Add0~3\);

-- Location: LCCOMB_X12_Y49_N8
\LCD_COM|Selector31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|Selector31~0_combout\ = (\LCD_COM|Add0~2_combout\ & ((\LCD_COM|Selector10~0_combout\) # ((\LCD_COM|LessThan0~10_combout\ & !\LCD_COM|state.power_up~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|Add0~2_combout\,
	datab => \LCD_COM|LessThan0~10_combout\,
	datac => \LCD_COM|Selector10~0_combout\,
	datad => \LCD_COM|state.power_up~q\,
	combout => \LCD_COM|Selector31~0_combout\);

-- Location: FF_X12_Y49_N9
\LCD_COM|clk_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \LCD_COM|Selector31~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_COM|clk_count\(1));

-- Location: LCCOMB_X11_Y49_N4
\LCD_COM|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|Add0~4_combout\ = (\LCD_COM|clk_count\(2) & (\LCD_COM|Add0~3\ $ (GND))) # (!\LCD_COM|clk_count\(2) & (!\LCD_COM|Add0~3\ & VCC))
-- \LCD_COM|Add0~5\ = CARRY((\LCD_COM|clk_count\(2) & !\LCD_COM|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|clk_count\(2),
	datad => VCC,
	cin => \LCD_COM|Add0~3\,
	combout => \LCD_COM|Add0~4_combout\,
	cout => \LCD_COM|Add0~5\);

-- Location: LCCOMB_X10_Y49_N10
\LCD_COM|Selector30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|Selector30~0_combout\ = (\LCD_COM|Add0~4_combout\ & ((\LCD_COM|Selector10~0_combout\) # ((!\LCD_COM|state.power_up~q\ & \LCD_COM|LessThan0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|Add0~4_combout\,
	datab => \LCD_COM|state.power_up~q\,
	datac => \LCD_COM|Selector10~0_combout\,
	datad => \LCD_COM|LessThan0~10_combout\,
	combout => \LCD_COM|Selector30~0_combout\);

-- Location: FF_X10_Y49_N11
\LCD_COM|clk_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \LCD_COM|Selector30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_COM|clk_count\(2));

-- Location: LCCOMB_X11_Y49_N6
\LCD_COM|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|Add0~6_combout\ = (\LCD_COM|clk_count\(3) & (!\LCD_COM|Add0~5\)) # (!\LCD_COM|clk_count\(3) & ((\LCD_COM|Add0~5\) # (GND)))
-- \LCD_COM|Add0~7\ = CARRY((!\LCD_COM|Add0~5\) # (!\LCD_COM|clk_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|clk_count\(3),
	datad => VCC,
	cin => \LCD_COM|Add0~5\,
	combout => \LCD_COM|Add0~6_combout\,
	cout => \LCD_COM|Add0~7\);

-- Location: LCCOMB_X12_Y49_N20
\LCD_COM|Selector29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|Selector29~0_combout\ = (\LCD_COM|Add0~6_combout\ & ((\LCD_COM|Selector10~0_combout\) # ((\LCD_COM|LessThan0~10_combout\ & !\LCD_COM|state.power_up~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|Selector10~0_combout\,
	datab => \LCD_COM|Add0~6_combout\,
	datac => \LCD_COM|LessThan0~10_combout\,
	datad => \LCD_COM|state.power_up~q\,
	combout => \LCD_COM|Selector29~0_combout\);

-- Location: FF_X12_Y49_N21
\LCD_COM|clk_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \LCD_COM|Selector29~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_COM|clk_count\(3));

-- Location: LCCOMB_X11_Y49_N8
\LCD_COM|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|Add0~8_combout\ = (\LCD_COM|clk_count\(4) & (\LCD_COM|Add0~7\ $ (GND))) # (!\LCD_COM|clk_count\(4) & (!\LCD_COM|Add0~7\ & VCC))
-- \LCD_COM|Add0~9\ = CARRY((\LCD_COM|clk_count\(4) & !\LCD_COM|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|clk_count\(4),
	datad => VCC,
	cin => \LCD_COM|Add0~7\,
	combout => \LCD_COM|Add0~8_combout\,
	cout => \LCD_COM|Add0~9\);

-- Location: LCCOMB_X10_Y49_N12
\LCD_COM|Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|Selector28~0_combout\ = (\LCD_COM|Add0~8_combout\ & ((\LCD_COM|Selector10~0_combout\) # ((!\LCD_COM|state.power_up~q\ & \LCD_COM|LessThan0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|Selector10~0_combout\,
	datab => \LCD_COM|state.power_up~q\,
	datac => \LCD_COM|Add0~8_combout\,
	datad => \LCD_COM|LessThan0~10_combout\,
	combout => \LCD_COM|Selector28~0_combout\);

-- Location: FF_X10_Y49_N13
\LCD_COM|clk_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \LCD_COM|Selector28~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_COM|clk_count\(4));

-- Location: LCCOMB_X11_Y49_N10
\LCD_COM|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|Add0~10_combout\ = (\LCD_COM|clk_count\(5) & (!\LCD_COM|Add0~9\)) # (!\LCD_COM|clk_count\(5) & ((\LCD_COM|Add0~9\) # (GND)))
-- \LCD_COM|Add0~11\ = CARRY((!\LCD_COM|Add0~9\) # (!\LCD_COM|clk_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_COM|clk_count\(5),
	datad => VCC,
	cin => \LCD_COM|Add0~9\,
	combout => \LCD_COM|Add0~10_combout\,
	cout => \LCD_COM|Add0~11\);

-- Location: LCCOMB_X12_Y48_N22
\LCD_COM|Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|Selector27~0_combout\ = (\LCD_COM|Add0~10_combout\ & ((\LCD_COM|Selector10~0_combout\) # ((!\LCD_COM|state.power_up~q\ & \LCD_COM|LessThan0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|state.power_up~q\,
	datab => \LCD_COM|Add0~10_combout\,
	datac => \LCD_COM|Selector10~0_combout\,
	datad => \LCD_COM|LessThan0~10_combout\,
	combout => \LCD_COM|Selector27~0_combout\);

-- Location: FF_X12_Y48_N23
\LCD_COM|clk_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \LCD_COM|Selector27~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_COM|clk_count\(5));

-- Location: LCCOMB_X13_Y49_N10
\LCD_COM|LessThan9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|LessThan9~3_combout\ = (!\LCD_COM|clk_count\(5) & (!\LCD_COM|clk_count\(3) & (!\LCD_COM|clk_count\(4) & !\LCD_COM|clk_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|clk_count\(5),
	datab => \LCD_COM|clk_count\(3),
	datac => \LCD_COM|clk_count\(4),
	datad => \LCD_COM|clk_count\(2),
	combout => \LCD_COM|LessThan9~3_combout\);

-- Location: LCCOMB_X11_Y49_N12
\LCD_COM|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|Add0~12_combout\ = (\LCD_COM|clk_count\(6) & (\LCD_COM|Add0~11\ $ (GND))) # (!\LCD_COM|clk_count\(6) & (!\LCD_COM|Add0~11\ & VCC))
-- \LCD_COM|Add0~13\ = CARRY((\LCD_COM|clk_count\(6) & !\LCD_COM|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_COM|clk_count\(6),
	datad => VCC,
	cin => \LCD_COM|Add0~11\,
	combout => \LCD_COM|Add0~12_combout\,
	cout => \LCD_COM|Add0~13\);

-- Location: LCCOMB_X12_Y48_N24
\LCD_COM|Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|Selector26~0_combout\ = (\LCD_COM|Add0~12_combout\ & ((\LCD_COM|Selector10~0_combout\) # ((!\LCD_COM|state.power_up~q\ & \LCD_COM|LessThan0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|state.power_up~q\,
	datab => \LCD_COM|Add0~12_combout\,
	datac => \LCD_COM|Selector10~0_combout\,
	datad => \LCD_COM|LessThan0~10_combout\,
	combout => \LCD_COM|Selector26~0_combout\);

-- Location: FF_X12_Y48_N25
\LCD_COM|clk_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \LCD_COM|Selector26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_COM|clk_count\(6));

-- Location: LCCOMB_X11_Y49_N14
\LCD_COM|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|Add0~14_combout\ = (\LCD_COM|clk_count\(7) & (!\LCD_COM|Add0~13\)) # (!\LCD_COM|clk_count\(7) & ((\LCD_COM|Add0~13\) # (GND)))
-- \LCD_COM|Add0~15\ = CARRY((!\LCD_COM|Add0~13\) # (!\LCD_COM|clk_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|clk_count\(7),
	datad => VCC,
	cin => \LCD_COM|Add0~13\,
	combout => \LCD_COM|Add0~14_combout\,
	cout => \LCD_COM|Add0~15\);

-- Location: LCCOMB_X13_Y49_N0
\LCD_COM|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|Selector25~0_combout\ = (\LCD_COM|Add0~14_combout\ & ((\LCD_COM|Selector10~0_combout\) # ((!\LCD_COM|state.power_up~q\ & \LCD_COM|LessThan0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|state.power_up~q\,
	datab => \LCD_COM|Add0~14_combout\,
	datac => \LCD_COM|LessThan0~10_combout\,
	datad => \LCD_COM|Selector10~0_combout\,
	combout => \LCD_COM|Selector25~0_combout\);

-- Location: FF_X13_Y49_N1
\LCD_COM|clk_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \LCD_COM|Selector25~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_COM|clk_count\(7));

-- Location: LCCOMB_X11_Y49_N16
\LCD_COM|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|Add0~16_combout\ = (\LCD_COM|clk_count\(8) & (\LCD_COM|Add0~15\ $ (GND))) # (!\LCD_COM|clk_count\(8) & (!\LCD_COM|Add0~15\ & VCC))
-- \LCD_COM|Add0~17\ = CARRY((\LCD_COM|clk_count\(8) & !\LCD_COM|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_COM|clk_count\(8),
	datad => VCC,
	cin => \LCD_COM|Add0~15\,
	combout => \LCD_COM|Add0~16_combout\,
	cout => \LCD_COM|Add0~17\);

-- Location: LCCOMB_X12_Y49_N16
\LCD_COM|Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|Selector24~0_combout\ = (\LCD_COM|Add0~16_combout\ & ((\LCD_COM|Selector10~0_combout\) # ((\LCD_COM|LessThan0~10_combout\ & !\LCD_COM|state.power_up~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|Add0~16_combout\,
	datab => \LCD_COM|LessThan0~10_combout\,
	datac => \LCD_COM|Selector10~0_combout\,
	datad => \LCD_COM|state.power_up~q\,
	combout => \LCD_COM|Selector24~0_combout\);

-- Location: FF_X12_Y49_N17
\LCD_COM|clk_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \LCD_COM|Selector24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_COM|clk_count\(8));

-- Location: LCCOMB_X13_Y49_N20
\LCD_COM|LessThan9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|LessThan9~4_combout\ = ((!\LCD_COM|clk_count\(7)) # (!\LCD_COM|clk_count\(6))) # (!\LCD_COM|clk_count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|clk_count\(8),
	datac => \LCD_COM|clk_count\(6),
	datad => \LCD_COM|clk_count\(7),
	combout => \LCD_COM|LessThan9~4_combout\);

-- Location: LCCOMB_X11_Y49_N18
\LCD_COM|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|Add0~18_combout\ = (\LCD_COM|clk_count\(9) & (!\LCD_COM|Add0~17\)) # (!\LCD_COM|clk_count\(9) & ((\LCD_COM|Add0~17\) # (GND)))
-- \LCD_COM|Add0~19\ = CARRY((!\LCD_COM|Add0~17\) # (!\LCD_COM|clk_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|clk_count\(9),
	datad => VCC,
	cin => \LCD_COM|Add0~17\,
	combout => \LCD_COM|Add0~18_combout\,
	cout => \LCD_COM|Add0~19\);

-- Location: LCCOMB_X13_Y49_N28
\LCD_COM|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|Selector23~0_combout\ = (\LCD_COM|Add0~18_combout\ & ((\LCD_COM|Selector10~0_combout\) # ((!\LCD_COM|state.power_up~q\ & \LCD_COM|LessThan0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|state.power_up~q\,
	datab => \LCD_COM|Add0~18_combout\,
	datac => \LCD_COM|LessThan0~10_combout\,
	datad => \LCD_COM|Selector10~0_combout\,
	combout => \LCD_COM|Selector23~0_combout\);

-- Location: FF_X13_Y49_N29
\LCD_COM|clk_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \LCD_COM|Selector23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_COM|clk_count\(9));

-- Location: LCCOMB_X11_Y49_N20
\LCD_COM|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|Add0~20_combout\ = (\LCD_COM|clk_count\(10) & (\LCD_COM|Add0~19\ $ (GND))) # (!\LCD_COM|clk_count\(10) & (!\LCD_COM|Add0~19\ & VCC))
-- \LCD_COM|Add0~21\ = CARRY((\LCD_COM|clk_count\(10) & !\LCD_COM|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|clk_count\(10),
	datad => VCC,
	cin => \LCD_COM|Add0~19\,
	combout => \LCD_COM|Add0~20_combout\,
	cout => \LCD_COM|Add0~21\);

-- Location: LCCOMB_X13_Y49_N30
\LCD_COM|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|Selector22~0_combout\ = (\LCD_COM|Add0~20_combout\ & ((\LCD_COM|Selector10~0_combout\) # ((!\LCD_COM|state.power_up~q\ & \LCD_COM|LessThan0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|state.power_up~q\,
	datab => \LCD_COM|Selector10~0_combout\,
	datac => \LCD_COM|Add0~20_combout\,
	datad => \LCD_COM|LessThan0~10_combout\,
	combout => \LCD_COM|Selector22~0_combout\);

-- Location: FF_X13_Y49_N31
\LCD_COM|clk_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \LCD_COM|Selector22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_COM|clk_count\(10));

-- Location: LCCOMB_X13_Y49_N6
\LCD_COM|LessThan9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|LessThan9~5_combout\ = (!\LCD_COM|clk_count\(10) & (!\LCD_COM|clk_count\(9) & ((\LCD_COM|LessThan9~3_combout\) # (\LCD_COM|LessThan9~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|LessThan9~3_combout\,
	datab => \LCD_COM|LessThan9~4_combout\,
	datac => \LCD_COM|clk_count\(10),
	datad => \LCD_COM|clk_count\(9),
	combout => \LCD_COM|LessThan9~5_combout\);

-- Location: LCCOMB_X11_Y49_N22
\LCD_COM|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|Add0~22_combout\ = (\LCD_COM|clk_count\(11) & (!\LCD_COM|Add0~21\)) # (!\LCD_COM|clk_count\(11) & ((\LCD_COM|Add0~21\) # (GND)))
-- \LCD_COM|Add0~23\ = CARRY((!\LCD_COM|Add0~21\) # (!\LCD_COM|clk_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|clk_count\(11),
	datad => VCC,
	cin => \LCD_COM|Add0~21\,
	combout => \LCD_COM|Add0~22_combout\,
	cout => \LCD_COM|Add0~23\);

-- Location: LCCOMB_X12_Y49_N2
\LCD_COM|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|Selector21~0_combout\ = (\LCD_COM|Add0~22_combout\ & ((\LCD_COM|Selector10~0_combout\) # ((!\LCD_COM|state.power_up~q\ & \LCD_COM|LessThan0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|state.power_up~q\,
	datab => \LCD_COM|LessThan0~10_combout\,
	datac => \LCD_COM|Selector10~0_combout\,
	datad => \LCD_COM|Add0~22_combout\,
	combout => \LCD_COM|Selector21~0_combout\);

-- Location: FF_X12_Y49_N3
\LCD_COM|clk_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \LCD_COM|Selector21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_COM|clk_count\(11));

-- Location: LCCOMB_X11_Y48_N20
\LCD_COM|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|Add0~52_combout\ = (\LCD_COM|clk_count\(26) & (\LCD_COM|Add0~51\ $ (GND))) # (!\LCD_COM|clk_count\(26) & (!\LCD_COM|Add0~51\ & VCC))
-- \LCD_COM|Add0~53\ = CARRY((\LCD_COM|clk_count\(26) & !\LCD_COM|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_COM|clk_count\(26),
	datad => VCC,
	cin => \LCD_COM|Add0~51\,
	combout => \LCD_COM|Add0~52_combout\,
	cout => \LCD_COM|Add0~53\);

-- Location: LCCOMB_X11_Y48_N22
\LCD_COM|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|Add0~54_combout\ = (\LCD_COM|clk_count\(27) & (!\LCD_COM|Add0~53\)) # (!\LCD_COM|clk_count\(27) & ((\LCD_COM|Add0~53\) # (GND)))
-- \LCD_COM|Add0~55\ = CARRY((!\LCD_COM|Add0~53\) # (!\LCD_COM|clk_count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|clk_count\(27),
	datad => VCC,
	cin => \LCD_COM|Add0~53\,
	combout => \LCD_COM|Add0~54_combout\,
	cout => \LCD_COM|Add0~55\);

-- Location: LCCOMB_X10_Y48_N6
\LCD_COM|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|Selector5~0_combout\ = (\LCD_COM|Add0~54_combout\ & ((\LCD_COM|Selector10~0_combout\) # ((!\LCD_COM|state.power_up~q\ & \LCD_COM|LessThan0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|state.power_up~q\,
	datab => \LCD_COM|Add0~54_combout\,
	datac => \LCD_COM|LessThan0~10_combout\,
	datad => \LCD_COM|Selector10~0_combout\,
	combout => \LCD_COM|Selector5~0_combout\);

-- Location: FF_X10_Y48_N7
\LCD_COM|clk_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \LCD_COM|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_COM|clk_count\(27));

-- Location: LCCOMB_X11_Y48_N24
\LCD_COM|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|Add0~56_combout\ = (\LCD_COM|clk_count\(28) & (\LCD_COM|Add0~55\ $ (GND))) # (!\LCD_COM|clk_count\(28) & (!\LCD_COM|Add0~55\ & VCC))
-- \LCD_COM|Add0~57\ = CARRY((\LCD_COM|clk_count\(28) & !\LCD_COM|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|clk_count\(28),
	datad => VCC,
	cin => \LCD_COM|Add0~55\,
	combout => \LCD_COM|Add0~56_combout\,
	cout => \LCD_COM|Add0~57\);

-- Location: LCCOMB_X10_Y48_N8
\LCD_COM|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|Selector4~0_combout\ = (\LCD_COM|Add0~56_combout\ & ((\LCD_COM|Selector10~0_combout\) # ((!\LCD_COM|state.power_up~q\ & \LCD_COM|LessThan0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|state.power_up~q\,
	datab => \LCD_COM|Add0~56_combout\,
	datac => \LCD_COM|LessThan0~10_combout\,
	datad => \LCD_COM|Selector10~0_combout\,
	combout => \LCD_COM|Selector4~0_combout\);

-- Location: FF_X10_Y48_N9
\LCD_COM|clk_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \LCD_COM|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_COM|clk_count\(28));

-- Location: LCCOMB_X11_Y48_N26
\LCD_COM|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|Add0~58_combout\ = (\LCD_COM|clk_count\(29) & (!\LCD_COM|Add0~57\)) # (!\LCD_COM|clk_count\(29) & ((\LCD_COM|Add0~57\) # (GND)))
-- \LCD_COM|Add0~59\ = CARRY((!\LCD_COM|Add0~57\) # (!\LCD_COM|clk_count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|clk_count\(29),
	datad => VCC,
	cin => \LCD_COM|Add0~57\,
	combout => \LCD_COM|Add0~58_combout\,
	cout => \LCD_COM|Add0~59\);

-- Location: LCCOMB_X10_Y48_N2
\LCD_COM|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|Selector3~0_combout\ = (\LCD_COM|Add0~58_combout\ & ((\LCD_COM|Selector10~0_combout\) # ((!\LCD_COM|state.power_up~q\ & \LCD_COM|LessThan0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|state.power_up~q\,
	datab => \LCD_COM|LessThan0~10_combout\,
	datac => \LCD_COM|Add0~58_combout\,
	datad => \LCD_COM|Selector10~0_combout\,
	combout => \LCD_COM|Selector3~0_combout\);

-- Location: FF_X10_Y48_N3
\LCD_COM|clk_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \LCD_COM|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_COM|clk_count\(29));

-- Location: LCCOMB_X11_Y48_N28
\LCD_COM|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|Add0~60_combout\ = (\LCD_COM|clk_count\(30) & (\LCD_COM|Add0~59\ $ (GND))) # (!\LCD_COM|clk_count\(30) & (!\LCD_COM|Add0~59\ & VCC))
-- \LCD_COM|Add0~61\ = CARRY((\LCD_COM|clk_count\(30) & !\LCD_COM|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|clk_count\(30),
	datad => VCC,
	cin => \LCD_COM|Add0~59\,
	combout => \LCD_COM|Add0~60_combout\,
	cout => \LCD_COM|Add0~61\);

-- Location: LCCOMB_X10_Y48_N12
\LCD_COM|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|Selector2~0_combout\ = (\LCD_COM|Add0~60_combout\ & ((\LCD_COM|Selector10~0_combout\) # ((!\LCD_COM|state.power_up~q\ & \LCD_COM|LessThan0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|state.power_up~q\,
	datab => \LCD_COM|Add0~60_combout\,
	datac => \LCD_COM|LessThan0~10_combout\,
	datad => \LCD_COM|Selector10~0_combout\,
	combout => \LCD_COM|Selector2~0_combout\);

-- Location: FF_X10_Y48_N13
\LCD_COM|clk_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \LCD_COM|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_COM|clk_count\(30));

-- Location: LCCOMB_X10_Y48_N14
\LCD_COM|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|LessThan0~9_combout\ = (!\LCD_COM|clk_count\(27) & (!\LCD_COM|clk_count\(29) & (!\LCD_COM|clk_count\(28) & !\LCD_COM|clk_count\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|clk_count\(27),
	datab => \LCD_COM|clk_count\(29),
	datac => \LCD_COM|clk_count\(28),
	datad => \LCD_COM|clk_count\(30),
	combout => \LCD_COM|LessThan0~9_combout\);

-- Location: LCCOMB_X11_Y49_N24
\LCD_COM|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|Add0~24_combout\ = (\LCD_COM|clk_count\(12) & (\LCD_COM|Add0~23\ $ (GND))) # (!\LCD_COM|clk_count\(12) & (!\LCD_COM|Add0~23\ & VCC))
-- \LCD_COM|Add0~25\ = CARRY((\LCD_COM|clk_count\(12) & !\LCD_COM|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_COM|clk_count\(12),
	datad => VCC,
	cin => \LCD_COM|Add0~23\,
	combout => \LCD_COM|Add0~24_combout\,
	cout => \LCD_COM|Add0~25\);

-- Location: LCCOMB_X12_Y48_N26
\LCD_COM|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|Selector20~0_combout\ = (\LCD_COM|Add0~24_combout\ & ((\LCD_COM|Selector10~0_combout\) # ((!\LCD_COM|state.power_up~q\ & \LCD_COM|LessThan0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|Add0~24_combout\,
	datab => \LCD_COM|state.power_up~q\,
	datac => \LCD_COM|Selector10~0_combout\,
	datad => \LCD_COM|LessThan0~10_combout\,
	combout => \LCD_COM|Selector20~0_combout\);

-- Location: FF_X12_Y48_N27
\LCD_COM|clk_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \LCD_COM|Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_COM|clk_count\(12));

-- Location: LCCOMB_X11_Y49_N26
\LCD_COM|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|Add0~26_combout\ = (\LCD_COM|clk_count\(13) & (!\LCD_COM|Add0~25\)) # (!\LCD_COM|clk_count\(13) & ((\LCD_COM|Add0~25\) # (GND)))
-- \LCD_COM|Add0~27\ = CARRY((!\LCD_COM|Add0~25\) # (!\LCD_COM|clk_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_COM|clk_count\(13),
	datad => VCC,
	cin => \LCD_COM|Add0~25\,
	combout => \LCD_COM|Add0~26_combout\,
	cout => \LCD_COM|Add0~27\);

-- Location: LCCOMB_X12_Y48_N6
\LCD_COM|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|Selector19~0_combout\ = (\LCD_COM|Add0~26_combout\ & ((\LCD_COM|Selector10~0_combout\) # ((!\LCD_COM|state.power_up~q\ & \LCD_COM|LessThan0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|state.power_up~q\,
	datab => \LCD_COM|Add0~26_combout\,
	datac => \LCD_COM|Selector10~0_combout\,
	datad => \LCD_COM|LessThan0~10_combout\,
	combout => \LCD_COM|Selector19~0_combout\);

-- Location: FF_X12_Y48_N7
\LCD_COM|clk_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \LCD_COM|Selector19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_COM|clk_count\(13));

-- Location: LCCOMB_X11_Y49_N28
\LCD_COM|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|Add0~28_combout\ = (\LCD_COM|clk_count\(14) & (\LCD_COM|Add0~27\ $ (GND))) # (!\LCD_COM|clk_count\(14) & (!\LCD_COM|Add0~27\ & VCC))
-- \LCD_COM|Add0~29\ = CARRY((\LCD_COM|clk_count\(14) & !\LCD_COM|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_COM|clk_count\(14),
	datad => VCC,
	cin => \LCD_COM|Add0~27\,
	combout => \LCD_COM|Add0~28_combout\,
	cout => \LCD_COM|Add0~29\);

-- Location: LCCOMB_X10_Y48_N0
\LCD_COM|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|Selector18~0_combout\ = (\LCD_COM|Add0~28_combout\ & ((\LCD_COM|Selector10~0_combout\) # ((!\LCD_COM|state.power_up~q\ & \LCD_COM|LessThan0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|state.power_up~q\,
	datab => \LCD_COM|Add0~28_combout\,
	datac => \LCD_COM|LessThan0~10_combout\,
	datad => \LCD_COM|Selector10~0_combout\,
	combout => \LCD_COM|Selector18~0_combout\);

-- Location: FF_X10_Y48_N1
\LCD_COM|clk_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \LCD_COM|Selector18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_COM|clk_count\(14));

-- Location: LCCOMB_X11_Y49_N30
\LCD_COM|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|Add0~30_combout\ = (\LCD_COM|clk_count\(15) & (!\LCD_COM|Add0~29\)) # (!\LCD_COM|clk_count\(15) & ((\LCD_COM|Add0~29\) # (GND)))
-- \LCD_COM|Add0~31\ = CARRY((!\LCD_COM|Add0~29\) # (!\LCD_COM|clk_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|clk_count\(15),
	datad => VCC,
	cin => \LCD_COM|Add0~29\,
	combout => \LCD_COM|Add0~30_combout\,
	cout => \LCD_COM|Add0~31\);

-- Location: LCCOMB_X10_Y48_N26
\LCD_COM|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|Selector17~0_combout\ = (\LCD_COM|Add0~30_combout\ & ((\LCD_COM|Selector10~0_combout\) # ((\LCD_COM|LessThan0~10_combout\ & !\LCD_COM|state.power_up~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|Add0~30_combout\,
	datab => \LCD_COM|LessThan0~10_combout\,
	datac => \LCD_COM|state.power_up~q\,
	datad => \LCD_COM|Selector10~0_combout\,
	combout => \LCD_COM|Selector17~0_combout\);

-- Location: FF_X10_Y48_N27
\LCD_COM|clk_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \LCD_COM|Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_COM|clk_count\(15));

-- Location: LCCOMB_X11_Y48_N0
\LCD_COM|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|Add0~32_combout\ = (\LCD_COM|clk_count\(16) & (\LCD_COM|Add0~31\ $ (GND))) # (!\LCD_COM|clk_count\(16) & (!\LCD_COM|Add0~31\ & VCC))
-- \LCD_COM|Add0~33\ = CARRY((\LCD_COM|clk_count\(16) & !\LCD_COM|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_COM|clk_count\(16),
	datad => VCC,
	cin => \LCD_COM|Add0~31\,
	combout => \LCD_COM|Add0~32_combout\,
	cout => \LCD_COM|Add0~33\);

-- Location: LCCOMB_X10_Y48_N20
\LCD_COM|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|Selector16~0_combout\ = (\LCD_COM|Add0~32_combout\ & ((\LCD_COM|Selector10~0_combout\) # ((!\LCD_COM|state.power_up~q\ & \LCD_COM|LessThan0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|state.power_up~q\,
	datab => \LCD_COM|LessThan0~10_combout\,
	datac => \LCD_COM|Add0~32_combout\,
	datad => \LCD_COM|Selector10~0_combout\,
	combout => \LCD_COM|Selector16~0_combout\);

-- Location: FF_X10_Y48_N21
\LCD_COM|clk_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \LCD_COM|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_COM|clk_count\(16));

-- Location: LCCOMB_X11_Y48_N2
\LCD_COM|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|Add0~34_combout\ = (\LCD_COM|clk_count\(17) & (!\LCD_COM|Add0~33\)) # (!\LCD_COM|clk_count\(17) & ((\LCD_COM|Add0~33\) # (GND)))
-- \LCD_COM|Add0~35\ = CARRY((!\LCD_COM|Add0~33\) # (!\LCD_COM|clk_count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_COM|clk_count\(17),
	datad => VCC,
	cin => \LCD_COM|Add0~33\,
	combout => \LCD_COM|Add0~34_combout\,
	cout => \LCD_COM|Add0~35\);

-- Location: LCCOMB_X12_Y48_N0
\LCD_COM|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|Selector15~0_combout\ = (\LCD_COM|Add0~34_combout\ & ((\LCD_COM|Selector10~0_combout\) # ((!\LCD_COM|state.power_up~q\ & \LCD_COM|LessThan0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|state.power_up~q\,
	datab => \LCD_COM|LessThan0~10_combout\,
	datac => \LCD_COM|Selector10~0_combout\,
	datad => \LCD_COM|Add0~34_combout\,
	combout => \LCD_COM|Selector15~0_combout\);

-- Location: FF_X12_Y48_N1
\LCD_COM|clk_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \LCD_COM|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_COM|clk_count\(17));

-- Location: LCCOMB_X11_Y48_N4
\LCD_COM|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|Add0~36_combout\ = (\LCD_COM|clk_count\(18) & (\LCD_COM|Add0~35\ $ (GND))) # (!\LCD_COM|clk_count\(18) & (!\LCD_COM|Add0~35\ & VCC))
-- \LCD_COM|Add0~37\ = CARRY((\LCD_COM|clk_count\(18) & !\LCD_COM|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_COM|clk_count\(18),
	datad => VCC,
	cin => \LCD_COM|Add0~35\,
	combout => \LCD_COM|Add0~36_combout\,
	cout => \LCD_COM|Add0~37\);

-- Location: LCCOMB_X12_Y48_N18
\LCD_COM|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|Selector14~0_combout\ = (\LCD_COM|Add0~36_combout\ & ((\LCD_COM|Selector10~0_combout\) # ((!\LCD_COM|state.power_up~q\ & \LCD_COM|LessThan0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|state.power_up~q\,
	datab => \LCD_COM|Add0~36_combout\,
	datac => \LCD_COM|Selector10~0_combout\,
	datad => \LCD_COM|LessThan0~10_combout\,
	combout => \LCD_COM|Selector14~0_combout\);

-- Location: FF_X12_Y48_N19
\LCD_COM|clk_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \LCD_COM|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_COM|clk_count\(18));

-- Location: LCCOMB_X11_Y48_N6
\LCD_COM|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|Add0~38_combout\ = (\LCD_COM|clk_count\(19) & (!\LCD_COM|Add0~37\)) # (!\LCD_COM|clk_count\(19) & ((\LCD_COM|Add0~37\) # (GND)))
-- \LCD_COM|Add0~39\ = CARRY((!\LCD_COM|Add0~37\) # (!\LCD_COM|clk_count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_COM|clk_count\(19),
	datad => VCC,
	cin => \LCD_COM|Add0~37\,
	combout => \LCD_COM|Add0~38_combout\,
	cout => \LCD_COM|Add0~39\);

-- Location: LCCOMB_X12_Y48_N16
\LCD_COM|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|Selector13~0_combout\ = (\LCD_COM|Add0~38_combout\ & ((\LCD_COM|Selector10~0_combout\) # ((!\LCD_COM|state.power_up~q\ & \LCD_COM|LessThan0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|state.power_up~q\,
	datab => \LCD_COM|Add0~38_combout\,
	datac => \LCD_COM|Selector10~0_combout\,
	datad => \LCD_COM|LessThan0~10_combout\,
	combout => \LCD_COM|Selector13~0_combout\);

-- Location: FF_X12_Y48_N17
\LCD_COM|clk_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \LCD_COM|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_COM|clk_count\(19));

-- Location: LCCOMB_X12_Y48_N10
\LCD_COM|LessThan9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|LessThan9~0_combout\ = (!\LCD_COM|clk_count\(19) & (!\LCD_COM|clk_count\(17) & (!\LCD_COM|clk_count\(12) & !\LCD_COM|clk_count\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|clk_count\(19),
	datab => \LCD_COM|clk_count\(17),
	datac => \LCD_COM|clk_count\(12),
	datad => \LCD_COM|clk_count\(20),
	combout => \LCD_COM|LessThan9~0_combout\);

-- Location: LCCOMB_X10_Y48_N22
\LCD_COM|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|LessThan0~3_combout\ = (!\LCD_COM|clk_count\(14) & (!\LCD_COM|clk_count\(15) & !\LCD_COM|clk_count\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_COM|clk_count\(14),
	datac => \LCD_COM|clk_count\(15),
	datad => \LCD_COM|clk_count\(16),
	combout => \LCD_COM|LessThan0~3_combout\);

-- Location: LCCOMB_X12_Y48_N20
\LCD_COM|LessThan9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|LessThan9~1_combout\ = (\LCD_COM|LessThan9~0_combout\ & (\LCD_COM|LessThan0~3_combout\ & !\LCD_COM|clk_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|LessThan9~0_combout\,
	datac => \LCD_COM|LessThan0~3_combout\,
	datad => \LCD_COM|clk_count\(13),
	combout => \LCD_COM|LessThan9~1_combout\);

-- Location: LCCOMB_X12_Y48_N14
\LCD_COM|LessThan9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|LessThan9~2_combout\ = (!\LCD_COM|clk_count\(21) & (!\LCD_COM|clk_count\(18) & (\LCD_COM|LessThan0~8_combout\ & \LCD_COM|LessThan9~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|clk_count\(21),
	datab => \LCD_COM|clk_count\(18),
	datac => \LCD_COM|LessThan0~8_combout\,
	datad => \LCD_COM|LessThan9~1_combout\,
	combout => \LCD_COM|LessThan9~2_combout\);

-- Location: LCCOMB_X12_Y49_N14
\LCD_COM|LessThan9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|LessThan9~6_combout\ = (\LCD_COM|LessThan0~9_combout\ & (\LCD_COM|LessThan9~2_combout\ & ((\LCD_COM|LessThan9~5_combout\) # (!\LCD_COM|clk_count\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|LessThan9~5_combout\,
	datab => \LCD_COM|clk_count\(11),
	datac => \LCD_COM|LessThan0~9_combout\,
	datad => \LCD_COM|LessThan9~2_combout\,
	combout => \LCD_COM|LessThan9~6_combout\);

-- Location: LCCOMB_X11_Y48_N30
\LCD_COM|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|Add0~62_combout\ = \LCD_COM|clk_count\(31) $ (\LCD_COM|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|clk_count\(31),
	cin => \LCD_COM|Add0~61\,
	combout => \LCD_COM|Add0~62_combout\);

-- Location: LCCOMB_X12_Y49_N6
\LCD_COM|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|Selector1~0_combout\ = (\LCD_COM|Add0~62_combout\ & ((\LCD_COM|Selector10~0_combout\) # ((\LCD_COM|LessThan0~10_combout\ & !\LCD_COM|state.power_up~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|Add0~62_combout\,
	datab => \LCD_COM|LessThan0~10_combout\,
	datac => \LCD_COM|Selector10~0_combout\,
	datad => \LCD_COM|state.power_up~q\,
	combout => \LCD_COM|Selector1~0_combout\);

-- Location: FF_X12_Y49_N7
\LCD_COM|clk_count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \LCD_COM|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_COM|clk_count\(31));

-- Location: LCCOMB_X12_Y49_N30
\LCD_COM|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|Selector10~0_combout\ = (\LCD_COM|state.send~q\ & ((\LCD_COM|LessThan9~6_combout\) # (\LCD_COM|clk_count\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|state.send~q\,
	datac => \LCD_COM|LessThan9~6_combout\,
	datad => \LCD_COM|clk_count\(31),
	combout => \LCD_COM|Selector10~0_combout\);

-- Location: LCCOMB_X11_Y48_N8
\LCD_COM|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|Add0~40_combout\ = (\LCD_COM|clk_count\(20) & (\LCD_COM|Add0~39\ $ (GND))) # (!\LCD_COM|clk_count\(20) & (!\LCD_COM|Add0~39\ & VCC))
-- \LCD_COM|Add0~41\ = CARRY((\LCD_COM|clk_count\(20) & !\LCD_COM|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|clk_count\(20),
	datad => VCC,
	cin => \LCD_COM|Add0~39\,
	combout => \LCD_COM|Add0~40_combout\,
	cout => \LCD_COM|Add0~41\);

-- Location: LCCOMB_X12_Y48_N2
\LCD_COM|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|Selector12~0_combout\ = (\LCD_COM|Add0~40_combout\ & ((\LCD_COM|Selector10~0_combout\) # ((!\LCD_COM|state.power_up~q\ & \LCD_COM|LessThan0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|state.power_up~q\,
	datab => \LCD_COM|LessThan0~10_combout\,
	datac => \LCD_COM|Selector10~0_combout\,
	datad => \LCD_COM|Add0~40_combout\,
	combout => \LCD_COM|Selector12~0_combout\);

-- Location: FF_X12_Y48_N3
\LCD_COM|clk_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \LCD_COM|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_COM|clk_count\(20));

-- Location: LCCOMB_X11_Y48_N10
\LCD_COM|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|Add0~42_combout\ = (\LCD_COM|clk_count\(21) & (!\LCD_COM|Add0~41\)) # (!\LCD_COM|clk_count\(21) & ((\LCD_COM|Add0~41\) # (GND)))
-- \LCD_COM|Add0~43\ = CARRY((!\LCD_COM|Add0~41\) # (!\LCD_COM|clk_count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_COM|clk_count\(21),
	datad => VCC,
	cin => \LCD_COM|Add0~41\,
	combout => \LCD_COM|Add0~42_combout\,
	cout => \LCD_COM|Add0~43\);

-- Location: LCCOMB_X10_Y49_N16
\LCD_COM|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|Selector11~0_combout\ = (\LCD_COM|Add0~42_combout\ & ((\LCD_COM|Selector10~0_combout\) # ((\LCD_COM|LessThan0~10_combout\ & !\LCD_COM|state.power_up~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|Add0~42_combout\,
	datab => \LCD_COM|LessThan0~10_combout\,
	datac => \LCD_COM|state.power_up~q\,
	datad => \LCD_COM|Selector10~0_combout\,
	combout => \LCD_COM|Selector11~0_combout\);

-- Location: FF_X10_Y49_N17
\LCD_COM|clk_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \LCD_COM|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_COM|clk_count\(21));

-- Location: LCCOMB_X11_Y48_N12
\LCD_COM|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|Add0~44_combout\ = (\LCD_COM|clk_count\(22) & (\LCD_COM|Add0~43\ $ (GND))) # (!\LCD_COM|clk_count\(22) & (!\LCD_COM|Add0~43\ & VCC))
-- \LCD_COM|Add0~45\ = CARRY((\LCD_COM|clk_count\(22) & !\LCD_COM|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|clk_count\(22),
	datad => VCC,
	cin => \LCD_COM|Add0~43\,
	combout => \LCD_COM|Add0~44_combout\,
	cout => \LCD_COM|Add0~45\);

-- Location: LCCOMB_X10_Y48_N16
\LCD_COM|Selector10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|Selector10~1_combout\ = (\LCD_COM|Add0~44_combout\ & ((\LCD_COM|Selector10~0_combout\) # ((!\LCD_COM|state.power_up~q\ & \LCD_COM|LessThan0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|state.power_up~q\,
	datab => \LCD_COM|LessThan0~10_combout\,
	datac => \LCD_COM|Add0~44_combout\,
	datad => \LCD_COM|Selector10~0_combout\,
	combout => \LCD_COM|Selector10~1_combout\);

-- Location: FF_X10_Y48_N17
\LCD_COM|clk_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \LCD_COM|Selector10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_COM|clk_count\(22));

-- Location: LCCOMB_X11_Y48_N14
\LCD_COM|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|Add0~46_combout\ = (\LCD_COM|clk_count\(23) & (!\LCD_COM|Add0~45\)) # (!\LCD_COM|clk_count\(23) & ((\LCD_COM|Add0~45\) # (GND)))
-- \LCD_COM|Add0~47\ = CARRY((!\LCD_COM|Add0~45\) # (!\LCD_COM|clk_count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_COM|clk_count\(23),
	datad => VCC,
	cin => \LCD_COM|Add0~45\,
	combout => \LCD_COM|Add0~46_combout\,
	cout => \LCD_COM|Add0~47\);

-- Location: LCCOMB_X10_Y48_N18
\LCD_COM|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|Selector9~0_combout\ = (\LCD_COM|Add0~46_combout\ & ((\LCD_COM|Selector10~0_combout\) # ((!\LCD_COM|state.power_up~q\ & \LCD_COM|LessThan0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|state.power_up~q\,
	datab => \LCD_COM|LessThan0~10_combout\,
	datac => \LCD_COM|Add0~46_combout\,
	datad => \LCD_COM|Selector10~0_combout\,
	combout => \LCD_COM|Selector9~0_combout\);

-- Location: FF_X10_Y48_N19
\LCD_COM|clk_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \LCD_COM|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_COM|clk_count\(23));

-- Location: LCCOMB_X11_Y48_N16
\LCD_COM|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|Add0~48_combout\ = (\LCD_COM|clk_count\(24) & (\LCD_COM|Add0~47\ $ (GND))) # (!\LCD_COM|clk_count\(24) & (!\LCD_COM|Add0~47\ & VCC))
-- \LCD_COM|Add0~49\ = CARRY((\LCD_COM|clk_count\(24) & !\LCD_COM|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_COM|clk_count\(24),
	datad => VCC,
	cin => \LCD_COM|Add0~47\,
	combout => \LCD_COM|Add0~48_combout\,
	cout => \LCD_COM|Add0~49\);

-- Location: LCCOMB_X10_Y48_N24
\LCD_COM|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|Selector8~0_combout\ = (\LCD_COM|Add0~48_combout\ & ((\LCD_COM|Selector10~0_combout\) # ((!\LCD_COM|state.power_up~q\ & \LCD_COM|LessThan0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|state.power_up~q\,
	datab => \LCD_COM|Add0~48_combout\,
	datac => \LCD_COM|LessThan0~10_combout\,
	datad => \LCD_COM|Selector10~0_combout\,
	combout => \LCD_COM|Selector8~0_combout\);

-- Location: FF_X10_Y48_N25
\LCD_COM|clk_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \LCD_COM|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_COM|clk_count\(24));

-- Location: LCCOMB_X11_Y48_N18
\LCD_COM|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|Add0~50_combout\ = (\LCD_COM|clk_count\(25) & (!\LCD_COM|Add0~49\)) # (!\LCD_COM|clk_count\(25) & ((\LCD_COM|Add0~49\) # (GND)))
-- \LCD_COM|Add0~51\ = CARRY((!\LCD_COM|Add0~49\) # (!\LCD_COM|clk_count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|clk_count\(25),
	datad => VCC,
	cin => \LCD_COM|Add0~49\,
	combout => \LCD_COM|Add0~50_combout\,
	cout => \LCD_COM|Add0~51\);

-- Location: LCCOMB_X10_Y48_N10
\LCD_COM|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|Selector7~0_combout\ = (\LCD_COM|Add0~50_combout\ & ((\LCD_COM|Selector10~0_combout\) # ((!\LCD_COM|state.power_up~q\ & \LCD_COM|LessThan0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|state.power_up~q\,
	datab => \LCD_COM|Add0~50_combout\,
	datac => \LCD_COM|LessThan0~10_combout\,
	datad => \LCD_COM|Selector10~0_combout\,
	combout => \LCD_COM|Selector7~0_combout\);

-- Location: FF_X10_Y48_N11
\LCD_COM|clk_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \LCD_COM|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_COM|clk_count\(25));

-- Location: LCCOMB_X10_Y48_N30
\LCD_COM|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|Selector6~0_combout\ = (\LCD_COM|Add0~52_combout\ & ((\LCD_COM|Selector10~0_combout\) # ((!\LCD_COM|state.power_up~q\ & \LCD_COM|LessThan0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|state.power_up~q\,
	datab => \LCD_COM|LessThan0~10_combout\,
	datac => \LCD_COM|Add0~52_combout\,
	datad => \LCD_COM|Selector10~0_combout\,
	combout => \LCD_COM|Selector6~0_combout\);

-- Location: FF_X10_Y48_N31
\LCD_COM|clk_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \LCD_COM|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_COM|clk_count\(26));

-- Location: LCCOMB_X10_Y48_N4
\LCD_COM|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|LessThan0~7_combout\ = (!\LCD_COM|clk_count\(23) & !\LCD_COM|clk_count\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_COM|clk_count\(23),
	datad => \LCD_COM|clk_count\(22),
	combout => \LCD_COM|LessThan0~7_combout\);

-- Location: LCCOMB_X10_Y48_N28
\LCD_COM|LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|LessThan0~8_combout\ = (!\LCD_COM|clk_count\(26) & (!\LCD_COM|clk_count\(24) & (\LCD_COM|LessThan0~7_combout\ & !\LCD_COM|clk_count\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|clk_count\(26),
	datab => \LCD_COM|clk_count\(24),
	datac => \LCD_COM|LessThan0~7_combout\,
	datad => \LCD_COM|clk_count\(25),
	combout => \LCD_COM|LessThan0~8_combout\);

-- Location: LCCOMB_X12_Y48_N12
\LCD_COM|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|LessThan0~0_combout\ = (!\LCD_COM|clk_count\(19) & !\LCD_COM|clk_count\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_COM|clk_count\(19),
	datad => \LCD_COM|clk_count\(20),
	combout => \LCD_COM|LessThan0~0_combout\);

-- Location: LCCOMB_X13_Y49_N2
\LCD_COM|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|LessThan0~1_combout\ = (((!\LCD_COM|clk_count\(6) & !\LCD_COM|clk_count\(5))) # (!\LCD_COM|clk_count\(7))) # (!\LCD_COM|clk_count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|clk_count\(8),
	datab => \LCD_COM|clk_count\(7),
	datac => \LCD_COM|clk_count\(6),
	datad => \LCD_COM|clk_count\(5),
	combout => \LCD_COM|LessThan0~1_combout\);

-- Location: LCCOMB_X13_Y49_N8
\LCD_COM|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|LessThan0~2_combout\ = ((!\LCD_COM|clk_count\(9) & \LCD_COM|LessThan0~1_combout\)) # (!\LCD_COM|clk_count\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_COM|clk_count\(9),
	datac => \LCD_COM|clk_count\(10),
	datad => \LCD_COM|LessThan0~1_combout\,
	combout => \LCD_COM|LessThan0~2_combout\);

-- Location: LCCOMB_X12_Y48_N4
\LCD_COM|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|LessThan0~4_combout\ = (!\LCD_COM|clk_count\(12) & (!\LCD_COM|clk_count\(11) & (\LCD_COM|LessThan0~3_combout\ & \LCD_COM|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|clk_count\(12),
	datab => \LCD_COM|clk_count\(11),
	datac => \LCD_COM|LessThan0~3_combout\,
	datad => \LCD_COM|LessThan0~2_combout\,
	combout => \LCD_COM|LessThan0~4_combout\);

-- Location: LCCOMB_X12_Y48_N28
\LCD_COM|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|LessThan0~5_combout\ = (((!\LCD_COM|clk_count\(13) & \LCD_COM|LessThan0~3_combout\)) # (!\LCD_COM|clk_count\(17))) # (!\LCD_COM|clk_count\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|clk_count\(13),
	datab => \LCD_COM|clk_count\(18),
	datac => \LCD_COM|LessThan0~3_combout\,
	datad => \LCD_COM|clk_count\(17),
	combout => \LCD_COM|LessThan0~5_combout\);

-- Location: LCCOMB_X12_Y48_N30
\LCD_COM|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|LessThan0~6_combout\ = ((\LCD_COM|LessThan0~0_combout\ & ((\LCD_COM|LessThan0~4_combout\) # (\LCD_COM|LessThan0~5_combout\)))) # (!\LCD_COM|clk_count\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|LessThan0~0_combout\,
	datab => \LCD_COM|clk_count\(21),
	datac => \LCD_COM|LessThan0~4_combout\,
	datad => \LCD_COM|LessThan0~5_combout\,
	combout => \LCD_COM|LessThan0~6_combout\);

-- Location: LCCOMB_X12_Y48_N8
\LCD_COM|LessThan0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|LessThan0~10_combout\ = (\LCD_COM|clk_count\(31)) # ((\LCD_COM|LessThan0~8_combout\ & (\LCD_COM|LessThan0~9_combout\ & \LCD_COM|LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|LessThan0~8_combout\,
	datab => \LCD_COM|LessThan0~9_combout\,
	datac => \LCD_COM|LessThan0~6_combout\,
	datad => \LCD_COM|clk_count\(31),
	combout => \LCD_COM|LessThan0~10_combout\);

-- Location: LCCOMB_X12_Y49_N4
\LCD_COM|state~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|state~7_combout\ = (\LCD_COM|Selector0~0_combout\) # ((!\LCD_COM|clk_count\(31) & (!\LCD_COM|LessThan9~6_combout\ & \LCD_COM|state.send~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|clk_count\(31),
	datab => \LCD_COM|LessThan9~6_combout\,
	datac => \LCD_COM|state.send~q\,
	datad => \LCD_COM|Selector0~0_combout\,
	combout => \LCD_COM|state~7_combout\);

-- Location: LCCOMB_X12_Y49_N28
\LCD_COM|state~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|state~8_combout\ = (!\lcd_reset~q\ & ((\LCD_COM|state~7_combout\) # ((!\LCD_COM|LessThan0~10_combout\ & !\LCD_COM|state.power_up~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|LessThan0~10_combout\,
	datab => \lcd_reset~q\,
	datac => \LCD_COM|state~7_combout\,
	datad => \LCD_COM|state.power_up~q\,
	combout => \LCD_COM|state~8_combout\);

-- Location: FF_X12_Y49_N29
\LCD_COM|state.ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \LCD_COM|state~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_COM|state.ready~q\);

-- Location: LCCOMB_X10_Y47_N14
\LCD_COM|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|Selector0~0_combout\ = (\LCD_COM|state.ready~q\ & !\lcd_enable~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LCD_COM|state.ready~q\,
	datad => \lcd_enable~q\,
	combout => \LCD_COM|Selector0~0_combout\);

-- Location: FF_X10_Y47_N11
\LCD_COM|busy\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	asdata => \LCD_COM|Selector0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_COM|busy~q\);

-- Location: LCCOMB_X60_Y39_N14
\Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (!\STATE.SETUP~q\ & (!\lcd_enable~q\ & (\LCD_COM|busy~q\ & !\LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATE.SETUP~q\,
	datab => \lcd_enable~q\,
	datac => \LCD_COM|busy~q\,
	datad => \LessThan0~0_combout\,
	combout => \Selector1~1_combout\);

-- Location: LCCOMB_X60_Y39_N12
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\LCD_COM|busy~q\ & !\lcd_enable~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LCD_COM|busy~q\,
	datad => \lcd_enable~q\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X59_Y39_N18
\Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = (\process_0~0_combout\ & (!\Selector1~0_combout\ & (\STATE.RESET~q\))) # (!\process_0~0_combout\ & ((\STATE.IDLE~q\) # ((!\Selector1~0_combout\ & \STATE.RESET~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datab => \Selector1~0_combout\,
	datac => \STATE.RESET~q\,
	datad => \STATE.IDLE~q\,
	combout => \Selector21~0_combout\);

-- Location: FF_X59_Y39_N19
\STATE.RESET\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \Selector21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATE.RESET~q\);

-- Location: LCCOMB_X62_Y39_N28
\Selector1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~3_combout\ = (!\lcd_enable~q\ & (\LCD_COM|busy~q\ & ((\STATE.RESET~q\) # (\STATE.TXD_POSITION~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATE.RESET~q\,
	datab => \lcd_enable~q\,
	datac => \LCD_COM|busy~q\,
	datad => \STATE.TXD_POSITION~q\,
	combout => \Selector1~3_combout\);

-- Location: LCCOMB_X63_Y39_N4
\Selector34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector34~0_combout\ = (!\STATE.RESET~q\ & (!char_index(0) & !char_index(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATE.RESET~q\,
	datac => char_index(0),
	datad => char_index(3),
	combout => \Selector34~0_combout\);

-- Location: LCCOMB_X63_Y39_N2
\Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (\STATE.TXD_POSITION~q\ & ((\Selector1~0_combout\) # ((\STATE.TXD_UPDATE~q\ & !char_index(3))))) # (!\STATE.TXD_POSITION~q\ & (((\STATE.TXD_UPDATE~q\ & !char_index(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATE.TXD_POSITION~q\,
	datab => \Selector1~0_combout\,
	datac => \STATE.TXD_UPDATE~q\,
	datad => char_index(3),
	combout => \Selector16~0_combout\);

-- Location: FF_X63_Y39_N3
\STATE.TXD_UPDATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATE.TXD_UPDATE~q\);

-- Location: LCCOMB_X63_Y39_N12
\char_index[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \char_index[3]~5_combout\ = (\STATE.RESET~q\ & (((\Selector1~0_combout\)))) # (!\STATE.RESET~q\ & (\STATE.TXD_UPDATE~q\ & ((char_index(3)) # (\Selector1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATE.RESET~q\,
	datab => char_index(3),
	datac => \Selector1~0_combout\,
	datad => \STATE.TXD_UPDATE~q\,
	combout => \char_index[3]~5_combout\);

-- Location: FF_X63_Y39_N5
\char_index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \Selector34~0_combout\,
	ena => \char_index[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char_index(0));

-- Location: LCCOMB_X63_Y39_N26
\Selector33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector33~0_combout\ = (!\STATE.RESET~q\ & (!char_index(3) & (char_index(0) $ (char_index(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATE.RESET~q\,
	datab => char_index(0),
	datac => char_index(1),
	datad => char_index(3),
	combout => \Selector33~0_combout\);

-- Location: FF_X63_Y39_N27
\char_index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \Selector33~0_combout\,
	ena => \char_index[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char_index(1));

-- Location: LCCOMB_X63_Y39_N10
\char_index[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \char_index[3]~4_combout\ = (!\STATE.RESET~q\ & (char_index(0) & (char_index(1) & !char_index(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATE.RESET~q\,
	datab => char_index(0),
	datac => char_index(1),
	datad => char_index(3),
	combout => \char_index[3]~4_combout\);

-- Location: LCCOMB_X63_Y39_N14
\Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = (char_index(1) & char_index(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char_index(1),
	datac => char_index(0),
	combout => \Add2~0_combout\);

-- Location: LCCOMB_X63_Y39_N6
\Selector32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector32~0_combout\ = (!\STATE.RESET~q\ & (!char_index(3) & (\Add2~0_combout\ $ (char_index(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATE.RESET~q\,
	datab => \Add2~0_combout\,
	datac => char_index(2),
	datad => char_index(3),
	combout => \Selector32~0_combout\);

-- Location: FF_X63_Y39_N7
\char_index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \Selector32~0_combout\,
	ena => \char_index[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char_index(2));

-- Location: LCCOMB_X63_Y39_N28
\char_index[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \char_index[3]~6_combout\ = (\char_index[3]~5_combout\ & (\char_index[3]~4_combout\ & (char_index(2)))) # (!\char_index[3]~5_combout\ & (((char_index(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \char_index[3]~4_combout\,
	datab => char_index(2),
	datac => char_index(3),
	datad => \char_index[3]~5_combout\,
	combout => \char_index[3]~6_combout\);

-- Location: FF_X63_Y39_N29
\char_index[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \char_index[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char_index(3));

-- Location: LCCOMB_X62_Y39_N8
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (!char_index(3) & (!\lcd_enable~q\ & (\LCD_COM|busy~q\ & \STATE.TXD_UPDATE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char_index(3),
	datab => \lcd_enable~q\,
	datac => \LCD_COM|busy~q\,
	datad => \STATE.TXD_UPDATE~q\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X63_Y39_N22
\Selector1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~2_combout\ = (\lcd_enable~q\ & ((\STATE.TXD~q\) # ((char_index(3) & \STATE.TXD_UPDATE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATE.TXD~q\,
	datab => char_index(3),
	datac => \lcd_enable~q\,
	datad => \STATE.TXD_UPDATE~q\,
	combout => \Selector1~2_combout\);

-- Location: LCCOMB_X62_Y39_N16
\Selector1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~4_combout\ = (\Selector1~1_combout\) # ((\Selector1~3_combout\) # ((\Selector2~0_combout\) # (\Selector1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~1_combout\,
	datab => \Selector1~3_combout\,
	datac => \Selector2~0_combout\,
	datad => \Selector1~2_combout\,
	combout => \Selector1~4_combout\);

-- Location: FF_X62_Y39_N17
lcd_enable : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \Selector1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_enable~q\);

-- Location: LCCOMB_X60_Y39_N0
\Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (!\STATE.SETUP~q\ & ((\lcd_enable~q\) # ((!\LessThan0~0_combout\) # (!\LCD_COM|busy~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATE.SETUP~q\,
	datab => \lcd_enable~q\,
	datac => \LCD_COM|busy~q\,
	datad => \LessThan0~0_combout\,
	combout => \Selector12~0_combout\);

-- Location: FF_X67_Y39_N31
\clk_count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \Add3~62_combout\,
	ena => \STATE.PAUSE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(31));

-- Location: LCCOMB_X66_Y40_N28
\LessThan2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~11_combout\ = (!\Add3~54_combout\ & !\Add3~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add3~54_combout\,
	datad => \Add3~56_combout\,
	combout => \LessThan2~11_combout\);

-- Location: LCCOMB_X66_Y40_N24
\LessThan2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~5_combout\ = (!\Add3~34_combout\ & (!\Add3~36_combout\ & (!\Add3~40_combout\ & !\Add3~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~34_combout\,
	datab => \Add3~36_combout\,
	datac => \Add3~40_combout\,
	datad => \Add3~38_combout\,
	combout => \LessThan2~5_combout\);

-- Location: LCCOMB_X66_Y40_N16
\LessThan2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~9_combout\ = (!\Add3~44_combout\ & (!\Add3~42_combout\ & (!\Add3~46_combout\ & \LessThan2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~44_combout\,
	datab => \Add3~42_combout\,
	datac => \Add3~46_combout\,
	datad => \LessThan2~5_combout\,
	combout => \LessThan2~9_combout\);

-- Location: LCCOMB_X66_Y40_N18
\LessThan2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~10_combout\ = (!\Add3~48_combout\ & (!\Add3~52_combout\ & (!\Add3~50_combout\ & \LessThan2~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~48_combout\,
	datab => \Add3~52_combout\,
	datac => \Add3~50_combout\,
	datad => \LessThan2~9_combout\,
	combout => \LessThan2~10_combout\);

-- Location: LCCOMB_X66_Y40_N22
\LessThan2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~12_combout\ = (!\Add3~58_combout\ & (\LessThan2~11_combout\ & (!\Add3~60_combout\ & \LessThan2~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~58_combout\,
	datab => \LessThan2~11_combout\,
	datac => \Add3~60_combout\,
	datad => \LessThan2~10_combout\,
	combout => \LessThan2~12_combout\);

-- Location: LCCOMB_X68_Y40_N12
\clk_count~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~22_combout\ = (\Add3~16_combout\ & ((\Add3~62_combout\) # ((\LessThan2~4_combout\ & \LessThan2~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~16_combout\,
	datab => \LessThan2~4_combout\,
	datac => \Add3~62_combout\,
	datad => \LessThan2~12_combout\,
	combout => \clk_count~22_combout\);

-- Location: FF_X68_Y40_N13
\clk_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \clk_count~22_combout\,
	ena => \STATE.PAUSE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(8));

-- Location: LCCOMB_X67_Y40_N0
\Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = clk_count(0) $ (VCC)
-- \Add3~1\ = CARRY(clk_count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(0),
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: LCCOMB_X68_Y40_N30
\clk_count~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~30_combout\ = (\Add3~0_combout\ & ((\Add3~62_combout\) # ((\LessThan2~4_combout\ & \LessThan2~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~0_combout\,
	datab => \LessThan2~4_combout\,
	datac => \Add3~62_combout\,
	datad => \LessThan2~12_combout\,
	combout => \clk_count~30_combout\);

-- Location: FF_X68_Y40_N31
\clk_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \clk_count~30_combout\,
	ena => \STATE.PAUSE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(0));

-- Location: LCCOMB_X67_Y40_N2
\Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (clk_count(1) & (!\Add3~1\)) # (!clk_count(1) & ((\Add3~1\) # (GND)))
-- \Add3~3\ = CARRY((!\Add3~1\) # (!clk_count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(1),
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: LCCOMB_X68_Y40_N4
\clk_count~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~29_combout\ = (\Add3~2_combout\ & ((\Add3~62_combout\) # ((\LessThan2~4_combout\ & \LessThan2~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~2_combout\,
	datab => \LessThan2~4_combout\,
	datac => \Add3~62_combout\,
	datad => \LessThan2~12_combout\,
	combout => \clk_count~29_combout\);

-- Location: FF_X68_Y40_N5
\clk_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \clk_count~29_combout\,
	ena => \STATE.PAUSE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(1));

-- Location: LCCOMB_X67_Y40_N4
\Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = (clk_count(2) & (\Add3~3\ $ (GND))) # (!clk_count(2) & (!\Add3~3\ & VCC))
-- \Add3~5\ = CARRY((clk_count(2) & !\Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(2),
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: LCCOMB_X66_Y40_N4
\clk_count~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~28_combout\ = (\Add3~4_combout\ & ((\Add3~62_combout\) # ((\LessThan2~12_combout\ & \LessThan2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~62_combout\,
	datab => \Add3~4_combout\,
	datac => \LessThan2~12_combout\,
	datad => \LessThan2~4_combout\,
	combout => \clk_count~28_combout\);

-- Location: FF_X66_Y40_N5
\clk_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \clk_count~28_combout\,
	ena => \STATE.PAUSE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(2));

-- Location: LCCOMB_X67_Y40_N6
\Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (clk_count(3) & (!\Add3~5\)) # (!clk_count(3) & ((\Add3~5\) # (GND)))
-- \Add3~7\ = CARRY((!\Add3~5\) # (!clk_count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(3),
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X66_Y40_N26
\clk_count~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~27_combout\ = (\Add3~6_combout\ & ((\Add3~62_combout\) # ((\LessThan2~12_combout\ & \LessThan2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~62_combout\,
	datab => \Add3~6_combout\,
	datac => \LessThan2~12_combout\,
	datad => \LessThan2~4_combout\,
	combout => \clk_count~27_combout\);

-- Location: FF_X66_Y40_N27
\clk_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \clk_count~27_combout\,
	ena => \STATE.PAUSE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(3));

-- Location: LCCOMB_X67_Y40_N8
\Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = (clk_count(4) & (\Add3~7\ $ (GND))) # (!clk_count(4) & (!\Add3~7\ & VCC))
-- \Add3~9\ = CARRY((clk_count(4) & !\Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(4),
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: LCCOMB_X68_Y40_N18
\clk_count~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~26_combout\ = (\Add3~8_combout\ & ((\Add3~62_combout\) # ((\LessThan2~4_combout\ & \LessThan2~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~8_combout\,
	datab => \LessThan2~4_combout\,
	datac => \Add3~62_combout\,
	datad => \LessThan2~12_combout\,
	combout => \clk_count~26_combout\);

-- Location: FF_X68_Y40_N19
\clk_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \clk_count~26_combout\,
	ena => \STATE.PAUSE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(4));

-- Location: LCCOMB_X67_Y40_N10
\Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (clk_count(5) & (!\Add3~9\)) # (!clk_count(5) & ((\Add3~9\) # (GND)))
-- \Add3~11\ = CARRY((!\Add3~9\) # (!clk_count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(5),
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~10_combout\,
	cout => \Add3~11\);

-- Location: LCCOMB_X68_Y40_N24
\clk_count~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~25_combout\ = (\Add3~10_combout\ & ((\Add3~62_combout\) # ((\LessThan2~4_combout\ & \LessThan2~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~10_combout\,
	datab => \LessThan2~4_combout\,
	datac => \Add3~62_combout\,
	datad => \LessThan2~12_combout\,
	combout => \clk_count~25_combout\);

-- Location: FF_X68_Y40_N25
\clk_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \clk_count~25_combout\,
	ena => \STATE.PAUSE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(5));

-- Location: LCCOMB_X67_Y40_N12
\Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = (clk_count(6) & (\Add3~11\ $ (GND))) # (!clk_count(6) & (!\Add3~11\ & VCC))
-- \Add3~13\ = CARRY((clk_count(6) & !\Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(6),
	datad => VCC,
	cin => \Add3~11\,
	combout => \Add3~12_combout\,
	cout => \Add3~13\);

-- Location: LCCOMB_X68_Y40_N22
\clk_count~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~24_combout\ = (\Add3~12_combout\ & ((\Add3~62_combout\) # ((\LessThan2~4_combout\ & \LessThan2~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~12_combout\,
	datab => \LessThan2~4_combout\,
	datac => \Add3~62_combout\,
	datad => \LessThan2~12_combout\,
	combout => \clk_count~24_combout\);

-- Location: FF_X68_Y40_N23
\clk_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \clk_count~24_combout\,
	ena => \STATE.PAUSE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(6));

-- Location: LCCOMB_X67_Y40_N14
\Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = (clk_count(7) & (!\Add3~13\)) # (!clk_count(7) & ((\Add3~13\) # (GND)))
-- \Add3~15\ = CARRY((!\Add3~13\) # (!clk_count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(7),
	datad => VCC,
	cin => \Add3~13\,
	combout => \Add3~14_combout\,
	cout => \Add3~15\);

-- Location: LCCOMB_X66_Y40_N8
\clk_count~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~23_combout\ = (\Add3~14_combout\ & ((\Add3~62_combout\) # ((\LessThan2~12_combout\ & \LessThan2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~62_combout\,
	datab => \Add3~14_combout\,
	datac => \LessThan2~12_combout\,
	datad => \LessThan2~4_combout\,
	combout => \clk_count~23_combout\);

-- Location: FF_X66_Y40_N9
\clk_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \clk_count~23_combout\,
	ena => \STATE.PAUSE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(7));

-- Location: LCCOMB_X67_Y40_N16
\Add3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~16_combout\ = (clk_count(8) & (\Add3~15\ $ (GND))) # (!clk_count(8) & (!\Add3~15\ & VCC))
-- \Add3~17\ = CARRY((clk_count(8) & !\Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(8),
	datad => VCC,
	cin => \Add3~15\,
	combout => \Add3~16_combout\,
	cout => \Add3~17\);

-- Location: LCCOMB_X68_Y40_N8
\LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = ((!\Add3~12_combout\ & ((!\Add3~10_combout\) # (!\Add3~8_combout\)))) # (!\Add3~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~12_combout\,
	datab => \Add3~8_combout\,
	datac => \Add3~10_combout\,
	datad => \Add3~14_combout\,
	combout => \LessThan2~1_combout\);

-- Location: LCCOMB_X67_Y40_N18
\Add3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~18_combout\ = (clk_count(9) & (!\Add3~17\)) # (!clk_count(9) & ((\Add3~17\) # (GND)))
-- \Add3~19\ = CARRY((!\Add3~17\) # (!clk_count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(9),
	datad => VCC,
	cin => \Add3~17\,
	combout => \Add3~18_combout\,
	cout => \Add3~19\);

-- Location: LCCOMB_X68_Y40_N10
\LessThan2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~2_combout\ = (\Add3~20_combout\ & ((\Add3~18_combout\) # ((\Add3~16_combout\ & !\LessThan2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~16_combout\,
	datab => \Add3~20_combout\,
	datac => \LessThan2~1_combout\,
	datad => \Add3~18_combout\,
	combout => \LessThan2~2_combout\);

-- Location: LCCOMB_X68_Y40_N28
\LessThan2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~3_combout\ = (\Add3~26_combout\ & ((\Add3~24_combout\) # ((\Add3~22_combout\ & \LessThan2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~26_combout\,
	datab => \Add3~22_combout\,
	datac => \Add3~24_combout\,
	datad => \LessThan2~2_combout\,
	combout => \LessThan2~3_combout\);

-- Location: LCCOMB_X68_Y40_N14
\LessThan2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~4_combout\ = (((!\Add3~28_combout\ & !\LessThan2~3_combout\)) # (!\Add3~32_combout\)) # (!\Add3~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~28_combout\,
	datab => \Add3~30_combout\,
	datac => \Add3~32_combout\,
	datad => \LessThan2~3_combout\,
	combout => \LessThan2~4_combout\);

-- Location: LCCOMB_X68_Y40_N26
\clk_count~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~21_combout\ = (\Add3~18_combout\ & ((\Add3~62_combout\) # ((\LessThan2~4_combout\ & \LessThan2~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~4_combout\,
	datab => \Add3~18_combout\,
	datac => \Add3~62_combout\,
	datad => \LessThan2~12_combout\,
	combout => \clk_count~21_combout\);

-- Location: FF_X68_Y40_N27
\clk_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \clk_count~21_combout\,
	ena => \STATE.PAUSE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(9));

-- Location: LCCOMB_X67_Y40_N20
\Add3~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~20_combout\ = (clk_count(10) & (\Add3~19\ $ (GND))) # (!clk_count(10) & (!\Add3~19\ & VCC))
-- \Add3~21\ = CARRY((clk_count(10) & !\Add3~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(10),
	datad => VCC,
	cin => \Add3~19\,
	combout => \Add3~20_combout\,
	cout => \Add3~21\);

-- Location: LCCOMB_X68_Y40_N16
\clk_count~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~20_combout\ = (\Add3~20_combout\ & ((\Add3~62_combout\) # ((\LessThan2~4_combout\ & \LessThan2~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~62_combout\,
	datab => \Add3~20_combout\,
	datac => \LessThan2~4_combout\,
	datad => \LessThan2~12_combout\,
	combout => \clk_count~20_combout\);

-- Location: FF_X68_Y40_N17
\clk_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \clk_count~20_combout\,
	ena => \STATE.PAUSE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(10));

-- Location: LCCOMB_X67_Y40_N22
\Add3~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~22_combout\ = (clk_count(11) & (!\Add3~21\)) # (!clk_count(11) & ((\Add3~21\) # (GND)))
-- \Add3~23\ = CARRY((!\Add3~21\) # (!clk_count(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(11),
	datad => VCC,
	cin => \Add3~21\,
	combout => \Add3~22_combout\,
	cout => \Add3~23\);

-- Location: LCCOMB_X66_Y40_N14
\clk_count~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~19_combout\ = (\Add3~22_combout\ & ((\Add3~62_combout\) # ((\LessThan2~12_combout\ & \LessThan2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~62_combout\,
	datab => \Add3~22_combout\,
	datac => \LessThan2~12_combout\,
	datad => \LessThan2~4_combout\,
	combout => \clk_count~19_combout\);

-- Location: FF_X66_Y40_N15
\clk_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \clk_count~19_combout\,
	ena => \STATE.PAUSE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(11));

-- Location: LCCOMB_X67_Y40_N24
\Add3~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~24_combout\ = (clk_count(12) & (\Add3~23\ $ (GND))) # (!clk_count(12) & (!\Add3~23\ & VCC))
-- \Add3~25\ = CARRY((clk_count(12) & !\Add3~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(12),
	datad => VCC,
	cin => \Add3~23\,
	combout => \Add3~24_combout\,
	cout => \Add3~25\);

-- Location: LCCOMB_X68_Y40_N6
\clk_count~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~18_combout\ = (\Add3~24_combout\ & ((\Add3~62_combout\) # ((\LessThan2~4_combout\ & \LessThan2~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~62_combout\,
	datab => \Add3~24_combout\,
	datac => \LessThan2~4_combout\,
	datad => \LessThan2~12_combout\,
	combout => \clk_count~18_combout\);

-- Location: FF_X68_Y40_N7
\clk_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \clk_count~18_combout\,
	ena => \STATE.PAUSE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(12));

-- Location: LCCOMB_X67_Y40_N26
\Add3~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~26_combout\ = (clk_count(13) & (!\Add3~25\)) # (!clk_count(13) & ((\Add3~25\) # (GND)))
-- \Add3~27\ = CARRY((!\Add3~25\) # (!clk_count(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(13),
	datad => VCC,
	cin => \Add3~25\,
	combout => \Add3~26_combout\,
	cout => \Add3~27\);

-- Location: LCCOMB_X66_Y40_N12
\clk_count~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~17_combout\ = (\Add3~26_combout\ & ((\Add3~62_combout\) # ((\LessThan2~12_combout\ & \LessThan2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~62_combout\,
	datab => \Add3~26_combout\,
	datac => \LessThan2~12_combout\,
	datad => \LessThan2~4_combout\,
	combout => \clk_count~17_combout\);

-- Location: FF_X66_Y40_N13
\clk_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \clk_count~17_combout\,
	ena => \STATE.PAUSE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(13));

-- Location: LCCOMB_X67_Y40_N28
\Add3~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~28_combout\ = (clk_count(14) & (\Add3~27\ $ (GND))) # (!clk_count(14) & (!\Add3~27\ & VCC))
-- \Add3~29\ = CARRY((clk_count(14) & !\Add3~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(14),
	datad => VCC,
	cin => \Add3~27\,
	combout => \Add3~28_combout\,
	cout => \Add3~29\);

-- Location: LCCOMB_X68_Y40_N20
\clk_count~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~16_combout\ = (\Add3~28_combout\ & ((\Add3~62_combout\) # ((\LessThan2~4_combout\ & \LessThan2~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~28_combout\,
	datab => \LessThan2~4_combout\,
	datac => \Add3~62_combout\,
	datad => \LessThan2~12_combout\,
	combout => \clk_count~16_combout\);

-- Location: FF_X68_Y40_N21
\clk_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \clk_count~16_combout\,
	ena => \STATE.PAUSE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(14));

-- Location: LCCOMB_X67_Y40_N30
\Add3~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~30_combout\ = (clk_count(15) & (!\Add3~29\)) # (!clk_count(15) & ((\Add3~29\) # (GND)))
-- \Add3~31\ = CARRY((!\Add3~29\) # (!clk_count(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(15),
	datad => VCC,
	cin => \Add3~29\,
	combout => \Add3~30_combout\,
	cout => \Add3~31\);

-- Location: LCCOMB_X68_Y40_N2
\clk_count~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~15_combout\ = (\Add3~30_combout\ & ((\Add3~62_combout\) # ((\LessThan2~4_combout\ & \LessThan2~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~30_combout\,
	datab => \LessThan2~4_combout\,
	datac => \Add3~62_combout\,
	datad => \LessThan2~12_combout\,
	combout => \clk_count~15_combout\);

-- Location: FF_X68_Y40_N3
\clk_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \clk_count~15_combout\,
	ena => \STATE.PAUSE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(15));

-- Location: LCCOMB_X67_Y39_N0
\Add3~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~32_combout\ = (clk_count(16) & (\Add3~31\ $ (GND))) # (!clk_count(16) & (!\Add3~31\ & VCC))
-- \Add3~33\ = CARRY((clk_count(16) & !\Add3~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(16),
	datad => VCC,
	cin => \Add3~31\,
	combout => \Add3~32_combout\,
	cout => \Add3~33\);

-- Location: LCCOMB_X68_Y40_N0
\clk_count~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~14_combout\ = (\Add3~32_combout\ & ((\Add3~62_combout\) # ((\LessThan2~4_combout\ & \LessThan2~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~32_combout\,
	datab => \LessThan2~4_combout\,
	datac => \Add3~62_combout\,
	datad => \LessThan2~12_combout\,
	combout => \clk_count~14_combout\);

-- Location: FF_X68_Y40_N1
\clk_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \clk_count~14_combout\,
	ena => \STATE.PAUSE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(16));

-- Location: LCCOMB_X67_Y39_N2
\Add3~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~34_combout\ = (clk_count(17) & (!\Add3~33\)) # (!clk_count(17) & ((\Add3~33\) # (GND)))
-- \Add3~35\ = CARRY((!\Add3~33\) # (!clk_count(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(17),
	datad => VCC,
	cin => \Add3~33\,
	combout => \Add3~34_combout\,
	cout => \Add3~35\);

-- Location: LCCOMB_X66_Y39_N14
\clk_count~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~13_combout\ = (\Add3~62_combout\ & \Add3~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add3~62_combout\,
	datad => \Add3~34_combout\,
	combout => \clk_count~13_combout\);

-- Location: FF_X66_Y39_N15
\clk_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \clk_count~13_combout\,
	ena => \STATE.PAUSE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(17));

-- Location: LCCOMB_X67_Y39_N4
\Add3~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~36_combout\ = (clk_count(18) & (\Add3~35\ $ (GND))) # (!clk_count(18) & (!\Add3~35\ & VCC))
-- \Add3~37\ = CARRY((clk_count(18) & !\Add3~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(18),
	datad => VCC,
	cin => \Add3~35\,
	combout => \Add3~36_combout\,
	cout => \Add3~37\);

-- Location: LCCOMB_X66_Y39_N12
\clk_count~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~12_combout\ = (\Add3~62_combout\ & \Add3~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add3~62_combout\,
	datad => \Add3~36_combout\,
	combout => \clk_count~12_combout\);

-- Location: FF_X66_Y39_N13
\clk_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \clk_count~12_combout\,
	ena => \STATE.PAUSE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(18));

-- Location: LCCOMB_X67_Y39_N6
\Add3~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~38_combout\ = (clk_count(19) & (!\Add3~37\)) # (!clk_count(19) & ((\Add3~37\) # (GND)))
-- \Add3~39\ = CARRY((!\Add3~37\) # (!clk_count(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(19),
	datad => VCC,
	cin => \Add3~37\,
	combout => \Add3~38_combout\,
	cout => \Add3~39\);

-- Location: LCCOMB_X66_Y39_N2
\clk_count~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~11_combout\ = (\Add3~62_combout\ & \Add3~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add3~62_combout\,
	datad => \Add3~38_combout\,
	combout => \clk_count~11_combout\);

-- Location: FF_X66_Y39_N3
\clk_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \clk_count~11_combout\,
	ena => \STATE.PAUSE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(19));

-- Location: LCCOMB_X67_Y39_N8
\Add3~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~40_combout\ = (clk_count(20) & (\Add3~39\ $ (GND))) # (!clk_count(20) & (!\Add3~39\ & VCC))
-- \Add3~41\ = CARRY((clk_count(20) & !\Add3~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(20),
	datad => VCC,
	cin => \Add3~39\,
	combout => \Add3~40_combout\,
	cout => \Add3~41\);

-- Location: LCCOMB_X66_Y39_N16
\clk_count~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~10_combout\ = (\Add3~40_combout\ & \Add3~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~40_combout\,
	datac => \Add3~62_combout\,
	combout => \clk_count~10_combout\);

-- Location: FF_X66_Y39_N17
\clk_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \clk_count~10_combout\,
	ena => \STATE.PAUSE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(20));

-- Location: LCCOMB_X67_Y39_N10
\Add3~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~42_combout\ = (clk_count(21) & (!\Add3~41\)) # (!clk_count(21) & ((\Add3~41\) # (GND)))
-- \Add3~43\ = CARRY((!\Add3~41\) # (!clk_count(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(21),
	datad => VCC,
	cin => \Add3~41\,
	combout => \Add3~42_combout\,
	cout => \Add3~43\);

-- Location: LCCOMB_X66_Y39_N6
\clk_count~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~9_combout\ = (\Add3~42_combout\ & \Add3~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~42_combout\,
	datac => \Add3~62_combout\,
	combout => \clk_count~9_combout\);

-- Location: FF_X66_Y39_N7
\clk_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \clk_count~9_combout\,
	ena => \STATE.PAUSE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(21));

-- Location: LCCOMB_X67_Y39_N12
\Add3~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~44_combout\ = (clk_count(22) & (\Add3~43\ $ (GND))) # (!clk_count(22) & (!\Add3~43\ & VCC))
-- \Add3~45\ = CARRY((clk_count(22) & !\Add3~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(22),
	datad => VCC,
	cin => \Add3~43\,
	combout => \Add3~44_combout\,
	cout => \Add3~45\);

-- Location: LCCOMB_X66_Y39_N20
\clk_count~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~8_combout\ = (\Add3~44_combout\ & \Add3~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~44_combout\,
	datac => \Add3~62_combout\,
	combout => \clk_count~8_combout\);

-- Location: FF_X66_Y39_N21
\clk_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \clk_count~8_combout\,
	ena => \STATE.PAUSE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(22));

-- Location: LCCOMB_X67_Y39_N14
\Add3~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~46_combout\ = (clk_count(23) & (!\Add3~45\)) # (!clk_count(23) & ((\Add3~45\) # (GND)))
-- \Add3~47\ = CARRY((!\Add3~45\) # (!clk_count(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(23),
	datad => VCC,
	cin => \Add3~45\,
	combout => \Add3~46_combout\,
	cout => \Add3~47\);

-- Location: LCCOMB_X66_Y39_N10
\clk_count~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~7_combout\ = (\Add3~46_combout\ & \Add3~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~46_combout\,
	datac => \Add3~62_combout\,
	combout => \clk_count~7_combout\);

-- Location: FF_X66_Y39_N11
\clk_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \clk_count~7_combout\,
	ena => \STATE.PAUSE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(23));

-- Location: LCCOMB_X67_Y39_N16
\Add3~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~48_combout\ = (clk_count(24) & (\Add3~47\ $ (GND))) # (!clk_count(24) & (!\Add3~47\ & VCC))
-- \Add3~49\ = CARRY((clk_count(24) & !\Add3~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(24),
	datad => VCC,
	cin => \Add3~47\,
	combout => \Add3~48_combout\,
	cout => \Add3~49\);

-- Location: LCCOMB_X66_Y39_N24
\clk_count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~6_combout\ = (\Add3~62_combout\ & \Add3~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add3~62_combout\,
	datad => \Add3~48_combout\,
	combout => \clk_count~6_combout\);

-- Location: FF_X66_Y39_N25
\clk_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \clk_count~6_combout\,
	ena => \STATE.PAUSE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(24));

-- Location: LCCOMB_X67_Y39_N18
\Add3~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~50_combout\ = (clk_count(25) & (!\Add3~49\)) # (!clk_count(25) & ((\Add3~49\) # (GND)))
-- \Add3~51\ = CARRY((!\Add3~49\) # (!clk_count(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(25),
	datad => VCC,
	cin => \Add3~49\,
	combout => \Add3~50_combout\,
	cout => \Add3~51\);

-- Location: LCCOMB_X66_Y39_N30
\clk_count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~5_combout\ = (\Add3~62_combout\ & \Add3~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add3~62_combout\,
	datad => \Add3~50_combout\,
	combout => \clk_count~5_combout\);

-- Location: FF_X66_Y39_N31
\clk_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \clk_count~5_combout\,
	ena => \STATE.PAUSE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(25));

-- Location: LCCOMB_X67_Y39_N20
\Add3~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~52_combout\ = (clk_count(26) & (\Add3~51\ $ (GND))) # (!clk_count(26) & (!\Add3~51\ & VCC))
-- \Add3~53\ = CARRY((clk_count(26) & !\Add3~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(26),
	datad => VCC,
	cin => \Add3~51\,
	combout => \Add3~52_combout\,
	cout => \Add3~53\);

-- Location: LCCOMB_X66_Y39_N4
\clk_count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~4_combout\ = (\Add3~52_combout\ & \Add3~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~52_combout\,
	datac => \Add3~62_combout\,
	combout => \clk_count~4_combout\);

-- Location: FF_X66_Y39_N5
\clk_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \clk_count~4_combout\,
	ena => \STATE.PAUSE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(26));

-- Location: LCCOMB_X67_Y39_N22
\Add3~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~54_combout\ = (clk_count(27) & (!\Add3~53\)) # (!clk_count(27) & ((\Add3~53\) # (GND)))
-- \Add3~55\ = CARRY((!\Add3~53\) # (!clk_count(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(27),
	datad => VCC,
	cin => \Add3~53\,
	combout => \Add3~54_combout\,
	cout => \Add3~55\);

-- Location: LCCOMB_X66_Y39_N18
\clk_count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~3_combout\ = (\Add3~62_combout\ & \Add3~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add3~62_combout\,
	datad => \Add3~54_combout\,
	combout => \clk_count~3_combout\);

-- Location: FF_X66_Y39_N19
\clk_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \clk_count~3_combout\,
	ena => \STATE.PAUSE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(27));

-- Location: LCCOMB_X67_Y39_N24
\Add3~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~56_combout\ = (clk_count(28) & (\Add3~55\ $ (GND))) # (!clk_count(28) & (!\Add3~55\ & VCC))
-- \Add3~57\ = CARRY((clk_count(28) & !\Add3~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(28),
	datad => VCC,
	cin => \Add3~55\,
	combout => \Add3~56_combout\,
	cout => \Add3~57\);

-- Location: LCCOMB_X66_Y39_N0
\clk_count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~2_combout\ = (\Add3~62_combout\ & \Add3~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add3~62_combout\,
	datad => \Add3~56_combout\,
	combout => \clk_count~2_combout\);

-- Location: FF_X66_Y39_N1
\clk_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \clk_count~2_combout\,
	ena => \STATE.PAUSE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(28));

-- Location: LCCOMB_X67_Y39_N26
\Add3~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~58_combout\ = (clk_count(29) & (!\Add3~57\)) # (!clk_count(29) & ((\Add3~57\) # (GND)))
-- \Add3~59\ = CARRY((!\Add3~57\) # (!clk_count(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(29),
	datad => VCC,
	cin => \Add3~57\,
	combout => \Add3~58_combout\,
	cout => \Add3~59\);

-- Location: LCCOMB_X66_Y39_N22
\clk_count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~1_combout\ = (\Add3~62_combout\ & \Add3~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add3~62_combout\,
	datad => \Add3~58_combout\,
	combout => \clk_count~1_combout\);

-- Location: FF_X66_Y39_N23
\clk_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \clk_count~1_combout\,
	ena => \STATE.PAUSE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(29));

-- Location: LCCOMB_X67_Y39_N28
\Add3~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~60_combout\ = (clk_count(30) & (\Add3~59\ $ (GND))) # (!clk_count(30) & (!\Add3~59\ & VCC))
-- \Add3~61\ = CARRY((clk_count(30) & !\Add3~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_count(30),
	datad => VCC,
	cin => \Add3~59\,
	combout => \Add3~60_combout\,
	cout => \Add3~61\);

-- Location: LCCOMB_X66_Y39_N28
\clk_count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_count~0_combout\ = (\Add3~62_combout\ & \Add3~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add3~62_combout\,
	datad => \Add3~60_combout\,
	combout => \clk_count~0_combout\);

-- Location: FF_X66_Y39_N29
\clk_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \clk_count~0_combout\,
	ena => \STATE.PAUSE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_count(30));

-- Location: LCCOMB_X67_Y39_N30
\Add3~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~62_combout\ = clk_count(31) $ (\Add3~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_count(31),
	cin => \Add3~61\,
	combout => \Add3~62_combout\);

-- Location: LCCOMB_X60_Y39_N30
\Selector1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~5_combout\ = (\STATE.RESET~q\ & (!\lcd_enable~q\ & \LCD_COM|busy~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATE.RESET~q\,
	datab => \lcd_enable~q\,
	datac => \LCD_COM|busy~q\,
	combout => \Selector1~5_combout\);

-- Location: LCCOMB_X66_Y40_N30
\LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (!\Add3~54_combout\ & (!\Add3~52_combout\ & (!\Add3~50_combout\ & !\Add3~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~54_combout\,
	datab => \Add3~52_combout\,
	datac => \Add3~50_combout\,
	datad => \Add3~56_combout\,
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X66_Y40_N10
\LessThan2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~6_combout\ = (!\Add3~44_combout\ & (\LessThan2~5_combout\ & (!\Add3~42_combout\ & \LessThan2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~44_combout\,
	datab => \LessThan2~5_combout\,
	datac => \Add3~42_combout\,
	datad => \LessThan2~4_combout\,
	combout => \LessThan2~6_combout\);

-- Location: LCCOMB_X66_Y40_N20
\LessThan2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~7_combout\ = (!\Add3~46_combout\ & (!\Add3~48_combout\ & \LessThan2~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~46_combout\,
	datab => \Add3~48_combout\,
	datad => \LessThan2~6_combout\,
	combout => \LessThan2~7_combout\);

-- Location: LCCOMB_X66_Y40_N6
\LessThan2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~8_combout\ = (!\Add3~58_combout\ & (!\Add3~60_combout\ & (\LessThan2~0_combout\ & \LessThan2~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~58_combout\,
	datab => \Add3~60_combout\,
	datac => \LessThan2~0_combout\,
	datad => \LessThan2~7_combout\,
	combout => \LessThan2~8_combout\);

-- Location: LCCOMB_X66_Y40_N2
\Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (\Selector1~5_combout\) # ((\STATE.PAUSE~q\ & ((\Add3~62_combout\) # (\LessThan2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~62_combout\,
	datab => \Selector1~5_combout\,
	datac => \STATE.PAUSE~q\,
	datad => \LessThan2~8_combout\,
	combout => \Selector20~0_combout\);

-- Location: FF_X66_Y40_N3
\STATE.PAUSE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATE.PAUSE~q\);

-- Location: LCCOMB_X66_Y40_N0
\Selector12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~1_combout\ = (!\Selector12~0_combout\ & (((\Add3~62_combout\) # (\LessThan2~8_combout\)) # (!\STATE.PAUSE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector12~0_combout\,
	datab => \STATE.PAUSE~q\,
	datac => \Add3~62_combout\,
	datad => \LessThan2~8_combout\,
	combout => \Selector12~1_combout\);

-- Location: FF_X66_Y40_N1
\STATE.SETUP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \Selector12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATE.SETUP~q\);

-- Location: LCCOMB_X60_Y39_N6
\Selector13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~4_combout\ = (!\STATE.SETUP~q\ & (!\lcd_enable~q\ & \LCD_COM|busy~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATE.SETUP~q\,
	datab => \lcd_enable~q\,
	datac => \LCD_COM|busy~q\,
	combout => \Selector13~4_combout\);

-- Location: FF_X61_Y39_N17
\cmd_index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \cmd_index~2_combout\,
	ena => \Selector13~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cmd_index(2));

-- Location: LCCOMB_X61_Y39_N4
\cmd_index~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cmd_index~0_combout\ = (cmd_index(1) & ((cmd_index(3) & ((!cmd_index(2)))) # (!cmd_index(3) & (cmd_index(0) & cmd_index(2))))) # (!cmd_index(1) & (((cmd_index(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cmd_index(1),
	datab => cmd_index(0),
	datac => cmd_index(3),
	datad => cmd_index(2),
	combout => \cmd_index~0_combout\);

-- Location: FF_X61_Y39_N5
\cmd_index[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \cmd_index~0_combout\,
	ena => \Selector13~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cmd_index(3));

-- Location: LCCOMB_X61_Y39_N20
\cmd_index~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \cmd_index~3_combout\ = (!cmd_index(0) & (((!cmd_index(2)) # (!cmd_index(3))) # (!cmd_index(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cmd_index(1),
	datab => cmd_index(3),
	datac => cmd_index(0),
	datad => cmd_index(2),
	combout => \cmd_index~3_combout\);

-- Location: FF_X61_Y39_N21
\cmd_index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \cmd_index~3_combout\,
	ena => \Selector13~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cmd_index(0));

-- Location: LCCOMB_X61_Y39_N6
\cmd_index~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cmd_index~1_combout\ = (cmd_index(0) & (((!cmd_index(1))))) # (!cmd_index(0) & (cmd_index(1) & ((!cmd_index(2)) # (!cmd_index(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cmd_index(0),
	datab => cmd_index(3),
	datac => cmd_index(1),
	datad => cmd_index(2),
	combout => \cmd_index~1_combout\);

-- Location: FF_X61_Y39_N7
\cmd_index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \cmd_index~1_combout\,
	ena => \Selector13~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cmd_index(1));

-- Location: LCCOMB_X61_Y39_N18
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (cmd_index(1) & (cmd_index(3) & cmd_index(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cmd_index(1),
	datac => cmd_index(3),
	datad => cmd_index(2),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X59_Y39_N14
\Selector13~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~5_combout\ = (\tx_pressed~q\) # ((\key[1]~input_o\ & ((\TX_COM|busy~q\) # (\key[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX_COM|busy~q\,
	datab => \key[0]~input_o\,
	datac => \tx_pressed~q\,
	datad => \key[1]~input_o\,
	combout => \Selector13~5_combout\);

-- Location: LCCOMB_X59_Y39_N8
\Selector13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~2_combout\ = (\STATE.TXD_UPDATE~q\ & ((char_index(3)) # ((\STATE.IDLE~q\)))) # (!\STATE.TXD_UPDATE~q\ & (((\Selector13~5_combout\ & \STATE.IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char_index(3),
	datab => \Selector13~5_combout\,
	datac => \STATE.TXD_UPDATE~q\,
	datad => \STATE.IDLE~q\,
	combout => \Selector13~2_combout\);

-- Location: LCCOMB_X59_Y39_N16
\Selector13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~3_combout\ = (\Selector13~2_combout\) # ((\LessThan0~0_combout\ & (\Selector1~0_combout\ & !\STATE.SETUP~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => \Selector1~0_combout\,
	datac => \STATE.SETUP~q\,
	datad => \Selector13~2_combout\,
	combout => \Selector13~3_combout\);

-- Location: FF_X59_Y39_N17
\STATE.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \Selector13~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATE.IDLE~q\);

-- Location: FF_X59_Y39_N25
\led_r[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RX_COM|ALT_INV_busy~clkctrl_outclk\,
	d => \led_r[0]~reg0feeder_combout\,
	ena => \STATE.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_r[0]~reg0_q\);

-- Location: LCCOMB_X47_Y23_N12
\RX_COM|Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_COM|Decoder0~4_combout\ = (\RX_COM|index\(1) & (!\RX_COM|index\(3) & (\RX_COM|rx_flag~q\ & !\RX_COM|index\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX_COM|index\(1),
	datab => \RX_COM|index\(3),
	datac => \RX_COM|rx_flag~q\,
	datad => \RX_COM|index\(0),
	combout => \RX_COM|Decoder0~4_combout\);

-- Location: LCCOMB_X47_Y23_N24
\RX_COM|datafill[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_COM|datafill[2]~3_combout\ = (\RX_COM|Decoder0~4_combout\ & ((\RX_COM|index\(2) & (\RX_COM|datafill\(2))) # (!\RX_COM|index\(2) & ((\uart_rxd~input_o\))))) # (!\RX_COM|Decoder0~4_combout\ & (((\RX_COM|datafill\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX_COM|Decoder0~4_combout\,
	datab => \RX_COM|index\(2),
	datac => \RX_COM|datafill\(2),
	datad => \uart_rxd~input_o\,
	combout => \RX_COM|datafill[2]~3_combout\);

-- Location: FF_X47_Y23_N25
\RX_COM|datafill[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \RX_COM|datafill[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX_COM|datafill\(2));

-- Location: LCCOMB_X50_Y23_N10
\RX_COM|data~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_COM|data~3_combout\ = (\RX_COM|datafill\(9) & (\RX_COM|datafill\(2) & !\RX_COM|datafill\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX_COM|datafill\(9),
	datab => \RX_COM|datafill\(2),
	datad => \RX_COM|datafill\(0),
	combout => \RX_COM|data~3_combout\);

-- Location: FF_X50_Y23_N11
\RX_COM|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \RX_COM|data~3_combout\,
	ena => \RX_COM|data[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX_COM|data\(1));

-- Location: LCCOMB_X59_Y39_N26
\led_r[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \led_r[1]~reg0feeder_combout\ = \RX_COM|data\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RX_COM|data\(1),
	combout => \led_r[1]~reg0feeder_combout\);

-- Location: FF_X59_Y39_N27
\led_r[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RX_COM|ALT_INV_busy~clkctrl_outclk\,
	d => \led_r[1]~reg0feeder_combout\,
	ena => \STATE.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_r[1]~reg0_q\);

-- Location: LCCOMB_X47_Y23_N6
\RX_COM|Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_COM|Decoder0~5_combout\ = (\RX_COM|index\(1) & (!\RX_COM|index\(3) & (\RX_COM|rx_flag~q\ & \RX_COM|index\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX_COM|index\(1),
	datab => \RX_COM|index\(3),
	datac => \RX_COM|rx_flag~q\,
	datad => \RX_COM|index\(0),
	combout => \RX_COM|Decoder0~5_combout\);

-- Location: LCCOMB_X47_Y23_N2
\RX_COM|datafill[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_COM|datafill[3]~4_combout\ = (\RX_COM|Decoder0~5_combout\ & ((\RX_COM|index\(2) & (\RX_COM|datafill\(3))) # (!\RX_COM|index\(2) & ((\uart_rxd~input_o\))))) # (!\RX_COM|Decoder0~5_combout\ & (((\RX_COM|datafill\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX_COM|Decoder0~5_combout\,
	datab => \RX_COM|index\(2),
	datac => \RX_COM|datafill\(3),
	datad => \uart_rxd~input_o\,
	combout => \RX_COM|datafill[3]~4_combout\);

-- Location: FF_X47_Y23_N3
\RX_COM|datafill[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \RX_COM|datafill[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX_COM|datafill\(3));

-- Location: LCCOMB_X50_Y23_N28
\RX_COM|data~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_COM|data~4_combout\ = (\RX_COM|datafill\(9) & (\RX_COM|datafill\(3) & !\RX_COM|datafill\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX_COM|datafill\(9),
	datac => \RX_COM|datafill\(3),
	datad => \RX_COM|datafill\(0),
	combout => \RX_COM|data~4_combout\);

-- Location: FF_X50_Y23_N29
\RX_COM|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \RX_COM|data~4_combout\,
	ena => \RX_COM|data[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX_COM|data\(2));

-- Location: LCCOMB_X59_Y39_N12
\led_r[2]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \led_r[2]~reg0feeder_combout\ = \RX_COM|data\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RX_COM|data\(2),
	combout => \led_r[2]~reg0feeder_combout\);

-- Location: FF_X59_Y39_N13
\led_r[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RX_COM|ALT_INV_busy~clkctrl_outclk\,
	d => \led_r[2]~reg0feeder_combout\,
	ena => \STATE.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_r[2]~reg0_q\);

-- Location: LCCOMB_X48_Y23_N4
\RX_COM|Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_COM|Decoder0~6_combout\ = (\RX_COM|index\(2) & !\RX_COM|index\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RX_COM|index\(2),
	datad => \RX_COM|index\(1),
	combout => \RX_COM|Decoder0~6_combout\);

-- Location: LCCOMB_X50_Y23_N18
\RX_COM|datafill[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_COM|datafill[4]~5_combout\ = (\RX_COM|Decoder0~3_combout\ & ((\RX_COM|Decoder0~6_combout\ & (\uart_rxd~input_o\)) # (!\RX_COM|Decoder0~6_combout\ & ((\RX_COM|datafill\(4)))))) # (!\RX_COM|Decoder0~3_combout\ & (((\RX_COM|datafill\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX_COM|Decoder0~3_combout\,
	datab => \uart_rxd~input_o\,
	datac => \RX_COM|datafill\(4),
	datad => \RX_COM|Decoder0~6_combout\,
	combout => \RX_COM|datafill[4]~5_combout\);

-- Location: FF_X50_Y23_N19
\RX_COM|datafill[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \RX_COM|datafill[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX_COM|datafill\(4));

-- Location: LCCOMB_X50_Y23_N30
\RX_COM|data~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_COM|data~5_combout\ = (\RX_COM|datafill\(9) & (!\RX_COM|datafill\(0) & \RX_COM|datafill\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX_COM|datafill\(9),
	datab => \RX_COM|datafill\(0),
	datad => \RX_COM|datafill\(4),
	combout => \RX_COM|data~5_combout\);

-- Location: FF_X50_Y23_N31
\RX_COM|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \RX_COM|data~5_combout\,
	ena => \RX_COM|data[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX_COM|data\(3));

-- Location: LCCOMB_X59_Y39_N30
\led_r[3]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \led_r[3]~reg0feeder_combout\ = \RX_COM|data\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RX_COM|data\(3),
	combout => \led_r[3]~reg0feeder_combout\);

-- Location: FF_X59_Y39_N31
\led_r[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RX_COM|ALT_INV_busy~clkctrl_outclk\,
	d => \led_r[3]~reg0feeder_combout\,
	ena => \STATE.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_r[3]~reg0_q\);

-- Location: LCCOMB_X47_Y23_N28
\RX_COM|datafill[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_COM|datafill[5]~6_combout\ = (\RX_COM|Decoder0~2_combout\ & ((\RX_COM|Decoder0~6_combout\ & (\uart_rxd~input_o\)) # (!\RX_COM|Decoder0~6_combout\ & ((\RX_COM|datafill\(5)))))) # (!\RX_COM|Decoder0~2_combout\ & (((\RX_COM|datafill\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX_COM|Decoder0~2_combout\,
	datab => \uart_rxd~input_o\,
	datac => \RX_COM|datafill\(5),
	datad => \RX_COM|Decoder0~6_combout\,
	combout => \RX_COM|datafill[5]~6_combout\);

-- Location: FF_X47_Y23_N29
\RX_COM|datafill[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \RX_COM|datafill[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX_COM|datafill\(5));

-- Location: LCCOMB_X50_Y23_N8
\RX_COM|data~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_COM|data~6_combout\ = (\RX_COM|datafill\(9) & (\RX_COM|datafill\(5) & !\RX_COM|datafill\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX_COM|datafill\(9),
	datac => \RX_COM|datafill\(5),
	datad => \RX_COM|datafill\(0),
	combout => \RX_COM|data~6_combout\);

-- Location: FF_X50_Y23_N9
\RX_COM|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \RX_COM|data~6_combout\,
	ena => \RX_COM|data[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX_COM|data\(4));

-- Location: LCCOMB_X59_Y39_N0
\led_r[4]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \led_r[4]~reg0feeder_combout\ = \RX_COM|data\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RX_COM|data\(4),
	combout => \led_r[4]~reg0feeder_combout\);

-- Location: FF_X59_Y39_N1
\led_r[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RX_COM|ALT_INV_busy~clkctrl_outclk\,
	d => \led_r[4]~reg0feeder_combout\,
	ena => \STATE.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_r[4]~reg0_q\);

-- Location: LCCOMB_X47_Y23_N22
\RX_COM|datafill[6]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_COM|datafill[6]~7_combout\ = (\RX_COM|Decoder0~4_combout\ & ((\RX_COM|index\(2) & ((\uart_rxd~input_o\))) # (!\RX_COM|index\(2) & (\RX_COM|datafill\(6))))) # (!\RX_COM|Decoder0~4_combout\ & (((\RX_COM|datafill\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX_COM|Decoder0~4_combout\,
	datab => \RX_COM|index\(2),
	datac => \RX_COM|datafill\(6),
	datad => \uart_rxd~input_o\,
	combout => \RX_COM|datafill[6]~7_combout\);

-- Location: FF_X47_Y23_N23
\RX_COM|datafill[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \RX_COM|datafill[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX_COM|datafill\(6));

-- Location: LCCOMB_X50_Y23_N2
\RX_COM|data~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_COM|data~7_combout\ = (\RX_COM|datafill\(9) & (\RX_COM|datafill\(6) & !\RX_COM|datafill\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX_COM|datafill\(9),
	datac => \RX_COM|datafill\(6),
	datad => \RX_COM|datafill\(0),
	combout => \RX_COM|data~7_combout\);

-- Location: FF_X50_Y23_N3
\RX_COM|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \RX_COM|data~7_combout\,
	ena => \RX_COM|data[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX_COM|data\(5));

-- Location: LCCOMB_X59_Y39_N10
\led_r[5]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \led_r[5]~reg0feeder_combout\ = \RX_COM|data\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RX_COM|data\(5),
	combout => \led_r[5]~reg0feeder_combout\);

-- Location: FF_X59_Y39_N11
\led_r[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RX_COM|ALT_INV_busy~clkctrl_outclk\,
	d => \led_r[5]~reg0feeder_combout\,
	ena => \STATE.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_r[5]~reg0_q\);

-- Location: LCCOMB_X47_Y23_N0
\RX_COM|datafill[7]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_COM|datafill[7]~8_combout\ = (\RX_COM|Decoder0~5_combout\ & ((\RX_COM|index\(2) & ((\uart_rxd~input_o\))) # (!\RX_COM|index\(2) & (\RX_COM|datafill\(7))))) # (!\RX_COM|Decoder0~5_combout\ & (((\RX_COM|datafill\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX_COM|Decoder0~5_combout\,
	datab => \RX_COM|index\(2),
	datac => \RX_COM|datafill\(7),
	datad => \uart_rxd~input_o\,
	combout => \RX_COM|datafill[7]~8_combout\);

-- Location: FF_X47_Y23_N1
\RX_COM|datafill[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \RX_COM|datafill[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX_COM|datafill\(7));

-- Location: LCCOMB_X50_Y23_N12
\RX_COM|data~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_COM|data~8_combout\ = (!\RX_COM|datafill\(0) & (\RX_COM|datafill\(7) & \RX_COM|datafill\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RX_COM|datafill\(0),
	datac => \RX_COM|datafill\(7),
	datad => \RX_COM|datafill\(9),
	combout => \RX_COM|data~8_combout\);

-- Location: FF_X50_Y23_N13
\RX_COM|data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \RX_COM|data~8_combout\,
	ena => \RX_COM|data[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX_COM|data\(6));

-- Location: LCCOMB_X59_Y39_N20
\led_r[6]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \led_r[6]~reg0feeder_combout\ = \RX_COM|data\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RX_COM|data\(6),
	combout => \led_r[6]~reg0feeder_combout\);

-- Location: FF_X59_Y39_N21
\led_r[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RX_COM|ALT_INV_busy~clkctrl_outclk\,
	d => \led_r[6]~reg0feeder_combout\,
	ena => \STATE.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_r[6]~reg0_q\);

-- Location: LCCOMB_X47_Y23_N18
\RX_COM|datafill[8]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_COM|datafill[8]~9_combout\ = (\RX_COM|index\(0) & (((\RX_COM|datafill\(8))))) # (!\RX_COM|index\(0) & ((\RX_COM|Decoder0~1_combout\ & (\uart_rxd~input_o\)) # (!\RX_COM|Decoder0~1_combout\ & ((\RX_COM|datafill\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX_COM|index\(0),
	datab => \uart_rxd~input_o\,
	datac => \RX_COM|datafill\(8),
	datad => \RX_COM|Decoder0~1_combout\,
	combout => \RX_COM|datafill[8]~9_combout\);

-- Location: FF_X47_Y23_N19
\RX_COM|datafill[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \RX_COM|datafill[8]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX_COM|datafill\(8));

-- Location: LCCOMB_X50_Y23_N6
\RX_COM|data~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_COM|data~9_combout\ = (\RX_COM|datafill\(9) & (\RX_COM|datafill\(8) & !\RX_COM|datafill\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX_COM|datafill\(9),
	datac => \RX_COM|datafill\(8),
	datad => \RX_COM|datafill\(0),
	combout => \RX_COM|data~9_combout\);

-- Location: FF_X50_Y23_N7
\RX_COM|data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \RX_COM|data~9_combout\,
	ena => \RX_COM|data[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX_COM|data\(7));

-- Location: LCCOMB_X59_Y39_N22
\led_r[7]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \led_r[7]~reg0feeder_combout\ = \RX_COM|data\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RX_COM|data\(7),
	combout => \led_r[7]~reg0feeder_combout\);

-- Location: FF_X59_Y39_N23
\led_r[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RX_COM|ALT_INV_busy~clkctrl_outclk\,
	d => \led_r[7]~reg0feeder_combout\,
	ena => \STATE.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_r[7]~reg0_q\);

-- Location: IOIBUF_X115_Y17_N1
\sw[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(0),
	o => \sw[0]~input_o\);

-- Location: LCCOMB_X73_Y39_N24
\Selector30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector30~0_combout\ = (\sw[0]~input_o\ & !\STATE.RESET~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datad => \STATE.RESET~q\,
	combout => \Selector30~0_combout\);

-- Location: LCCOMB_X62_Y39_N26
\Selector30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector30~1_combout\ = (\STATE.RESET~q\ & (!\lcd_enable~q\ & (\LCD_COM|busy~q\))) # (!\STATE.RESET~q\ & (((\STATE.TXD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATE.RESET~q\,
	datab => \lcd_enable~q\,
	datac => \LCD_COM|busy~q\,
	datad => \STATE.TXD~q\,
	combout => \Selector30~1_combout\);

-- Location: FF_X73_Y39_N25
\led_g[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \Selector30~0_combout\,
	ena => \Selector30~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_g[0]~reg0_q\);

-- Location: IOIBUF_X115_Y14_N1
\sw[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(1),
	o => \sw[1]~input_o\);

-- Location: LCCOMB_X73_Y39_N26
\Selector29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector29~0_combout\ = (!\STATE.RESET~q\ & \sw[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \STATE.RESET~q\,
	datad => \sw[1]~input_o\,
	combout => \Selector29~0_combout\);

-- Location: FF_X73_Y39_N27
\led_g[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \Selector29~0_combout\,
	ena => \Selector30~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_g[1]~reg0_q\);

-- Location: IOIBUF_X115_Y15_N8
\sw[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(2),
	o => \sw[2]~input_o\);

-- Location: LCCOMB_X73_Y39_N4
\Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector28~0_combout\ = (!\STATE.RESET~q\ & \sw[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \STATE.RESET~q\,
	datad => \sw[2]~input_o\,
	combout => \Selector28~0_combout\);

-- Location: FF_X73_Y39_N5
\led_g[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \Selector28~0_combout\,
	ena => \Selector30~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_g[2]~reg0_q\);

-- Location: IOIBUF_X115_Y13_N8
\sw[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(3),
	o => \sw[3]~input_o\);

-- Location: LCCOMB_X73_Y39_N6
\Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector27~0_combout\ = (\sw[3]~input_o\ & !\STATE.RESET~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw[3]~input_o\,
	datad => \STATE.RESET~q\,
	combout => \Selector27~0_combout\);

-- Location: FF_X73_Y39_N7
\led_g[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \Selector27~0_combout\,
	ena => \Selector30~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_g[3]~reg0_q\);

-- Location: IOIBUF_X115_Y18_N8
\sw[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(4),
	o => \sw[4]~input_o\);

-- Location: LCCOMB_X73_Y39_N0
\Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector26~0_combout\ = (\sw[4]~input_o\ & !\STATE.RESET~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw[4]~input_o\,
	datad => \STATE.RESET~q\,
	combout => \Selector26~0_combout\);

-- Location: FF_X73_Y39_N1
\led_g[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \Selector26~0_combout\,
	ena => \Selector30~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_g[4]~reg0_q\);

-- Location: IOIBUF_X115_Y11_N8
\sw[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(5),
	o => \sw[5]~input_o\);

-- Location: LCCOMB_X73_Y39_N10
\Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector25~0_combout\ = (\sw[5]~input_o\ & !\STATE.RESET~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw[5]~input_o\,
	datad => \STATE.RESET~q\,
	combout => \Selector25~0_combout\);

-- Location: FF_X73_Y39_N11
\led_g[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \Selector25~0_combout\,
	ena => \Selector30~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_g[5]~reg0_q\);

-- Location: IOIBUF_X115_Y10_N1
\sw[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(6),
	o => \sw[6]~input_o\);

-- Location: LCCOMB_X73_Y39_N12
\Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector24~0_combout\ = (\sw[6]~input_o\ & !\STATE.RESET~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[6]~input_o\,
	datad => \STATE.RESET~q\,
	combout => \Selector24~0_combout\);

-- Location: FF_X73_Y39_N13
\led_g[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \Selector24~0_combout\,
	ena => \Selector30~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_g[6]~reg0_q\);

-- Location: IOIBUF_X115_Y15_N1
\sw[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(7),
	o => \sw[7]~input_o\);

-- Location: LCCOMB_X73_Y39_N22
\Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = (!\STATE.RESET~q\ & \sw[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \STATE.RESET~q\,
	datad => \sw[7]~input_o\,
	combout => \Selector23~0_combout\);

-- Location: FF_X73_Y39_N23
\led_g[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \Selector23~0_combout\,
	ena => \Selector30~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_g[7]~reg0_q\);

-- Location: FF_X62_Y38_N3
\tx_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	asdata => \sw[0]~input_o\,
	sload => VCC,
	ena => \STATE.TXD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_data(0));

-- Location: LCCOMB_X62_Y38_N30
\TX_COM|datafill[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX_COM|datafill[1]~feeder_combout\ = tx_data(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tx_data(0),
	combout => \TX_COM|datafill[1]~feeder_combout\);

-- Location: LCCOMB_X62_Y38_N26
\TX_COM|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX_COM|process_0~0_combout\ = (!\TX_COM|busy~q\ & \tx_start~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \TX_COM|busy~q\,
	datad => \tx_start~q\,
	combout => \TX_COM|process_0~0_combout\);

-- Location: FF_X62_Y38_N31
\TX_COM|datafill[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \TX_COM|datafill[1]~feeder_combout\,
	ena => \TX_COM|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX_COM|datafill\(1));

-- Location: LCCOMB_X62_Y38_N0
\tx_data[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_data[7]~feeder_combout\ = \sw[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sw[7]~input_o\,
	combout => \tx_data[7]~feeder_combout\);

-- Location: FF_X62_Y38_N1
\tx_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \tx_data[7]~feeder_combout\,
	ena => \STATE.TXD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_data(7));

-- Location: FF_X61_Y38_N7
\TX_COM|datafill[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	asdata => tx_data(7),
	sload => VCC,
	ena => \TX_COM|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX_COM|datafill\(8));

-- Location: LCCOMB_X61_Y38_N6
\TX_COM|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX_COM|Mux0~0_combout\ = (\TX_COM|index\(3) & (((\TX_COM|datafill\(8)) # (\TX_COM|index\(0))))) # (!\TX_COM|index\(3) & (\TX_COM|datafill\(1) & ((\TX_COM|index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX_COM|datafill\(1),
	datab => \TX_COM|index\(3),
	datac => \TX_COM|datafill\(8),
	datad => \TX_COM|index\(0),
	combout => \TX_COM|Mux0~0_combout\);

-- Location: FF_X62_Y38_N5
\tx_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	asdata => \sw[1]~input_o\,
	sload => VCC,
	ena => \STATE.TXD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_data(1));

-- Location: FF_X62_Y38_N23
\TX_COM|datafill[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	asdata => tx_data(1),
	sload => VCC,
	ena => \TX_COM|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX_COM|datafill\(2));

-- Location: LCCOMB_X62_Y38_N12
\tx_data[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_data[2]~feeder_combout\ = \sw[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sw[2]~input_o\,
	combout => \tx_data[2]~feeder_combout\);

-- Location: FF_X62_Y38_N13
\tx_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \tx_data[2]~feeder_combout\,
	ena => \STATE.TXD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_data(2));

-- Location: LCCOMB_X62_Y38_N18
\TX_COM|datafill[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX_COM|datafill[3]~feeder_combout\ = tx_data(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tx_data(2),
	combout => \TX_COM|datafill[3]~feeder_combout\);

-- Location: FF_X62_Y38_N19
\TX_COM|datafill[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \TX_COM|datafill[3]~feeder_combout\,
	ena => \TX_COM|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX_COM|datafill\(3));

-- Location: LCCOMB_X62_Y38_N22
\TX_COM|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX_COM|Mux0~1_combout\ = (\TX_COM|index\(0) & ((\TX_COM|datafill\(3)))) # (!\TX_COM|index\(0) & (\TX_COM|datafill\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX_COM|index\(0),
	datac => \TX_COM|datafill\(2),
	datad => \TX_COM|datafill\(3),
	combout => \TX_COM|Mux0~1_combout\);

-- Location: LCCOMB_X61_Y38_N10
\TX_COM|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX_COM|Mux0~2_combout\ = (\TX_COM|index\(1) & (((!\TX_COM|index\(3) & \TX_COM|Mux0~1_combout\)))) # (!\TX_COM|index\(1) & (\TX_COM|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX_COM|Mux0~0_combout\,
	datab => \TX_COM|index\(3),
	datac => \TX_COM|index\(1),
	datad => \TX_COM|Mux0~1_combout\,
	combout => \TX_COM|Mux0~2_combout\);

-- Location: LCCOMB_X62_Y38_N10
\tx_data[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_data[4]~feeder_combout\ = \sw[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sw[4]~input_o\,
	combout => \tx_data[4]~feeder_combout\);

-- Location: FF_X62_Y38_N11
\tx_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \tx_data[4]~feeder_combout\,
	ena => \STATE.TXD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_data(4));

-- Location: LCCOMB_X62_Y38_N20
\TX_COM|datafill[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX_COM|datafill[5]~feeder_combout\ = tx_data(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tx_data(4),
	combout => \TX_COM|datafill[5]~feeder_combout\);

-- Location: FF_X62_Y38_N21
\TX_COM|datafill[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \TX_COM|datafill[5]~feeder_combout\,
	ena => \TX_COM|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX_COM|datafill\(5));

-- Location: LCCOMB_X62_Y38_N14
\tx_data[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \tx_data[3]~feeder_combout\ = \sw[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sw[3]~input_o\,
	combout => \tx_data[3]~feeder_combout\);

-- Location: FF_X62_Y38_N15
\tx_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \tx_data[3]~feeder_combout\,
	ena => \STATE.TXD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_data(3));

-- Location: FF_X62_Y38_N17
\TX_COM|datafill[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	asdata => tx_data(3),
	sload => VCC,
	ena => \TX_COM|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX_COM|datafill\(4));

-- Location: LCCOMB_X62_Y38_N16
\TX_COM|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX_COM|Mux0~3_combout\ = (\TX_COM|index\(1) & (((\TX_COM|index\(0))))) # (!\TX_COM|index\(1) & ((\TX_COM|index\(0) & (\TX_COM|datafill\(5))) # (!\TX_COM|index\(0) & ((\TX_COM|datafill\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX_COM|index\(1),
	datab => \TX_COM|datafill\(5),
	datac => \TX_COM|datafill\(4),
	datad => \TX_COM|index\(0),
	combout => \TX_COM|Mux0~3_combout\);

-- Location: FF_X62_Y38_N9
\tx_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	asdata => \sw[6]~input_o\,
	sload => VCC,
	ena => \STATE.TXD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_data(6));

-- Location: FF_X62_Y38_N29
\TX_COM|datafill[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	asdata => tx_data(6),
	sload => VCC,
	ena => \TX_COM|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX_COM|datafill\(7));

-- Location: FF_X62_Y38_N25
\tx_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	asdata => \sw[5]~input_o\,
	sload => VCC,
	ena => \STATE.TXD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_data(5));

-- Location: LCCOMB_X62_Y38_N6
\TX_COM|datafill[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX_COM|datafill[6]~feeder_combout\ = tx_data(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tx_data(5),
	combout => \TX_COM|datafill[6]~feeder_combout\);

-- Location: FF_X62_Y38_N7
\TX_COM|datafill[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \TX_COM|datafill[6]~feeder_combout\,
	ena => \TX_COM|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX_COM|datafill\(6));

-- Location: LCCOMB_X62_Y38_N28
\TX_COM|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX_COM|Mux0~4_combout\ = (\TX_COM|index\(1) & ((\TX_COM|Mux0~3_combout\ & (\TX_COM|datafill\(7))) # (!\TX_COM|Mux0~3_combout\ & ((\TX_COM|datafill\(6)))))) # (!\TX_COM|index\(1) & (\TX_COM|Mux0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX_COM|index\(1),
	datab => \TX_COM|Mux0~3_combout\,
	datac => \TX_COM|datafill\(7),
	datad => \TX_COM|datafill\(6),
	combout => \TX_COM|Mux0~4_combout\);

-- Location: LCCOMB_X61_Y38_N16
\TX_COM|Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX_COM|Mux0~5_combout\ = (\TX_COM|index\(2) & (((!\TX_COM|index\(3) & \TX_COM|Mux0~4_combout\)))) # (!\TX_COM|index\(2) & (\TX_COM|Mux0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX_COM|Mux0~2_combout\,
	datab => \TX_COM|index\(3),
	datac => \TX_COM|Mux0~4_combout\,
	datad => \TX_COM|index\(2),
	combout => \TX_COM|Mux0~5_combout\);

-- Location: FF_X61_Y38_N17
\TX_COM|tx_line\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \TX_COM|Mux0~5_combout\,
	ena => \TX_COM|tx_line~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX_COM|tx_line~q\);

-- Location: LCCOMB_X61_Y39_N30
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (cmd_index(2) & ((cmd_index(0) & ((cmd_index(3)))) # (!cmd_index(0) & (cmd_index(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cmd_index(1),
	datab => cmd_index(0),
	datac => cmd_index(3),
	datad => cmd_index(2),
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X62_Y39_N6
\Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (!\STATE.TXD_POSITION~q\ & (\STATE.SETUP~q\ & !\STATE.RESET~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATE.TXD_POSITION~q\,
	datac => \STATE.SETUP~q\,
	datad => \STATE.RESET~q\,
	combout => \Selector7~0_combout\);

-- Location: LCCOMB_X66_Y39_N26
\Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (\STATE.TXD~q\) # ((\STATE.TXD_UPDATE~q\) # ((\STATE.IDLE~q\) # (\STATE.PAUSE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATE.TXD~q\,
	datab => \STATE.TXD_UPDATE~q\,
	datac => \STATE.IDLE~q\,
	datad => \STATE.PAUSE~q\,
	combout => \Selector2~1_combout\);

-- Location: LCCOMB_X62_Y39_N24
\Selector2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~2_combout\ = (lcd_bus(9) & ((\Selector2~1_combout\) # ((!\Selector7~0_combout\ & !\Selector1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector7~0_combout\,
	datab => lcd_bus(9),
	datac => \Selector1~0_combout\,
	datad => \Selector2~1_combout\,
	combout => \Selector2~2_combout\);

-- Location: LCCOMB_X62_Y39_N20
\Selector2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~3_combout\ = (\Selector2~0_combout\) # ((\Selector2~2_combout\) # ((\Selector1~1_combout\ & !\Mux8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~1_combout\,
	datab => \Mux8~0_combout\,
	datac => \Selector2~0_combout\,
	datad => \Selector2~2_combout\,
	combout => \Selector2~3_combout\);

-- Location: FF_X62_Y39_N21
\lcd_bus[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \Selector2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lcd_bus(9));

-- Location: LCCOMB_X10_Y47_N8
\LCD_COM|Selector35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|Selector35~0_combout\ = (\LCD_COM|state.power_up~q\ & (\lcd_enable~q\ & lcd_bus(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|state.power_up~q\,
	datab => \lcd_enable~q\,
	datac => lcd_bus(9),
	combout => \LCD_COM|Selector35~0_combout\);

-- Location: LCCOMB_X10_Y47_N4
\LCD_COM|Selector36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|Selector36~0_combout\ = (\LCD_COM|state.power_up~q\ & ((\LCD_COM|state.ready~q\))) # (!\LCD_COM|state.power_up~q\ & (!\LCD_COM|LessThan0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|state.power_up~q\,
	datac => \LCD_COM|LessThan0~10_combout\,
	datad => \LCD_COM|state.ready~q\,
	combout => \LCD_COM|Selector36~0_combout\);

-- Location: FF_X10_Y47_N9
\LCD_COM|rs\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \LCD_COM|Selector35~0_combout\,
	ena => \LCD_COM|Selector36~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_COM|rs~q\);

-- Location: LCCOMB_X13_Y49_N12
\LCD_COM|LessThan11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|LessThan11~0_combout\ = (((!\LCD_COM|clk_count\(2)) # (!\LCD_COM|clk_count\(4))) # (!\LCD_COM|clk_count\(3))) # (!\LCD_COM|clk_count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|clk_count\(5),
	datab => \LCD_COM|clk_count\(3),
	datac => \LCD_COM|clk_count\(4),
	datad => \LCD_COM|clk_count\(2),
	combout => \LCD_COM|LessThan11~0_combout\);

-- Location: LCCOMB_X13_Y49_N22
\LCD_COM|LessThan11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|LessThan11~1_combout\ = ((\LCD_COM|LessThan11~0_combout\ & !\LCD_COM|clk_count\(6))) # (!\LCD_COM|clk_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|LessThan11~0_combout\,
	datac => \LCD_COM|clk_count\(6),
	datad => \LCD_COM|clk_count\(7),
	combout => \LCD_COM|LessThan11~1_combout\);

-- Location: LCCOMB_X12_Y49_N24
\LCD_COM|e~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|e~3_combout\ = (\LCD_COM|LessThan9~6_combout\ & (((!\LCD_COM|clk_count\(8) & \LCD_COM|LessThan11~1_combout\)) # (!\LCD_COM|clk_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|clk_count\(9),
	datab => \LCD_COM|clk_count\(8),
	datac => \LCD_COM|LessThan9~6_combout\,
	datad => \LCD_COM|LessThan11~1_combout\,
	combout => \LCD_COM|e~3_combout\);

-- Location: LCCOMB_X13_Y49_N14
\LCD_COM|LessThan10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|LessThan10~0_combout\ = (!\LCD_COM|clk_count\(8) & (!\LCD_COM|clk_count\(9) & (!\LCD_COM|clk_count\(6) & !\LCD_COM|clk_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|clk_count\(8),
	datab => \LCD_COM|clk_count\(9),
	datac => \LCD_COM|clk_count\(6),
	datad => \LCD_COM|clk_count\(7),
	combout => \LCD_COM|LessThan10~0_combout\);

-- Location: LCCOMB_X13_Y49_N24
\LCD_COM|LessThan10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|LessThan10~1_combout\ = (!\LCD_COM|clk_count\(2) & (!\LCD_COM|clk_count\(3) & !\LCD_COM|clk_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|clk_count\(2),
	datab => \LCD_COM|clk_count\(3),
	datad => \LCD_COM|clk_count\(1),
	combout => \LCD_COM|LessThan10~1_combout\);

-- Location: LCCOMB_X13_Y49_N18
\LCD_COM|LessThan10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|LessThan10~2_combout\ = (\LCD_COM|LessThan10~0_combout\ & (((\LCD_COM|LessThan10~1_combout\) # (!\LCD_COM|clk_count\(4))) # (!\LCD_COM|clk_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|clk_count\(5),
	datab => \LCD_COM|clk_count\(4),
	datac => \LCD_COM|LessThan10~0_combout\,
	datad => \LCD_COM|LessThan10~1_combout\,
	combout => \LCD_COM|LessThan10~2_combout\);

-- Location: LCCOMB_X12_Y49_N22
\LCD_COM|e~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|e~2_combout\ = (\LCD_COM|LessThan9~2_combout\ & (!\LCD_COM|clk_count\(11) & (!\LCD_COM|clk_count\(10) & !\LCD_COM|LessThan10~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|LessThan9~2_combout\,
	datab => \LCD_COM|clk_count\(11),
	datac => \LCD_COM|clk_count\(10),
	datad => \LCD_COM|LessThan10~2_combout\,
	combout => \LCD_COM|e~2_combout\);

-- Location: LCCOMB_X13_Y49_N16
\LCD_COM|LessThan9~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|LessThan9~7_combout\ = (!\LCD_COM|clk_count\(5) & (!\LCD_COM|clk_count\(4) & !\LCD_COM|clk_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|clk_count\(5),
	datac => \LCD_COM|clk_count\(4),
	datad => \LCD_COM|clk_count\(3),
	combout => \LCD_COM|LessThan9~7_combout\);

-- Location: LCCOMB_X13_Y49_N26
\LCD_COM|LessThan12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|LessThan12~0_combout\ = ((\LCD_COM|LessThan9~7_combout\ & ((!\LCD_COM|clk_count\(2)) # (!\LCD_COM|clk_count\(1))))) # (!\LCD_COM|clk_count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|clk_count\(1),
	datab => \LCD_COM|LessThan9~7_combout\,
	datac => \LCD_COM|clk_count\(6),
	datad => \LCD_COM|clk_count\(2),
	combout => \LCD_COM|LessThan12~0_combout\);

-- Location: LCCOMB_X13_Y49_N4
\LCD_COM|LessThan12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|LessThan12~1_combout\ = (!\LCD_COM|clk_count\(9) & (((\LCD_COM|LessThan12~0_combout\ & !\LCD_COM|clk_count\(7))) # (!\LCD_COM|clk_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|LessThan12~0_combout\,
	datab => \LCD_COM|clk_count\(9),
	datac => \LCD_COM|clk_count\(8),
	datad => \LCD_COM|clk_count\(7),
	combout => \LCD_COM|LessThan12~1_combout\);

-- Location: LCCOMB_X12_Y49_N18
\LCD_COM|e~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|e~0_combout\ = (\LCD_COM|clk_count\(11)) # ((\LCD_COM|clk_count\(10) & !\LCD_COM|LessThan12~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_COM|clk_count\(11),
	datac => \LCD_COM|clk_count\(10),
	datad => \LCD_COM|LessThan12~1_combout\,
	combout => \LCD_COM|e~0_combout\);

-- Location: LCCOMB_X12_Y49_N12
\LCD_COM|e~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|e~1_combout\ = (\LCD_COM|e~q\ & (((\LCD_COM|e~0_combout\) # (!\LCD_COM|LessThan9~6_combout\)) # (!\LCD_COM|LessThan9~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|LessThan9~2_combout\,
	datab => \LCD_COM|e~0_combout\,
	datac => \LCD_COM|LessThan9~6_combout\,
	datad => \LCD_COM|e~q\,
	combout => \LCD_COM|e~1_combout\);

-- Location: LCCOMB_X12_Y49_N0
\LCD_COM|e~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|e~4_combout\ = (!\LCD_COM|clk_count\(31) & ((\LCD_COM|e~1_combout\) # ((\LCD_COM|e~3_combout\ & \LCD_COM|e~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|clk_count\(31),
	datab => \LCD_COM|e~3_combout\,
	datac => \LCD_COM|e~2_combout\,
	datad => \LCD_COM|e~1_combout\,
	combout => \LCD_COM|e~4_combout\);

-- Location: FF_X12_Y49_N1
\LCD_COM|e\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \LCD_COM|e~4_combout\,
	ena => \LCD_COM|state.send~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_COM|e~q\);

-- Location: LCCOMB_X10_Y47_N10
\LCD_COM|Selector44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|Selector44~0_combout\ = (\LCD_COM|state.ready~q\ & \lcd_enable~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|state.ready~q\,
	datad => \lcd_enable~q\,
	combout => \LCD_COM|Selector44~0_combout\);

-- Location: LCCOMB_X63_Y39_N18
\Mux17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~2_combout\ = (char_index(1) & (((char_index(0))))) # (!char_index(1) & ((char_index(0) & (\sw[6]~input_o\)) # (!char_index(0) & ((\sw[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char_index(1),
	datab => \sw[6]~input_o\,
	datac => char_index(0),
	datad => \sw[7]~input_o\,
	combout => \Mux17~2_combout\);

-- Location: LCCOMB_X63_Y39_N20
\Mux17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~3_combout\ = (\Mux17~2_combout\ & (((\sw[4]~input_o\) # (!char_index(1))))) # (!\Mux17~2_combout\ & (\sw[5]~input_o\ & (char_index(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[5]~input_o\,
	datab => \Mux17~2_combout\,
	datac => char_index(1),
	datad => \sw[4]~input_o\,
	combout => \Mux17~3_combout\);

-- Location: LCCOMB_X63_Y39_N30
\Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (char_index(1) & (((char_index(0))))) # (!char_index(1) & ((char_index(0) & ((\sw[2]~input_o\))) # (!char_index(0) & (\sw[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char_index(1),
	datab => \sw[3]~input_o\,
	datac => char_index(0),
	datad => \sw[2]~input_o\,
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X63_Y39_N8
\Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~1_combout\ = (\Mux17~0_combout\ & (((\sw[0]~input_o\) # (!char_index(1))))) # (!\Mux17~0_combout\ & (\sw[1]~input_o\ & (char_index(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~0_combout\,
	datab => \sw[1]~input_o\,
	datac => char_index(1),
	datad => \sw[0]~input_o\,
	combout => \Mux17~1_combout\);

-- Location: LCCOMB_X63_Y39_N0
\Selector11~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~5_combout\ = (char_index(2) & ((\Mux17~1_combout\))) # (!char_index(2) & (\Mux17~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char_index(2),
	datab => \Mux17~3_combout\,
	datac => \Mux17~1_combout\,
	combout => \Selector11~5_combout\);

-- Location: LCCOMB_X61_Y39_N0
\Selector11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~3_combout\ = (cmd_index(1) & (cmd_index(0) & (cmd_index(3) & !cmd_index(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cmd_index(1),
	datab => cmd_index(0),
	datac => cmd_index(3),
	datad => cmd_index(2),
	combout => \Selector11~3_combout\);

-- Location: LCCOMB_X60_Y39_N24
\Selector11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~4_combout\ = (\Selector1~0_combout\ & ((\STATE.RESET~q\) # ((\Selector11~3_combout\ & !\STATE.SETUP~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~0_combout\,
	datab => \Selector11~3_combout\,
	datac => \STATE.SETUP~q\,
	datad => \STATE.RESET~q\,
	combout => \Selector11~4_combout\);

-- Location: LCCOMB_X59_Y39_N2
\lcd_bus[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus[2]~5_combout\ = (\STATE.TXD_UPDATE~q\ & ((\lcd_enable~q\) # ((char_index(3)) # (!\LCD_COM|busy~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_enable~q\,
	datab => \STATE.TXD_UPDATE~q\,
	datac => char_index(3),
	datad => \LCD_COM|busy~q\,
	combout => \lcd_bus[2]~5_combout\);

-- Location: LCCOMB_X59_Y39_N4
\Selector11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~1_combout\ = (!\STATE.PAUSE~q\ & (!\STATE.IDLE~q\ & (!\STATE.TXD~q\ & !\lcd_bus[2]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATE.PAUSE~q\,
	datab => \STATE.IDLE~q\,
	datac => \STATE.TXD~q\,
	datad => \lcd_bus[2]~5_combout\,
	combout => \Selector11~1_combout\);

-- Location: LCCOMB_X62_Y39_N2
\Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\STATE.TXD_POSITION~q\ & (((\lcd_enable~q\)) # (!\LCD_COM|busy~q\))) # (!\STATE.TXD_POSITION~q\ & (!\STATE.SETUP~q\ & ((\lcd_enable~q\) # (!\LCD_COM|busy~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATE.TXD_POSITION~q\,
	datab => \LCD_COM|busy~q\,
	datac => \STATE.SETUP~q\,
	datad => \lcd_enable~q\,
	combout => \Selector11~0_combout\);

-- Location: LCCOMB_X63_Y39_N24
\Selector11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~2_combout\ = (lcd_bus(0) & ((\STATE.RESET~q\) # ((\Selector11~0_combout\) # (!\Selector11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATE.RESET~q\,
	datab => lcd_bus(0),
	datac => \Selector11~1_combout\,
	datad => \Selector11~0_combout\,
	combout => \Selector11~2_combout\);

-- Location: LCCOMB_X63_Y39_N16
\Selector11~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~6_combout\ = (\Selector11~4_combout\) # ((\Selector11~2_combout\) # ((\Selector2~0_combout\ & \Selector11~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~0_combout\,
	datab => \Selector11~5_combout\,
	datac => \Selector11~4_combout\,
	datad => \Selector11~2_combout\,
	combout => \Selector11~6_combout\);

-- Location: FF_X63_Y39_N17
\lcd_bus[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \Selector11~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lcd_bus(0));

-- Location: LCCOMB_X10_Y47_N6
\LCD_COM|Selector44~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|Selector44~1_combout\ = (\LCD_COM|state.send~q\) # ((!\LCD_COM|state.power_up~q\ & \LCD_COM|LessThan0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|state.power_up~q\,
	datac => \LCD_COM|LessThan0~10_combout\,
	datad => \LCD_COM|state.send~q\,
	combout => \LCD_COM|Selector44~1_combout\);

-- Location: LCCOMB_X10_Y47_N26
\LCD_COM|Selector44~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|Selector44~2_combout\ = (\LCD_COM|Selector44~0_combout\ & ((lcd_bus(0)) # ((\LCD_COM|lcd_data\(0) & \LCD_COM|Selector44~1_combout\)))) # (!\LCD_COM|Selector44~0_combout\ & (((\LCD_COM|lcd_data\(0) & \LCD_COM|Selector44~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|Selector44~0_combout\,
	datab => lcd_bus(0),
	datac => \LCD_COM|lcd_data\(0),
	datad => \LCD_COM|Selector44~1_combout\,
	combout => \LCD_COM|Selector44~2_combout\);

-- Location: FF_X10_Y47_N27
\LCD_COM|lcd_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \LCD_COM|Selector44~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_COM|lcd_data\(0));

-- Location: LCCOMB_X61_Y39_N26
\Selector10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~1_combout\ = (cmd_index(1) & ((cmd_index(0)) # ((cmd_index(3))))) # (!cmd_index(1) & (cmd_index(2) & (cmd_index(0) $ (!cmd_index(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cmd_index(1),
	datab => cmd_index(0),
	datac => cmd_index(3),
	datad => cmd_index(2),
	combout => \Selector10~1_combout\);

-- Location: LCCOMB_X62_Y39_N12
\Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (!\STATE.TXD_UPDATE~q\ & (\STATE.SETUP~q\ & !\STATE.RESET~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATE.TXD_UPDATE~q\,
	datac => \STATE.SETUP~q\,
	datad => \STATE.RESET~q\,
	combout => \Selector10~0_combout\);

-- Location: LCCOMB_X62_Y39_N22
\Selector10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~2_combout\ = (\Selector10~0_combout\) # ((\Selector10~1_combout\ & (!\LessThan0~0_combout\ & !\STATE.SETUP~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector10~1_combout\,
	datab => \LessThan0~0_combout\,
	datac => \STATE.SETUP~q\,
	datad => \Selector10~0_combout\,
	combout => \Selector10~2_combout\);

-- Location: LCCOMB_X62_Y39_N14
\Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\Selector11~1_combout\ & ((\Selector7~0_combout\) # ((!\lcd_enable~q\ & \LCD_COM|busy~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector7~0_combout\,
	datab => \lcd_enable~q\,
	datac => \LCD_COM|busy~q\,
	datad => \Selector11~1_combout\,
	combout => \Selector8~0_combout\);

-- Location: FF_X62_Y39_N23
\lcd_bus[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \Selector10~2_combout\,
	ena => \Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lcd_bus(1));

-- Location: LCCOMB_X10_Y47_N20
\LCD_COM|Selector43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|Selector43~0_combout\ = (\LCD_COM|Selector44~0_combout\ & ((lcd_bus(1)) # ((\LCD_COM|lcd_data\(1) & \LCD_COM|Selector44~1_combout\)))) # (!\LCD_COM|Selector44~0_combout\ & (((\LCD_COM|lcd_data\(1) & \LCD_COM|Selector44~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|Selector44~0_combout\,
	datab => lcd_bus(1),
	datac => \LCD_COM|lcd_data\(1),
	datad => \LCD_COM|Selector44~1_combout\,
	combout => \LCD_COM|Selector43~0_combout\);

-- Location: FF_X10_Y47_N21
\LCD_COM|lcd_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \LCD_COM|Selector43~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_COM|lcd_data\(1));

-- Location: LCCOMB_X61_Y39_N12
\Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (cmd_index(1) & (!cmd_index(2) & (cmd_index(0) $ (!cmd_index(3))))) # (!cmd_index(1) & (cmd_index(0) $ ((!cmd_index(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cmd_index(1),
	datab => cmd_index(0),
	datac => cmd_index(3),
	datad => cmd_index(2),
	combout => \Selector9~0_combout\);

-- Location: LCCOMB_X62_Y39_N0
\Selector9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~1_combout\ = (\STATE.SETUP~q\ & (((!\STATE.RESET~q\ & !\STATE.TXD_UPDATE~q\)))) # (!\STATE.SETUP~q\ & (\Selector9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector9~0_combout\,
	datab => \STATE.RESET~q\,
	datac => \STATE.SETUP~q\,
	datad => \STATE.TXD_UPDATE~q\,
	combout => \Selector9~1_combout\);

-- Location: FF_X62_Y39_N1
\lcd_bus[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \Selector9~1_combout\,
	ena => \Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lcd_bus(2));

-- Location: LCCOMB_X10_Y47_N22
\LCD_COM|Selector42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|Selector42~0_combout\ = (\LCD_COM|Selector44~0_combout\ & ((lcd_bus(2)) # ((\LCD_COM|lcd_data\(2) & \LCD_COM|Selector44~1_combout\)))) # (!\LCD_COM|Selector44~0_combout\ & (((\LCD_COM|lcd_data\(2) & \LCD_COM|Selector44~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|Selector44~0_combout\,
	datab => lcd_bus(2),
	datac => \LCD_COM|lcd_data\(2),
	datad => \LCD_COM|Selector44~1_combout\,
	combout => \LCD_COM|Selector42~0_combout\);

-- Location: FF_X10_Y47_N23
\LCD_COM|lcd_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \LCD_COM|Selector42~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_COM|lcd_data\(2));

-- Location: LCCOMB_X61_Y39_N22
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (cmd_index(0) & (!cmd_index(2) & ((cmd_index(1)) # (!cmd_index(3))))) # (!cmd_index(0) & ((cmd_index(3) & ((!cmd_index(2)))) # (!cmd_index(3) & (!cmd_index(1) & cmd_index(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cmd_index(1),
	datab => cmd_index(0),
	datac => cmd_index(3),
	datad => cmd_index(2),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X61_Y39_N24
\Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~1_combout\ = (\Mux4~0_combout\ & ((\Selector1~1_combout\) # ((lcd_bus(3) & !\Selector8~0_combout\)))) # (!\Mux4~0_combout\ & (((lcd_bus(3) & !\Selector8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~0_combout\,
	datab => \Selector1~1_combout\,
	datac => lcd_bus(3),
	datad => \Selector8~0_combout\,
	combout => \Selector8~1_combout\);

-- Location: FF_X61_Y39_N25
\lcd_bus[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \Selector8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lcd_bus(3));

-- Location: LCCOMB_X10_Y47_N0
\LCD_COM|Selector41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|Selector41~0_combout\ = (\LCD_COM|Selector44~0_combout\ & ((lcd_bus(3)) # ((\LCD_COM|lcd_data\(3) & \LCD_COM|Selector44~1_combout\)))) # (!\LCD_COM|Selector44~0_combout\ & (((\LCD_COM|lcd_data\(3) & \LCD_COM|Selector44~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|Selector44~0_combout\,
	datab => lcd_bus(3),
	datac => \LCD_COM|lcd_data\(3),
	datad => \LCD_COM|Selector44~1_combout\,
	combout => \LCD_COM|Selector41~0_combout\);

-- Location: FF_X10_Y47_N1
\LCD_COM|lcd_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \LCD_COM|Selector41~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_COM|lcd_data\(3));

-- Location: LCCOMB_X10_Y47_N2
\LCD_COM|Selector40~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|Selector40~1_combout\ = (\LCD_COM|lcd_data\(4) & ((\LCD_COM|state.send~q\) # (!\LCD_COM|state.power_up~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_COM|lcd_data\(4),
	datac => \LCD_COM|state.power_up~q\,
	datad => \LCD_COM|state.send~q\,
	combout => \LCD_COM|Selector40~1_combout\);

-- Location: LCCOMB_X61_Y39_N8
\Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~1_combout\ = (cmd_index(3) & (!cmd_index(2) & ((cmd_index(1)) # (!cmd_index(0))))) # (!cmd_index(3) & ((cmd_index(1) & (cmd_index(0))) # (!cmd_index(1) & ((!cmd_index(2)) # (!cmd_index(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cmd_index(1),
	datab => cmd_index(0),
	datac => cmd_index(3),
	datad => cmd_index(2),
	combout => \Selector7~1_combout\);

-- Location: LCCOMB_X62_Y39_N18
\Selector7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~2_combout\ = (\STATE.SETUP~q\ & (((!\STATE.RESET~q\ & !\STATE.TXD_POSITION~q\)))) # (!\STATE.SETUP~q\ & (\Selector7~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector7~1_combout\,
	datab => \STATE.RESET~q\,
	datac => \STATE.SETUP~q\,
	datad => \STATE.TXD_POSITION~q\,
	combout => \Selector7~2_combout\);

-- Location: FF_X62_Y39_N19
\lcd_bus[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \Selector7~2_combout\,
	ena => \Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lcd_bus(4));

-- Location: LCCOMB_X10_Y47_N24
\LCD_COM|Selector40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|Selector40~0_combout\ = (!\LCD_COM|state.power_up~q\ & !\LCD_COM|LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|state.power_up~q\,
	datac => \LCD_COM|LessThan0~10_combout\,
	combout => \LCD_COM|Selector40~0_combout\);

-- Location: LCCOMB_X10_Y47_N18
\LCD_COM|Selector40~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|Selector40~2_combout\ = (\LCD_COM|Selector40~1_combout\) # ((\LCD_COM|Selector40~0_combout\) # ((\LCD_COM|Selector44~0_combout\ & lcd_bus(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|Selector44~0_combout\,
	datab => \LCD_COM|Selector40~1_combout\,
	datac => lcd_bus(4),
	datad => \LCD_COM|Selector40~0_combout\,
	combout => \LCD_COM|Selector40~2_combout\);

-- Location: FF_X10_Y47_N19
\LCD_COM|lcd_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \LCD_COM|Selector40~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_COM|lcd_data\(4));

-- Location: LCCOMB_X61_Y39_N2
\Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (cmd_index(1) & (!cmd_index(2) & ((cmd_index(0)) # (cmd_index(3))))) # (!cmd_index(1) & (cmd_index(2) & ((!cmd_index(3)) # (!cmd_index(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cmd_index(1),
	datab => cmd_index(0),
	datac => cmd_index(3),
	datad => cmd_index(2),
	combout => \Selector6~0_combout\);

-- Location: LCCOMB_X62_Y39_N4
\Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~1_combout\ = (\STATE.SETUP~q\ & (!\STATE.TXD_POSITION~q\ & ((!\STATE.RESET~q\)))) # (!\STATE.SETUP~q\ & (((\Selector6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATE.TXD_POSITION~q\,
	datab => \Selector6~0_combout\,
	datac => \STATE.SETUP~q\,
	datad => \STATE.RESET~q\,
	combout => \Selector6~1_combout\);

-- Location: FF_X62_Y39_N5
\lcd_bus[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \Selector6~1_combout\,
	ena => \Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lcd_bus(5));

-- Location: LCCOMB_X10_Y47_N12
\LCD_COM|Selector39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|Selector39~0_combout\ = (\LCD_COM|lcd_data\(5) & ((\LCD_COM|state.send~q\) # (!\LCD_COM|state.power_up~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_COM|lcd_data\(5),
	datac => \LCD_COM|state.power_up~q\,
	datad => \LCD_COM|state.send~q\,
	combout => \LCD_COM|Selector39~0_combout\);

-- Location: LCCOMB_X10_Y47_N28
\LCD_COM|Selector39~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|Selector39~1_combout\ = (\LCD_COM|Selector39~0_combout\) # ((\LCD_COM|Selector40~0_combout\) # ((\LCD_COM|Selector44~0_combout\ & lcd_bus(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|Selector44~0_combout\,
	datab => lcd_bus(5),
	datac => \LCD_COM|Selector39~0_combout\,
	datad => \LCD_COM|Selector40~0_combout\,
	combout => \LCD_COM|Selector39~1_combout\);

-- Location: FF_X10_Y47_N29
\LCD_COM|lcd_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \LCD_COM|Selector39~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_COM|lcd_data\(5));

-- Location: LCCOMB_X61_Y39_N28
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (cmd_index(1) & (cmd_index(3) $ (((cmd_index(0) & !cmd_index(2)))))) # (!cmd_index(1) & (cmd_index(2) & ((cmd_index(0)) # (cmd_index(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cmd_index(1),
	datab => cmd_index(0),
	datac => cmd_index(3),
	datad => cmd_index(2),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X61_Y39_N10
\Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\Selector1~1_combout\ & (((lcd_bus(6) & !\Selector8~0_combout\)) # (!\Mux1~0_combout\))) # (!\Selector1~1_combout\ & (((lcd_bus(6) & !\Selector8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~1_combout\,
	datab => \Mux1~0_combout\,
	datac => lcd_bus(6),
	datad => \Selector8~0_combout\,
	combout => \Selector5~0_combout\);

-- Location: FF_X61_Y39_N11
\lcd_bus[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lcd_bus(6));

-- Location: LCCOMB_X10_Y47_N30
\LCD_COM|Selector38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|Selector38~0_combout\ = (\LCD_COM|Selector44~0_combout\ & ((lcd_bus(6)) # ((\LCD_COM|lcd_data\(6) & \LCD_COM|Selector44~1_combout\)))) # (!\LCD_COM|Selector44~0_combout\ & (((\LCD_COM|lcd_data\(6) & \LCD_COM|Selector44~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|Selector44~0_combout\,
	datab => lcd_bus(6),
	datac => \LCD_COM|lcd_data\(6),
	datad => \LCD_COM|Selector44~1_combout\,
	combout => \LCD_COM|Selector38~0_combout\);

-- Location: FF_X10_Y47_N31
\LCD_COM|lcd_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \LCD_COM|Selector38~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_COM|lcd_data\(6));

-- Location: LCCOMB_X61_Y39_N14
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (cmd_index(2) & ((cmd_index(1) & (!cmd_index(0) & !cmd_index(3))) # (!cmd_index(1) & (cmd_index(0) & cmd_index(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cmd_index(1),
	datab => cmd_index(0),
	datac => cmd_index(3),
	datad => cmd_index(2),
	combout => \Selector4~0_combout\);

-- Location: LCCOMB_X62_Y39_N30
\Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~1_combout\ = (\Selector10~0_combout\) # ((\Selector4~0_combout\ & (!\LessThan0~0_combout\ & !\STATE.SETUP~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~0_combout\,
	datab => \LessThan0~0_combout\,
	datac => \STATE.SETUP~q\,
	datad => \Selector10~0_combout\,
	combout => \Selector4~1_combout\);

-- Location: FF_X62_Y39_N31
\lcd_bus[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \Selector4~1_combout\,
	ena => \Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lcd_bus(7));

-- Location: LCCOMB_X10_Y47_N16
\LCD_COM|Selector37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LCD_COM|Selector37~0_combout\ = (\LCD_COM|Selector44~0_combout\ & ((lcd_bus(7)) # ((\LCD_COM|lcd_data\(7) & \LCD_COM|Selector44~1_combout\)))) # (!\LCD_COM|Selector44~0_combout\ & (((\LCD_COM|lcd_data\(7) & \LCD_COM|Selector44~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_COM|Selector44~0_combout\,
	datab => lcd_bus(7),
	datac => \LCD_COM|lcd_data\(7),
	datad => \LCD_COM|Selector44~1_combout\,
	combout => \LCD_COM|Selector37~0_combout\);

-- Location: FF_X10_Y47_N17
\LCD_COM|lcd_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \LCD_COM|Selector37~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD_COM|lcd_data\(7));

-- Location: IOIBUF_X115_Y42_N15
\key[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(2),
	o => \key[2]~input_o\);

-- Location: IOIBUF_X115_Y35_N22
\key[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(3),
	o => \key[3]~input_o\);

-- Location: IOIBUF_X115_Y4_N22
\sw[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(8),
	o => \sw[8]~input_o\);

-- Location: IOIBUF_X115_Y16_N8
\sw[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(9),
	o => \sw[9]~input_o\);

ww_led_r(0) <= \led_r[0]~output_o\;

ww_led_r(1) <= \led_r[1]~output_o\;

ww_led_r(2) <= \led_r[2]~output_o\;

ww_led_r(3) <= \led_r[3]~output_o\;

ww_led_r(4) <= \led_r[4]~output_o\;

ww_led_r(5) <= \led_r[5]~output_o\;

ww_led_r(6) <= \led_r[6]~output_o\;

ww_led_r(7) <= \led_r[7]~output_o\;

ww_led_r(8) <= \led_r[8]~output_o\;

ww_led_r(9) <= \led_r[9]~output_o\;

ww_led_g(0) <= \led_g[0]~output_o\;

ww_led_g(1) <= \led_g[1]~output_o\;

ww_led_g(2) <= \led_g[2]~output_o\;

ww_led_g(3) <= \led_g[3]~output_o\;

ww_led_g(4) <= \led_g[4]~output_o\;

ww_led_g(5) <= \led_g[5]~output_o\;

ww_led_g(6) <= \led_g[6]~output_o\;

ww_led_g(7) <= \led_g[7]~output_o\;

ww_uart_txd <= \uart_txd~output_o\;

ww_lcd_on <= \lcd_on~output_o\;

ww_lcd_rw <= \lcd_rw~output_o\;

ww_lcd_rs <= \lcd_rs~output_o\;

ww_lcd_e <= \lcd_e~output_o\;

ww_lcd_data(0) <= \lcd_data[0]~output_o\;

ww_lcd_data(1) <= \lcd_data[1]~output_o\;

ww_lcd_data(2) <= \lcd_data[2]~output_o\;

ww_lcd_data(3) <= \lcd_data[3]~output_o\;

ww_lcd_data(4) <= \lcd_data[4]~output_o\;

ww_lcd_data(5) <= \lcd_data[5]~output_o\;

ww_lcd_data(6) <= \lcd_data[6]~output_o\;

ww_lcd_data(7) <= \lcd_data[7]~output_o\;
END structure;


