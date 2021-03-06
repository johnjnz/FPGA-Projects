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

-- DATE "10/21/2014 20:10:41"

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

ENTITY 	lcd_controller_test IS
    PORT (
	clk : IN std_logic;
	rw : OUT std_logic;
	rs : OUT std_logic;
	e : OUT std_logic;
	lcd_data : OUT std_logic_vector(7 DOWNTO 0);
	QuadA : IN std_logic;
	QuadB : IN std_logic;
	CounterValue : OUT std_logic_vector(15 DOWNTO 0)
	);
END lcd_controller_test;

-- Design Ports Information
-- rw	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[0]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[1]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[2]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[3]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[4]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[5]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[6]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[7]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CounterValue[0]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CounterValue[1]	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CounterValue[2]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CounterValue[3]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CounterValue[4]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CounterValue[5]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CounterValue[6]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CounterValue[7]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CounterValue[8]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CounterValue[9]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CounterValue[10]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CounterValue[11]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CounterValue[12]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CounterValue[13]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CounterValue[14]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CounterValue[15]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- QuadB	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- QuadA	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lcd_controller_test IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rw : std_logic;
SIGNAL ww_rs : std_logic;
SIGNAL ww_e : std_logic;
SIGNAL ww_lcd_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_QuadA : std_logic;
SIGNAL ww_QuadB : std_logic;
SIGNAL ww_CounterValue : std_logic_vector(15 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rw~output_o\ : std_logic;
SIGNAL \rs~output_o\ : std_logic;
SIGNAL \e~output_o\ : std_logic;
SIGNAL \lcd_data[0]~output_o\ : std_logic;
SIGNAL \lcd_data[1]~output_o\ : std_logic;
SIGNAL \lcd_data[2]~output_o\ : std_logic;
SIGNAL \lcd_data[3]~output_o\ : std_logic;
SIGNAL \lcd_data[4]~output_o\ : std_logic;
SIGNAL \lcd_data[5]~output_o\ : std_logic;
SIGNAL \lcd_data[6]~output_o\ : std_logic;
SIGNAL \lcd_data[7]~output_o\ : std_logic;
SIGNAL \CounterValue[0]~output_o\ : std_logic;
SIGNAL \CounterValue[1]~output_o\ : std_logic;
SIGNAL \CounterValue[2]~output_o\ : std_logic;
SIGNAL \CounterValue[3]~output_o\ : std_logic;
SIGNAL \CounterValue[4]~output_o\ : std_logic;
SIGNAL \CounterValue[5]~output_o\ : std_logic;
SIGNAL \CounterValue[6]~output_o\ : std_logic;
SIGNAL \CounterValue[7]~output_o\ : std_logic;
SIGNAL \CounterValue[8]~output_o\ : std_logic;
SIGNAL \CounterValue[9]~output_o\ : std_logic;
SIGNAL \CounterValue[10]~output_o\ : std_logic;
SIGNAL \CounterValue[11]~output_o\ : std_logic;
SIGNAL \CounterValue[12]~output_o\ : std_logic;
SIGNAL \CounterValue[13]~output_o\ : std_logic;
SIGNAL \CounterValue[14]~output_o\ : std_logic;
SIGNAL \CounterValue[15]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \QuadA~input_o\ : std_logic;
SIGNAL \QuadB~input_o\ : std_logic;
SIGNAL \quad|Mux3~0_combout\ : std_logic;
SIGNAL \quad|Mux3~1_combout\ : std_logic;
SIGNAL \quad|Mux3~2_combout\ : std_logic;
SIGNAL \quad|Mux2~0_combout\ : std_logic;
SIGNAL \quad|Mux2~1_combout\ : std_logic;
SIGNAL \quad|Mux1~0_combout\ : std_logic;
SIGNAL \quad|Mux1~1_combout\ : std_logic;
SIGNAL \quad|Mux0~0_combout\ : std_logic;
SIGNAL \quad|Mux0~1_combout\ : std_logic;
SIGNAL \quad|Mux4~0_combout\ : std_logic;
SIGNAL \quad|counting~q\ : std_logic;
SIGNAL \quad|counted~q\ : std_logic;
SIGNAL \quad|CountEnable~0_combout\ : std_logic;
SIGNAL \quad|CountEnable~q\ : std_logic;
SIGNAL \quad|Direction~0_combout\ : std_logic;
SIGNAL \quad|Direction~1_combout\ : std_logic;
SIGNAL \quad|Direction~q\ : std_logic;
SIGNAL \char[0]~4_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \char~0_combout\ : std_logic;
SIGNAL \char~1_combout\ : std_logic;
SIGNAL \char~2_combout\ : std_logic;
SIGNAL \char~3_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \dut|Selector36~0_combout\ : std_logic;
SIGNAL \dut|LessThan0~7_combout\ : std_logic;
SIGNAL \dut|LessThan0~8_combout\ : std_logic;
SIGNAL \dut|Add0~0_combout\ : std_logic;
SIGNAL \dut|LessThan1~0_combout\ : std_logic;
SIGNAL \dut|LessThan8~5_combout\ : std_logic;
SIGNAL \dut|LessThan6~0_combout\ : std_logic;
SIGNAL \dut|LessThan6~1_combout\ : std_logic;
SIGNAL \dut|LessThan6~2_combout\ : std_logic;
SIGNAL \dut|LessThan8~0_combout\ : std_logic;
SIGNAL \dut|LessThan8~1_combout\ : std_logic;
SIGNAL \dut|LessThan7~5_combout\ : std_logic;
SIGNAL \dut|LessThan7~6_combout\ : std_logic;
SIGNAL \dut|Selector2~0_combout\ : std_logic;
SIGNAL \dut|Add0~55\ : std_logic;
SIGNAL \dut|Add0~57\ : std_logic;
SIGNAL \dut|Add0~58_combout\ : std_logic;
SIGNAL \dut|Selector3~0_combout\ : std_logic;
SIGNAL \dut|Add0~59\ : std_logic;
SIGNAL \dut|Add0~60_combout\ : std_logic;
SIGNAL \dut|Selector11~0_combout\ : std_logic;
SIGNAL \dut|Add0~39\ : std_logic;
SIGNAL \dut|Add0~40_combout\ : std_logic;
SIGNAL \dut|Selector12~0_combout\ : std_logic;
SIGNAL \dut|Add0~41\ : std_logic;
SIGNAL \dut|Add0~42_combout\ : std_logic;
SIGNAL \dut|Add0~43\ : std_logic;
SIGNAL \dut|Add0~44_combout\ : std_logic;
SIGNAL \dut|LessThan7~1_combout\ : std_logic;
SIGNAL \dut|LessThan7~0_combout\ : std_logic;
SIGNAL \dut|LessThan7~8_combout\ : std_logic;
SIGNAL \dut|LessThan7~9_combout\ : std_logic;
SIGNAL \dut|clk_count[1]~3_combout\ : std_logic;
SIGNAL \dut|state~15_combout\ : std_logic;
SIGNAL \dut|state.power_up~q\ : std_logic;
SIGNAL \dut|LessThan3~2_combout\ : std_logic;
SIGNAL \dut|LessThan8~3_combout\ : std_logic;
SIGNAL \dut|LessThan8~4_combout\ : std_logic;
SIGNAL \dut|LessThan7~3_combout\ : std_logic;
SIGNAL \dut|LessThan7~4_combout\ : std_logic;
SIGNAL \dut|LessThan8~6_combout\ : std_logic;
SIGNAL \dut|clk_count[1]~2_combout\ : std_logic;
SIGNAL \dut|clk_count[1]~4_combout\ : std_logic;
SIGNAL \dut|Selector32~0_combout\ : std_logic;
SIGNAL \dut|Add0~1\ : std_logic;
SIGNAL \dut|Add0~2_combout\ : std_logic;
SIGNAL \dut|Selector31~0_combout\ : std_logic;
SIGNAL \dut|Add0~3\ : std_logic;
SIGNAL \dut|Add0~4_combout\ : std_logic;
SIGNAL \dut|Selector30~0_combout\ : std_logic;
SIGNAL \dut|Add0~5\ : std_logic;
SIGNAL \dut|Add0~6_combout\ : std_logic;
SIGNAL \dut|Selector29~0_combout\ : std_logic;
SIGNAL \dut|Add0~7\ : std_logic;
SIGNAL \dut|Add0~8_combout\ : std_logic;
SIGNAL \dut|Selector28~0_combout\ : std_logic;
SIGNAL \dut|Add0~9\ : std_logic;
SIGNAL \dut|Add0~10_combout\ : std_logic;
SIGNAL \dut|Selector27~0_combout\ : std_logic;
SIGNAL \dut|Add0~11\ : std_logic;
SIGNAL \dut|Add0~12_combout\ : std_logic;
SIGNAL \dut|Selector26~0_combout\ : std_logic;
SIGNAL \dut|Add0~13\ : std_logic;
SIGNAL \dut|Add0~14_combout\ : std_logic;
SIGNAL \dut|Selector25~0_combout\ : std_logic;
SIGNAL \dut|Add0~15\ : std_logic;
SIGNAL \dut|Add0~16_combout\ : std_logic;
SIGNAL \dut|Selector24~0_combout\ : std_logic;
SIGNAL \dut|Add0~17\ : std_logic;
SIGNAL \dut|Add0~18_combout\ : std_logic;
SIGNAL \dut|Selector23~0_combout\ : std_logic;
SIGNAL \dut|Add0~19\ : std_logic;
SIGNAL \dut|Add0~20_combout\ : std_logic;
SIGNAL \dut|Selector22~0_combout\ : std_logic;
SIGNAL \dut|Add0~21\ : std_logic;
SIGNAL \dut|Add0~22_combout\ : std_logic;
SIGNAL \dut|Selector21~0_combout\ : std_logic;
SIGNAL \dut|Add0~23\ : std_logic;
SIGNAL \dut|Add0~24_combout\ : std_logic;
SIGNAL \dut|Selector20~0_combout\ : std_logic;
SIGNAL \dut|Add0~25\ : std_logic;
SIGNAL \dut|Add0~26_combout\ : std_logic;
SIGNAL \dut|Selector19~0_combout\ : std_logic;
SIGNAL \dut|Add0~27\ : std_logic;
SIGNAL \dut|Add0~28_combout\ : std_logic;
SIGNAL \dut|Selector18~0_combout\ : std_logic;
SIGNAL \dut|Add0~29\ : std_logic;
SIGNAL \dut|Add0~30_combout\ : std_logic;
SIGNAL \dut|Selector17~0_combout\ : std_logic;
SIGNAL \dut|Add0~31\ : std_logic;
SIGNAL \dut|Add0~32_combout\ : std_logic;
SIGNAL \dut|Selector16~0_combout\ : std_logic;
SIGNAL \dut|Add0~33\ : std_logic;
SIGNAL \dut|Add0~34_combout\ : std_logic;
SIGNAL \dut|Selector15~0_combout\ : std_logic;
SIGNAL \dut|Add0~35\ : std_logic;
SIGNAL \dut|Add0~36_combout\ : std_logic;
SIGNAL \dut|Selector14~0_combout\ : std_logic;
SIGNAL \dut|Add0~37\ : std_logic;
SIGNAL \dut|Add0~38_combout\ : std_logic;
SIGNAL \dut|Selector13~0_combout\ : std_logic;
SIGNAL \dut|LessThan0~0_combout\ : std_logic;
SIGNAL \dut|LessThan0~1_combout\ : std_logic;
SIGNAL \dut|LessThan0~2_combout\ : std_logic;
SIGNAL \dut|LessThan0~3_combout\ : std_logic;
SIGNAL \dut|LessThan0~4_combout\ : std_logic;
SIGNAL \dut|LessThan0~5_combout\ : std_logic;
SIGNAL \dut|LessThan0~6_combout\ : std_logic;
SIGNAL \dut|LessThan0~10_combout\ : std_logic;
SIGNAL \dut|Add0~61\ : std_logic;
SIGNAL \dut|Add0~62_combout\ : std_logic;
SIGNAL \dut|clk_count[1]~0_combout\ : std_logic;
SIGNAL \dut|clk_count[1]~1_combout\ : std_logic;
SIGNAL \dut|Selector10~0_combout\ : std_logic;
SIGNAL \dut|Add0~45\ : std_logic;
SIGNAL \dut|Add0~46_combout\ : std_logic;
SIGNAL \dut|Selector9~0_combout\ : std_logic;
SIGNAL \dut|Add0~47\ : std_logic;
SIGNAL \dut|Add0~48_combout\ : std_logic;
SIGNAL \dut|Selector8~0_combout\ : std_logic;
SIGNAL \dut|Add0~49\ : std_logic;
SIGNAL \dut|Add0~50_combout\ : std_logic;
SIGNAL \dut|Selector7~0_combout\ : std_logic;
SIGNAL \dut|Add0~51\ : std_logic;
SIGNAL \dut|Add0~52_combout\ : std_logic;
SIGNAL \dut|Selector6~0_combout\ : std_logic;
SIGNAL \dut|Add0~53\ : std_logic;
SIGNAL \dut|Add0~54_combout\ : std_logic;
SIGNAL \dut|Selector5~0_combout\ : std_logic;
SIGNAL \dut|LessThan0~9_combout\ : std_logic;
SIGNAL \dut|LessThan9~2_combout\ : std_logic;
SIGNAL \dut|LessThan9~3_combout\ : std_logic;
SIGNAL \dut|LessThan9~4_combout\ : std_logic;
SIGNAL \dut|LessThan9~0_combout\ : std_logic;
SIGNAL \dut|LessThan9~1_combout\ : std_logic;
SIGNAL \dut|LessThan9~5_combout\ : std_logic;
SIGNAL \dut|state~14_combout\ : std_logic;
SIGNAL \dut|rs~0_combout\ : std_logic;
SIGNAL \dut|Selector1~0_combout\ : std_logic;
SIGNAL \dut|state~6_combout\ : std_logic;
SIGNAL \dut|state~13_combout\ : std_logic;
SIGNAL \dut|state.send~q\ : std_logic;
SIGNAL \dut|state~10_combout\ : std_logic;
SIGNAL \dut|state.ready~q\ : std_logic;
SIGNAL \dut|Selector4~0_combout\ : std_logic;
SIGNAL \dut|Add0~56_combout\ : std_logic;
SIGNAL \dut|busy~4_combout\ : std_logic;
SIGNAL \dut|LessThan8~2_combout\ : std_logic;
SIGNAL \dut|LessThan7~11_combout\ : std_logic;
SIGNAL \dut|LessThan3~0_combout\ : std_logic;
SIGNAL \dut|LessThan3~4_combout\ : std_logic;
SIGNAL \dut|LessThan3~3_combout\ : std_logic;
SIGNAL \dut|LessThan3~5_combout\ : std_logic;
SIGNAL \dut|busy~6_combout\ : std_logic;
SIGNAL \dut|state~8_combout\ : std_logic;
SIGNAL \dut|Selector44~0_combout\ : std_logic;
SIGNAL \dut|state~7_combout\ : std_logic;
SIGNAL \dut|state~9_combout\ : std_logic;
SIGNAL \dut|busy~q\ : std_logic;
SIGNAL \lcd_enable~3_combout\ : std_logic;
SIGNAL \lcd_enable~q\ : std_logic;
SIGNAL \state.clear~feeder_combout\ : std_logic;
SIGNAL \state.clear~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \state.send~q\ : std_logic;
SIGNAL \lcd_enable~2_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \state.idle~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \lcd_reset~q\ : std_logic;
SIGNAL \dut|state~11_combout\ : std_logic;
SIGNAL \dut|LessThan7~7_combout\ : std_logic;
SIGNAL \dut|busy~8_combout\ : std_logic;
SIGNAL \dut|busy~7_combout\ : std_logic;
SIGNAL \dut|state~12_combout\ : std_logic;
SIGNAL \dut|state.initialize~q\ : std_logic;
SIGNAL \dut|Selector46~0_combout\ : std_logic;
SIGNAL \dut|rs~1_combout\ : std_logic;
SIGNAL \dut|rs~q\ : std_logic;
SIGNAL \dut|Selector46~1_combout\ : std_logic;
SIGNAL \dut|LessThan10~3_combout\ : std_logic;
SIGNAL \dut|LessThan10~1_combout\ : std_logic;
SIGNAL \dut|LessThan10~2_combout\ : std_logic;
SIGNAL \dut|LessThan10~0_combout\ : std_logic;
SIGNAL \dut|Selector46~2_combout\ : std_logic;
SIGNAL \dut|LessThan11~0_combout\ : std_logic;
SIGNAL \dut|LessThan11~1_combout\ : std_logic;
SIGNAL \dut|Selector46~3_combout\ : std_logic;
SIGNAL \dut|LessThan9~6_combout\ : std_logic;
SIGNAL \dut|LessThan12~0_combout\ : std_logic;
SIGNAL \dut|LessThan12~1_combout\ : std_logic;
SIGNAL \dut|LessThan12~2_combout\ : std_logic;
SIGNAL \dut|Selector46~4_combout\ : std_logic;
SIGNAL \dut|Selector46~5_combout\ : std_logic;
SIGNAL \dut|Selector46~14_combout\ : std_logic;
SIGNAL \dut|Selector46~6_combout\ : std_logic;
SIGNAL \dut|LessThan7~10_combout\ : std_logic;
SIGNAL \dut|LessThan1~1_combout\ : std_logic;
SIGNAL \dut|LessThan1~2_combout\ : std_logic;
SIGNAL \dut|LessThan2~0_combout\ : std_logic;
SIGNAL \dut|LessThan2~1_combout\ : std_logic;
SIGNAL \dut|LessThan2~2_combout\ : std_logic;
SIGNAL \dut|LessThan7~2_combout\ : std_logic;
SIGNAL \dut|LessThan3~1_combout\ : std_logic;
SIGNAL \dut|Selector43~0_combout\ : std_logic;
SIGNAL \dut|Selector46~13_combout\ : std_logic;
SIGNAL \dut|LessThan4~1_combout\ : std_logic;
SIGNAL \dut|LessThan4~0_combout\ : std_logic;
SIGNAL \dut|LessThan4~2_combout\ : std_logic;
SIGNAL \dut|LessThan2~3_combout\ : std_logic;
SIGNAL \dut|Selector46~7_combout\ : std_logic;
SIGNAL \dut|LessThan6~3_combout\ : std_logic;
SIGNAL \dut|LessThan5~0_combout\ : std_logic;
SIGNAL \dut|LessThan5~1_combout\ : std_logic;
SIGNAL \dut|LessThan5~2_combout\ : std_logic;
SIGNAL \dut|LessThan5~3_combout\ : std_logic;
SIGNAL \dut|Selector46~8_combout\ : std_logic;
SIGNAL \dut|Selector46~10_combout\ : std_logic;
SIGNAL \dut|Selector46~9_combout\ : std_logic;
SIGNAL \dut|busy~5_combout\ : std_logic;
SIGNAL \dut|Selector46~11_combout\ : std_logic;
SIGNAL \dut|Selector46~12_combout\ : std_logic;
SIGNAL \dut|Selector46~15_combout\ : std_logic;
SIGNAL \dut|e~q\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \lcd_bus[0]~2_combout\ : std_logic;
SIGNAL \dut|Selector45~0_combout\ : std_logic;
SIGNAL \dut|LessThan4~3_combout\ : std_logic;
SIGNAL \dut|Selector45~1_combout\ : std_logic;
SIGNAL \dut|Selector45~2_combout\ : std_logic;
SIGNAL \dut|lcd_data[0]~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \dut|Selector44~3_combout\ : std_logic;
SIGNAL \dut|Selector44~1_combout\ : std_logic;
SIGNAL \dut|Selector44~2_combout\ : std_logic;
SIGNAL \dut|Selector44~4_combout\ : std_logic;
SIGNAL \dut|Selector43~2_combout\ : std_logic;
SIGNAL \dut|Selector43~3_combout\ : std_logic;
SIGNAL \dut|Selector43~1_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \dut|Selector43~4_combout\ : std_logic;
SIGNAL \dut|Selector42~2_combout\ : std_logic;
SIGNAL \dut|Selector41~0_combout\ : std_logic;
SIGNAL \dut|lcd_data[4]~feeder_combout\ : std_logic;
SIGNAL \dut|lcd_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \dut|clk_count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \quad|state\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \quad|Quad\ : std_logic_vector(1 DOWNTO 0);
SIGNAL char : std_logic_vector(3 DOWNTO 0);
SIGNAL lcd_bus : std_logic_vector(9 DOWNTO 0);

BEGIN

ww_clk <= clk;
rw <= ww_rw;
rs <= ww_rs;
e <= ww_e;
lcd_data <= ww_lcd_data;
ww_QuadA <= QuadA;
ww_QuadB <= QuadB;
CounterValue <= ww_CounterValue;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X0_Y44_N23
\rw~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rw~output_o\);

-- Location: IOOBUF_X0_Y44_N16
\rs~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|rs~q\,
	devoe => ww_devoe,
	o => \rs~output_o\);

-- Location: IOOBUF_X0_Y52_N2
\e~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|e~q\,
	devoe => ww_devoe,
	o => \e~output_o\);

-- Location: IOOBUF_X0_Y52_N16
\lcd_data[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|lcd_data\(0),
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
	i => \dut|lcd_data\(1),
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
	i => \dut|lcd_data\(2),
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
	i => \dut|lcd_data\(3),
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
	i => \dut|lcd_data\(4),
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
	i => \dut|lcd_data\(4),
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
	i => GND,
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
	i => GND,
	devoe => ww_devoe,
	o => \lcd_data[7]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\CounterValue[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \CounterValue[0]~output_o\);

-- Location: IOOBUF_X115_Y41_N9
\CounterValue[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \CounterValue[1]~output_o\);

-- Location: IOOBUF_X0_Y57_N16
\CounterValue[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \CounterValue[2]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\CounterValue[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \CounterValue[3]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\CounterValue[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \CounterValue[4]~output_o\);

-- Location: IOOBUF_X115_Y4_N23
\CounterValue[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \CounterValue[5]~output_o\);

-- Location: IOOBUF_X1_Y73_N16
\CounterValue[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \CounterValue[6]~output_o\);

-- Location: IOOBUF_X20_Y73_N2
\CounterValue[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \CounterValue[7]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\CounterValue[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \CounterValue[8]~output_o\);

-- Location: IOOBUF_X56_Y0_N9
\CounterValue[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \CounterValue[9]~output_o\);

-- Location: IOOBUF_X85_Y0_N23
\CounterValue[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \CounterValue[10]~output_o\);

-- Location: IOOBUF_X115_Y23_N2
\CounterValue[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \CounterValue[11]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\CounterValue[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \CounterValue[12]~output_o\);

-- Location: IOOBUF_X60_Y73_N2
\CounterValue[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \CounterValue[13]~output_o\);

-- Location: IOOBUF_X16_Y73_N9
\CounterValue[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \CounterValue[14]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\CounterValue[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \CounterValue[15]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X60_Y0_N22
\QuadA~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_QuadA,
	o => \QuadA~input_o\);

-- Location: FF_X32_Y17_N1
\quad|Quad[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \QuadA~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \quad|Quad\(0));

-- Location: IOIBUF_X96_Y0_N22
\QuadB~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_QuadB,
	o => \QuadB~input_o\);

-- Location: FF_X32_Y17_N3
\quad|Quad[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \QuadB~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \quad|Quad\(1));

-- Location: LCCOMB_X32_Y17_N22
\quad|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \quad|Mux3~0_combout\ = (!\quad|Quad\(0) & (!\quad|state\(2) & (!\quad|state\(3) & \quad|Quad\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \quad|Quad\(0),
	datab => \quad|state\(2),
	datac => \quad|state\(3),
	datad => \quad|Quad\(1),
	combout => \quad|Mux3~0_combout\);

-- Location: LCCOMB_X32_Y17_N0
\quad|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \quad|Mux3~1_combout\ = (\quad|state\(3) & ((\quad|state\(2)) # ((\quad|Quad\(0)) # (\quad|Quad\(1))))) # (!\quad|state\(3) & (\quad|state\(2) & ((\quad|Quad\(0)) # (\quad|Quad\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \quad|state\(3),
	datab => \quad|state\(2),
	datac => \quad|Quad\(0),
	datad => \quad|Quad\(1),
	combout => \quad|Mux3~1_combout\);

-- Location: LCCOMB_X32_Y17_N8
\quad|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \quad|Mux3~2_combout\ = (\quad|Mux3~0_combout\) # ((\quad|Mux3~1_combout\ & (\quad|state\(0) & !\quad|state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \quad|Mux3~0_combout\,
	datab => \quad|Mux3~1_combout\,
	datac => \quad|state\(0),
	datad => \quad|state\(1),
	combout => \quad|Mux3~2_combout\);

-- Location: FF_X32_Y17_N9
\quad|state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \quad|Mux3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \quad|state\(0));

-- Location: LCCOMB_X32_Y17_N12
\quad|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \quad|Mux2~0_combout\ = (\quad|state\(3) & ((\quad|Quad\(1)) # ((!\quad|state\(0) & !\quad|state\(2))))) # (!\quad|state\(3) & (\quad|state\(2) & ((\quad|state\(0)) # (\quad|Quad\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \quad|state\(3),
	datab => \quad|state\(0),
	datac => \quad|state\(2),
	datad => \quad|Quad\(1),
	combout => \quad|Mux2~0_combout\);

-- Location: LCCOMB_X32_Y17_N18
\quad|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \quad|Mux2~1_combout\ = (\quad|Quad\(0) & (\quad|Quad\(1) & (\quad|state\(1) & !\quad|Mux2~0_combout\))) # (!\quad|Quad\(0) & (!\quad|Quad\(1) & (!\quad|state\(1) & \quad|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \quad|Quad\(0),
	datab => \quad|Quad\(1),
	datac => \quad|state\(1),
	datad => \quad|Mux2~0_combout\,
	combout => \quad|Mux2~1_combout\);

-- Location: FF_X32_Y17_N19
\quad|state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \quad|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \quad|state\(1));

-- Location: LCCOMB_X32_Y17_N2
\quad|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \quad|Mux1~0_combout\ = (\quad|state\(3) & ((\quad|state\(1)) # (!\quad|Quad\(1)))) # (!\quad|state\(3) & (\quad|Quad\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \quad|state\(3),
	datac => \quad|Quad\(1),
	datad => \quad|state\(1),
	combout => \quad|Mux1~0_combout\);

-- Location: LCCOMB_X32_Y17_N4
\quad|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \quad|Mux1~1_combout\ = (\quad|state\(2) & (!\quad|state\(1) & ((\quad|Quad\(0)) # (\quad|Mux1~0_combout\)))) # (!\quad|state\(2) & (\quad|Quad\(0) & ((!\quad|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \quad|Quad\(0),
	datab => \quad|state\(1),
	datac => \quad|state\(2),
	datad => \quad|Mux1~0_combout\,
	combout => \quad|Mux1~1_combout\);

-- Location: FF_X32_Y17_N5
\quad|state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \quad|Mux1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \quad|state\(2));

-- Location: LCCOMB_X32_Y17_N26
\quad|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \quad|Mux0~0_combout\ = (\quad|Quad\(0) & ((\quad|state\(1)) # (!\quad|state\(2)))) # (!\quad|Quad\(0) & (\quad|state\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \quad|Quad\(0),
	datac => \quad|state\(2),
	datad => \quad|state\(1),
	combout => \quad|Mux0~0_combout\);

-- Location: LCCOMB_X32_Y17_N30
\quad|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \quad|Mux0~1_combout\ = (\quad|Mux0~0_combout\ & (((\quad|state\(3) & !\quad|state\(1))))) # (!\quad|Mux0~0_combout\ & (\quad|Quad\(1) & ((!\quad|state\(1)) # (!\quad|state\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \quad|Mux0~0_combout\,
	datab => \quad|Quad\(1),
	datac => \quad|state\(3),
	datad => \quad|state\(1),
	combout => \quad|Mux0~1_combout\);

-- Location: FF_X32_Y17_N31
\quad|state[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \quad|Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \quad|state\(3));

-- Location: LCCOMB_X32_Y17_N10
\quad|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \quad|Mux4~0_combout\ = (\quad|state\(1) & ((\quad|counting~q\) # ((!\quad|state\(3) & !\quad|state\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \quad|state\(3),
	datab => \quad|state\(2),
	datac => \quad|counting~q\,
	datad => \quad|state\(1),
	combout => \quad|Mux4~0_combout\);

-- Location: FF_X32_Y17_N11
\quad|counting\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \quad|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \quad|counting~q\);

-- Location: FF_X31_Y17_N7
\quad|counted\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \quad|counting~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \quad|counted~q\);

-- Location: LCCOMB_X31_Y17_N30
\quad|CountEnable~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \quad|CountEnable~0_combout\ = (\quad|counting~q\ & !\quad|counted~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \quad|counting~q\,
	datac => \quad|counted~q\,
	combout => \quad|CountEnable~0_combout\);

-- Location: FF_X31_Y17_N31
\quad|CountEnable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \quad|CountEnable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \quad|CountEnable~q\);

-- Location: LCCOMB_X32_Y17_N24
\quad|Direction~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \quad|Direction~0_combout\ = (!\quad|state\(1) & ((\quad|state\(2)) # (\quad|state\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \quad|state\(2),
	datac => \quad|state\(3),
	datad => \quad|state\(1),
	combout => \quad|Direction~0_combout\);

-- Location: LCCOMB_X32_Y17_N16
\quad|Direction~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \quad|Direction~1_combout\ = (\quad|Direction~0_combout\ & (!\quad|state\(0))) # (!\quad|Direction~0_combout\ & ((\quad|Direction~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \quad|state\(0),
	datac => \quad|Direction~q\,
	datad => \quad|Direction~0_combout\,
	combout => \quad|Direction~1_combout\);

-- Location: FF_X32_Y17_N17
\quad|Direction\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \quad|Direction~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \quad|Direction~q\);

-- Location: LCCOMB_X32_Y17_N28
\char[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \char[0]~4_combout\ = !char(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => char(0),
	combout => \char[0]~4_combout\);

-- Location: LCCOMB_X31_Y17_N6
\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\quad|CountEnable~q\ & !\state.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \quad|CountEnable~q\,
	datab => \state.idle~q\,
	combout => \Selector3~0_combout\);

-- Location: FF_X32_Y17_N29
\char[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \char[0]~4_combout\,
	ena => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(0));

-- Location: LCCOMB_X32_Y17_N6
\char~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \char~0_combout\ = \quad|Direction~q\ $ (char(1) $ (!char(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \quad|Direction~q\,
	datac => char(1),
	datad => char(0),
	combout => \char~0_combout\);

-- Location: FF_X32_Y17_N7
\char[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \char~0_combout\,
	ena => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(1));

-- Location: LCCOMB_X32_Y17_N20
\char~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \char~1_combout\ = char(2) $ (((char(1) & (\quad|Direction~q\ & char(0))) # (!char(1) & (!\quad|Direction~q\ & !char(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char(1),
	datab => \quad|Direction~q\,
	datac => char(2),
	datad => char(0),
	combout => \char~1_combout\);

-- Location: FF_X32_Y17_N21
\char[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \char~1_combout\,
	ena => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(2));

-- Location: LCCOMB_X31_Y17_N16
\char~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \char~2_combout\ = (char(1) & ((char(2)) # (!char(0)))) # (!char(1) & (char(2) & !char(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char(1),
	datac => char(2),
	datad => char(0),
	combout => \char~2_combout\);

-- Location: LCCOMB_X32_Y17_N14
\char~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \char~3_combout\ = char(3) $ (((\char~2_combout\ & (\quad|Direction~q\ & char(0))) # (!\char~2_combout\ & (!\quad|Direction~q\ & !char(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \char~2_combout\,
	datab => \quad|Direction~q\,
	datac => char(3),
	datad => char(0),
	combout => \char~3_combout\);

-- Location: FF_X32_Y17_N15
\char[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \char~3_combout\,
	ena => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(3));

-- Location: LCCOMB_X31_Y17_N22
\Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (char(2) & (((!char(3))))) # (!char(2) & ((char(3) & ((!char(1)))) # (!char(3) & ((char(0)) # (char(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char(2),
	datab => char(0),
	datac => char(3),
	datad => char(1),
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X30_Y20_N8
\dut|Selector36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector36~0_combout\ = (\lcd_enable~q\ & \dut|state.ready~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd_enable~q\,
	datad => \dut|state.ready~q\,
	combout => \dut|Selector36~0_combout\);

-- Location: LCCOMB_X31_Y20_N8
\dut|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan0~7_combout\ = (!\dut|clk_count\(25) & (!\dut|clk_count\(23) & (!\dut|clk_count\(24) & !\dut|clk_count\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(25),
	datab => \dut|clk_count\(23),
	datac => \dut|clk_count\(24),
	datad => \dut|clk_count\(22),
	combout => \dut|LessThan0~7_combout\);

-- Location: LCCOMB_X31_Y18_N12
\dut|LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan0~8_combout\ = (!\dut|clk_count\(26) & \dut|LessThan0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut|clk_count\(26),
	datad => \dut|LessThan0~7_combout\,
	combout => \dut|LessThan0~8_combout\);

-- Location: LCCOMB_X33_Y20_N0
\dut|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Add0~0_combout\ = \dut|clk_count\(0) $ (VCC)
-- \dut|Add0~1\ = CARRY(\dut|clk_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(0),
	datad => VCC,
	combout => \dut|Add0~0_combout\,
	cout => \dut|Add0~1\);

-- Location: LCCOMB_X31_Y20_N2
\dut|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan1~0_combout\ = (!\dut|Add0~18_combout\ & (!\dut|Add0~20_combout\ & (!\dut|Add0~24_combout\ & !\dut|Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~18_combout\,
	datab => \dut|Add0~20_combout\,
	datac => \dut|Add0~24_combout\,
	datad => \dut|Add0~22_combout\,
	combout => \dut|LessThan1~0_combout\);

-- Location: LCCOMB_X32_Y19_N10
\dut|LessThan8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan8~5_combout\ = (\dut|Add0~30_combout\ & (\dut|Add0~32_combout\ & ((\dut|Add0~26_combout\) # (\dut|Add0~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~30_combout\,
	datab => \dut|Add0~26_combout\,
	datac => \dut|Add0~32_combout\,
	datad => \dut|Add0~28_combout\,
	combout => \dut|LessThan8~5_combout\);

-- Location: LCCOMB_X31_Y20_N20
\dut|LessThan6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan6~0_combout\ = (!\dut|Add0~6_combout\ & (!\dut|Add0~8_combout\ & (!\dut|Add0~4_combout\ & !\dut|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~6_combout\,
	datab => \dut|Add0~8_combout\,
	datac => \dut|Add0~4_combout\,
	datad => \dut|Add0~10_combout\,
	combout => \dut|LessThan6~0_combout\);

-- Location: LCCOMB_X31_Y20_N10
\dut|LessThan6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan6~1_combout\ = (!\dut|Add0~12_combout\ & (!\dut|Add0~14_combout\ & (!\dut|Add0~16_combout\ & \dut|LessThan6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~12_combout\,
	datab => \dut|Add0~14_combout\,
	datac => \dut|Add0~16_combout\,
	datad => \dut|LessThan6~0_combout\,
	combout => \dut|LessThan6~1_combout\);

-- Location: LCCOMB_X31_Y20_N16
\dut|LessThan6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan6~2_combout\ = (\dut|LessThan8~5_combout\ & ((\dut|Add0~28_combout\) # ((!\dut|LessThan6~1_combout\) # (!\dut|LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~28_combout\,
	datab => \dut|LessThan1~0_combout\,
	datac => \dut|LessThan8~5_combout\,
	datad => \dut|LessThan6~1_combout\,
	combout => \dut|LessThan6~2_combout\);

-- Location: LCCOMB_X34_Y19_N24
\dut|LessThan8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan8~0_combout\ = (\dut|Add0~10_combout\ & \dut|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut|Add0~10_combout\,
	datad => \dut|Add0~8_combout\,
	combout => \dut|LessThan8~0_combout\);

-- Location: LCCOMB_X34_Y19_N6
\dut|LessThan8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan8~1_combout\ = (\dut|Add0~14_combout\ & \dut|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut|Add0~14_combout\,
	datad => \dut|Add0~16_combout\,
	combout => \dut|LessThan8~1_combout\);

-- Location: LCCOMB_X34_Y19_N12
\dut|LessThan7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan7~5_combout\ = (((!\dut|LessThan8~1_combout\) # (!\dut|Add0~12_combout\)) # (!\dut|LessThan8~0_combout\)) # (!\dut|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~6_combout\,
	datab => \dut|LessThan8~0_combout\,
	datac => \dut|Add0~12_combout\,
	datad => \dut|LessThan8~1_combout\,
	combout => \dut|LessThan7~5_combout\);

-- Location: LCCOMB_X32_Y19_N16
\dut|LessThan7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan7~6_combout\ = (!\dut|Add0~28_combout\ & (((\dut|LessThan7~5_combout\ & \dut|LessThan1~0_combout\)) # (!\dut|Add0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~28_combout\,
	datab => \dut|LessThan7~5_combout\,
	datac => \dut|LessThan1~0_combout\,
	datad => \dut|Add0~26_combout\,
	combout => \dut|LessThan7~6_combout\);

-- Location: LCCOMB_X32_Y21_N4
\dut|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector2~0_combout\ = (\dut|Add0~60_combout\ & (!\dut|state.ready~q\ & ((\dut|clk_count[1]~1_combout\) # (\dut|clk_count[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~60_combout\,
	datab => \dut|state.ready~q\,
	datac => \dut|clk_count[1]~1_combout\,
	datad => \dut|clk_count[1]~4_combout\,
	combout => \dut|Selector2~0_combout\);

-- Location: FF_X32_Y21_N5
\dut|clk_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(30));

-- Location: LCCOMB_X33_Y19_N22
\dut|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Add0~54_combout\ = (\dut|clk_count\(27) & (!\dut|Add0~53\)) # (!\dut|clk_count\(27) & ((\dut|Add0~53\) # (GND)))
-- \dut|Add0~55\ = CARRY((!\dut|Add0~53\) # (!\dut|clk_count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dut|clk_count\(27),
	datad => VCC,
	cin => \dut|Add0~53\,
	combout => \dut|Add0~54_combout\,
	cout => \dut|Add0~55\);

-- Location: LCCOMB_X33_Y19_N24
\dut|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Add0~56_combout\ = (\dut|clk_count\(28) & (\dut|Add0~55\ $ (GND))) # (!\dut|clk_count\(28) & (!\dut|Add0~55\ & VCC))
-- \dut|Add0~57\ = CARRY((\dut|clk_count\(28) & !\dut|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dut|clk_count\(28),
	datad => VCC,
	cin => \dut|Add0~55\,
	combout => \dut|Add0~56_combout\,
	cout => \dut|Add0~57\);

-- Location: LCCOMB_X33_Y19_N26
\dut|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Add0~58_combout\ = (\dut|clk_count\(29) & (!\dut|Add0~57\)) # (!\dut|clk_count\(29) & ((\dut|Add0~57\) # (GND)))
-- \dut|Add0~59\ = CARRY((!\dut|Add0~57\) # (!\dut|clk_count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dut|clk_count\(29),
	datad => VCC,
	cin => \dut|Add0~57\,
	combout => \dut|Add0~58_combout\,
	cout => \dut|Add0~59\);

-- Location: LCCOMB_X32_Y21_N10
\dut|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector3~0_combout\ = (!\dut|state.ready~q\ & (\dut|Add0~58_combout\ & ((\dut|clk_count[1]~1_combout\) # (\dut|clk_count[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count[1]~1_combout\,
	datab => \dut|state.ready~q\,
	datac => \dut|Add0~58_combout\,
	datad => \dut|clk_count[1]~4_combout\,
	combout => \dut|Selector3~0_combout\);

-- Location: FF_X32_Y21_N11
\dut|clk_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(29));

-- Location: LCCOMB_X33_Y19_N28
\dut|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Add0~60_combout\ = (\dut|clk_count\(30) & (\dut|Add0~59\ $ (GND))) # (!\dut|clk_count\(30) & (!\dut|Add0~59\ & VCC))
-- \dut|Add0~61\ = CARRY((\dut|clk_count\(30) & !\dut|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(30),
	datad => VCC,
	cin => \dut|Add0~59\,
	combout => \dut|Add0~60_combout\,
	cout => \dut|Add0~61\);

-- Location: LCCOMB_X32_Y20_N2
\dut|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector11~0_combout\ = (\dut|Add0~42_combout\ & (!\dut|state.ready~q\ & ((\dut|clk_count[1]~1_combout\) # (\dut|clk_count[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~42_combout\,
	datab => \dut|state.ready~q\,
	datac => \dut|clk_count[1]~1_combout\,
	datad => \dut|clk_count[1]~4_combout\,
	combout => \dut|Selector11~0_combout\);

-- Location: FF_X32_Y20_N3
\dut|clk_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(21));

-- Location: LCCOMB_X33_Y19_N6
\dut|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Add0~38_combout\ = (\dut|clk_count\(19) & (!\dut|Add0~37\)) # (!\dut|clk_count\(19) & ((\dut|Add0~37\) # (GND)))
-- \dut|Add0~39\ = CARRY((!\dut|Add0~37\) # (!\dut|clk_count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dut|clk_count\(19),
	datad => VCC,
	cin => \dut|Add0~37\,
	combout => \dut|Add0~38_combout\,
	cout => \dut|Add0~39\);

-- Location: LCCOMB_X33_Y19_N8
\dut|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Add0~40_combout\ = (\dut|clk_count\(20) & (\dut|Add0~39\ $ (GND))) # (!\dut|clk_count\(20) & (!\dut|Add0~39\ & VCC))
-- \dut|Add0~41\ = CARRY((\dut|clk_count\(20) & !\dut|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(20),
	datad => VCC,
	cin => \dut|Add0~39\,
	combout => \dut|Add0~40_combout\,
	cout => \dut|Add0~41\);

-- Location: LCCOMB_X34_Y20_N24
\dut|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector12~0_combout\ = (\dut|Add0~40_combout\ & (!\dut|state.ready~q\ & ((\dut|clk_count[1]~1_combout\) # (\dut|clk_count[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count[1]~1_combout\,
	datab => \dut|Add0~40_combout\,
	datac => \dut|state.ready~q\,
	datad => \dut|clk_count[1]~4_combout\,
	combout => \dut|Selector12~0_combout\);

-- Location: FF_X34_Y20_N25
\dut|clk_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(20));

-- Location: LCCOMB_X33_Y19_N10
\dut|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Add0~42_combout\ = (\dut|clk_count\(21) & (!\dut|Add0~41\)) # (!\dut|clk_count\(21) & ((\dut|Add0~41\) # (GND)))
-- \dut|Add0~43\ = CARRY((!\dut|Add0~41\) # (!\dut|clk_count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(21),
	datad => VCC,
	cin => \dut|Add0~41\,
	combout => \dut|Add0~42_combout\,
	cout => \dut|Add0~43\);

-- Location: LCCOMB_X33_Y19_N12
\dut|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Add0~44_combout\ = (\dut|clk_count\(22) & (\dut|Add0~43\ $ (GND))) # (!\dut|clk_count\(22) & (!\dut|Add0~43\ & VCC))
-- \dut|Add0~45\ = CARRY((\dut|clk_count\(22) & !\dut|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(22),
	datad => VCC,
	cin => \dut|Add0~43\,
	combout => \dut|Add0~44_combout\,
	cout => \dut|Add0~45\);

-- Location: LCCOMB_X32_Y19_N20
\dut|LessThan7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan7~1_combout\ = (!\dut|Add0~42_combout\ & (!\dut|Add0~44_combout\ & (!\dut|Add0~46_combout\ & !\dut|Add0~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~42_combout\,
	datab => \dut|Add0~44_combout\,
	datac => \dut|Add0~46_combout\,
	datad => \dut|Add0~48_combout\,
	combout => \dut|LessThan7~1_combout\);

-- Location: LCCOMB_X32_Y19_N30
\dut|LessThan7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan7~0_combout\ = (!\dut|Add0~36_combout\ & (!\dut|Add0~40_combout\ & (!\dut|Add0~34_combout\ & !\dut|Add0~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~36_combout\,
	datab => \dut|Add0~40_combout\,
	datac => \dut|Add0~34_combout\,
	datad => \dut|Add0~38_combout\,
	combout => \dut|LessThan7~0_combout\);

-- Location: LCCOMB_X32_Y19_N24
\dut|LessThan7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan7~8_combout\ = (\dut|LessThan7~0_combout\ & !\dut|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut|LessThan7~0_combout\,
	datad => \dut|Add0~50_combout\,
	combout => \dut|LessThan7~8_combout\);

-- Location: LCCOMB_X32_Y19_N14
\dut|LessThan7~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan7~9_combout\ = (!\dut|Add0~52_combout\ & (\dut|LessThan7~1_combout\ & (!\dut|Add0~54_combout\ & \dut|LessThan7~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~52_combout\,
	datab => \dut|LessThan7~1_combout\,
	datac => \dut|Add0~54_combout\,
	datad => \dut|LessThan7~8_combout\,
	combout => \dut|LessThan7~9_combout\);

-- Location: LCCOMB_X32_Y20_N4
\dut|clk_count[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|clk_count[1]~3_combout\ = (\dut|busy~4_combout\ & (\dut|state.initialize~q\ & (!\dut|Add0~60_combout\ & \dut|LessThan7~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|busy~4_combout\,
	datab => \dut|state.initialize~q\,
	datac => \dut|Add0~60_combout\,
	datad => \dut|LessThan7~9_combout\,
	combout => \dut|clk_count[1]~3_combout\);

-- Location: LCCOMB_X32_Y21_N14
\dut|state~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|state~15_combout\ = (\lcd_reset~q\ & ((\dut|state.power_up~q\) # (!\dut|LessThan0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_reset~q\,
	datac => \dut|state.power_up~q\,
	datad => \dut|LessThan0~10_combout\,
	combout => \dut|state~15_combout\);

-- Location: FF_X32_Y21_N15
\dut|state.power_up\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut|state~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|state.power_up~q\);

-- Location: LCCOMB_X34_Y20_N0
\dut|LessThan3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan3~2_combout\ = (\dut|Add0~20_combout\ & \dut|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut|Add0~20_combout\,
	datad => \dut|Add0~22_combout\,
	combout => \dut|LessThan3~2_combout\);

-- Location: LCCOMB_X34_Y19_N28
\dut|LessThan8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan8~3_combout\ = (!\dut|Add0~18_combout\ & (((!\dut|LessThan8~0_combout\ & !\dut|Add0~12_combout\)) # (!\dut|LessThan8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~18_combout\,
	datab => \dut|LessThan8~0_combout\,
	datac => \dut|Add0~12_combout\,
	datad => \dut|LessThan8~1_combout\,
	combout => \dut|LessThan8~3_combout\);

-- Location: LCCOMB_X34_Y19_N22
\dut|LessThan8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan8~4_combout\ = (!\dut|Add0~24_combout\ & (!\dut|Add0~28_combout\ & ((\dut|LessThan8~3_combout\) # (!\dut|LessThan3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~24_combout\,
	datab => \dut|Add0~28_combout\,
	datac => \dut|LessThan3~2_combout\,
	datad => \dut|LessThan8~3_combout\,
	combout => \dut|LessThan8~4_combout\);

-- Location: LCCOMB_X32_Y19_N22
\dut|LessThan7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan7~3_combout\ = (\dut|Add0~52_combout\) # ((\dut|Add0~50_combout\) # ((\dut|Add0~56_combout\) # (\dut|Add0~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~52_combout\,
	datab => \dut|Add0~50_combout\,
	datac => \dut|Add0~56_combout\,
	datad => \dut|Add0~58_combout\,
	combout => \dut|LessThan7~3_combout\);

-- Location: LCCOMB_X31_Y19_N18
\dut|LessThan7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan7~4_combout\ = (\dut|LessThan7~0_combout\ & (!\dut|Add0~54_combout\ & (\dut|LessThan7~1_combout\ & !\dut|LessThan7~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|LessThan7~0_combout\,
	datab => \dut|Add0~54_combout\,
	datac => \dut|LessThan7~1_combout\,
	datad => \dut|LessThan7~3_combout\,
	combout => \dut|LessThan7~4_combout\);

-- Location: LCCOMB_X31_Y19_N26
\dut|LessThan8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan8~6_combout\ = (!\dut|Add0~60_combout\ & (\dut|LessThan7~4_combout\ & ((\dut|LessThan8~4_combout\) # (!\dut|LessThan8~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~60_combout\,
	datab => \dut|LessThan8~5_combout\,
	datac => \dut|LessThan8~4_combout\,
	datad => \dut|LessThan7~4_combout\,
	combout => \dut|LessThan8~6_combout\);

-- Location: LCCOMB_X32_Y20_N10
\dut|clk_count[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|clk_count[1]~2_combout\ = (\dut|state.power_up~q\ & (!\dut|state.send~q\ & \dut|LessThan8~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|state.power_up~q\,
	datab => \dut|state.send~q\,
	datad => \dut|LessThan8~6_combout\,
	combout => \dut|clk_count[1]~2_combout\);

-- Location: LCCOMB_X32_Y20_N6
\dut|clk_count[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|clk_count[1]~4_combout\ = (\dut|clk_count[1]~2_combout\) # ((\dut|clk_count[1]~3_combout\ & ((\dut|LessThan7~6_combout\) # (!\dut|LessThan6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|LessThan6~2_combout\,
	datab => \dut|LessThan7~6_combout\,
	datac => \dut|clk_count[1]~3_combout\,
	datad => \dut|clk_count[1]~2_combout\,
	combout => \dut|clk_count[1]~4_combout\);

-- Location: LCCOMB_X32_Y20_N16
\dut|Selector32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector32~0_combout\ = (!\dut|state.ready~q\ & (\dut|Add0~0_combout\ & ((\dut|clk_count[1]~1_combout\) # (\dut|clk_count[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|state.ready~q\,
	datab => \dut|Add0~0_combout\,
	datac => \dut|clk_count[1]~1_combout\,
	datad => \dut|clk_count[1]~4_combout\,
	combout => \dut|Selector32~0_combout\);

-- Location: FF_X32_Y20_N17
\dut|clk_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut|Selector32~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(0));

-- Location: LCCOMB_X33_Y20_N2
\dut|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Add0~2_combout\ = (\dut|clk_count\(1) & (!\dut|Add0~1\)) # (!\dut|clk_count\(1) & ((\dut|Add0~1\) # (GND)))
-- \dut|Add0~3\ = CARRY((!\dut|Add0~1\) # (!\dut|clk_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(1),
	datad => VCC,
	cin => \dut|Add0~1\,
	combout => \dut|Add0~2_combout\,
	cout => \dut|Add0~3\);

-- Location: LCCOMB_X32_Y20_N12
\dut|Selector31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector31~0_combout\ = (\dut|Add0~2_combout\ & (!\dut|state.ready~q\ & ((\dut|clk_count[1]~1_combout\) # (\dut|clk_count[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~2_combout\,
	datab => \dut|state.ready~q\,
	datac => \dut|clk_count[1]~1_combout\,
	datad => \dut|clk_count[1]~4_combout\,
	combout => \dut|Selector31~0_combout\);

-- Location: FF_X32_Y20_N13
\dut|clk_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut|Selector31~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(1));

-- Location: LCCOMB_X33_Y20_N4
\dut|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Add0~4_combout\ = (\dut|clk_count\(2) & (\dut|Add0~3\ $ (GND))) # (!\dut|clk_count\(2) & (!\dut|Add0~3\ & VCC))
-- \dut|Add0~5\ = CARRY((\dut|clk_count\(2) & !\dut|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(2),
	datad => VCC,
	cin => \dut|Add0~3\,
	combout => \dut|Add0~4_combout\,
	cout => \dut|Add0~5\);

-- Location: LCCOMB_X34_Y20_N2
\dut|Selector30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector30~0_combout\ = (!\dut|state.ready~q\ & (\dut|Add0~4_combout\ & ((\dut|clk_count[1]~1_combout\) # (\dut|clk_count[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count[1]~1_combout\,
	datab => \dut|state.ready~q\,
	datac => \dut|Add0~4_combout\,
	datad => \dut|clk_count[1]~4_combout\,
	combout => \dut|Selector30~0_combout\);

-- Location: FF_X34_Y20_N3
\dut|clk_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut|Selector30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(2));

-- Location: LCCOMB_X33_Y20_N6
\dut|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Add0~6_combout\ = (\dut|clk_count\(3) & (!\dut|Add0~5\)) # (!\dut|clk_count\(3) & ((\dut|Add0~5\) # (GND)))
-- \dut|Add0~7\ = CARRY((!\dut|Add0~5\) # (!\dut|clk_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dut|clk_count\(3),
	datad => VCC,
	cin => \dut|Add0~5\,
	combout => \dut|Add0~6_combout\,
	cout => \dut|Add0~7\);

-- Location: LCCOMB_X34_Y20_N12
\dut|Selector29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector29~0_combout\ = (!\dut|state.ready~q\ & (\dut|Add0~6_combout\ & ((\dut|clk_count[1]~1_combout\) # (\dut|clk_count[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count[1]~1_combout\,
	datab => \dut|state.ready~q\,
	datac => \dut|Add0~6_combout\,
	datad => \dut|clk_count[1]~4_combout\,
	combout => \dut|Selector29~0_combout\);

-- Location: FF_X34_Y20_N13
\dut|clk_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut|Selector29~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(3));

-- Location: LCCOMB_X33_Y20_N8
\dut|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Add0~8_combout\ = (\dut|clk_count\(4) & (\dut|Add0~7\ $ (GND))) # (!\dut|clk_count\(4) & (!\dut|Add0~7\ & VCC))
-- \dut|Add0~9\ = CARRY((\dut|clk_count\(4) & !\dut|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(4),
	datad => VCC,
	cin => \dut|Add0~7\,
	combout => \dut|Add0~8_combout\,
	cout => \dut|Add0~9\);

-- Location: LCCOMB_X32_Y20_N26
\dut|Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector28~0_combout\ = (\dut|Add0~8_combout\ & (!\dut|state.ready~q\ & ((\dut|clk_count[1]~1_combout\) # (\dut|clk_count[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~8_combout\,
	datab => \dut|state.ready~q\,
	datac => \dut|clk_count[1]~1_combout\,
	datad => \dut|clk_count[1]~4_combout\,
	combout => \dut|Selector28~0_combout\);

-- Location: FF_X32_Y20_N27
\dut|clk_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut|Selector28~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(4));

-- Location: LCCOMB_X33_Y20_N10
\dut|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Add0~10_combout\ = (\dut|clk_count\(5) & (!\dut|Add0~9\)) # (!\dut|clk_count\(5) & ((\dut|Add0~9\) # (GND)))
-- \dut|Add0~11\ = CARRY((!\dut|Add0~9\) # (!\dut|clk_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(5),
	datad => VCC,
	cin => \dut|Add0~9\,
	combout => \dut|Add0~10_combout\,
	cout => \dut|Add0~11\);

-- Location: LCCOMB_X32_Y20_N8
\dut|Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector27~0_combout\ = (!\dut|state.ready~q\ & (\dut|Add0~10_combout\ & ((\dut|clk_count[1]~1_combout\) # (\dut|clk_count[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|state.ready~q\,
	datab => \dut|Add0~10_combout\,
	datac => \dut|clk_count[1]~1_combout\,
	datad => \dut|clk_count[1]~4_combout\,
	combout => \dut|Selector27~0_combout\);

-- Location: FF_X32_Y20_N9
\dut|clk_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut|Selector27~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(5));

-- Location: LCCOMB_X33_Y20_N12
\dut|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Add0~12_combout\ = (\dut|clk_count\(6) & (\dut|Add0~11\ $ (GND))) # (!\dut|clk_count\(6) & (!\dut|Add0~11\ & VCC))
-- \dut|Add0~13\ = CARRY((\dut|clk_count\(6) & !\dut|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dut|clk_count\(6),
	datad => VCC,
	cin => \dut|Add0~11\,
	combout => \dut|Add0~12_combout\,
	cout => \dut|Add0~13\);

-- Location: LCCOMB_X31_Y20_N24
\dut|Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector26~0_combout\ = (!\dut|state.ready~q\ & (\dut|Add0~12_combout\ & ((\dut|clk_count[1]~1_combout\) # (\dut|clk_count[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|state.ready~q\,
	datab => \dut|clk_count[1]~1_combout\,
	datac => \dut|Add0~12_combout\,
	datad => \dut|clk_count[1]~4_combout\,
	combout => \dut|Selector26~0_combout\);

-- Location: FF_X31_Y20_N25
\dut|clk_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut|Selector26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(6));

-- Location: LCCOMB_X33_Y20_N14
\dut|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Add0~14_combout\ = (\dut|clk_count\(7) & (!\dut|Add0~13\)) # (!\dut|clk_count\(7) & ((\dut|Add0~13\) # (GND)))
-- \dut|Add0~15\ = CARRY((!\dut|Add0~13\) # (!\dut|clk_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(7),
	datad => VCC,
	cin => \dut|Add0~13\,
	combout => \dut|Add0~14_combout\,
	cout => \dut|Add0~15\);

-- Location: LCCOMB_X31_Y20_N22
\dut|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector25~0_combout\ = (!\dut|state.ready~q\ & (\dut|Add0~14_combout\ & ((\dut|clk_count[1]~1_combout\) # (\dut|clk_count[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|state.ready~q\,
	datab => \dut|Add0~14_combout\,
	datac => \dut|clk_count[1]~1_combout\,
	datad => \dut|clk_count[1]~4_combout\,
	combout => \dut|Selector25~0_combout\);

-- Location: FF_X31_Y20_N23
\dut|clk_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut|Selector25~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(7));

-- Location: LCCOMB_X33_Y20_N16
\dut|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Add0~16_combout\ = (\dut|clk_count\(8) & (\dut|Add0~15\ $ (GND))) # (!\dut|clk_count\(8) & (!\dut|Add0~15\ & VCC))
-- \dut|Add0~17\ = CARRY((\dut|clk_count\(8) & !\dut|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dut|clk_count\(8),
	datad => VCC,
	cin => \dut|Add0~15\,
	combout => \dut|Add0~16_combout\,
	cout => \dut|Add0~17\);

-- Location: LCCOMB_X32_Y20_N22
\dut|Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector24~0_combout\ = (\dut|Add0~16_combout\ & (!\dut|state.ready~q\ & ((\dut|clk_count[1]~1_combout\) # (\dut|clk_count[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~16_combout\,
	datab => \dut|state.ready~q\,
	datac => \dut|clk_count[1]~1_combout\,
	datad => \dut|clk_count[1]~4_combout\,
	combout => \dut|Selector24~0_combout\);

-- Location: FF_X32_Y20_N23
\dut|clk_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut|Selector24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(8));

-- Location: LCCOMB_X33_Y20_N18
\dut|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Add0~18_combout\ = (\dut|clk_count\(9) & (!\dut|Add0~17\)) # (!\dut|clk_count\(9) & ((\dut|Add0~17\) # (GND)))
-- \dut|Add0~19\ = CARRY((!\dut|Add0~17\) # (!\dut|clk_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(9),
	datad => VCC,
	cin => \dut|Add0~17\,
	combout => \dut|Add0~18_combout\,
	cout => \dut|Add0~19\);

-- Location: LCCOMB_X32_Y20_N14
\dut|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector23~0_combout\ = (!\dut|state.ready~q\ & (\dut|Add0~18_combout\ & ((\dut|clk_count[1]~1_combout\) # (\dut|clk_count[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|state.ready~q\,
	datab => \dut|Add0~18_combout\,
	datac => \dut|clk_count[1]~1_combout\,
	datad => \dut|clk_count[1]~4_combout\,
	combout => \dut|Selector23~0_combout\);

-- Location: FF_X32_Y20_N15
\dut|clk_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut|Selector23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(9));

-- Location: LCCOMB_X33_Y20_N20
\dut|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Add0~20_combout\ = (\dut|clk_count\(10) & (\dut|Add0~19\ $ (GND))) # (!\dut|clk_count\(10) & (!\dut|Add0~19\ & VCC))
-- \dut|Add0~21\ = CARRY((\dut|clk_count\(10) & !\dut|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(10),
	datad => VCC,
	cin => \dut|Add0~19\,
	combout => \dut|Add0~20_combout\,
	cout => \dut|Add0~21\);

-- Location: LCCOMB_X32_Y20_N0
\dut|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector22~0_combout\ = (\dut|Add0~20_combout\ & (!\dut|state.ready~q\ & ((\dut|clk_count[1]~1_combout\) # (\dut|clk_count[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~20_combout\,
	datab => \dut|state.ready~q\,
	datac => \dut|clk_count[1]~1_combout\,
	datad => \dut|clk_count[1]~4_combout\,
	combout => \dut|Selector22~0_combout\);

-- Location: FF_X32_Y20_N1
\dut|clk_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut|Selector22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(10));

-- Location: LCCOMB_X33_Y20_N22
\dut|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Add0~22_combout\ = (\dut|clk_count\(11) & (!\dut|Add0~21\)) # (!\dut|clk_count\(11) & ((\dut|Add0~21\) # (GND)))
-- \dut|Add0~23\ = CARRY((!\dut|Add0~21\) # (!\dut|clk_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dut|clk_count\(11),
	datad => VCC,
	cin => \dut|Add0~21\,
	combout => \dut|Add0~22_combout\,
	cout => \dut|Add0~23\);

-- Location: LCCOMB_X34_Y20_N22
\dut|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector21~0_combout\ = (!\dut|state.ready~q\ & (\dut|Add0~22_combout\ & ((\dut|clk_count[1]~1_combout\) # (\dut|clk_count[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count[1]~1_combout\,
	datab => \dut|state.ready~q\,
	datac => \dut|Add0~22_combout\,
	datad => \dut|clk_count[1]~4_combout\,
	combout => \dut|Selector21~0_combout\);

-- Location: FF_X34_Y20_N23
\dut|clk_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut|Selector21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(11));

-- Location: LCCOMB_X33_Y20_N24
\dut|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Add0~24_combout\ = (\dut|clk_count\(12) & (\dut|Add0~23\ $ (GND))) # (!\dut|clk_count\(12) & (!\dut|Add0~23\ & VCC))
-- \dut|Add0~25\ = CARRY((\dut|clk_count\(12) & !\dut|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dut|clk_count\(12),
	datad => VCC,
	cin => \dut|Add0~23\,
	combout => \dut|Add0~24_combout\,
	cout => \dut|Add0~25\);

-- Location: LCCOMB_X34_Y20_N16
\dut|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector20~0_combout\ = (!\dut|state.ready~q\ & (\dut|Add0~24_combout\ & ((\dut|clk_count[1]~1_combout\) # (\dut|clk_count[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count[1]~1_combout\,
	datab => \dut|state.ready~q\,
	datac => \dut|Add0~24_combout\,
	datad => \dut|clk_count[1]~4_combout\,
	combout => \dut|Selector20~0_combout\);

-- Location: FF_X34_Y20_N17
\dut|clk_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut|Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(12));

-- Location: LCCOMB_X33_Y20_N26
\dut|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Add0~26_combout\ = (\dut|clk_count\(13) & (!\dut|Add0~25\)) # (!\dut|clk_count\(13) & ((\dut|Add0~25\) # (GND)))
-- \dut|Add0~27\ = CARRY((!\dut|Add0~25\) # (!\dut|clk_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dut|clk_count\(13),
	datad => VCC,
	cin => \dut|Add0~25\,
	combout => \dut|Add0~26_combout\,
	cout => \dut|Add0~27\);

-- Location: LCCOMB_X34_Y20_N18
\dut|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector19~0_combout\ = (!\dut|state.ready~q\ & (\dut|Add0~26_combout\ & ((\dut|clk_count[1]~1_combout\) # (\dut|clk_count[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count[1]~1_combout\,
	datab => \dut|state.ready~q\,
	datac => \dut|Add0~26_combout\,
	datad => \dut|clk_count[1]~4_combout\,
	combout => \dut|Selector19~0_combout\);

-- Location: FF_X34_Y20_N19
\dut|clk_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut|Selector19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(13));

-- Location: LCCOMB_X33_Y20_N28
\dut|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Add0~28_combout\ = (\dut|clk_count\(14) & (\dut|Add0~27\ $ (GND))) # (!\dut|clk_count\(14) & (!\dut|Add0~27\ & VCC))
-- \dut|Add0~29\ = CARRY((\dut|clk_count\(14) & !\dut|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dut|clk_count\(14),
	datad => VCC,
	cin => \dut|Add0~27\,
	combout => \dut|Add0~28_combout\,
	cout => \dut|Add0~29\);

-- Location: LCCOMB_X34_Y20_N14
\dut|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector18~0_combout\ = (\dut|Add0~28_combout\ & (!\dut|state.ready~q\ & ((\dut|clk_count[1]~1_combout\) # (\dut|clk_count[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count[1]~1_combout\,
	datab => \dut|Add0~28_combout\,
	datac => \dut|state.ready~q\,
	datad => \dut|clk_count[1]~4_combout\,
	combout => \dut|Selector18~0_combout\);

-- Location: FF_X34_Y20_N15
\dut|clk_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut|Selector18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(14));

-- Location: LCCOMB_X33_Y20_N30
\dut|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Add0~30_combout\ = (\dut|clk_count\(15) & (!\dut|Add0~29\)) # (!\dut|clk_count\(15) & ((\dut|Add0~29\) # (GND)))
-- \dut|Add0~31\ = CARRY((!\dut|Add0~29\) # (!\dut|clk_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(15),
	datad => VCC,
	cin => \dut|Add0~29\,
	combout => \dut|Add0~30_combout\,
	cout => \dut|Add0~31\);

-- Location: LCCOMB_X34_Y20_N4
\dut|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector17~0_combout\ = (\dut|Add0~30_combout\ & (!\dut|state.ready~q\ & ((\dut|clk_count[1]~1_combout\) # (\dut|clk_count[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count[1]~1_combout\,
	datab => \dut|Add0~30_combout\,
	datac => \dut|state.ready~q\,
	datad => \dut|clk_count[1]~4_combout\,
	combout => \dut|Selector17~0_combout\);

-- Location: FF_X34_Y20_N5
\dut|clk_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut|Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(15));

-- Location: LCCOMB_X33_Y19_N0
\dut|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Add0~32_combout\ = (\dut|clk_count\(16) & (\dut|Add0~31\ $ (GND))) # (!\dut|clk_count\(16) & (!\dut|Add0~31\ & VCC))
-- \dut|Add0~33\ = CARRY((\dut|clk_count\(16) & !\dut|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dut|clk_count\(16),
	datad => VCC,
	cin => \dut|Add0~31\,
	combout => \dut|Add0~32_combout\,
	cout => \dut|Add0~33\);

-- Location: LCCOMB_X34_Y20_N28
\dut|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector16~0_combout\ = (!\dut|state.ready~q\ & (\dut|Add0~32_combout\ & ((\dut|clk_count[1]~1_combout\) # (\dut|clk_count[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count[1]~1_combout\,
	datab => \dut|state.ready~q\,
	datac => \dut|Add0~32_combout\,
	datad => \dut|clk_count[1]~4_combout\,
	combout => \dut|Selector16~0_combout\);

-- Location: FF_X34_Y20_N29
\dut|clk_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(16));

-- Location: LCCOMB_X33_Y19_N2
\dut|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Add0~34_combout\ = (\dut|clk_count\(17) & (!\dut|Add0~33\)) # (!\dut|clk_count\(17) & ((\dut|Add0~33\) # (GND)))
-- \dut|Add0~35\ = CARRY((!\dut|Add0~33\) # (!\dut|clk_count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(17),
	datad => VCC,
	cin => \dut|Add0~33\,
	combout => \dut|Add0~34_combout\,
	cout => \dut|Add0~35\);

-- Location: LCCOMB_X34_Y20_N8
\dut|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector15~0_combout\ = (\dut|Add0~34_combout\ & (!\dut|state.ready~q\ & ((\dut|clk_count[1]~1_combout\) # (\dut|clk_count[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count[1]~1_combout\,
	datab => \dut|Add0~34_combout\,
	datac => \dut|state.ready~q\,
	datad => \dut|clk_count[1]~4_combout\,
	combout => \dut|Selector15~0_combout\);

-- Location: FF_X34_Y20_N9
\dut|clk_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(17));

-- Location: LCCOMB_X33_Y19_N4
\dut|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Add0~36_combout\ = (\dut|clk_count\(18) & (\dut|Add0~35\ $ (GND))) # (!\dut|clk_count\(18) & (!\dut|Add0~35\ & VCC))
-- \dut|Add0~37\ = CARRY((\dut|clk_count\(18) & !\dut|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dut|clk_count\(18),
	datad => VCC,
	cin => \dut|Add0~35\,
	combout => \dut|Add0~36_combout\,
	cout => \dut|Add0~37\);

-- Location: LCCOMB_X32_Y20_N28
\dut|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector14~0_combout\ = (!\dut|state.ready~q\ & (\dut|Add0~36_combout\ & ((\dut|clk_count[1]~1_combout\) # (\dut|clk_count[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|state.ready~q\,
	datab => \dut|Add0~36_combout\,
	datac => \dut|clk_count[1]~1_combout\,
	datad => \dut|clk_count[1]~4_combout\,
	combout => \dut|Selector14~0_combout\);

-- Location: FF_X32_Y20_N29
\dut|clk_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(18));

-- Location: LCCOMB_X34_Y20_N26
\dut|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector13~0_combout\ = (!\dut|state.ready~q\ & (\dut|Add0~38_combout\ & ((\dut|clk_count[1]~1_combout\) # (\dut|clk_count[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count[1]~1_combout\,
	datab => \dut|state.ready~q\,
	datac => \dut|Add0~38_combout\,
	datad => \dut|clk_count[1]~4_combout\,
	combout => \dut|Selector13~0_combout\);

-- Location: FF_X34_Y20_N27
\dut|clk_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(19));

-- Location: LCCOMB_X30_Y20_N10
\dut|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan0~0_combout\ = (!\dut|clk_count\(19) & (!\dut|clk_count\(20) & ((!\dut|clk_count\(18)) # (!\dut|clk_count\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(19),
	datab => \dut|clk_count\(20),
	datac => \dut|clk_count\(17),
	datad => \dut|clk_count\(18),
	combout => \dut|LessThan0~0_combout\);

-- Location: LCCOMB_X34_Y20_N6
\dut|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan0~1_combout\ = (!\dut|clk_count\(19) & (!\dut|clk_count\(14) & (!\dut|clk_count\(15) & !\dut|clk_count\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(19),
	datab => \dut|clk_count\(14),
	datac => \dut|clk_count\(15),
	datad => \dut|clk_count\(20),
	combout => \dut|LessThan0~1_combout\);

-- Location: LCCOMB_X30_Y20_N4
\dut|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan0~2_combout\ = (!\dut|clk_count\(16) & \dut|LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut|clk_count\(16),
	datad => \dut|LessThan0~1_combout\,
	combout => \dut|LessThan0~2_combout\);

-- Location: LCCOMB_X31_Y20_N28
\dut|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan0~3_combout\ = (((!\dut|clk_count\(6) & !\dut|clk_count\(5))) # (!\dut|clk_count\(8))) # (!\dut|clk_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(7),
	datab => \dut|clk_count\(6),
	datac => \dut|clk_count\(5),
	datad => \dut|clk_count\(8),
	combout => \dut|LessThan0~3_combout\);

-- Location: LCCOMB_X30_Y20_N18
\dut|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan0~4_combout\ = (\dut|clk_count\(10) & ((\dut|clk_count\(9)) # (!\dut|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(9),
	datac => \dut|clk_count\(10),
	datad => \dut|LessThan0~3_combout\,
	combout => \dut|LessThan0~4_combout\);

-- Location: LCCOMB_X30_Y20_N24
\dut|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan0~5_combout\ = (\dut|clk_count\(13) & ((\dut|clk_count\(11)) # ((\dut|clk_count\(12)) # (\dut|LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(13),
	datab => \dut|clk_count\(11),
	datac => \dut|clk_count\(12),
	datad => \dut|LessThan0~4_combout\,
	combout => \dut|LessThan0~5_combout\);

-- Location: LCCOMB_X30_Y20_N6
\dut|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan0~6_combout\ = (\dut|LessThan0~0_combout\) # (((\dut|LessThan0~2_combout\ & !\dut|LessThan0~5_combout\)) # (!\dut|clk_count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|LessThan0~0_combout\,
	datab => \dut|clk_count\(21),
	datac => \dut|LessThan0~2_combout\,
	datad => \dut|LessThan0~5_combout\,
	combout => \dut|LessThan0~6_combout\);

-- Location: LCCOMB_X32_Y21_N20
\dut|LessThan0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan0~10_combout\ = (\dut|clk_count\(31)) # ((\dut|LessThan0~9_combout\ & (\dut|LessThan0~8_combout\ & \dut|LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(31),
	datab => \dut|LessThan0~9_combout\,
	datac => \dut|LessThan0~8_combout\,
	datad => \dut|LessThan0~6_combout\,
	combout => \dut|LessThan0~10_combout\);

-- Location: LCCOMB_X33_Y19_N30
\dut|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Add0~62_combout\ = \dut|Add0~61\ $ (\dut|clk_count\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \dut|clk_count\(31),
	cin => \dut|Add0~61\,
	combout => \dut|Add0~62_combout\);

-- Location: LCCOMB_X32_Y21_N24
\dut|clk_count[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|clk_count[1]~0_combout\ = (\dut|Add0~62_combout\ & ((\dut|state.initialize~q\) # ((!\dut|state.send~q\ & \dut|state.power_up~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|state.send~q\,
	datab => \dut|state.initialize~q\,
	datac => \dut|state.power_up~q\,
	datad => \dut|Add0~62_combout\,
	combout => \dut|clk_count[1]~0_combout\);

-- Location: LCCOMB_X32_Y21_N30
\dut|clk_count[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|clk_count[1]~1_combout\ = (\dut|clk_count[1]~0_combout\) # ((\dut|state.power_up~q\ & (\dut|state~14_combout\)) # (!\dut|state.power_up~q\ & ((\dut|LessThan0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|state~14_combout\,
	datab => \dut|LessThan0~10_combout\,
	datac => \dut|state.power_up~q\,
	datad => \dut|clk_count[1]~0_combout\,
	combout => \dut|clk_count[1]~1_combout\);

-- Location: LCCOMB_X34_Y20_N20
\dut|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector10~0_combout\ = (!\dut|state.ready~q\ & (\dut|Add0~44_combout\ & ((\dut|clk_count[1]~1_combout\) # (\dut|clk_count[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count[1]~1_combout\,
	datab => \dut|state.ready~q\,
	datac => \dut|Add0~44_combout\,
	datad => \dut|clk_count[1]~4_combout\,
	combout => \dut|Selector10~0_combout\);

-- Location: FF_X34_Y20_N21
\dut|clk_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut|Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(22));

-- Location: LCCOMB_X33_Y19_N14
\dut|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Add0~46_combout\ = (\dut|clk_count\(23) & (!\dut|Add0~45\)) # (!\dut|clk_count\(23) & ((\dut|Add0~45\) # (GND)))
-- \dut|Add0~47\ = CARRY((!\dut|Add0~45\) # (!\dut|clk_count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dut|clk_count\(23),
	datad => VCC,
	cin => \dut|Add0~45\,
	combout => \dut|Add0~46_combout\,
	cout => \dut|Add0~47\);

-- Location: LCCOMB_X31_Y20_N14
\dut|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector9~0_combout\ = (!\dut|state.ready~q\ & (\dut|Add0~46_combout\ & ((\dut|clk_count[1]~1_combout\) # (\dut|clk_count[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|state.ready~q\,
	datab => \dut|Add0~46_combout\,
	datac => \dut|clk_count[1]~1_combout\,
	datad => \dut|clk_count[1]~4_combout\,
	combout => \dut|Selector9~0_combout\);

-- Location: FF_X31_Y20_N15
\dut|clk_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(23));

-- Location: LCCOMB_X33_Y19_N16
\dut|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Add0~48_combout\ = (\dut|clk_count\(24) & (\dut|Add0~47\ $ (GND))) # (!\dut|clk_count\(24) & (!\dut|Add0~47\ & VCC))
-- \dut|Add0~49\ = CARRY((\dut|clk_count\(24) & !\dut|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(24),
	datad => VCC,
	cin => \dut|Add0~47\,
	combout => \dut|Add0~48_combout\,
	cout => \dut|Add0~49\);

-- Location: LCCOMB_X31_Y20_N0
\dut|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector8~0_combout\ = (!\dut|state.ready~q\ & (\dut|Add0~48_combout\ & ((\dut|clk_count[1]~1_combout\) # (\dut|clk_count[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|state.ready~q\,
	datab => \dut|Add0~48_combout\,
	datac => \dut|clk_count[1]~1_combout\,
	datad => \dut|clk_count[1]~4_combout\,
	combout => \dut|Selector8~0_combout\);

-- Location: FF_X31_Y20_N1
\dut|clk_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(24));

-- Location: LCCOMB_X33_Y19_N18
\dut|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Add0~50_combout\ = (\dut|clk_count\(25) & (!\dut|Add0~49\)) # (!\dut|clk_count\(25) & ((\dut|Add0~49\) # (GND)))
-- \dut|Add0~51\ = CARRY((!\dut|Add0~49\) # (!\dut|clk_count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dut|clk_count\(25),
	datad => VCC,
	cin => \dut|Add0~49\,
	combout => \dut|Add0~50_combout\,
	cout => \dut|Add0~51\);

-- Location: LCCOMB_X31_Y20_N6
\dut|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector7~0_combout\ = (!\dut|state.ready~q\ & (\dut|Add0~50_combout\ & ((\dut|clk_count[1]~1_combout\) # (\dut|clk_count[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|state.ready~q\,
	datab => \dut|Add0~50_combout\,
	datac => \dut|clk_count[1]~1_combout\,
	datad => \dut|clk_count[1]~4_combout\,
	combout => \dut|Selector7~0_combout\);

-- Location: FF_X31_Y20_N7
\dut|clk_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(25));

-- Location: LCCOMB_X33_Y19_N20
\dut|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Add0~52_combout\ = (\dut|clk_count\(26) & (\dut|Add0~51\ $ (GND))) # (!\dut|clk_count\(26) & (!\dut|Add0~51\ & VCC))
-- \dut|Add0~53\ = CARRY((\dut|clk_count\(26) & !\dut|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(26),
	datad => VCC,
	cin => \dut|Add0~51\,
	combout => \dut|Add0~52_combout\,
	cout => \dut|Add0~53\);

-- Location: LCCOMB_X32_Y20_N24
\dut|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector6~0_combout\ = (!\dut|state.ready~q\ & (\dut|Add0~52_combout\ & ((\dut|clk_count[1]~1_combout\) # (\dut|clk_count[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|state.ready~q\,
	datab => \dut|Add0~52_combout\,
	datac => \dut|clk_count[1]~1_combout\,
	datad => \dut|clk_count[1]~4_combout\,
	combout => \dut|Selector6~0_combout\);

-- Location: FF_X32_Y20_N25
\dut|clk_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(26));

-- Location: LCCOMB_X32_Y20_N30
\dut|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector5~0_combout\ = (!\dut|state.ready~q\ & (\dut|Add0~54_combout\ & ((\dut|clk_count[1]~1_combout\) # (\dut|clk_count[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|state.ready~q\,
	datab => \dut|Add0~54_combout\,
	datac => \dut|clk_count[1]~1_combout\,
	datad => \dut|clk_count[1]~4_combout\,
	combout => \dut|Selector5~0_combout\);

-- Location: FF_X32_Y20_N31
\dut|clk_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(27));

-- Location: LCCOMB_X32_Y21_N18
\dut|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan0~9_combout\ = (!\dut|clk_count\(27) & (!\dut|clk_count\(28) & (!\dut|clk_count\(30) & !\dut|clk_count\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(27),
	datab => \dut|clk_count\(28),
	datac => \dut|clk_count\(30),
	datad => \dut|clk_count\(29),
	combout => \dut|LessThan0~9_combout\);

-- Location: LCCOMB_X33_Y18_N22
\dut|LessThan9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan9~2_combout\ = (!\dut|clk_count\(2) & (!\dut|clk_count\(4) & (!\dut|clk_count\(3) & !\dut|clk_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(2),
	datab => \dut|clk_count\(4),
	datac => \dut|clk_count\(3),
	datad => \dut|clk_count\(5),
	combout => \dut|LessThan9~2_combout\);

-- Location: LCCOMB_X31_Y18_N22
\dut|LessThan9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan9~3_combout\ = (((\dut|LessThan9~2_combout\) # (!\dut|clk_count\(6))) # (!\dut|clk_count\(8))) # (!\dut|clk_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(7),
	datab => \dut|clk_count\(8),
	datac => \dut|clk_count\(6),
	datad => \dut|LessThan9~2_combout\,
	combout => \dut|LessThan9~3_combout\);

-- Location: LCCOMB_X31_Y18_N8
\dut|LessThan9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan9~4_combout\ = ((!\dut|clk_count\(9) & (\dut|LessThan9~3_combout\ & !\dut|clk_count\(10)))) # (!\dut|clk_count\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(9),
	datab => \dut|clk_count\(11),
	datac => \dut|LessThan9~3_combout\,
	datad => \dut|clk_count\(10),
	combout => \dut|LessThan9~4_combout\);

-- Location: LCCOMB_X30_Y20_N28
\dut|LessThan9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan9~0_combout\ = (!\dut|clk_count\(13) & (!\dut|clk_count\(12) & (!\dut|clk_count\(17) & !\dut|clk_count\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(13),
	datab => \dut|clk_count\(12),
	datac => \dut|clk_count\(17),
	datad => \dut|clk_count\(18),
	combout => \dut|LessThan9~0_combout\);

-- Location: LCCOMB_X31_Y18_N28
\dut|LessThan9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan9~1_combout\ = (!\dut|clk_count\(21) & (\dut|LessThan9~0_combout\ & (\dut|LessThan0~2_combout\ & \dut|LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(21),
	datab => \dut|LessThan9~0_combout\,
	datac => \dut|LessThan0~2_combout\,
	datad => \dut|LessThan0~8_combout\,
	combout => \dut|LessThan9~1_combout\);

-- Location: LCCOMB_X31_Y18_N10
\dut|LessThan9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan9~5_combout\ = (\dut|LessThan0~9_combout\ & (\dut|LessThan9~4_combout\ & \dut|LessThan9~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut|LessThan0~9_combout\,
	datac => \dut|LessThan9~4_combout\,
	datad => \dut|LessThan9~1_combout\,
	combout => \dut|LessThan9~5_combout\);

-- Location: LCCOMB_X31_Y18_N18
\dut|state~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|state~14_combout\ = (\dut|state.send~q\ & ((\dut|clk_count\(31)) # (\dut|LessThan9~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|state.send~q\,
	datac => \dut|clk_count\(31),
	datad => \dut|LessThan9~5_combout\,
	combout => \dut|state~14_combout\);

-- Location: LCCOMB_X32_Y21_N28
\dut|rs~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|rs~0_combout\ = (!\dut|state.power_up~q\ & \dut|LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut|state.power_up~q\,
	datad => \dut|LessThan0~10_combout\,
	combout => \dut|rs~0_combout\);

-- Location: LCCOMB_X32_Y21_N26
\dut|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector1~0_combout\ = (\dut|Add0~62_combout\ & ((\dut|state~14_combout\) # ((\dut|rs~0_combout\) # (\dut|state.initialize~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|state~14_combout\,
	datab => \dut|rs~0_combout\,
	datac => \dut|state.initialize~q\,
	datad => \dut|Add0~62_combout\,
	combout => \dut|Selector1~0_combout\);

-- Location: FF_X32_Y21_N27
\dut|clk_count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(31));

-- Location: LCCOMB_X31_Y18_N24
\dut|state~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|state~6_combout\ = (!\dut|clk_count\(31) & (((!\dut|LessThan0~9_combout\) # (!\dut|LessThan9~4_combout\)) # (!\dut|LessThan9~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(31),
	datab => \dut|LessThan9~1_combout\,
	datac => \dut|LessThan9~4_combout\,
	datad => \dut|LessThan0~9_combout\,
	combout => \dut|state~6_combout\);

-- Location: LCCOMB_X32_Y21_N2
\dut|state~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|state~13_combout\ = (\lcd_reset~q\ & ((\dut|Selector36~0_combout\) # ((\dut|state.send~q\ & !\dut|state~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_reset~q\,
	datab => \dut|Selector36~0_combout\,
	datac => \dut|state.send~q\,
	datad => \dut|state~6_combout\,
	combout => \dut|state~13_combout\);

-- Location: FF_X32_Y21_N3
\dut|state.send\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut|state~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|state.send~q\);

-- Location: LCCOMB_X31_Y19_N14
\dut|state~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|state~10_combout\ = (\lcd_reset~q\ & ((\dut|state~9_combout\) # ((\dut|state.send~q\ & \dut|state~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|state.send~q\,
	datab => \lcd_reset~q\,
	datac => \dut|state~6_combout\,
	datad => \dut|state~9_combout\,
	combout => \dut|state~10_combout\);

-- Location: FF_X31_Y19_N15
\dut|state.ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut|state~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|state.ready~q\);

-- Location: LCCOMB_X32_Y21_N16
\dut|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector4~0_combout\ = (\dut|Add0~56_combout\ & (!\dut|state.ready~q\ & ((\dut|clk_count[1]~1_combout\) # (\dut|clk_count[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~56_combout\,
	datab => \dut|state.ready~q\,
	datac => \dut|clk_count[1]~1_combout\,
	datad => \dut|clk_count[1]~4_combout\,
	combout => \dut|Selector4~0_combout\);

-- Location: FF_X32_Y21_N17
\dut|clk_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|clk_count\(28));

-- Location: LCCOMB_X32_Y19_N12
\dut|busy~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|busy~4_combout\ = (!\dut|Add0~56_combout\ & !\dut|Add0~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut|Add0~56_combout\,
	datad => \dut|Add0~58_combout\,
	combout => \dut|busy~4_combout\);

-- Location: LCCOMB_X34_Y19_N18
\dut|LessThan8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan8~2_combout\ = (\dut|Add0~30_combout\ & \dut|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut|Add0~30_combout\,
	datad => \dut|Add0~32_combout\,
	combout => \dut|LessThan8~2_combout\);

-- Location: LCCOMB_X32_Y19_N8
\dut|LessThan7~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan7~11_combout\ = (\dut|busy~4_combout\ & (\dut|LessThan7~9_combout\ & ((\dut|LessThan7~6_combout\) # (!\dut|LessThan8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|busy~4_combout\,
	datab => \dut|LessThan8~2_combout\,
	datac => \dut|LessThan7~9_combout\,
	datad => \dut|LessThan7~6_combout\,
	combout => \dut|LessThan7~11_combout\);

-- Location: LCCOMB_X34_Y20_N30
\dut|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan3~0_combout\ = (!\dut|Add0~26_combout\ & (!\dut|Add0~30_combout\ & (!\dut|Add0~32_combout\ & !\dut|Add0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~26_combout\,
	datab => \dut|Add0~30_combout\,
	datac => \dut|Add0~32_combout\,
	datad => \dut|Add0~28_combout\,
	combout => \dut|LessThan3~0_combout\);

-- Location: LCCOMB_X34_Y20_N10
\dut|LessThan3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan3~4_combout\ = ((!\dut|Add0~8_combout\ & ((!\dut|Add0~4_combout\) # (!\dut|Add0~6_combout\)))) # (!\dut|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~10_combout\,
	datab => \dut|Add0~6_combout\,
	datac => \dut|Add0~4_combout\,
	datad => \dut|Add0~8_combout\,
	combout => \dut|LessThan3~4_combout\);

-- Location: LCCOMB_X32_Y20_N18
\dut|LessThan3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan3~3_combout\ = ((!\dut|Add0~18_combout\ & ((!\dut|Add0~14_combout\) # (!\dut|Add0~16_combout\)))) # (!\dut|LessThan3~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~16_combout\,
	datab => \dut|Add0~18_combout\,
	datac => \dut|Add0~14_combout\,
	datad => \dut|LessThan3~2_combout\,
	combout => \dut|LessThan3~3_combout\);

-- Location: LCCOMB_X32_Y20_N20
\dut|LessThan3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan3~5_combout\ = (\dut|LessThan3~3_combout\) # ((!\dut|Add0~18_combout\ & (!\dut|Add0~12_combout\ & \dut|LessThan3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~18_combout\,
	datab => \dut|Add0~12_combout\,
	datac => \dut|LessThan3~4_combout\,
	datad => \dut|LessThan3~3_combout\,
	combout => \dut|LessThan3~5_combout\);

-- Location: LCCOMB_X32_Y19_N2
\dut|busy~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|busy~6_combout\ = (!\dut|Add0~24_combout\ & (\dut|LessThan3~0_combout\ & (\dut|LessThan7~9_combout\ & \dut|LessThan3~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~24_combout\,
	datab => \dut|LessThan3~0_combout\,
	datac => \dut|LessThan7~9_combout\,
	datad => \dut|LessThan3~5_combout\,
	combout => \dut|busy~6_combout\);

-- Location: LCCOMB_X32_Y19_N28
\dut|state~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|state~8_combout\ = (!\dut|Add0~60_combout\ & ((\dut|LessThan7~11_combout\) # ((\dut|busy~4_combout\ & \dut|busy~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|busy~4_combout\,
	datab => \dut|Add0~60_combout\,
	datac => \dut|LessThan7~11_combout\,
	datad => \dut|busy~6_combout\,
	combout => \dut|state~8_combout\);

-- Location: LCCOMB_X31_Y19_N4
\dut|Selector44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector44~0_combout\ = (!\dut|Add0~62_combout\ & ((\dut|Add0~60_combout\) # ((\dut|LessThan6~2_combout\) # (!\dut|LessThan7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~60_combout\,
	datab => \dut|LessThan7~4_combout\,
	datac => \dut|Add0~62_combout\,
	datad => \dut|LessThan6~2_combout\,
	combout => \dut|Selector44~0_combout\);

-- Location: LCCOMB_X31_Y19_N2
\dut|state~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|state~7_combout\ = (!\dut|LessThan8~6_combout\ & (\dut|state.initialize~q\ & \dut|Selector44~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|LessThan8~6_combout\,
	datab => \dut|state.initialize~q\,
	datac => \dut|Selector44~0_combout\,
	combout => \dut|state~7_combout\);

-- Location: LCCOMB_X31_Y19_N20
\dut|state~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|state~9_combout\ = (\lcd_enable~q\ & (!\dut|state~8_combout\ & ((\dut|state~7_combout\)))) # (!\lcd_enable~q\ & ((\dut|state.ready~q\) # ((!\dut|state~8_combout\ & \dut|state~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_enable~q\,
	datab => \dut|state~8_combout\,
	datac => \dut|state.ready~q\,
	datad => \dut|state~7_combout\,
	combout => \dut|state~9_combout\);

-- Location: FF_X31_Y19_N21
\dut|busy\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut|state~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|busy~q\);

-- Location: LCCOMB_X31_Y17_N20
\lcd_enable~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_enable~3_combout\ = (\state.send~q\ & (\Mux10~0_combout\ & (!\lcd_enable~q\ & \dut|busy~q\))) # (!\state.send~q\ & (((\lcd_enable~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~0_combout\,
	datab => \state.send~q\,
	datac => \lcd_enable~q\,
	datad => \dut|busy~q\,
	combout => \lcd_enable~3_combout\);

-- Location: FF_X31_Y17_N21
lcd_enable : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lcd_enable~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_enable~q\);

-- Location: LCCOMB_X31_Y17_N18
\state.clear~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.clear~feeder_combout\ = \Selector3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector3~0_combout\,
	combout => \state.clear~feeder_combout\);

-- Location: FF_X31_Y17_N19
\state.clear\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state.clear~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.clear~q\);

-- Location: LCCOMB_X31_Y17_N28
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\state.clear~q\) # ((\state.send~q\ & ((\lcd_enable~q\) # (!\dut|busy~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_enable~q\,
	datab => \state.clear~q\,
	datac => \state.send~q\,
	datad => \dut|busy~q\,
	combout => \Selector2~0_combout\);

-- Location: FF_X31_Y17_N29
\state.send\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.send~q\);

-- Location: LCCOMB_X31_Y17_N2
\lcd_enable~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_enable~2_combout\ = (\state.send~q\ & (!\lcd_enable~q\ & \dut|busy~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.send~q\,
	datac => \lcd_enable~q\,
	datad => \dut|busy~q\,
	combout => \lcd_enable~2_combout\);

-- Location: LCCOMB_X31_Y17_N4
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (!\lcd_enable~2_combout\ & ((\quad|CountEnable~q\) # (\state.idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \quad|CountEnable~q\,
	datac => \state.idle~q\,
	datad => \lcd_enable~2_combout\,
	combout => \Selector1~0_combout\);

-- Location: FF_X31_Y17_N5
\state.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.idle~q\);

-- Location: LCCOMB_X31_Y17_N24
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\lcd_enable~2_combout\) # ((\lcd_reset~q\ & ((\state.send~q\) # (!\state.idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.idle~q\,
	datab => \lcd_enable~2_combout\,
	datac => \lcd_reset~q\,
	datad => \state.send~q\,
	combout => \Selector0~0_combout\);

-- Location: FF_X31_Y17_N25
lcd_reset : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_reset~q\);

-- Location: LCCOMB_X32_Y21_N22
\dut|state~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|state~11_combout\ = (!\dut|state.power_up~q\ & (\lcd_reset~q\ & !\dut|LessThan0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut|state.power_up~q\,
	datac => \lcd_reset~q\,
	datad => \dut|LessThan0~10_combout\,
	combout => \dut|state~11_combout\);

-- Location: LCCOMB_X31_Y19_N8
\dut|LessThan7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan7~7_combout\ = (!\dut|Add0~60_combout\ & (\dut|LessThan7~4_combout\ & ((\dut|LessThan7~6_combout\) # (!\dut|LessThan8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~60_combout\,
	datab => \dut|LessThan7~4_combout\,
	datac => \dut|LessThan8~2_combout\,
	datad => \dut|LessThan7~6_combout\,
	combout => \dut|LessThan7~7_combout\);

-- Location: LCCOMB_X32_Y19_N18
\dut|busy~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|busy~8_combout\ = (\dut|Add0~56_combout\) # ((\dut|Add0~60_combout\) # ((\dut|Add0~58_combout\) # (!\dut|busy~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~56_combout\,
	datab => \dut|Add0~60_combout\,
	datac => \dut|Add0~58_combout\,
	datad => \dut|busy~6_combout\,
	combout => \dut|busy~8_combout\);

-- Location: LCCOMB_X31_Y19_N10
\dut|busy~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|busy~7_combout\ = (!\dut|LessThan8~6_combout\ & (!\dut|LessThan7~7_combout\ & (\dut|Selector44~0_combout\ & \dut|busy~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|LessThan8~6_combout\,
	datab => \dut|LessThan7~7_combout\,
	datac => \dut|Selector44~0_combout\,
	datad => \dut|busy~8_combout\,
	combout => \dut|busy~7_combout\);

-- Location: LCCOMB_X31_Y19_N12
\dut|state~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|state~12_combout\ = (\dut|state~11_combout\) # ((\lcd_reset~q\ & (\dut|state.initialize~q\ & !\dut|busy~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_reset~q\,
	datab => \dut|state~11_combout\,
	datac => \dut|state.initialize~q\,
	datad => \dut|busy~7_combout\,
	combout => \dut|state~12_combout\);

-- Location: FF_X31_Y19_N13
\dut|state.initialize\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut|state~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|state.initialize~q\);

-- Location: LCCOMB_X32_Y21_N12
\dut|Selector46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector46~0_combout\ = (!\dut|state.initialize~q\ & !\dut|state.send~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut|state.initialize~q\,
	datad => \dut|state.send~q\,
	combout => \dut|Selector46~0_combout\);

-- Location: LCCOMB_X32_Y21_N0
\dut|rs~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|rs~1_combout\ = (\dut|Selector46~0_combout\ & ((\dut|rs~0_combout\ & ((\dut|rs~q\))) # (!\dut|rs~0_combout\ & (\dut|Selector36~0_combout\)))) # (!\dut|Selector46~0_combout\ & (((\dut|rs~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Selector46~0_combout\,
	datab => \dut|Selector36~0_combout\,
	datac => \dut|rs~q\,
	datad => \dut|rs~0_combout\,
	combout => \dut|rs~1_combout\);

-- Location: FF_X32_Y21_N1
\dut|rs\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut|rs~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|rs~q\);

-- Location: LCCOMB_X31_Y18_N14
\dut|Selector46~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector46~1_combout\ = (!\dut|clk_count\(31) & \dut|state.send~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut|clk_count\(31),
	datad => \dut|state.send~q\,
	combout => \dut|Selector46~1_combout\);

-- Location: LCCOMB_X32_Y18_N30
\dut|LessThan10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan10~3_combout\ = (!\dut|clk_count\(6) & (!\dut|clk_count\(7) & (!\dut|clk_count\(8) & !\dut|clk_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(6),
	datab => \dut|clk_count\(7),
	datac => \dut|clk_count\(8),
	datad => \dut|clk_count\(9),
	combout => \dut|LessThan10~3_combout\);

-- Location: LCCOMB_X33_Y18_N12
\dut|LessThan10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan10~1_combout\ = (\dut|clk_count\(4) & \dut|clk_count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut|clk_count\(4),
	datad => \dut|clk_count\(5),
	combout => \dut|LessThan10~1_combout\);

-- Location: LCCOMB_X33_Y18_N30
\dut|LessThan10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan10~2_combout\ = ((!\dut|clk_count\(1) & (!\dut|clk_count\(2) & !\dut|clk_count\(3)))) # (!\dut|LessThan10~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(1),
	datab => \dut|clk_count\(2),
	datac => \dut|clk_count\(3),
	datad => \dut|LessThan10~1_combout\,
	combout => \dut|LessThan10~2_combout\);

-- Location: LCCOMB_X32_Y18_N24
\dut|LessThan10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan10~0_combout\ = (!\dut|clk_count\(11) & (!\dut|clk_count\(10) & \dut|LessThan9~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(11),
	datac => \dut|clk_count\(10),
	datad => \dut|LessThan9~1_combout\,
	combout => \dut|LessThan10~0_combout\);

-- Location: LCCOMB_X32_Y18_N28
\dut|Selector46~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector46~2_combout\ = (\dut|LessThan10~0_combout\ & ((!\dut|LessThan10~2_combout\) # (!\dut|LessThan10~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|LessThan10~3_combout\,
	datac => \dut|LessThan10~2_combout\,
	datad => \dut|LessThan10~0_combout\,
	combout => \dut|Selector46~2_combout\);

-- Location: LCCOMB_X33_Y18_N4
\dut|LessThan11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan11~0_combout\ = (!\dut|clk_count\(6) & (((!\dut|LessThan10~1_combout\) # (!\dut|clk_count\(3))) # (!\dut|clk_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(6),
	datab => \dut|clk_count\(2),
	datac => \dut|clk_count\(3),
	datad => \dut|LessThan10~1_combout\,
	combout => \dut|LessThan11~0_combout\);

-- Location: LCCOMB_X32_Y18_N10
\dut|LessThan11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan11~1_combout\ = ((!\dut|clk_count\(8) & ((\dut|LessThan11~0_combout\) # (!\dut|clk_count\(7))))) # (!\dut|clk_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(8),
	datab => \dut|clk_count\(9),
	datac => \dut|clk_count\(7),
	datad => \dut|LessThan11~0_combout\,
	combout => \dut|LessThan11~1_combout\);

-- Location: LCCOMB_X31_Y18_N4
\dut|Selector46~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector46~3_combout\ = (\dut|LessThan9~5_combout\ & (((\dut|Selector46~2_combout\ & \dut|LessThan11~1_combout\)))) # (!\dut|LessThan9~5_combout\ & (\dut|e~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|e~q\,
	datab => \dut|Selector46~2_combout\,
	datac => \dut|LessThan11~1_combout\,
	datad => \dut|LessThan9~5_combout\,
	combout => \dut|Selector46~3_combout\);

-- Location: LCCOMB_X33_Y18_N28
\dut|LessThan9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan9~6_combout\ = (!\dut|clk_count\(3) & (!\dut|clk_count\(4) & !\dut|clk_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(3),
	datac => \dut|clk_count\(4),
	datad => \dut|clk_count\(5),
	combout => \dut|LessThan9~6_combout\);

-- Location: LCCOMB_X33_Y18_N10
\dut|LessThan12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan12~0_combout\ = ((\dut|LessThan9~6_combout\ & ((!\dut|clk_count\(2)) # (!\dut|clk_count\(1))))) # (!\dut|clk_count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(1),
	datab => \dut|LessThan9~6_combout\,
	datac => \dut|clk_count\(2),
	datad => \dut|clk_count\(6),
	combout => \dut|LessThan12~0_combout\);

-- Location: LCCOMB_X33_Y18_N0
\dut|LessThan12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan12~1_combout\ = (!\dut|clk_count\(9) & (((!\dut|clk_count\(7) & \dut|LessThan12~0_combout\)) # (!\dut|clk_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(7),
	datab => \dut|clk_count\(9),
	datac => \dut|clk_count\(8),
	datad => \dut|LessThan12~0_combout\,
	combout => \dut|LessThan12~1_combout\);

-- Location: LCCOMB_X32_Y18_N8
\dut|LessThan12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan12~2_combout\ = (!\dut|clk_count\(11) & (\dut|LessThan9~1_combout\ & ((\dut|LessThan12~1_combout\) # (!\dut|clk_count\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|clk_count\(11),
	datab => \dut|clk_count\(10),
	datac => \dut|LessThan12~1_combout\,
	datad => \dut|LessThan9~1_combout\,
	combout => \dut|LessThan12~2_combout\);

-- Location: LCCOMB_X32_Y18_N26
\dut|Selector46~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector46~4_combout\ = (!\dut|LessThan12~2_combout\ & (((!\dut|LessThan10~0_combout\) # (!\dut|LessThan10~2_combout\)) # (!\dut|LessThan10~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|LessThan10~3_combout\,
	datab => \dut|LessThan12~2_combout\,
	datac => \dut|LessThan10~2_combout\,
	datad => \dut|LessThan10~0_combout\,
	combout => \dut|Selector46~4_combout\);

-- Location: LCCOMB_X31_Y18_N2
\dut|Selector46~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector46~5_combout\ = (\dut|Selector46~1_combout\ & ((\dut|Selector46~3_combout\) # ((\dut|e~q\ & \dut|Selector46~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|e~q\,
	datab => \dut|Selector46~1_combout\,
	datac => \dut|Selector46~3_combout\,
	datad => \dut|Selector46~4_combout\,
	combout => \dut|Selector46~5_combout\);

-- Location: LCCOMB_X30_Y19_N4
\dut|Selector46~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector46~14_combout\ = (!\dut|state.send~q\ & ((\dut|state.initialize~q\ & ((\dut|Add0~62_combout\))) # (!\dut|state.initialize~q\ & (\dut|e~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|state.send~q\,
	datab => \dut|e~q\,
	datac => \dut|state.initialize~q\,
	datad => \dut|Add0~62_combout\,
	combout => \dut|Selector46~14_combout\);

-- Location: LCCOMB_X30_Y20_N14
\dut|Selector46~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector46~6_combout\ = (\dut|state.initialize~q\ & !\dut|state.send~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut|state.initialize~q\,
	datad => \dut|state.send~q\,
	combout => \dut|Selector46~6_combout\);

-- Location: LCCOMB_X34_Y19_N0
\dut|LessThan7~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan7~10_combout\ = (\dut|Add0~14_combout\ & (\dut|LessThan8~0_combout\ & (\dut|Add0~12_combout\ & \dut|Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~14_combout\,
	datab => \dut|LessThan8~0_combout\,
	datac => \dut|Add0~12_combout\,
	datad => \dut|Add0~16_combout\,
	combout => \dut|LessThan7~10_combout\);

-- Location: LCCOMB_X31_Y20_N18
\dut|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan1~1_combout\ = (\dut|LessThan1~0_combout\ & (((!\dut|Add0~6_combout\ & !\dut|Add0~4_combout\)) # (!\dut|LessThan7~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~6_combout\,
	datab => \dut|LessThan1~0_combout\,
	datac => \dut|Add0~4_combout\,
	datad => \dut|LessThan7~10_combout\,
	combout => \dut|LessThan1~1_combout\);

-- Location: LCCOMB_X31_Y20_N12
\dut|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan1~2_combout\ = (\dut|LessThan3~0_combout\ & (\dut|LessThan1~1_combout\ & (\dut|busy~4_combout\ & \dut|LessThan7~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|LessThan3~0_combout\,
	datab => \dut|LessThan1~1_combout\,
	datac => \dut|busy~4_combout\,
	datad => \dut|LessThan7~9_combout\,
	combout => \dut|LessThan1~2_combout\);

-- Location: LCCOMB_X30_Y20_N22
\dut|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan2~0_combout\ = (!\dut|Add0~12_combout\ & (((!\dut|Add0~6_combout\) # (!\dut|Add0~10_combout\)) # (!\dut|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~8_combout\,
	datab => \dut|Add0~10_combout\,
	datac => \dut|Add0~12_combout\,
	datad => \dut|Add0~6_combout\,
	combout => \dut|LessThan2~0_combout\);

-- Location: LCCOMB_X30_Y20_N16
\dut|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan2~1_combout\ = ((!\dut|Add0~18_combout\) # (!\dut|Add0~14_combout\)) # (!\dut|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~16_combout\,
	datab => \dut|Add0~14_combout\,
	datad => \dut|Add0~18_combout\,
	combout => \dut|LessThan2~1_combout\);

-- Location: LCCOMB_X30_Y20_N26
\dut|LessThan2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan2~2_combout\ = ((!\dut|Add0~20_combout\ & ((\dut|LessThan2~0_combout\) # (\dut|LessThan2~1_combout\)))) # (!\dut|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|LessThan2~0_combout\,
	datab => \dut|Add0~22_combout\,
	datac => \dut|Add0~20_combout\,
	datad => \dut|LessThan2~1_combout\,
	combout => \dut|LessThan2~2_combout\);

-- Location: LCCOMB_X32_Y19_N26
\dut|LessThan7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan7~2_combout\ = (!\dut|Add0~52_combout\ & (!\dut|Add0~50_combout\ & (!\dut|Add0~54_combout\ & \dut|LessThan7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~52_combout\,
	datab => \dut|Add0~50_combout\,
	datac => \dut|Add0~54_combout\,
	datad => \dut|LessThan7~1_combout\,
	combout => \dut|LessThan7~2_combout\);

-- Location: LCCOMB_X32_Y19_N0
\dut|LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan3~1_combout\ = (\dut|LessThan7~0_combout\ & (\dut|LessThan3~0_combout\ & (\dut|LessThan7~2_combout\ & \dut|busy~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|LessThan7~0_combout\,
	datab => \dut|LessThan3~0_combout\,
	datac => \dut|LessThan7~2_combout\,
	datad => \dut|busy~4_combout\,
	combout => \dut|LessThan3~1_combout\);

-- Location: LCCOMB_X31_Y20_N26
\dut|Selector43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector43~0_combout\ = (!\dut|LessThan2~2_combout\ & (!\dut|Add0~24_combout\ & (\dut|LessThan3~5_combout\ & \dut|LessThan3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|LessThan2~2_combout\,
	datab => \dut|Add0~24_combout\,
	datac => \dut|LessThan3~5_combout\,
	datad => \dut|LessThan3~1_combout\,
	combout => \dut|Selector43~0_combout\);

-- Location: LCCOMB_X30_Y19_N22
\dut|Selector46~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector46~13_combout\ = (\dut|Selector46~6_combout\ & (!\dut|Add0~60_combout\ & ((\dut|LessThan1~2_combout\) # (\dut|Selector43~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Selector46~6_combout\,
	datab => \dut|Add0~60_combout\,
	datac => \dut|LessThan1~2_combout\,
	datad => \dut|Selector43~0_combout\,
	combout => \dut|Selector46~13_combout\);

-- Location: LCCOMB_X30_Y20_N30
\dut|LessThan4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan4~1_combout\ = ((!\dut|Add0~18_combout\) # (!\dut|Add0~16_combout\)) # (!\dut|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~20_combout\,
	datac => \dut|Add0~16_combout\,
	datad => \dut|Add0~18_combout\,
	combout => \dut|LessThan4~1_combout\);

-- Location: LCCOMB_X30_Y20_N12
\dut|LessThan4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan4~0_combout\ = (!\dut|Add0~14_combout\ & (((!\dut|Add0~12_combout\) # (!\dut|Add0~10_combout\)) # (!\dut|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~8_combout\,
	datab => \dut|Add0~10_combout\,
	datac => \dut|Add0~12_combout\,
	datad => \dut|Add0~14_combout\,
	combout => \dut|LessThan4~0_combout\);

-- Location: LCCOMB_X30_Y20_N20
\dut|LessThan4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan4~2_combout\ = ((!\dut|Add0~22_combout\ & ((\dut|LessThan4~1_combout\) # (\dut|LessThan4~0_combout\)))) # (!\dut|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~24_combout\,
	datab => \dut|Add0~22_combout\,
	datac => \dut|LessThan4~1_combout\,
	datad => \dut|LessThan4~0_combout\,
	combout => \dut|LessThan4~2_combout\);

-- Location: LCCOMB_X30_Y19_N2
\dut|LessThan2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan2~3_combout\ = (\dut|LessThan3~0_combout\ & (\dut|LessThan2~2_combout\ & (!\dut|Add0~24_combout\ & \dut|LessThan7~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|LessThan3~0_combout\,
	datab => \dut|LessThan2~2_combout\,
	datac => \dut|Add0~24_combout\,
	datad => \dut|LessThan7~4_combout\,
	combout => \dut|LessThan2~3_combout\);

-- Location: LCCOMB_X30_Y19_N12
\dut|Selector46~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector46~7_combout\ = (\dut|Selector46~6_combout\ & (!\dut|LessThan2~3_combout\ & ((!\dut|LessThan3~1_combout\) # (!\dut|LessThan4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Selector46~6_combout\,
	datab => \dut|LessThan4~2_combout\,
	datac => \dut|LessThan3~1_combout\,
	datad => \dut|LessThan2~3_combout\,
	combout => \dut|Selector46~7_combout\);

-- Location: LCCOMB_X34_Y19_N16
\dut|LessThan6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan6~3_combout\ = (!\dut|Add0~6_combout\ & (!\dut|Add0~4_combout\ & !\dut|Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~6_combout\,
	datac => \dut|Add0~4_combout\,
	datad => \dut|Add0~8_combout\,
	combout => \dut|LessThan6~3_combout\);

-- Location: LCCOMB_X34_Y19_N14
\dut|LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan5~0_combout\ = (!\dut|Add0~14_combout\ & (((\dut|LessThan6~3_combout\) # (!\dut|Add0~10_combout\)) # (!\dut|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~14_combout\,
	datab => \dut|Add0~12_combout\,
	datac => \dut|Add0~10_combout\,
	datad => \dut|LessThan6~3_combout\,
	combout => \dut|LessThan5~0_combout\);

-- Location: LCCOMB_X34_Y19_N8
\dut|LessThan5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan5~1_combout\ = (!\dut|Add0~20_combout\ & (!\dut|Add0~18_combout\ & ((\dut|LessThan5~0_combout\) # (!\dut|Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~16_combout\,
	datab => \dut|Add0~20_combout\,
	datac => \dut|LessThan5~0_combout\,
	datad => \dut|Add0~18_combout\,
	combout => \dut|LessThan5~1_combout\);

-- Location: LCCOMB_X34_Y19_N26
\dut|LessThan5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan5~2_combout\ = (!\dut|Add0~60_combout\ & (((\dut|LessThan5~1_combout\) # (!\dut|Add0~22_combout\)) # (!\dut|Add0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Add0~24_combout\,
	datab => \dut|Add0~22_combout\,
	datac => \dut|LessThan5~1_combout\,
	datad => \dut|Add0~60_combout\,
	combout => \dut|LessThan5~2_combout\);

-- Location: LCCOMB_X32_Y19_N4
\dut|LessThan5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan5~3_combout\ = (\dut|busy~4_combout\ & (\dut|LessThan7~9_combout\ & (\dut|LessThan3~0_combout\ & \dut|LessThan5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|busy~4_combout\,
	datab => \dut|LessThan7~9_combout\,
	datac => \dut|LessThan3~0_combout\,
	datad => \dut|LessThan5~2_combout\,
	combout => \dut|LessThan5~3_combout\);

-- Location: LCCOMB_X30_Y19_N14
\dut|Selector46~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector46~8_combout\ = (\dut|LessThan7~7_combout\) # ((\dut|e~q\ & (!\dut|Add0~62_combout\ & !\dut|LessThan8~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|e~q\,
	datab => \dut|Add0~62_combout\,
	datac => \dut|LessThan7~7_combout\,
	datad => \dut|LessThan8~6_combout\,
	combout => \dut|Selector46~8_combout\);

-- Location: LCCOMB_X30_Y19_N30
\dut|Selector46~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector46~10_combout\ = (\dut|Selector46~6_combout\ & (((!\dut|LessThan7~4_combout\) # (!\dut|LessThan3~0_combout\)) # (!\dut|LessThan4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Selector46~6_combout\,
	datab => \dut|LessThan4~2_combout\,
	datac => \dut|LessThan3~0_combout\,
	datad => \dut|LessThan7~4_combout\,
	combout => \dut|Selector46~10_combout\);

-- Location: LCCOMB_X30_Y19_N0
\dut|Selector46~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector46~9_combout\ = (!\dut|state.send~q\ & (\dut|state.initialize~q\ & \dut|Add0~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|state.send~q\,
	datab => \dut|state.initialize~q\,
	datad => \dut|Add0~60_combout\,
	combout => \dut|Selector46~9_combout\);

-- Location: LCCOMB_X30_Y19_N8
\dut|busy~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|busy~5_combout\ = (\dut|busy~4_combout\ & (\dut|LessThan7~0_combout\ & (\dut|LessThan7~2_combout\ & !\dut|LessThan6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|busy~4_combout\,
	datab => \dut|LessThan7~0_combout\,
	datac => \dut|LessThan7~2_combout\,
	datad => \dut|LessThan6~2_combout\,
	combout => \dut|busy~5_combout\);

-- Location: LCCOMB_X30_Y19_N6
\dut|Selector46~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector46~11_combout\ = (\dut|Selector46~9_combout\) # ((\dut|Selector46~10_combout\ & (!\dut|busy~5_combout\ & !\dut|LessThan2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Selector46~10_combout\,
	datab => \dut|Selector46~9_combout\,
	datac => \dut|busy~5_combout\,
	datad => \dut|LessThan2~3_combout\,
	combout => \dut|Selector46~11_combout\);

-- Location: LCCOMB_X30_Y19_N16
\dut|Selector46~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector46~12_combout\ = (\dut|Selector46~7_combout\ & ((\dut|LessThan5~3_combout\) # ((\dut|Selector46~8_combout\ & \dut|Selector46~11_combout\)))) # (!\dut|Selector46~7_combout\ & (((\dut|Selector46~8_combout\ & \dut|Selector46~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Selector46~7_combout\,
	datab => \dut|LessThan5~3_combout\,
	datac => \dut|Selector46~8_combout\,
	datad => \dut|Selector46~11_combout\,
	combout => \dut|Selector46~12_combout\);

-- Location: LCCOMB_X30_Y19_N28
\dut|Selector46~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector46~15_combout\ = (\dut|Selector46~5_combout\) # ((\dut|Selector46~14_combout\) # ((\dut|Selector46~13_combout\) # (\dut|Selector46~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Selector46~5_combout\,
	datab => \dut|Selector46~14_combout\,
	datac => \dut|Selector46~13_combout\,
	datad => \dut|Selector46~12_combout\,
	combout => \dut|Selector46~15_combout\);

-- Location: FF_X30_Y19_N29
\dut|e\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut|Selector46~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|e~q\);

-- Location: LCCOMB_X31_Y17_N10
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (char(0)) # ((!char(2) & (!char(3) & !char(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char(2),
	datab => char(0),
	datac => char(3),
	datad => char(1),
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X31_Y17_N12
\lcd_bus[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_bus[0]~2_combout\ = (!\lcd_enable~q\ & (\state.send~q\ & (\Mux10~0_combout\ & \dut|busy~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_enable~q\,
	datab => \state.send~q\,
	datac => \Mux10~0_combout\,
	datad => \dut|busy~q\,
	combout => \lcd_bus[0]~2_combout\);

-- Location: FF_X31_Y17_N11
\lcd_bus[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux9~0_combout\,
	ena => \lcd_bus[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lcd_bus(0));

-- Location: LCCOMB_X30_Y20_N0
\dut|Selector45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector45~0_combout\ = (\dut|state.initialize~q\ & ((!\dut|state.ready~q\) # (!\lcd_enable~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lcd_enable~q\,
	datac => \dut|state.initialize~q\,
	datad => \dut|state.ready~q\,
	combout => \dut|Selector45~0_combout\);

-- Location: LCCOMB_X30_Y19_N10
\dut|LessThan4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|LessThan4~3_combout\ = (\dut|LessThan3~0_combout\ & (!\dut|Add0~60_combout\ & (\dut|LessThan4~2_combout\ & \dut|LessThan7~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|LessThan3~0_combout\,
	datab => \dut|Add0~60_combout\,
	datac => \dut|LessThan4~2_combout\,
	datad => \dut|LessThan7~4_combout\,
	combout => \dut|LessThan4~3_combout\);

-- Location: LCCOMB_X30_Y19_N20
\dut|Selector45~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector45~1_combout\ = (!\dut|busy~6_combout\ & (!\dut|Add0~62_combout\ & (\dut|Selector45~0_combout\ & !\dut|LessThan4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|busy~6_combout\,
	datab => \dut|Add0~62_combout\,
	datac => \dut|Selector45~0_combout\,
	datad => \dut|LessThan4~3_combout\,
	combout => \dut|Selector45~1_combout\);

-- Location: LCCOMB_X31_Y19_N22
\dut|Selector45~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector45~2_combout\ = (lcd_bus(0) & ((\dut|Selector36~0_combout\) # ((\dut|LessThan5~3_combout\ & \dut|Selector45~1_combout\)))) # (!lcd_bus(0) & (((\dut|LessThan5~3_combout\ & \dut|Selector45~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lcd_bus(0),
	datab => \dut|Selector36~0_combout\,
	datac => \dut|LessThan5~3_combout\,
	datad => \dut|Selector45~1_combout\,
	combout => \dut|Selector45~2_combout\);

-- Location: LCCOMB_X31_Y19_N28
\dut|lcd_data[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|lcd_data[0]~0_combout\ = (!\dut|state.send~q\ & (!\dut|rs~0_combout\ & ((!\dut|busy~7_combout\) # (!\dut|state.initialize~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|state.send~q\,
	datab => \dut|state.initialize~q\,
	datac => \dut|rs~0_combout\,
	datad => \dut|busy~7_combout\,
	combout => \dut|lcd_data[0]~0_combout\);

-- Location: FF_X31_Y19_N23
\dut|lcd_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut|Selector45~2_combout\,
	ena => \dut|lcd_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|lcd_data\(0));

-- Location: LCCOMB_X31_Y17_N0
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (!char(3) & char(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => char(3),
	datad => char(1),
	combout => \Mux8~0_combout\);

-- Location: FF_X31_Y17_N1
\lcd_bus[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux8~0_combout\,
	ena => \lcd_bus[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lcd_bus(1));

-- Location: LCCOMB_X31_Y19_N30
\dut|Selector44~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector44~3_combout\ = (\dut|Selector44~0_combout\ & (\dut|LessThan7~11_combout\ & ((!\dut|busy~6_combout\) # (!\dut|busy~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|busy~4_combout\,
	datab => \dut|Selector44~0_combout\,
	datac => \dut|LessThan7~11_combout\,
	datad => \dut|busy~6_combout\,
	combout => \dut|Selector44~3_combout\);

-- Location: LCCOMB_X30_Y19_N18
\dut|Selector44~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector44~1_combout\ = (\dut|state.initialize~q\ & (!\dut|Add0~60_combout\ & ((!\dut|state.ready~q\) # (!\lcd_enable~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_enable~q\,
	datab => \dut|state.ready~q\,
	datac => \dut|state.initialize~q\,
	datad => \dut|Add0~60_combout\,
	combout => \dut|Selector44~1_combout\);

-- Location: LCCOMB_X30_Y19_N24
\dut|Selector44~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector44~2_combout\ = (\dut|Selector44~1_combout\ & (!\dut|LessThan4~3_combout\ & ((!\dut|LessThan3~1_combout\) # (!\dut|LessThan5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|LessThan5~2_combout\,
	datab => \dut|Selector44~1_combout\,
	datac => \dut|LessThan3~1_combout\,
	datad => \dut|LessThan4~3_combout\,
	combout => \dut|Selector44~2_combout\);

-- Location: LCCOMB_X31_Y19_N0
\dut|Selector44~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector44~4_combout\ = (lcd_bus(1) & ((\dut|Selector36~0_combout\) # ((\dut|Selector44~3_combout\ & \dut|Selector44~2_combout\)))) # (!lcd_bus(1) & (((\dut|Selector44~3_combout\ & \dut|Selector44~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lcd_bus(1),
	datab => \dut|Selector36~0_combout\,
	datac => \dut|Selector44~3_combout\,
	datad => \dut|Selector44~2_combout\,
	combout => \dut|Selector44~4_combout\);

-- Location: FF_X31_Y19_N1
\dut|lcd_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut|Selector44~4_combout\,
	ena => \dut|lcd_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|lcd_data\(1));

-- Location: LCCOMB_X31_Y20_N4
\dut|Selector43~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector43~2_combout\ = (\dut|state.initialize~q\ & (\dut|Add0~62_combout\ & ((!\lcd_enable~q\) # (!\dut|state.ready~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|state.ready~q\,
	datab => \lcd_enable~q\,
	datac => \dut|state.initialize~q\,
	datad => \dut|Add0~62_combout\,
	combout => \dut|Selector43~2_combout\);

-- Location: LCCOMB_X31_Y20_N30
\dut|Selector43~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector43~3_combout\ = (!\dut|Selector43~2_combout\ & (((!\dut|Selector43~0_combout\ & !\dut|LessThan1~2_combout\)) # (!\dut|Selector44~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Selector44~1_combout\,
	datab => \dut|Selector43~2_combout\,
	datac => \dut|Selector43~0_combout\,
	datad => \dut|LessThan1~2_combout\,
	combout => \dut|Selector43~3_combout\);

-- Location: LCCOMB_X30_Y19_N26
\dut|Selector43~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector43~1_combout\ = (!\dut|busy~5_combout\ & (!\dut|LessThan2~3_combout\ & (\dut|LessThan7~7_combout\ & \dut|Selector44~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|busy~5_combout\,
	datab => \dut|LessThan2~3_combout\,
	datac => \dut|LessThan7~7_combout\,
	datad => \dut|Selector44~2_combout\,
	combout => \dut|Selector43~1_combout\);

-- Location: LCCOMB_X31_Y17_N26
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (char(2) & !char(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char(2),
	datac => char(3),
	combout => \Mux7~0_combout\);

-- Location: FF_X31_Y17_N27
\lcd_bus[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux7~0_combout\,
	ena => \lcd_bus[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lcd_bus(2));

-- Location: LCCOMB_X31_Y19_N6
\dut|Selector43~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector43~4_combout\ = ((\dut|Selector43~1_combout\) # ((\dut|Selector36~0_combout\ & lcd_bus(2)))) # (!\dut|Selector43~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Selector43~3_combout\,
	datab => \dut|Selector36~0_combout\,
	datac => \dut|Selector43~1_combout\,
	datad => lcd_bus(2),
	combout => \dut|Selector43~4_combout\);

-- Location: FF_X31_Y19_N7
\dut|lcd_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut|Selector43~4_combout\,
	ena => \dut|lcd_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|lcd_data\(2));

-- Location: FF_X31_Y17_N9
\lcd_bus[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => char(3),
	sload => VCC,
	ena => \lcd_bus[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lcd_bus(3));

-- Location: LCCOMB_X31_Y19_N16
\dut|Selector42~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector42~2_combout\ = ((\dut|state.ready~q\ & (\lcd_enable~q\ & lcd_bus(3)))) # (!\dut|Selector43~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|Selector43~3_combout\,
	datab => \dut|state.ready~q\,
	datac => \lcd_enable~q\,
	datad => lcd_bus(3),
	combout => \dut|Selector42~2_combout\);

-- Location: FF_X31_Y19_N17
\dut|lcd_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut|Selector42~2_combout\,
	ena => \dut|lcd_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|lcd_data\(3));

-- Location: LCCOMB_X32_Y19_N6
\dut|Selector41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|Selector41~0_combout\ = ((\dut|Add0~62_combout\) # ((!\dut|Add0~60_combout\ & \dut|LessThan1~2_combout\))) # (!\dut|state.initialize~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|state.initialize~q\,
	datab => \dut|Add0~60_combout\,
	datac => \dut|Add0~62_combout\,
	datad => \dut|LessThan1~2_combout\,
	combout => \dut|Selector41~0_combout\);

-- Location: LCCOMB_X31_Y19_N24
\dut|lcd_data[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dut|lcd_data[4]~feeder_combout\ = \dut|Selector41~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dut|Selector41~0_combout\,
	combout => \dut|lcd_data[4]~feeder_combout\);

-- Location: FF_X31_Y19_N25
\dut|lcd_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dut|lcd_data[4]~feeder_combout\,
	asdata => \lcd_enable~q\,
	sload => \dut|state.ready~q\,
	ena => \dut|lcd_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|lcd_data\(4));

ww_rw <= \rw~output_o\;

ww_rs <= \rs~output_o\;

ww_e <= \e~output_o\;

ww_lcd_data(0) <= \lcd_data[0]~output_o\;

ww_lcd_data(1) <= \lcd_data[1]~output_o\;

ww_lcd_data(2) <= \lcd_data[2]~output_o\;

ww_lcd_data(3) <= \lcd_data[3]~output_o\;

ww_lcd_data(4) <= \lcd_data[4]~output_o\;

ww_lcd_data(5) <= \lcd_data[5]~output_o\;

ww_lcd_data(6) <= \lcd_data[6]~output_o\;

ww_lcd_data(7) <= \lcd_data[7]~output_o\;

ww_CounterValue(0) <= \CounterValue[0]~output_o\;

ww_CounterValue(1) <= \CounterValue[1]~output_o\;

ww_CounterValue(2) <= \CounterValue[2]~output_o\;

ww_CounterValue(3) <= \CounterValue[3]~output_o\;

ww_CounterValue(4) <= \CounterValue[4]~output_o\;

ww_CounterValue(5) <= \CounterValue[5]~output_o\;

ww_CounterValue(6) <= \CounterValue[6]~output_o\;

ww_CounterValue(7) <= \CounterValue[7]~output_o\;

ww_CounterValue(8) <= \CounterValue[8]~output_o\;

ww_CounterValue(9) <= \CounterValue[9]~output_o\;

ww_CounterValue(10) <= \CounterValue[10]~output_o\;

ww_CounterValue(11) <= \CounterValue[11]~output_o\;

ww_CounterValue(12) <= \CounterValue[12]~output_o\;

ww_CounterValue(13) <= \CounterValue[13]~output_o\;

ww_CounterValue(14) <= \CounterValue[14]~output_o\;

ww_CounterValue(15) <= \CounterValue[15]~output_o\;
END structure;


