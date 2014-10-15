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

-- DATE "10/14/2014 22:02:26"

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

ENTITY 	DE2_CLOCK IS
    PORT (
	reset_key : IN std_logic;
	clk_50Mhz : IN std_logic;
	lcd_blon : BUFFER std_logic;
	lcd_rs : BUFFER std_logic;
	lcd_enable : BUFFER std_logic;
	lcd_on : BUFFER std_logic;
	led_reset : BUFFER std_logic;
	led_second : BUFFER std_logic;
	led_counter : BUFFER std_logic_vector(7 DOWNTO 0);
	lcd_rw : BUFFER std_logic;
	data_bus : BUFFER std_logic_vector(7 DOWNTO 0);
	hex0 : BUFFER std_logic_vector(6 DOWNTO 0);
	hex1 : BUFFER std_logic_vector(6 DOWNTO 0);
	hex2 : BUFFER std_logic_vector(6 DOWNTO 0);
	hex3 : BUFFER std_logic_vector(6 DOWNTO 0);
	hex4 : BUFFER std_logic_vector(6 DOWNTO 0);
	hex5 : BUFFER std_logic_vector(6 DOWNTO 0);
	hex6 : BUFFER std_logic_vector(6 DOWNTO 0);
	hex7 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END DE2_CLOCK;

-- Design Ports Information
-- lcd_blon	=>  Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- lcd_rs	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- lcd_enable	=>  Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- lcd_on	=>  Location: PIN_L5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- led_reset	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_second	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_counter[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_counter[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_counter[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_counter[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_counter[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_counter[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_counter[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_counter[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_rw	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hex0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[3]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[4]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[5]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex4[0]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex4[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex4[2]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex4[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex4[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex4[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex4[6]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex5[0]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex5[1]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex5[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex5[3]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex5[4]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex5[5]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex5[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex6[0]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex6[1]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex6[2]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex6[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex6[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex6[5]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex6[6]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex7[0]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex7[1]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex7[2]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex7[3]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex7[4]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex7[5]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex7[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_bus[0]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- data_bus[1]	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- data_bus[2]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- data_bus[3]	=>  Location: PIN_K7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- data_bus[4]	=>  Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- data_bus[5]	=>  Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- data_bus[6]	=>  Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- data_bus[7]	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- reset_key	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_50Mhz	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DE2_CLOCK IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reset_key : std_logic;
SIGNAL ww_clk_50Mhz : std_logic;
SIGNAL ww_lcd_blon : std_logic;
SIGNAL ww_lcd_rs : std_logic;
SIGNAL ww_lcd_enable : std_logic;
SIGNAL ww_lcd_on : std_logic;
SIGNAL ww_led_reset : std_logic;
SIGNAL ww_led_second : std_logic;
SIGNAL ww_led_counter : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_lcd_rw : std_logic;
SIGNAL ww_data_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_hex0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex7 : std_logic_vector(6 DOWNTO 0);
SIGNAL \clk_50Mhz~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_10Hz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_400Hz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \data_bus[0]~input_o\ : std_logic;
SIGNAL \data_bus[1]~input_o\ : std_logic;
SIGNAL \data_bus[2]~input_o\ : std_logic;
SIGNAL \data_bus[3]~input_o\ : std_logic;
SIGNAL \data_bus[4]~input_o\ : std_logic;
SIGNAL \data_bus[5]~input_o\ : std_logic;
SIGNAL \data_bus[6]~input_o\ : std_logic;
SIGNAL \data_bus[7]~input_o\ : std_logic;
SIGNAL \data_bus[0]~output_o\ : std_logic;
SIGNAL \data_bus[1]~output_o\ : std_logic;
SIGNAL \data_bus[2]~output_o\ : std_logic;
SIGNAL \data_bus[3]~output_o\ : std_logic;
SIGNAL \data_bus[4]~output_o\ : std_logic;
SIGNAL \data_bus[5]~output_o\ : std_logic;
SIGNAL \data_bus[6]~output_o\ : std_logic;
SIGNAL \data_bus[7]~output_o\ : std_logic;
SIGNAL \lcd_blon~output_o\ : std_logic;
SIGNAL \lcd_rs~output_o\ : std_logic;
SIGNAL \lcd_enable~output_o\ : std_logic;
SIGNAL \lcd_on~output_o\ : std_logic;
SIGNAL \led_reset~output_o\ : std_logic;
SIGNAL \led_second~output_o\ : std_logic;
SIGNAL \led_counter[0]~output_o\ : std_logic;
SIGNAL \led_counter[1]~output_o\ : std_logic;
SIGNAL \led_counter[2]~output_o\ : std_logic;
SIGNAL \led_counter[3]~output_o\ : std_logic;
SIGNAL \led_counter[4]~output_o\ : std_logic;
SIGNAL \led_counter[5]~output_o\ : std_logic;
SIGNAL \led_counter[6]~output_o\ : std_logic;
SIGNAL \led_counter[7]~output_o\ : std_logic;
SIGNAL \lcd_rw~output_o\ : std_logic;
SIGNAL \hex0[0]~output_o\ : std_logic;
SIGNAL \hex0[1]~output_o\ : std_logic;
SIGNAL \hex0[2]~output_o\ : std_logic;
SIGNAL \hex0[3]~output_o\ : std_logic;
SIGNAL \hex0[4]~output_o\ : std_logic;
SIGNAL \hex0[5]~output_o\ : std_logic;
SIGNAL \hex0[6]~output_o\ : std_logic;
SIGNAL \hex1[0]~output_o\ : std_logic;
SIGNAL \hex1[1]~output_o\ : std_logic;
SIGNAL \hex1[2]~output_o\ : std_logic;
SIGNAL \hex1[3]~output_o\ : std_logic;
SIGNAL \hex1[4]~output_o\ : std_logic;
SIGNAL \hex1[5]~output_o\ : std_logic;
SIGNAL \hex1[6]~output_o\ : std_logic;
SIGNAL \hex2[0]~output_o\ : std_logic;
SIGNAL \hex2[1]~output_o\ : std_logic;
SIGNAL \hex2[2]~output_o\ : std_logic;
SIGNAL \hex2[3]~output_o\ : std_logic;
SIGNAL \hex2[4]~output_o\ : std_logic;
SIGNAL \hex2[5]~output_o\ : std_logic;
SIGNAL \hex2[6]~output_o\ : std_logic;
SIGNAL \hex3[0]~output_o\ : std_logic;
SIGNAL \hex3[1]~output_o\ : std_logic;
SIGNAL \hex3[2]~output_o\ : std_logic;
SIGNAL \hex3[3]~output_o\ : std_logic;
SIGNAL \hex3[4]~output_o\ : std_logic;
SIGNAL \hex3[5]~output_o\ : std_logic;
SIGNAL \hex3[6]~output_o\ : std_logic;
SIGNAL \hex4[0]~output_o\ : std_logic;
SIGNAL \hex4[1]~output_o\ : std_logic;
SIGNAL \hex4[2]~output_o\ : std_logic;
SIGNAL \hex4[3]~output_o\ : std_logic;
SIGNAL \hex4[4]~output_o\ : std_logic;
SIGNAL \hex4[5]~output_o\ : std_logic;
SIGNAL \hex4[6]~output_o\ : std_logic;
SIGNAL \hex5[0]~output_o\ : std_logic;
SIGNAL \hex5[1]~output_o\ : std_logic;
SIGNAL \hex5[2]~output_o\ : std_logic;
SIGNAL \hex5[3]~output_o\ : std_logic;
SIGNAL \hex5[4]~output_o\ : std_logic;
SIGNAL \hex5[5]~output_o\ : std_logic;
SIGNAL \hex5[6]~output_o\ : std_logic;
SIGNAL \hex6[0]~output_o\ : std_logic;
SIGNAL \hex6[1]~output_o\ : std_logic;
SIGNAL \hex6[2]~output_o\ : std_logic;
SIGNAL \hex6[3]~output_o\ : std_logic;
SIGNAL \hex6[4]~output_o\ : std_logic;
SIGNAL \hex6[5]~output_o\ : std_logic;
SIGNAL \hex6[6]~output_o\ : std_logic;
SIGNAL \hex7[0]~output_o\ : std_logic;
SIGNAL \hex7[1]~output_o\ : std_logic;
SIGNAL \hex7[2]~output_o\ : std_logic;
SIGNAL \hex7[3]~output_o\ : std_logic;
SIGNAL \hex7[4]~output_o\ : std_logic;
SIGNAL \hex7[5]~output_o\ : std_logic;
SIGNAL \hex7[6]~output_o\ : std_logic;
SIGNAL \clk_50Mhz~input_o\ : std_logic;
SIGNAL \clk_50Mhz~inputclkctrl_outclk\ : std_logic;
SIGNAL \count_clk_400Hz[0]~20_combout\ : std_logic;
SIGNAL \reset_key~input_o\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \count_clk_400Hz[10]~50_combout\ : std_logic;
SIGNAL \count_clk_400Hz[0]~21\ : std_logic;
SIGNAL \count_clk_400Hz[1]~22_combout\ : std_logic;
SIGNAL \count_clk_400Hz[1]~23\ : std_logic;
SIGNAL \count_clk_400Hz[2]~24_combout\ : std_logic;
SIGNAL \count_clk_400Hz[2]~25\ : std_logic;
SIGNAL \count_clk_400Hz[3]~26_combout\ : std_logic;
SIGNAL \count_clk_400Hz[3]~27\ : std_logic;
SIGNAL \count_clk_400Hz[4]~28_combout\ : std_logic;
SIGNAL \count_clk_400Hz[4]~29\ : std_logic;
SIGNAL \count_clk_400Hz[5]~30_combout\ : std_logic;
SIGNAL \count_clk_400Hz[5]~31\ : std_logic;
SIGNAL \count_clk_400Hz[6]~32_combout\ : std_logic;
SIGNAL \count_clk_400Hz[6]~33\ : std_logic;
SIGNAL \count_clk_400Hz[7]~34_combout\ : std_logic;
SIGNAL \count_clk_400Hz[7]~35\ : std_logic;
SIGNAL \count_clk_400Hz[8]~36_combout\ : std_logic;
SIGNAL \count_clk_400Hz[8]~37\ : std_logic;
SIGNAL \count_clk_400Hz[9]~38_combout\ : std_logic;
SIGNAL \count_clk_400Hz[9]~39\ : std_logic;
SIGNAL \count_clk_400Hz[10]~40_combout\ : std_logic;
SIGNAL \count_clk_400Hz[10]~41\ : std_logic;
SIGNAL \count_clk_400Hz[11]~42_combout\ : std_logic;
SIGNAL \count_clk_400Hz[11]~43\ : std_logic;
SIGNAL \count_clk_400Hz[12]~44_combout\ : std_logic;
SIGNAL \count_clk_400Hz[12]~45\ : std_logic;
SIGNAL \count_clk_400Hz[13]~46_combout\ : std_logic;
SIGNAL \count_clk_400Hz[13]~47\ : std_logic;
SIGNAL \count_clk_400Hz[14]~48_combout\ : std_logic;
SIGNAL \count_clk_400Hz[14]~49\ : std_logic;
SIGNAL \count_clk_400Hz[15]~51_combout\ : std_logic;
SIGNAL \count_clk_400Hz[15]~52\ : std_logic;
SIGNAL \count_clk_400Hz[16]~53_combout\ : std_logic;
SIGNAL \count_clk_400Hz[16]~54\ : std_logic;
SIGNAL \count_clk_400Hz[17]~55_combout\ : std_logic;
SIGNAL \count_clk_400Hz[17]~56\ : std_logic;
SIGNAL \count_clk_400Hz[18]~57_combout\ : std_logic;
SIGNAL \count_clk_400Hz[18]~58\ : std_logic;
SIGNAL \count_clk_400Hz[19]~59_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \clk_400Hz~0_combout\ : std_logic;
SIGNAL \clk_400Hz~q\ : std_logic;
SIGNAL \clk_400Hz~clkctrl_outclk\ : std_logic;
SIGNAL \lcd_rs~0_combout\ : std_logic;
SIGNAL \current_state.TOGGLE_E~q\ : std_logic;
SIGNAL \current_state.HOLD~q\ : std_logic;
SIGNAL \current_state.RESET1~feeder_combout\ : std_logic;
SIGNAL \current_state.RESET1~q\ : std_logic;
SIGNAL \Selector25~0_combout\ : std_logic;
SIGNAL \next_state.RESET2~q\ : std_logic;
SIGNAL \current_state~60_combout\ : std_logic;
SIGNAL \current_state.RESET2~q\ : std_logic;
SIGNAL \Selector26~0_combout\ : std_logic;
SIGNAL \next_state.RESET3~q\ : std_logic;
SIGNAL \current_state~61_combout\ : std_logic;
SIGNAL \current_state.RESET3~q\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \next_state.FUNC_SET~q\ : std_logic;
SIGNAL \current_state~59_combout\ : std_logic;
SIGNAL \current_state.FUNC_SET~q\ : std_logic;
SIGNAL \Selector27~0_combout\ : std_logic;
SIGNAL \next_state.DISPLAY_OFF~q\ : std_logic;
SIGNAL \current_state~58_combout\ : std_logic;
SIGNAL \current_state.DISPLAY_OFF~q\ : std_logic;
SIGNAL \Selector28~0_combout\ : std_logic;
SIGNAL \next_state.DISPLAY_CLEAR~q\ : std_logic;
SIGNAL \current_state~56_combout\ : std_logic;
SIGNAL \current_state.DISPLAY_CLEAR~q\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \next_state.DISPLAY_ON~q\ : std_logic;
SIGNAL \current_state~57_combout\ : std_logic;
SIGNAL \current_state.DISPLAY_ON~q\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \next_state.MODE_SET~q\ : std_logic;
SIGNAL \current_state~54_combout\ : std_logic;
SIGNAL \current_state.MODE_SET~q\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \next_state.WRITE_CHAR2~q\ : std_logic;
SIGNAL \current_state~45_combout\ : std_logic;
SIGNAL \current_state.WRITE_CHAR2~q\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \next_state.WRITE_CHAR3~q\ : std_logic;
SIGNAL \current_state~46_combout\ : std_logic;
SIGNAL \current_state.WRITE_CHAR3~q\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \next_state.WRITE_CHAR4~q\ : std_logic;
SIGNAL \current_state~50_combout\ : std_logic;
SIGNAL \current_state.WRITE_CHAR4~q\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \next_state.WRITE_CHAR5~q\ : std_logic;
SIGNAL \current_state~51_combout\ : std_logic;
SIGNAL \current_state.WRITE_CHAR5~q\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \next_state.WRITE_CHAR6~q\ : std_logic;
SIGNAL \current_state~47_combout\ : std_logic;
SIGNAL \current_state.WRITE_CHAR6~q\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \next_state.WRITE_CHAR7~q\ : std_logic;
SIGNAL \current_state~52_combout\ : std_logic;
SIGNAL \current_state.WRITE_CHAR7~q\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \next_state.WRITE_CHAR8~q\ : std_logic;
SIGNAL \current_state~53_combout\ : std_logic;
SIGNAL \current_state.WRITE_CHAR8~q\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \next_state.WRITE_CHAR9~q\ : std_logic;
SIGNAL \current_state~48_combout\ : std_logic;
SIGNAL \current_state.WRITE_CHAR9~q\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \next_state.WRITE_CHAR10~q\ : std_logic;
SIGNAL \current_state~49_combout\ : std_logic;
SIGNAL \current_state.WRITE_CHAR10~q\ : std_logic;
SIGNAL \Selector24~0_combout\ : std_logic;
SIGNAL \next_state.RETURN_HOME~q\ : std_logic;
SIGNAL \current_state~55_combout\ : std_logic;
SIGNAL \current_state.RETURN_HOME~q\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \next_state.WRITE_CHAR1~q\ : std_logic;
SIGNAL \current_state~44_combout\ : std_logic;
SIGNAL \current_state.WRITE_CHAR1~q\ : std_logic;
SIGNAL \count_clk_10Hz[0]~8_combout\ : std_logic;
SIGNAL \count_clk_10Hz[0]~9\ : std_logic;
SIGNAL \count_clk_10Hz[1]~10_combout\ : std_logic;
SIGNAL \count_clk_10Hz[1]~11\ : std_logic;
SIGNAL \count_clk_10Hz[2]~12_combout\ : std_logic;
SIGNAL \count_clk_10Hz[2]~13\ : std_logic;
SIGNAL \count_clk_10Hz[3]~14_combout\ : std_logic;
SIGNAL \count_clk_10Hz[3]~15\ : std_logic;
SIGNAL \count_clk_10Hz[4]~16_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \count_clk_10Hz[4]~17\ : std_logic;
SIGNAL \count_clk_10Hz[5]~18_combout\ : std_logic;
SIGNAL \count_clk_10Hz[5]~19\ : std_logic;
SIGNAL \count_clk_10Hz[6]~20_combout\ : std_logic;
SIGNAL \count_clk_10Hz[6]~21\ : std_logic;
SIGNAL \count_clk_10Hz[7]~22_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \clk_10Hz~0_combout\ : std_logic;
SIGNAL \clk_10Hz~q\ : std_logic;
SIGNAL \clk_10Hz~clkctrl_outclk\ : std_logic;
SIGNAL \process_2~4_combout\ : std_logic;
SIGNAL \process_2~2_combout\ : std_logic;
SIGNAL \process_2~3_combout\ : std_logic;
SIGNAL \bcd_hr_d0~5_combout\ : std_logic;
SIGNAL \bcd_min_d1~2_combout\ : std_logic;
SIGNAL \bcd_sec_d1~3_combout\ : std_logic;
SIGNAL \bcd_tsec~3_combout\ : std_logic;
SIGNAL \bcd_tsec~1_combout\ : std_logic;
SIGNAL \bcd_tsec~0_combout\ : std_logic;
SIGNAL \bcd_tsec~2_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \bcd_sec_d0~2_combout\ : std_logic;
SIGNAL \bcd_sec_d0~3_combout\ : std_logic;
SIGNAL \bcd_sec_d0~0_combout\ : std_logic;
SIGNAL \bcd_sec_d0~1_combout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \bcd_sec_d1[0]~1_combout\ : std_logic;
SIGNAL \bcd_sec_d1~2_combout\ : std_logic;
SIGNAL \bcd_sec_d1~0_combout\ : std_logic;
SIGNAL \LessThan4~0_combout\ : std_logic;
SIGNAL \bcd_min_d0~0_combout\ : std_logic;
SIGNAL \bcd_min_d0[3]~1_combout\ : std_logic;
SIGNAL \bcd_min_d0~3_combout\ : std_logic;
SIGNAL \bcd_min_d0~4_combout\ : std_logic;
SIGNAL \bcd_min_d0~2_combout\ : std_logic;
SIGNAL \LessThan5~0_combout\ : std_logic;
SIGNAL \bcd_min_d1[3]~1_combout\ : std_logic;
SIGNAL \bcd_min_d1~0_combout\ : std_logic;
SIGNAL \bcd_min_d1~3_combout\ : std_logic;
SIGNAL \bcd_hr_d1[3]~11_combout\ : std_logic;
SIGNAL \bcd_hr_d0~4_combout\ : std_logic;
SIGNAL \LessThan6~0_combout\ : std_logic;
SIGNAL \bcd_hr_d1[3]~7_combout\ : std_logic;
SIGNAL \bcd_hr_d1[1]~8_combout\ : std_logic;
SIGNAL \process_2~1_combout\ : std_logic;
SIGNAL \bcd_hr_d0~2_combout\ : std_logic;
SIGNAL \bcd_hr_d0~3_combout\ : std_logic;
SIGNAL \bcd_hr_d1[2]~13_combout\ : std_logic;
SIGNAL \bcd_hr_d1[2]~9_combout\ : std_logic;
SIGNAL \bcd_hr_d1[3]~10_combout\ : std_logic;
SIGNAL \process_2~0_combout\ : std_logic;
SIGNAL \process_2~5_combout\ : std_logic;
SIGNAL \bcd_hr_d1[0]~12_combout\ : std_logic;
SIGNAL \bcd_hr_d1[0]~6_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Selector8~3_combout\ : std_logic;
SIGNAL \Selector8~4_combout\ : std_logic;
SIGNAL \Selector8~1_combout\ : std_logic;
SIGNAL \Selector8~2_combout\ : std_logic;
SIGNAL \Selector8~5_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Selector1~4_combout\ : std_logic;
SIGNAL \Selector7~4_combout\ : std_logic;
SIGNAL \Selector7~2_combout\ : std_logic;
SIGNAL \Selector7~3_combout\ : std_logic;
SIGNAL \Selector7~1_combout\ : std_logic;
SIGNAL \Selector7~5_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Selector6~2_combout\ : std_logic;
SIGNAL \Selector6~1_combout\ : std_logic;
SIGNAL \Selector6~3_combout\ : std_logic;
SIGNAL \Selector6~4_combout\ : std_logic;
SIGNAL \Selector6~5_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Selector5~4_combout\ : std_logic;
SIGNAL \Selector5~1_combout\ : std_logic;
SIGNAL \Selector5~2_combout\ : std_logic;
SIGNAL \Selector5~3_combout\ : std_logic;
SIGNAL \Selector5~5_combout\ : std_logic;
SIGNAL \WideOr6~0_combout\ : std_logic;
SIGNAL \WideOr6~1_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Selector3~2_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector1~2_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector1~3_combout\ : std_logic;
SIGNAL \lcd_rs~reg0_q\ : std_logic;
SIGNAL \lcd_enable~0_combout\ : std_logic;
SIGNAL \lcd_enable~reg0_q\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \hex0[0]~reg0_q\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \hex0[1]~reg0_q\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \hex0[2]~reg0_q\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \hex0[3]~reg0_q\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \hex0[4]~reg0_q\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \hex0[5]~reg0_q\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \hex0[6]~reg0_q\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \hex2[0]~reg0_q\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \hex2[1]~reg0_q\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \hex2[2]~reg0_q\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \hex2[3]~reg0_q\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \hex2[4]~reg0_q\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \hex2[5]~reg0_q\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \hex2[6]~reg0_q\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \hex3[0]~reg0_q\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \hex3[1]~reg0_q\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \hex3[2]~reg0_q\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \hex3[3]~reg0_q\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \hex3[4]~reg0_q\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \hex3[5]~reg0_q\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \hex3[6]~reg0_q\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \hex4[0]~reg0_q\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \hex4[1]~reg0_q\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \hex4[2]~reg0_q\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \hex4[3]~reg0_q\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \hex4[4]~reg0_q\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \hex4[5]~reg0_q\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \hex4[6]~reg0_q\ : std_logic;
SIGNAL \Mux34~0_combout\ : std_logic;
SIGNAL \hex5[0]~reg0_q\ : std_logic;
SIGNAL \Mux33~0_combout\ : std_logic;
SIGNAL \hex5[1]~reg0_q\ : std_logic;
SIGNAL \Mux32~0_combout\ : std_logic;
SIGNAL \hex5[2]~reg0_q\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \hex5[3]~reg0_q\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \hex5[4]~reg0_q\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \hex5[5]~reg0_q\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \hex5[6]~reg0_q\ : std_logic;
SIGNAL \Mux41~0_combout\ : std_logic;
SIGNAL \hex6[0]~reg0_q\ : std_logic;
SIGNAL \Mux40~0_combout\ : std_logic;
SIGNAL \hex6[1]~reg0feeder_combout\ : std_logic;
SIGNAL \hex6[1]~reg0_q\ : std_logic;
SIGNAL \Mux39~0_combout\ : std_logic;
SIGNAL \hex6[2]~reg0_q\ : std_logic;
SIGNAL \Mux38~0_combout\ : std_logic;
SIGNAL \hex6[3]~reg0_q\ : std_logic;
SIGNAL \Mux37~0_combout\ : std_logic;
SIGNAL \hex6[4]~reg0_q\ : std_logic;
SIGNAL \Mux36~0_combout\ : std_logic;
SIGNAL \hex6[5]~reg0_q\ : std_logic;
SIGNAL \Mux35~0_combout\ : std_logic;
SIGNAL \hex6[6]~reg0_q\ : std_logic;
SIGNAL \Mux48~0_combout\ : std_logic;
SIGNAL \hex7[0]~reg0_q\ : std_logic;
SIGNAL \Mux47~0_combout\ : std_logic;
SIGNAL \hex7[1]~reg0_q\ : std_logic;
SIGNAL \Mux46~0_combout\ : std_logic;
SIGNAL \hex7[2]~reg0_q\ : std_logic;
SIGNAL \Mux45~0_combout\ : std_logic;
SIGNAL \hex7[3]~reg0_q\ : std_logic;
SIGNAL \Mux44~0_combout\ : std_logic;
SIGNAL \hex7[4]~reg0_q\ : std_logic;
SIGNAL \Mux43~0_combout\ : std_logic;
SIGNAL \hex7[5]~reg0_q\ : std_logic;
SIGNAL \Mux42~0_combout\ : std_logic;
SIGNAL \hex7[6]~reg0_q\ : std_logic;
SIGNAL data_bus_value : std_logic_vector(7 DOWNTO 0);
SIGNAL count_clk_400Hz : std_logic_vector(19 DOWNTO 0);
SIGNAL count_clk_10Hz : std_logic_vector(7 DOWNTO 0);
SIGNAL bcd_tsec : std_logic_vector(3 DOWNTO 0);
SIGNAL bcd_sec_d1 : std_logic_vector(3 DOWNTO 0);
SIGNAL bcd_sec_d0 : std_logic_vector(3 DOWNTO 0);
SIGNAL bcd_min_d1 : std_logic_vector(3 DOWNTO 0);
SIGNAL bcd_min_d0 : std_logic_vector(3 DOWNTO 0);
SIGNAL bcd_hr_d1 : std_logic_vector(3 DOWNTO 0);
SIGNAL bcd_hr_d0 : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_lcd_enable~reg0_q\ : std_logic;
SIGNAL \ALT_INV_reset_key~input_o\ : std_logic;
SIGNAL ALT_INV_data_bus_value : std_logic_vector(5 DOWNTO 3);

BEGIN

ww_reset_key <= reset_key;
ww_clk_50Mhz <= clk_50Mhz;
lcd_blon <= ww_lcd_blon;
lcd_rs <= ww_lcd_rs;
lcd_enable <= ww_lcd_enable;
lcd_on <= ww_lcd_on;
led_reset <= ww_led_reset;
led_second <= ww_led_second;
led_counter <= ww_led_counter;
lcd_rw <= ww_lcd_rw;
data_bus <= ww_data_bus;
hex0 <= ww_hex0;
hex1 <= ww_hex1;
hex2 <= ww_hex2;
hex3 <= ww_hex3;
hex4 <= ww_hex4;
hex5 <= ww_hex5;
hex6 <= ww_hex6;
hex7 <= ww_hex7;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk_50Mhz~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_50Mhz~input_o\);

\clk_10Hz~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_10Hz~q\);

\clk_400Hz~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_400Hz~q\);
\ALT_INV_lcd_enable~reg0_q\ <= NOT \lcd_enable~reg0_q\;
\ALT_INV_reset_key~input_o\ <= NOT \reset_key~input_o\;
ALT_INV_data_bus_value(5) <= NOT data_bus_value(5);
ALT_INV_data_bus_value(4) <= NOT data_bus_value(4);
ALT_INV_data_bus_value(3) <= NOT data_bus_value(3);

-- Location: IOOBUF_X0_Y52_N16
\data_bus[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_bus_value(0),
	oe => VCC,
	devoe => ww_devoe,
	o => \data_bus[0]~output_o\);

-- Location: IOOBUF_X0_Y44_N9
\data_bus[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_bus_value(1),
	oe => VCC,
	devoe => ww_devoe,
	o => \data_bus[1]~output_o\);

-- Location: IOOBUF_X0_Y44_N2
\data_bus[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_bus_value(2),
	oe => VCC,
	devoe => ww_devoe,
	o => \data_bus[2]~output_o\);

-- Location: IOOBUF_X0_Y49_N9
\data_bus[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_data_bus_value(3),
	oe => VCC,
	devoe => ww_devoe,
	o => \data_bus[3]~output_o\);

-- Location: IOOBUF_X0_Y54_N9
\data_bus[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_data_bus_value(4),
	oe => VCC,
	devoe => ww_devoe,
	o => \data_bus[4]~output_o\);

-- Location: IOOBUF_X0_Y55_N23
\data_bus[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_data_bus_value(5),
	oe => VCC,
	devoe => ww_devoe,
	o => \data_bus[5]~output_o\);

-- Location: IOOBUF_X0_Y51_N16
\data_bus[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_bus[6]~output_o\);

-- Location: IOOBUF_X0_Y47_N2
\data_bus[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_bus_value(7),
	oe => VCC,
	devoe => ww_devoe,
	o => \data_bus[7]~output_o\);

-- Location: IOOBUF_X0_Y47_N23
\lcd_blon~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \lcd_blon~output_o\);

-- Location: IOOBUF_X0_Y44_N16
\lcd_rs~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lcd_rs~reg0_q\,
	devoe => ww_devoe,
	o => \lcd_rs~output_o\);

-- Location: IOOBUF_X0_Y52_N2
\lcd_enable~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_lcd_enable~reg0_q\,
	devoe => ww_devoe,
	o => \lcd_enable~output_o\);

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

-- Location: IOOBUF_X107_Y73_N9
\led_reset~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_reset_key~input_o\,
	devoe => ww_devoe,
	o => \led_reset~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\led_second~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => bcd_sec_d0(0),
	devoe => ww_devoe,
	o => \led_second~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\led_counter[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => bcd_sec_d0(0),
	devoe => ww_devoe,
	o => \led_counter[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\led_counter[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => bcd_sec_d0(1),
	devoe => ww_devoe,
	o => \led_counter[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\led_counter[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => bcd_sec_d0(2),
	devoe => ww_devoe,
	o => \led_counter[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\led_counter[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => bcd_sec_d0(3),
	devoe => ww_devoe,
	o => \led_counter[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\led_counter[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => bcd_sec_d1(0),
	devoe => ww_devoe,
	o => \led_counter[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\led_counter[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => bcd_sec_d1(1),
	devoe => ww_devoe,
	o => \led_counter[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\led_counter[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => bcd_sec_d1(2),
	devoe => ww_devoe,
	o => \led_counter[6]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\led_counter[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led_counter[7]~output_o\);

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

-- Location: IOOBUF_X69_Y73_N23
\hex0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex0[0]~reg0_q\,
	devoe => ww_devoe,
	o => \hex0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\hex0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex0[1]~reg0_q\,
	devoe => ww_devoe,
	o => \hex0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\hex0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex0[2]~reg0_q\,
	devoe => ww_devoe,
	o => \hex0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\hex0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex0[3]~reg0_q\,
	devoe => ww_devoe,
	o => \hex0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\hex0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex0[4]~reg0_q\,
	devoe => ww_devoe,
	o => \hex0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\hex0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex0[5]~reg0_q\,
	devoe => ww_devoe,
	o => \hex0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\hex0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex0[6]~reg0_q\,
	devoe => ww_devoe,
	o => \hex0[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\hex1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \hex1[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\hex1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \hex1[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\hex1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \hex1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\hex1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \hex1[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\hex1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \hex1[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\hex1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \hex1[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\hex1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \hex1[6]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\hex2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex2[0]~reg0_q\,
	devoe => ww_devoe,
	o => \hex2[0]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\hex2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex2[1]~reg0_q\,
	devoe => ww_devoe,
	o => \hex2[1]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\hex2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex2[2]~reg0_q\,
	devoe => ww_devoe,
	o => \hex2[2]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\hex2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex2[3]~reg0_q\,
	devoe => ww_devoe,
	o => \hex2[3]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\hex2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex2[4]~reg0_q\,
	devoe => ww_devoe,
	o => \hex2[4]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\hex2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex2[5]~reg0_q\,
	devoe => ww_devoe,
	o => \hex2[5]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\hex2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex2[6]~reg0_q\,
	devoe => ww_devoe,
	o => \hex2[6]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\hex3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex3[0]~reg0_q\,
	devoe => ww_devoe,
	o => \hex3[0]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\hex3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex3[1]~reg0_q\,
	devoe => ww_devoe,
	o => \hex3[1]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\hex3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex3[2]~reg0_q\,
	devoe => ww_devoe,
	o => \hex3[2]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\hex3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex3[3]~reg0_q\,
	devoe => ww_devoe,
	o => \hex3[3]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\hex3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex3[4]~reg0_q\,
	devoe => ww_devoe,
	o => \hex3[4]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\hex3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex3[5]~reg0_q\,
	devoe => ww_devoe,
	o => \hex3[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\hex3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex3[6]~reg0_q\,
	devoe => ww_devoe,
	o => \hex3[6]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\hex4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex4[0]~reg0_q\,
	devoe => ww_devoe,
	o => \hex4[0]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\hex4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex4[1]~reg0_q\,
	devoe => ww_devoe,
	o => \hex4[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\hex4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex4[2]~reg0_q\,
	devoe => ww_devoe,
	o => \hex4[2]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\hex4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex4[3]~reg0_q\,
	devoe => ww_devoe,
	o => \hex4[3]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\hex4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex4[4]~reg0_q\,
	devoe => ww_devoe,
	o => \hex4[4]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\hex4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex4[5]~reg0_q\,
	devoe => ww_devoe,
	o => \hex4[5]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\hex4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex4[6]~reg0_q\,
	devoe => ww_devoe,
	o => \hex4[6]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\hex5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex5[0]~reg0_q\,
	devoe => ww_devoe,
	o => \hex5[0]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\hex5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex5[1]~reg0_q\,
	devoe => ww_devoe,
	o => \hex5[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\hex5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex5[2]~reg0_q\,
	devoe => ww_devoe,
	o => \hex5[2]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\hex5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex5[3]~reg0_q\,
	devoe => ww_devoe,
	o => \hex5[3]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\hex5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex5[4]~reg0_q\,
	devoe => ww_devoe,
	o => \hex5[4]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\hex5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex5[5]~reg0_q\,
	devoe => ww_devoe,
	o => \hex5[5]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\hex5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex5[6]~reg0_q\,
	devoe => ww_devoe,
	o => \hex5[6]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\hex6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex6[0]~reg0_q\,
	devoe => ww_devoe,
	o => \hex6[0]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\hex6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex6[1]~reg0_q\,
	devoe => ww_devoe,
	o => \hex6[1]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\hex6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex6[2]~reg0_q\,
	devoe => ww_devoe,
	o => \hex6[2]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\hex6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex6[3]~reg0_q\,
	devoe => ww_devoe,
	o => \hex6[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\hex6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex6[4]~reg0_q\,
	devoe => ww_devoe,
	o => \hex6[4]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\hex6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex6[5]~reg0_q\,
	devoe => ww_devoe,
	o => \hex6[5]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\hex6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex6[6]~reg0_q\,
	devoe => ww_devoe,
	o => \hex6[6]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\hex7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7[0]~reg0_q\,
	devoe => ww_devoe,
	o => \hex7[0]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\hex7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7[1]~reg0_q\,
	devoe => ww_devoe,
	o => \hex7[1]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\hex7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7[2]~reg0_q\,
	devoe => ww_devoe,
	o => \hex7[2]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\hex7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7[3]~reg0_q\,
	devoe => ww_devoe,
	o => \hex7[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\hex7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7[4]~reg0_q\,
	devoe => ww_devoe,
	o => \hex7[4]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\hex7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7[5]~reg0_q\,
	devoe => ww_devoe,
	o => \hex7[5]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\hex7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7[6]~reg0_q\,
	devoe => ww_devoe,
	o => \hex7[6]~output_o\);

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

-- Location: LCCOMB_X113_Y38_N12
\count_clk_400Hz[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_clk_400Hz[0]~20_combout\ = count_clk_400Hz(0) $ (VCC)
-- \count_clk_400Hz[0]~21\ = CARRY(count_clk_400Hz(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_clk_400Hz(0),
	datad => VCC,
	combout => \count_clk_400Hz[0]~20_combout\,
	cout => \count_clk_400Hz[0]~21\);

-- Location: IOIBUF_X115_Y40_N8
\reset_key~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_key,
	o => \reset_key~input_o\);

-- Location: LCCOMB_X113_Y37_N24
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!count_clk_400Hz(15)) # (!count_clk_400Hz(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => count_clk_400Hz(14),
	datad => count_clk_400Hz(15),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X113_Y38_N6
\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (!count_clk_400Hz(7) & (!count_clk_400Hz(6) & (!count_clk_400Hz(9) & !count_clk_400Hz(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_clk_400Hz(7),
	datab => count_clk_400Hz(6),
	datac => count_clk_400Hz(9),
	datad => count_clk_400Hz(8),
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X113_Y38_N4
\LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = ((!count_clk_400Hz(3) & (!count_clk_400Hz(2) & !count_clk_400Hz(4)))) # (!count_clk_400Hz(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_clk_400Hz(5),
	datab => count_clk_400Hz(3),
	datac => count_clk_400Hz(2),
	datad => count_clk_400Hz(4),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X113_Y37_N26
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (((!count_clk_400Hz(11) & !count_clk_400Hz(10))) # (!count_clk_400Hz(12))) # (!count_clk_400Hz(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_clk_400Hz(13),
	datab => count_clk_400Hz(11),
	datac => count_clk_400Hz(12),
	datad => count_clk_400Hz(10),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X113_Y38_N0
\LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (\LessThan0~1_combout\) # ((\LessThan0~3_combout\ & (\LessThan0~2_combout\ & !count_clk_400Hz(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~3_combout\,
	datab => \LessThan0~2_combout\,
	datac => count_clk_400Hz(11),
	datad => \LessThan0~1_combout\,
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X113_Y38_N10
\count_clk_400Hz[10]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_clk_400Hz[10]~50_combout\ = (((!\LessThan0~0_combout\ & !\LessThan0~4_combout\)) # (!\reset_key~input_o\)) # (!\LessThan0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~5_combout\,
	datab => \reset_key~input_o\,
	datac => \LessThan0~0_combout\,
	datad => \LessThan0~4_combout\,
	combout => \count_clk_400Hz[10]~50_combout\);

-- Location: FF_X113_Y38_N13
\count_clk_400Hz[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \count_clk_400Hz[0]~20_combout\,
	sclr => \count_clk_400Hz[10]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_clk_400Hz(0));

-- Location: LCCOMB_X113_Y38_N14
\count_clk_400Hz[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_clk_400Hz[1]~22_combout\ = (count_clk_400Hz(1) & (!\count_clk_400Hz[0]~21\)) # (!count_clk_400Hz(1) & ((\count_clk_400Hz[0]~21\) # (GND)))
-- \count_clk_400Hz[1]~23\ = CARRY((!\count_clk_400Hz[0]~21\) # (!count_clk_400Hz(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_clk_400Hz(1),
	datad => VCC,
	cin => \count_clk_400Hz[0]~21\,
	combout => \count_clk_400Hz[1]~22_combout\,
	cout => \count_clk_400Hz[1]~23\);

-- Location: FF_X113_Y38_N15
\count_clk_400Hz[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \count_clk_400Hz[1]~22_combout\,
	sclr => \count_clk_400Hz[10]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_clk_400Hz(1));

-- Location: LCCOMB_X113_Y38_N16
\count_clk_400Hz[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_clk_400Hz[2]~24_combout\ = (count_clk_400Hz(2) & (\count_clk_400Hz[1]~23\ $ (GND))) # (!count_clk_400Hz(2) & (!\count_clk_400Hz[1]~23\ & VCC))
-- \count_clk_400Hz[2]~25\ = CARRY((count_clk_400Hz(2) & !\count_clk_400Hz[1]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_clk_400Hz(2),
	datad => VCC,
	cin => \count_clk_400Hz[1]~23\,
	combout => \count_clk_400Hz[2]~24_combout\,
	cout => \count_clk_400Hz[2]~25\);

-- Location: FF_X113_Y38_N17
\count_clk_400Hz[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \count_clk_400Hz[2]~24_combout\,
	sclr => \count_clk_400Hz[10]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_clk_400Hz(2));

-- Location: LCCOMB_X113_Y38_N18
\count_clk_400Hz[3]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_clk_400Hz[3]~26_combout\ = (count_clk_400Hz(3) & (!\count_clk_400Hz[2]~25\)) # (!count_clk_400Hz(3) & ((\count_clk_400Hz[2]~25\) # (GND)))
-- \count_clk_400Hz[3]~27\ = CARRY((!\count_clk_400Hz[2]~25\) # (!count_clk_400Hz(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_clk_400Hz(3),
	datad => VCC,
	cin => \count_clk_400Hz[2]~25\,
	combout => \count_clk_400Hz[3]~26_combout\,
	cout => \count_clk_400Hz[3]~27\);

-- Location: FF_X113_Y38_N19
\count_clk_400Hz[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \count_clk_400Hz[3]~26_combout\,
	sclr => \count_clk_400Hz[10]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_clk_400Hz(3));

-- Location: LCCOMB_X113_Y38_N20
\count_clk_400Hz[4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_clk_400Hz[4]~28_combout\ = (count_clk_400Hz(4) & (\count_clk_400Hz[3]~27\ $ (GND))) # (!count_clk_400Hz(4) & (!\count_clk_400Hz[3]~27\ & VCC))
-- \count_clk_400Hz[4]~29\ = CARRY((count_clk_400Hz(4) & !\count_clk_400Hz[3]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_clk_400Hz(4),
	datad => VCC,
	cin => \count_clk_400Hz[3]~27\,
	combout => \count_clk_400Hz[4]~28_combout\,
	cout => \count_clk_400Hz[4]~29\);

-- Location: FF_X113_Y38_N21
\count_clk_400Hz[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \count_clk_400Hz[4]~28_combout\,
	sclr => \count_clk_400Hz[10]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_clk_400Hz(4));

-- Location: LCCOMB_X113_Y38_N22
\count_clk_400Hz[5]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_clk_400Hz[5]~30_combout\ = (count_clk_400Hz(5) & (!\count_clk_400Hz[4]~29\)) # (!count_clk_400Hz(5) & ((\count_clk_400Hz[4]~29\) # (GND)))
-- \count_clk_400Hz[5]~31\ = CARRY((!\count_clk_400Hz[4]~29\) # (!count_clk_400Hz(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_clk_400Hz(5),
	datad => VCC,
	cin => \count_clk_400Hz[4]~29\,
	combout => \count_clk_400Hz[5]~30_combout\,
	cout => \count_clk_400Hz[5]~31\);

-- Location: FF_X113_Y38_N23
\count_clk_400Hz[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \count_clk_400Hz[5]~30_combout\,
	sclr => \count_clk_400Hz[10]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_clk_400Hz(5));

-- Location: LCCOMB_X113_Y38_N24
\count_clk_400Hz[6]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_clk_400Hz[6]~32_combout\ = (count_clk_400Hz(6) & (\count_clk_400Hz[5]~31\ $ (GND))) # (!count_clk_400Hz(6) & (!\count_clk_400Hz[5]~31\ & VCC))
-- \count_clk_400Hz[6]~33\ = CARRY((count_clk_400Hz(6) & !\count_clk_400Hz[5]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_clk_400Hz(6),
	datad => VCC,
	cin => \count_clk_400Hz[5]~31\,
	combout => \count_clk_400Hz[6]~32_combout\,
	cout => \count_clk_400Hz[6]~33\);

-- Location: FF_X113_Y38_N25
\count_clk_400Hz[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \count_clk_400Hz[6]~32_combout\,
	sclr => \count_clk_400Hz[10]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_clk_400Hz(6));

-- Location: LCCOMB_X113_Y38_N26
\count_clk_400Hz[7]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_clk_400Hz[7]~34_combout\ = (count_clk_400Hz(7) & (!\count_clk_400Hz[6]~33\)) # (!count_clk_400Hz(7) & ((\count_clk_400Hz[6]~33\) # (GND)))
-- \count_clk_400Hz[7]~35\ = CARRY((!\count_clk_400Hz[6]~33\) # (!count_clk_400Hz(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_clk_400Hz(7),
	datad => VCC,
	cin => \count_clk_400Hz[6]~33\,
	combout => \count_clk_400Hz[7]~34_combout\,
	cout => \count_clk_400Hz[7]~35\);

-- Location: FF_X113_Y38_N27
\count_clk_400Hz[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \count_clk_400Hz[7]~34_combout\,
	sclr => \count_clk_400Hz[10]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_clk_400Hz(7));

-- Location: LCCOMB_X113_Y38_N28
\count_clk_400Hz[8]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_clk_400Hz[8]~36_combout\ = (count_clk_400Hz(8) & (\count_clk_400Hz[7]~35\ $ (GND))) # (!count_clk_400Hz(8) & (!\count_clk_400Hz[7]~35\ & VCC))
-- \count_clk_400Hz[8]~37\ = CARRY((count_clk_400Hz(8) & !\count_clk_400Hz[7]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_clk_400Hz(8),
	datad => VCC,
	cin => \count_clk_400Hz[7]~35\,
	combout => \count_clk_400Hz[8]~36_combout\,
	cout => \count_clk_400Hz[8]~37\);

-- Location: FF_X113_Y38_N29
\count_clk_400Hz[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \count_clk_400Hz[8]~36_combout\,
	sclr => \count_clk_400Hz[10]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_clk_400Hz(8));

-- Location: LCCOMB_X113_Y38_N30
\count_clk_400Hz[9]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_clk_400Hz[9]~38_combout\ = (count_clk_400Hz(9) & (!\count_clk_400Hz[8]~37\)) # (!count_clk_400Hz(9) & ((\count_clk_400Hz[8]~37\) # (GND)))
-- \count_clk_400Hz[9]~39\ = CARRY((!\count_clk_400Hz[8]~37\) # (!count_clk_400Hz(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_clk_400Hz(9),
	datad => VCC,
	cin => \count_clk_400Hz[8]~37\,
	combout => \count_clk_400Hz[9]~38_combout\,
	cout => \count_clk_400Hz[9]~39\);

-- Location: FF_X113_Y38_N31
\count_clk_400Hz[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \count_clk_400Hz[9]~38_combout\,
	sclr => \count_clk_400Hz[10]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_clk_400Hz(9));

-- Location: LCCOMB_X113_Y37_N0
\count_clk_400Hz[10]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_clk_400Hz[10]~40_combout\ = (count_clk_400Hz(10) & (\count_clk_400Hz[9]~39\ $ (GND))) # (!count_clk_400Hz(10) & (!\count_clk_400Hz[9]~39\ & VCC))
-- \count_clk_400Hz[10]~41\ = CARRY((count_clk_400Hz(10) & !\count_clk_400Hz[9]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_clk_400Hz(10),
	datad => VCC,
	cin => \count_clk_400Hz[9]~39\,
	combout => \count_clk_400Hz[10]~40_combout\,
	cout => \count_clk_400Hz[10]~41\);

-- Location: FF_X113_Y37_N1
\count_clk_400Hz[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \count_clk_400Hz[10]~40_combout\,
	sclr => \count_clk_400Hz[10]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_clk_400Hz(10));

-- Location: LCCOMB_X113_Y37_N2
\count_clk_400Hz[11]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_clk_400Hz[11]~42_combout\ = (count_clk_400Hz(11) & (!\count_clk_400Hz[10]~41\)) # (!count_clk_400Hz(11) & ((\count_clk_400Hz[10]~41\) # (GND)))
-- \count_clk_400Hz[11]~43\ = CARRY((!\count_clk_400Hz[10]~41\) # (!count_clk_400Hz(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_clk_400Hz(11),
	datad => VCC,
	cin => \count_clk_400Hz[10]~41\,
	combout => \count_clk_400Hz[11]~42_combout\,
	cout => \count_clk_400Hz[11]~43\);

-- Location: FF_X113_Y37_N3
\count_clk_400Hz[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \count_clk_400Hz[11]~42_combout\,
	sclr => \count_clk_400Hz[10]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_clk_400Hz(11));

-- Location: LCCOMB_X113_Y37_N4
\count_clk_400Hz[12]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_clk_400Hz[12]~44_combout\ = (count_clk_400Hz(12) & (\count_clk_400Hz[11]~43\ $ (GND))) # (!count_clk_400Hz(12) & (!\count_clk_400Hz[11]~43\ & VCC))
-- \count_clk_400Hz[12]~45\ = CARRY((count_clk_400Hz(12) & !\count_clk_400Hz[11]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_clk_400Hz(12),
	datad => VCC,
	cin => \count_clk_400Hz[11]~43\,
	combout => \count_clk_400Hz[12]~44_combout\,
	cout => \count_clk_400Hz[12]~45\);

-- Location: FF_X113_Y37_N5
\count_clk_400Hz[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \count_clk_400Hz[12]~44_combout\,
	sclr => \count_clk_400Hz[10]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_clk_400Hz(12));

-- Location: LCCOMB_X113_Y37_N6
\count_clk_400Hz[13]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_clk_400Hz[13]~46_combout\ = (count_clk_400Hz(13) & (!\count_clk_400Hz[12]~45\)) # (!count_clk_400Hz(13) & ((\count_clk_400Hz[12]~45\) # (GND)))
-- \count_clk_400Hz[13]~47\ = CARRY((!\count_clk_400Hz[12]~45\) # (!count_clk_400Hz(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_clk_400Hz(13),
	datad => VCC,
	cin => \count_clk_400Hz[12]~45\,
	combout => \count_clk_400Hz[13]~46_combout\,
	cout => \count_clk_400Hz[13]~47\);

-- Location: FF_X113_Y37_N7
\count_clk_400Hz[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \count_clk_400Hz[13]~46_combout\,
	sclr => \count_clk_400Hz[10]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_clk_400Hz(13));

-- Location: LCCOMB_X113_Y37_N8
\count_clk_400Hz[14]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_clk_400Hz[14]~48_combout\ = (count_clk_400Hz(14) & (\count_clk_400Hz[13]~47\ $ (GND))) # (!count_clk_400Hz(14) & (!\count_clk_400Hz[13]~47\ & VCC))
-- \count_clk_400Hz[14]~49\ = CARRY((count_clk_400Hz(14) & !\count_clk_400Hz[13]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_clk_400Hz(14),
	datad => VCC,
	cin => \count_clk_400Hz[13]~47\,
	combout => \count_clk_400Hz[14]~48_combout\,
	cout => \count_clk_400Hz[14]~49\);

-- Location: FF_X113_Y37_N9
\count_clk_400Hz[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \count_clk_400Hz[14]~48_combout\,
	sclr => \count_clk_400Hz[10]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_clk_400Hz(14));

-- Location: LCCOMB_X113_Y37_N10
\count_clk_400Hz[15]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_clk_400Hz[15]~51_combout\ = (count_clk_400Hz(15) & (!\count_clk_400Hz[14]~49\)) # (!count_clk_400Hz(15) & ((\count_clk_400Hz[14]~49\) # (GND)))
-- \count_clk_400Hz[15]~52\ = CARRY((!\count_clk_400Hz[14]~49\) # (!count_clk_400Hz(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_clk_400Hz(15),
	datad => VCC,
	cin => \count_clk_400Hz[14]~49\,
	combout => \count_clk_400Hz[15]~51_combout\,
	cout => \count_clk_400Hz[15]~52\);

-- Location: FF_X113_Y37_N11
\count_clk_400Hz[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \count_clk_400Hz[15]~51_combout\,
	sclr => \count_clk_400Hz[10]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_clk_400Hz(15));

-- Location: LCCOMB_X113_Y37_N12
\count_clk_400Hz[16]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_clk_400Hz[16]~53_combout\ = (count_clk_400Hz(16) & (\count_clk_400Hz[15]~52\ $ (GND))) # (!count_clk_400Hz(16) & (!\count_clk_400Hz[15]~52\ & VCC))
-- \count_clk_400Hz[16]~54\ = CARRY((count_clk_400Hz(16) & !\count_clk_400Hz[15]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_clk_400Hz(16),
	datad => VCC,
	cin => \count_clk_400Hz[15]~52\,
	combout => \count_clk_400Hz[16]~53_combout\,
	cout => \count_clk_400Hz[16]~54\);

-- Location: FF_X113_Y37_N13
\count_clk_400Hz[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \count_clk_400Hz[16]~53_combout\,
	sclr => \count_clk_400Hz[10]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_clk_400Hz(16));

-- Location: LCCOMB_X113_Y37_N14
\count_clk_400Hz[17]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_clk_400Hz[17]~55_combout\ = (count_clk_400Hz(17) & (!\count_clk_400Hz[16]~54\)) # (!count_clk_400Hz(17) & ((\count_clk_400Hz[16]~54\) # (GND)))
-- \count_clk_400Hz[17]~56\ = CARRY((!\count_clk_400Hz[16]~54\) # (!count_clk_400Hz(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_clk_400Hz(17),
	datad => VCC,
	cin => \count_clk_400Hz[16]~54\,
	combout => \count_clk_400Hz[17]~55_combout\,
	cout => \count_clk_400Hz[17]~56\);

-- Location: FF_X113_Y37_N15
\count_clk_400Hz[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \count_clk_400Hz[17]~55_combout\,
	sclr => \count_clk_400Hz[10]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_clk_400Hz(17));

-- Location: LCCOMB_X113_Y37_N16
\count_clk_400Hz[18]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_clk_400Hz[18]~57_combout\ = (count_clk_400Hz(18) & (\count_clk_400Hz[17]~56\ $ (GND))) # (!count_clk_400Hz(18) & (!\count_clk_400Hz[17]~56\ & VCC))
-- \count_clk_400Hz[18]~58\ = CARRY((count_clk_400Hz(18) & !\count_clk_400Hz[17]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_clk_400Hz(18),
	datad => VCC,
	cin => \count_clk_400Hz[17]~56\,
	combout => \count_clk_400Hz[18]~57_combout\,
	cout => \count_clk_400Hz[18]~58\);

-- Location: FF_X113_Y37_N17
\count_clk_400Hz[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \count_clk_400Hz[18]~57_combout\,
	sclr => \count_clk_400Hz[10]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_clk_400Hz(18));

-- Location: LCCOMB_X113_Y37_N18
\count_clk_400Hz[19]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_clk_400Hz[19]~59_combout\ = \count_clk_400Hz[18]~58\ $ (count_clk_400Hz(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => count_clk_400Hz(19),
	cin => \count_clk_400Hz[18]~58\,
	combout => \count_clk_400Hz[19]~59_combout\);

-- Location: FF_X113_Y37_N19
\count_clk_400Hz[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \count_clk_400Hz[19]~59_combout\,
	sclr => \count_clk_400Hz[10]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_clk_400Hz(19));

-- Location: LCCOMB_X113_Y37_N28
\LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (!count_clk_400Hz(16) & (!count_clk_400Hz(18) & (!count_clk_400Hz(17) & !count_clk_400Hz(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_clk_400Hz(16),
	datab => count_clk_400Hz(18),
	datac => count_clk_400Hz(17),
	datad => count_clk_400Hz(19),
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X114_Y37_N2
\clk_400Hz~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_400Hz~0_combout\ = \clk_400Hz~q\ $ ((((!\LessThan0~0_combout\ & !\LessThan0~4_combout\)) # (!\LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~5_combout\,
	datab => \LessThan0~0_combout\,
	datac => \clk_400Hz~q\,
	datad => \LessThan0~4_combout\,
	combout => \clk_400Hz~0_combout\);

-- Location: FF_X114_Y37_N3
clk_400Hz : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50Mhz~inputclkctrl_outclk\,
	d => \clk_400Hz~0_combout\,
	sclr => \ALT_INV_reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_400Hz~q\);

-- Location: CLKCTRL_G6
\clk_400Hz~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_400Hz~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_400Hz~clkctrl_outclk\);

-- Location: LCCOMB_X75_Y31_N4
\lcd_rs~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_rs~0_combout\ = (!\current_state.TOGGLE_E~q\ & !\current_state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.TOGGLE_E~q\,
	datac => \current_state.HOLD~q\,
	combout => \lcd_rs~0_combout\);

-- Location: FF_X75_Y31_N3
\current_state.TOGGLE_E\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_400Hz~clkctrl_outclk\,
	asdata => \lcd_rs~0_combout\,
	clrn => \reset_key~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.TOGGLE_E~q\);

-- Location: FF_X75_Y31_N17
\current_state.HOLD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_400Hz~clkctrl_outclk\,
	asdata => \current_state.TOGGLE_E~q\,
	clrn => \reset_key~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.HOLD~q\);

-- Location: LCCOMB_X72_Y31_N28
\current_state.RESET1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_state.RESET1~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \current_state.RESET1~feeder_combout\);

-- Location: FF_X72_Y31_N29
\current_state.RESET1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_400Hz~clkctrl_outclk\,
	d => \current_state.RESET1~feeder_combout\,
	clrn => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.RESET1~q\);

-- Location: LCCOMB_X72_Y31_N8
\Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector25~0_combout\ = (\current_state.RESET1~q\ & ((\next_state.RESET2~q\) # ((!\current_state.HOLD~q\ & !\current_state.TOGGLE_E~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.HOLD~q\,
	datab => \current_state.RESET1~q\,
	datac => \next_state.RESET2~q\,
	datad => \current_state.TOGGLE_E~q\,
	combout => \Selector25~0_combout\);

-- Location: FF_X72_Y31_N9
\next_state.RESET2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_400Hz~clkctrl_outclk\,
	d => \Selector25~0_combout\,
	clrn => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \next_state.RESET2~q\);

-- Location: LCCOMB_X74_Y31_N30
\current_state~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_state~60_combout\ = (!\next_state.RESET2~q\ & \current_state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \next_state.RESET2~q\,
	datad => \current_state.HOLD~q\,
	combout => \current_state~60_combout\);

-- Location: FF_X74_Y31_N31
\current_state.RESET2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_400Hz~clkctrl_outclk\,
	d => \current_state~60_combout\,
	clrn => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.RESET2~q\);

-- Location: LCCOMB_X74_Y31_N18
\Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector26~0_combout\ = (\current_state.RESET2~q\) # ((\next_state.RESET3~q\ & ((\current_state.HOLD~q\) # (\current_state.TOGGLE_E~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.RESET2~q\,
	datab => \current_state.HOLD~q\,
	datac => \next_state.RESET3~q\,
	datad => \current_state.TOGGLE_E~q\,
	combout => \Selector26~0_combout\);

-- Location: FF_X74_Y31_N19
\next_state.RESET3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_400Hz~clkctrl_outclk\,
	d => \Selector26~0_combout\,
	clrn => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \next_state.RESET3~q\);

-- Location: LCCOMB_X74_Y31_N16
\current_state~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_state~61_combout\ = (\current_state.HOLD~q\ & \next_state.RESET3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.HOLD~q\,
	datad => \next_state.RESET3~q\,
	combout => \current_state~61_combout\);

-- Location: FF_X74_Y31_N17
\current_state.RESET3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_400Hz~clkctrl_outclk\,
	d => \current_state~61_combout\,
	clrn => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.RESET3~q\);

-- Location: LCCOMB_X74_Y31_N24
\Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\current_state.RESET3~q\) # ((\next_state.FUNC_SET~q\ & ((\current_state.TOGGLE_E~q\) # (\current_state.HOLD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.TOGGLE_E~q\,
	datab => \current_state.RESET3~q\,
	datac => \next_state.FUNC_SET~q\,
	datad => \current_state.HOLD~q\,
	combout => \Selector11~0_combout\);

-- Location: FF_X74_Y31_N25
\next_state.FUNC_SET\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_400Hz~clkctrl_outclk\,
	d => \Selector11~0_combout\,
	clrn => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \next_state.FUNC_SET~q\);

-- Location: LCCOMB_X74_Y31_N12
\current_state~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_state~59_combout\ = (\current_state.HOLD~q\ & \next_state.FUNC_SET~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.HOLD~q\,
	datad => \next_state.FUNC_SET~q\,
	combout => \current_state~59_combout\);

-- Location: FF_X74_Y31_N13
\current_state.FUNC_SET\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_400Hz~clkctrl_outclk\,
	d => \current_state~59_combout\,
	clrn => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.FUNC_SET~q\);

-- Location: LCCOMB_X72_Y31_N10
\Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector27~0_combout\ = (\current_state.FUNC_SET~q\) # ((\next_state.DISPLAY_OFF~q\ & ((\current_state.HOLD~q\) # (\current_state.TOGGLE_E~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.HOLD~q\,
	datab => \current_state.FUNC_SET~q\,
	datac => \next_state.DISPLAY_OFF~q\,
	datad => \current_state.TOGGLE_E~q\,
	combout => \Selector27~0_combout\);

-- Location: FF_X72_Y31_N11
\next_state.DISPLAY_OFF\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_400Hz~clkctrl_outclk\,
	d => \Selector27~0_combout\,
	clrn => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \next_state.DISPLAY_OFF~q\);

-- Location: LCCOMB_X72_Y31_N2
\current_state~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_state~58_combout\ = (\next_state.DISPLAY_OFF~q\ & \current_state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_state.DISPLAY_OFF~q\,
	datad => \current_state.HOLD~q\,
	combout => \current_state~58_combout\);

-- Location: FF_X72_Y31_N3
\current_state.DISPLAY_OFF\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_400Hz~clkctrl_outclk\,
	d => \current_state~58_combout\,
	clrn => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.DISPLAY_OFF~q\);

-- Location: LCCOMB_X76_Y31_N20
\Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector28~0_combout\ = (\current_state.DISPLAY_OFF~q\) # ((\next_state.DISPLAY_CLEAR~q\ & ((\current_state.TOGGLE_E~q\) # (\current_state.HOLD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.TOGGLE_E~q\,
	datab => \current_state.DISPLAY_OFF~q\,
	datac => \next_state.DISPLAY_CLEAR~q\,
	datad => \current_state.HOLD~q\,
	combout => \Selector28~0_combout\);

-- Location: FF_X76_Y31_N21
\next_state.DISPLAY_CLEAR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_400Hz~clkctrl_outclk\,
	d => \Selector28~0_combout\,
	clrn => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \next_state.DISPLAY_CLEAR~q\);

-- Location: LCCOMB_X76_Y31_N18
\current_state~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_state~56_combout\ = (\next_state.DISPLAY_CLEAR~q\ & \current_state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \next_state.DISPLAY_CLEAR~q\,
	datac => \current_state.HOLD~q\,
	combout => \current_state~56_combout\);

-- Location: FF_X76_Y31_N19
\current_state.DISPLAY_CLEAR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_400Hz~clkctrl_outclk\,
	d => \current_state~56_combout\,
	clrn => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.DISPLAY_CLEAR~q\);

-- Location: LCCOMB_X76_Y31_N22
\Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\current_state.DISPLAY_CLEAR~q\) # ((\next_state.DISPLAY_ON~q\ & ((\current_state.TOGGLE_E~q\) # (\current_state.HOLD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.TOGGLE_E~q\,
	datab => \current_state.HOLD~q\,
	datac => \next_state.DISPLAY_ON~q\,
	datad => \current_state.DISPLAY_CLEAR~q\,
	combout => \Selector12~0_combout\);

-- Location: FF_X76_Y31_N23
\next_state.DISPLAY_ON\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_400Hz~clkctrl_outclk\,
	d => \Selector12~0_combout\,
	clrn => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \next_state.DISPLAY_ON~q\);

-- Location: LCCOMB_X76_Y31_N4
\current_state~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_state~57_combout\ = (\current_state.HOLD~q\ & \next_state.DISPLAY_ON~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.HOLD~q\,
	datac => \next_state.DISPLAY_ON~q\,
	combout => \current_state~57_combout\);

-- Location: FF_X76_Y31_N5
\current_state.DISPLAY_ON\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_400Hz~clkctrl_outclk\,
	d => \current_state~57_combout\,
	clrn => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.DISPLAY_ON~q\);

-- Location: LCCOMB_X76_Y31_N6
\Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (\current_state.DISPLAY_ON~q\) # ((\next_state.MODE_SET~q\ & ((\current_state.TOGGLE_E~q\) # (\current_state.HOLD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.TOGGLE_E~q\,
	datab => \current_state.DISPLAY_ON~q\,
	datac => \next_state.MODE_SET~q\,
	datad => \current_state.HOLD~q\,
	combout => \Selector13~0_combout\);

-- Location: FF_X76_Y31_N7
\next_state.MODE_SET\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_400Hz~clkctrl_outclk\,
	d => \Selector13~0_combout\,
	clrn => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \next_state.MODE_SET~q\);

-- Location: LCCOMB_X76_Y31_N26
\current_state~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_state~54_combout\ = (\next_state.MODE_SET~q\ & \current_state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_state.MODE_SET~q\,
	datac => \current_state.HOLD~q\,
	combout => \current_state~54_combout\);

-- Location: FF_X76_Y31_N27
\current_state.MODE_SET\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_400Hz~clkctrl_outclk\,
	d => \current_state~54_combout\,
	clrn => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.MODE_SET~q\);

-- Location: LCCOMB_X72_Y31_N26
\Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (\current_state.WRITE_CHAR1~q\) # ((\next_state.WRITE_CHAR2~q\ & ((\current_state.HOLD~q\) # (\current_state.TOGGLE_E~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.HOLD~q\,
	datab => \current_state.WRITE_CHAR1~q\,
	datac => \next_state.WRITE_CHAR2~q\,
	datad => \current_state.TOGGLE_E~q\,
	combout => \Selector15~0_combout\);

-- Location: FF_X72_Y31_N27
\next_state.WRITE_CHAR2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_400Hz~clkctrl_outclk\,
	d => \Selector15~0_combout\,
	clrn => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \next_state.WRITE_CHAR2~q\);

-- Location: LCCOMB_X75_Y31_N8
\current_state~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_state~45_combout\ = (\current_state.HOLD~q\ & \next_state.WRITE_CHAR2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_state.HOLD~q\,
	datad => \next_state.WRITE_CHAR2~q\,
	combout => \current_state~45_combout\);

-- Location: FF_X75_Y31_N9
\current_state.WRITE_CHAR2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_400Hz~clkctrl_outclk\,
	d => \current_state~45_combout\,
	clrn => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.WRITE_CHAR2~q\);

-- Location: LCCOMB_X72_Y31_N24
\Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (\current_state.WRITE_CHAR2~q\) # ((\next_state.WRITE_CHAR3~q\ & ((\current_state.HOLD~q\) # (\current_state.TOGGLE_E~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.HOLD~q\,
	datab => \current_state.WRITE_CHAR2~q\,
	datac => \next_state.WRITE_CHAR3~q\,
	datad => \current_state.TOGGLE_E~q\,
	combout => \Selector16~0_combout\);

-- Location: FF_X72_Y31_N25
\next_state.WRITE_CHAR3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_400Hz~clkctrl_outclk\,
	d => \Selector16~0_combout\,
	clrn => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \next_state.WRITE_CHAR3~q\);

-- Location: LCCOMB_X74_Y31_N14
\current_state~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_state~46_combout\ = (\next_state.WRITE_CHAR3~q\ & \current_state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \next_state.WRITE_CHAR3~q\,
	datad => \current_state.HOLD~q\,
	combout => \current_state~46_combout\);

-- Location: FF_X74_Y31_N15
\current_state.WRITE_CHAR3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_400Hz~clkctrl_outclk\,
	d => \current_state~46_combout\,
	clrn => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.WRITE_CHAR3~q\);

-- Location: LCCOMB_X75_Y31_N26
\Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (\current_state.WRITE_CHAR3~q\) # ((\next_state.WRITE_CHAR4~q\ & ((\current_state.TOGGLE_E~q\) # (\current_state.HOLD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.TOGGLE_E~q\,
	datab => \current_state.HOLD~q\,
	datac => \next_state.WRITE_CHAR4~q\,
	datad => \current_state.WRITE_CHAR3~q\,
	combout => \Selector17~0_combout\);

-- Location: FF_X75_Y31_N27
\next_state.WRITE_CHAR4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_400Hz~clkctrl_outclk\,
	d => \Selector17~0_combout\,
	clrn => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \next_state.WRITE_CHAR4~q\);

-- Location: LCCOMB_X75_Y31_N30
\current_state~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_state~50_combout\ = (\current_state.HOLD~q\ & \next_state.WRITE_CHAR4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_state.HOLD~q\,
	datad => \next_state.WRITE_CHAR4~q\,
	combout => \current_state~50_combout\);

-- Location: FF_X75_Y31_N31
\current_state.WRITE_CHAR4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_400Hz~clkctrl_outclk\,
	d => \current_state~50_combout\,
	clrn => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.WRITE_CHAR4~q\);

-- Location: LCCOMB_X75_Y31_N10
\Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (\current_state.WRITE_CHAR4~q\) # ((\next_state.WRITE_CHAR5~q\ & ((\current_state.HOLD~q\) # (\current_state.TOGGLE_E~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.WRITE_CHAR4~q\,
	datab => \current_state.HOLD~q\,
	datac => \next_state.WRITE_CHAR5~q\,
	datad => \current_state.TOGGLE_E~q\,
	combout => \Selector18~0_combout\);

-- Location: FF_X75_Y31_N11
\next_state.WRITE_CHAR5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_400Hz~clkctrl_outclk\,
	d => \Selector18~0_combout\,
	clrn => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \next_state.WRITE_CHAR5~q\);

-- Location: LCCOMB_X76_Y31_N12
\current_state~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_state~51_combout\ = (\current_state.HOLD~q\ & \next_state.WRITE_CHAR5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_state.HOLD~q\,
	datad => \next_state.WRITE_CHAR5~q\,
	combout => \current_state~51_combout\);

-- Location: FF_X76_Y31_N13
\current_state.WRITE_CHAR5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_400Hz~clkctrl_outclk\,
	d => \current_state~51_combout\,
	clrn => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.WRITE_CHAR5~q\);

-- Location: LCCOMB_X75_Y31_N24
\Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (\current_state.WRITE_CHAR5~q\) # ((\next_state.WRITE_CHAR6~q\ & ((\current_state.HOLD~q\) # (\current_state.TOGGLE_E~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.HOLD~q\,
	datab => \current_state.WRITE_CHAR5~q\,
	datac => \next_state.WRITE_CHAR6~q\,
	datad => \current_state.TOGGLE_E~q\,
	combout => \Selector19~0_combout\);

-- Location: FF_X75_Y31_N25
\next_state.WRITE_CHAR6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_400Hz~clkctrl_outclk\,
	d => \Selector19~0_combout\,
	clrn => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \next_state.WRITE_CHAR6~q\);

-- Location: LCCOMB_X74_Y31_N0
\current_state~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_state~47_combout\ = (\current_state.HOLD~q\ & \next_state.WRITE_CHAR6~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.HOLD~q\,
	datad => \next_state.WRITE_CHAR6~q\,
	combout => \current_state~47_combout\);

-- Location: FF_X74_Y31_N1
\current_state.WRITE_CHAR6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_400Hz~clkctrl_outclk\,
	d => \current_state~47_combout\,
	clrn => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.WRITE_CHAR6~q\);

-- Location: LCCOMB_X76_Y31_N8
\Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (\current_state.WRITE_CHAR6~q\) # ((\next_state.WRITE_CHAR7~q\ & ((\current_state.TOGGLE_E~q\) # (\current_state.HOLD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.TOGGLE_E~q\,
	datab => \current_state.WRITE_CHAR6~q\,
	datac => \next_state.WRITE_CHAR7~q\,
	datad => \current_state.HOLD~q\,
	combout => \Selector20~0_combout\);

-- Location: FF_X76_Y31_N9
\next_state.WRITE_CHAR7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_400Hz~clkctrl_outclk\,
	d => \Selector20~0_combout\,
	clrn => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \next_state.WRITE_CHAR7~q\);

-- Location: LCCOMB_X76_Y31_N30
\current_state~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_state~52_combout\ = (\next_state.WRITE_CHAR7~q\ & \current_state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \next_state.WRITE_CHAR7~q\,
	datac => \current_state.HOLD~q\,
	combout => \current_state~52_combout\);

-- Location: FF_X75_Y30_N17
\current_state.WRITE_CHAR7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_400Hz~clkctrl_outclk\,
	asdata => \current_state~52_combout\,
	clrn => \reset_key~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.WRITE_CHAR7~q\);

-- Location: LCCOMB_X76_Y31_N16
\Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = (\current_state.WRITE_CHAR7~q\) # ((\next_state.WRITE_CHAR8~q\ & ((\current_state.TOGGLE_E~q\) # (\current_state.HOLD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.TOGGLE_E~q\,
	datab => \current_state.WRITE_CHAR7~q\,
	datac => \next_state.WRITE_CHAR8~q\,
	datad => \current_state.HOLD~q\,
	combout => \Selector21~0_combout\);

-- Location: FF_X76_Y31_N17
\next_state.WRITE_CHAR8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_400Hz~clkctrl_outclk\,
	d => \Selector21~0_combout\,
	clrn => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \next_state.WRITE_CHAR8~q\);

-- Location: LCCOMB_X72_Y31_N12
\current_state~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_state~53_combout\ = (\next_state.WRITE_CHAR8~q\ & \current_state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \next_state.WRITE_CHAR8~q\,
	datad => \current_state.HOLD~q\,
	combout => \current_state~53_combout\);

-- Location: FF_X72_Y31_N13
\current_state.WRITE_CHAR8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_400Hz~clkctrl_outclk\,
	d => \current_state~53_combout\,
	clrn => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.WRITE_CHAR8~q\);

-- Location: LCCOMB_X72_Y31_N6
\Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = (\current_state.WRITE_CHAR8~q\) # ((\next_state.WRITE_CHAR9~q\ & ((\current_state.HOLD~q\) # (\current_state.TOGGLE_E~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.HOLD~q\,
	datab => \current_state.WRITE_CHAR8~q\,
	datac => \next_state.WRITE_CHAR9~q\,
	datad => \current_state.TOGGLE_E~q\,
	combout => \Selector22~0_combout\);

-- Location: FF_X72_Y31_N7
\next_state.WRITE_CHAR9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_400Hz~clkctrl_outclk\,
	d => \Selector22~0_combout\,
	clrn => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \next_state.WRITE_CHAR9~q\);

-- Location: LCCOMB_X74_Y31_N10
\current_state~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_state~48_combout\ = (\next_state.WRITE_CHAR9~q\ & \current_state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \next_state.WRITE_CHAR9~q\,
	datad => \current_state.HOLD~q\,
	combout => \current_state~48_combout\);

-- Location: FF_X74_Y31_N11
\current_state.WRITE_CHAR9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_400Hz~clkctrl_outclk\,
	d => \current_state~48_combout\,
	clrn => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.WRITE_CHAR9~q\);

-- Location: LCCOMB_X72_Y31_N20
\Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = (\current_state.WRITE_CHAR9~q\) # ((\next_state.WRITE_CHAR10~q\ & ((\current_state.HOLD~q\) # (\current_state.TOGGLE_E~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.HOLD~q\,
	datab => \current_state.WRITE_CHAR9~q\,
	datac => \next_state.WRITE_CHAR10~q\,
	datad => \current_state.TOGGLE_E~q\,
	combout => \Selector23~0_combout\);

-- Location: FF_X72_Y31_N21
\next_state.WRITE_CHAR10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_400Hz~clkctrl_outclk\,
	d => \Selector23~0_combout\,
	clrn => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \next_state.WRITE_CHAR10~q\);

-- Location: LCCOMB_X72_Y31_N30
\current_state~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_state~49_combout\ = (\next_state.WRITE_CHAR10~q\ & \current_state.HOLD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \next_state.WRITE_CHAR10~q\,
	datad => \current_state.HOLD~q\,
	combout => \current_state~49_combout\);

-- Location: FF_X72_Y31_N31
\current_state.WRITE_CHAR10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_400Hz~clkctrl_outclk\,
	d => \current_state~49_combout\,
	clrn => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.WRITE_CHAR10~q\);

-- Location: LCCOMB_X75_Y31_N6
\Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector24~0_combout\ = (\current_state.WRITE_CHAR10~q\) # ((\next_state.RETURN_HOME~q\ & ((\current_state.HOLD~q\) # (\current_state.TOGGLE_E~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.HOLD~q\,
	datab => \current_state.WRITE_CHAR10~q\,
	datac => \next_state.RETURN_HOME~q\,
	datad => \current_state.TOGGLE_E~q\,
	combout => \Selector24~0_combout\);

-- Location: FF_X75_Y31_N7
\next_state.RETURN_HOME\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_400Hz~clkctrl_outclk\,
	d => \Selector24~0_combout\,
	clrn => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \next_state.RETURN_HOME~q\);

-- Location: LCCOMB_X76_Y31_N0
\current_state~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_state~55_combout\ = (\current_state.HOLD~q\ & \next_state.RETURN_HOME~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.HOLD~q\,
	datac => \next_state.RETURN_HOME~q\,
	combout => \current_state~55_combout\);

-- Location: FF_X76_Y31_N1
\current_state.RETURN_HOME\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_400Hz~clkctrl_outclk\,
	d => \current_state~55_combout\,
	clrn => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.RETURN_HOME~q\);

-- Location: LCCOMB_X76_Y31_N10
\Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (\current_state.MODE_SET~q\) # ((\current_state.RETURN_HOME~q\) # ((!\lcd_rs~0_combout\ & \next_state.WRITE_CHAR1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.MODE_SET~q\,
	datab => \lcd_rs~0_combout\,
	datac => \next_state.WRITE_CHAR1~q\,
	datad => \current_state.RETURN_HOME~q\,
	combout => \Selector14~0_combout\);

-- Location: FF_X76_Y31_N11
\next_state.WRITE_CHAR1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_400Hz~clkctrl_outclk\,
	d => \Selector14~0_combout\,
	clrn => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \next_state.WRITE_CHAR1~q\);

-- Location: LCCOMB_X74_Y31_N20
\current_state~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_state~44_combout\ = (\current_state.HOLD~q\ & \next_state.WRITE_CHAR1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.HOLD~q\,
	datad => \next_state.WRITE_CHAR1~q\,
	combout => \current_state~44_combout\);

-- Location: FF_X74_Y31_N21
\current_state.WRITE_CHAR1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_400Hz~clkctrl_outclk\,
	d => \current_state~44_combout\,
	clrn => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.WRITE_CHAR1~q\);

-- Location: LCCOMB_X73_Y31_N16
\count_clk_10Hz[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_clk_10Hz[0]~8_combout\ = count_clk_10Hz(0) $ (VCC)
-- \count_clk_10Hz[0]~9\ = CARRY(count_clk_10Hz(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count_clk_10Hz(0),
	datad => VCC,
	combout => \count_clk_10Hz[0]~8_combout\,
	cout => \count_clk_10Hz[0]~9\);

-- Location: FF_X73_Y31_N17
\count_clk_10Hz[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_400Hz~clkctrl_outclk\,
	d => \count_clk_10Hz[0]~8_combout\,
	sclr => \LessThan1~2_combout\,
	ena => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_clk_10Hz(0));

-- Location: LCCOMB_X73_Y31_N18
\count_clk_10Hz[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_clk_10Hz[1]~10_combout\ = (count_clk_10Hz(1) & (!\count_clk_10Hz[0]~9\)) # (!count_clk_10Hz(1) & ((\count_clk_10Hz[0]~9\) # (GND)))
-- \count_clk_10Hz[1]~11\ = CARRY((!\count_clk_10Hz[0]~9\) # (!count_clk_10Hz(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_clk_10Hz(1),
	datad => VCC,
	cin => \count_clk_10Hz[0]~9\,
	combout => \count_clk_10Hz[1]~10_combout\,
	cout => \count_clk_10Hz[1]~11\);

-- Location: FF_X73_Y31_N19
\count_clk_10Hz[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_400Hz~clkctrl_outclk\,
	d => \count_clk_10Hz[1]~10_combout\,
	sclr => \LessThan1~2_combout\,
	ena => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_clk_10Hz(1));

-- Location: LCCOMB_X73_Y31_N20
\count_clk_10Hz[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_clk_10Hz[2]~12_combout\ = (count_clk_10Hz(2) & (\count_clk_10Hz[1]~11\ $ (GND))) # (!count_clk_10Hz(2) & (!\count_clk_10Hz[1]~11\ & VCC))
-- \count_clk_10Hz[2]~13\ = CARRY((count_clk_10Hz(2) & !\count_clk_10Hz[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_clk_10Hz(2),
	datad => VCC,
	cin => \count_clk_10Hz[1]~11\,
	combout => \count_clk_10Hz[2]~12_combout\,
	cout => \count_clk_10Hz[2]~13\);

-- Location: FF_X73_Y31_N21
\count_clk_10Hz[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_400Hz~clkctrl_outclk\,
	d => \count_clk_10Hz[2]~12_combout\,
	sclr => \LessThan1~2_combout\,
	ena => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_clk_10Hz(2));

-- Location: LCCOMB_X73_Y31_N22
\count_clk_10Hz[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_clk_10Hz[3]~14_combout\ = (count_clk_10Hz(3) & (!\count_clk_10Hz[2]~13\)) # (!count_clk_10Hz(3) & ((\count_clk_10Hz[2]~13\) # (GND)))
-- \count_clk_10Hz[3]~15\ = CARRY((!\count_clk_10Hz[2]~13\) # (!count_clk_10Hz(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_clk_10Hz(3),
	datad => VCC,
	cin => \count_clk_10Hz[2]~13\,
	combout => \count_clk_10Hz[3]~14_combout\,
	cout => \count_clk_10Hz[3]~15\);

-- Location: FF_X73_Y31_N23
\count_clk_10Hz[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_400Hz~clkctrl_outclk\,
	d => \count_clk_10Hz[3]~14_combout\,
	sclr => \LessThan1~2_combout\,
	ena => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_clk_10Hz(3));

-- Location: LCCOMB_X73_Y31_N24
\count_clk_10Hz[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_clk_10Hz[4]~16_combout\ = (count_clk_10Hz(4) & (\count_clk_10Hz[3]~15\ $ (GND))) # (!count_clk_10Hz(4) & (!\count_clk_10Hz[3]~15\ & VCC))
-- \count_clk_10Hz[4]~17\ = CARRY((count_clk_10Hz(4) & !\count_clk_10Hz[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_clk_10Hz(4),
	datad => VCC,
	cin => \count_clk_10Hz[3]~15\,
	combout => \count_clk_10Hz[4]~16_combout\,
	cout => \count_clk_10Hz[4]~17\);

-- Location: FF_X73_Y31_N25
\count_clk_10Hz[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_400Hz~clkctrl_outclk\,
	d => \count_clk_10Hz[4]~16_combout\,
	sclr => \LessThan1~2_combout\,
	ena => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_clk_10Hz(4));

-- Location: LCCOMB_X73_Y31_N8
\LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (!count_clk_10Hz(3) & (!count_clk_10Hz(2) & ((!count_clk_10Hz(0)) # (!count_clk_10Hz(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_clk_10Hz(3),
	datab => count_clk_10Hz(1),
	datac => count_clk_10Hz(2),
	datad => count_clk_10Hz(0),
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X73_Y31_N26
\count_clk_10Hz[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_clk_10Hz[5]~18_combout\ = (count_clk_10Hz(5) & (!\count_clk_10Hz[4]~17\)) # (!count_clk_10Hz(5) & ((\count_clk_10Hz[4]~17\) # (GND)))
-- \count_clk_10Hz[5]~19\ = CARRY((!\count_clk_10Hz[4]~17\) # (!count_clk_10Hz(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_clk_10Hz(5),
	datad => VCC,
	cin => \count_clk_10Hz[4]~17\,
	combout => \count_clk_10Hz[5]~18_combout\,
	cout => \count_clk_10Hz[5]~19\);

-- Location: FF_X73_Y31_N27
\count_clk_10Hz[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_400Hz~clkctrl_outclk\,
	d => \count_clk_10Hz[5]~18_combout\,
	sclr => \LessThan1~2_combout\,
	ena => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_clk_10Hz(5));

-- Location: LCCOMB_X73_Y31_N28
\count_clk_10Hz[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_clk_10Hz[6]~20_combout\ = (count_clk_10Hz(6) & (\count_clk_10Hz[5]~19\ $ (GND))) # (!count_clk_10Hz(6) & (!\count_clk_10Hz[5]~19\ & VCC))
-- \count_clk_10Hz[6]~21\ = CARRY((count_clk_10Hz(6) & !\count_clk_10Hz[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_clk_10Hz(6),
	datad => VCC,
	cin => \count_clk_10Hz[5]~19\,
	combout => \count_clk_10Hz[6]~20_combout\,
	cout => \count_clk_10Hz[6]~21\);

-- Location: FF_X73_Y31_N29
\count_clk_10Hz[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_400Hz~clkctrl_outclk\,
	d => \count_clk_10Hz[6]~20_combout\,
	sclr => \LessThan1~2_combout\,
	ena => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_clk_10Hz(6));

-- Location: LCCOMB_X73_Y31_N30
\count_clk_10Hz[7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_clk_10Hz[7]~22_combout\ = \count_clk_10Hz[6]~21\ $ (count_clk_10Hz(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => count_clk_10Hz(7),
	cin => \count_clk_10Hz[6]~21\,
	combout => \count_clk_10Hz[7]~22_combout\);

-- Location: FF_X73_Y31_N31
\count_clk_10Hz[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_400Hz~clkctrl_outclk\,
	d => \count_clk_10Hz[7]~22_combout\,
	sclr => \LessThan1~2_combout\,
	ena => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_clk_10Hz(7));

-- Location: LCCOMB_X73_Y31_N6
\LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (!count_clk_10Hz(7) & (!count_clk_10Hz(5) & !count_clk_10Hz(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_clk_10Hz(7),
	datac => count_clk_10Hz(5),
	datad => count_clk_10Hz(6),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X73_Y31_N2
\LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = ((count_clk_10Hz(4) & !\LessThan1~1_combout\)) # (!\LessThan1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count_clk_10Hz(4),
	datac => \LessThan1~1_combout\,
	datad => \LessThan1~0_combout\,
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X73_Y31_N4
\clk_10Hz~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_10Hz~0_combout\ = \clk_10Hz~q\ $ (((\reset_key~input_o\ & \LessThan1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset_key~input_o\,
	datac => \clk_10Hz~q\,
	datad => \LessThan1~2_combout\,
	combout => \clk_10Hz~0_combout\);

-- Location: FF_X73_Y31_N5
clk_10Hz : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_400Hz~clkctrl_outclk\,
	d => \clk_10Hz~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_10Hz~q\);

-- Location: CLKCTRL_G9
\clk_10Hz~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_10Hz~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_10Hz~clkctrl_outclk\);

-- Location: LCCOMB_X73_Y30_N14
\process_2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_2~4_combout\ = (bcd_hr_d0(0) & bcd_hr_d0(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => bcd_hr_d0(0),
	datad => bcd_hr_d0(1),
	combout => \process_2~4_combout\);

-- Location: LCCOMB_X73_Y30_N24
\process_2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_2~2_combout\ = ((!bcd_hr_d0(2) & (!bcd_hr_d0(1) & !bcd_hr_d0(0)))) # (!bcd_hr_d0(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcd_hr_d0(2),
	datab => bcd_hr_d0(1),
	datac => bcd_hr_d0(0),
	datad => bcd_hr_d0(3),
	combout => \process_2~2_combout\);

-- Location: LCCOMB_X74_Y30_N28
\process_2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_2~3_combout\ = (\process_2~2_combout\ & ((!\process_2~0_combout\) # (!\process_2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_2~1_combout\,
	datac => \process_2~0_combout\,
	datad => \process_2~2_combout\,
	combout => \process_2~3_combout\);

-- Location: LCCOMB_X74_Y30_N20
\bcd_hr_d0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_hr_d0~5_combout\ = (\process_2~3_combout\ & (bcd_hr_d0(2) $ (((bcd_hr_d0(1) & bcd_hr_d0(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcd_hr_d0(1),
	datab => \process_2~3_combout\,
	datac => bcd_hr_d0(2),
	datad => bcd_hr_d0(0),
	combout => \bcd_hr_d0~5_combout\);

-- Location: LCCOMB_X75_Y30_N24
\bcd_min_d1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_min_d1~2_combout\ = (!bcd_min_d1(0) & ((!bcd_min_d1(2)) # (!bcd_min_d1(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcd_min_d1(1),
	datac => bcd_min_d1(0),
	datad => bcd_min_d1(2),
	combout => \bcd_min_d1~2_combout\);

-- Location: LCCOMB_X76_Y30_N8
\bcd_sec_d1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_sec_d1~3_combout\ = (bcd_sec_d1(1) & (!bcd_sec_d1(2) & bcd_sec_d1(0))) # (!bcd_sec_d1(1) & (bcd_sec_d1(2) & !bcd_sec_d1(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => bcd_sec_d1(1),
	datac => bcd_sec_d1(2),
	datad => bcd_sec_d1(0),
	combout => \bcd_sec_d1~3_combout\);

-- Location: LCCOMB_X72_Y30_N10
\bcd_tsec~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_tsec~3_combout\ = (bcd_tsec(0) & (bcd_tsec(1) & (!bcd_tsec(3) & bcd_tsec(2)))) # (!bcd_tsec(0) & (!bcd_tsec(1) & (bcd_tsec(3) & !bcd_tsec(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcd_tsec(0),
	datab => bcd_tsec(1),
	datac => bcd_tsec(3),
	datad => bcd_tsec(2),
	combout => \bcd_tsec~3_combout\);

-- Location: FF_X72_Y30_N11
\bcd_tsec[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10Hz~clkctrl_outclk\,
	d => \bcd_tsec~3_combout\,
	clrn => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcd_tsec(3));

-- Location: LCCOMB_X72_Y30_N30
\bcd_tsec~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_tsec~1_combout\ = (!bcd_tsec(3) & (bcd_tsec(1) $ (bcd_tsec(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => bcd_tsec(3),
	datac => bcd_tsec(1),
	datad => bcd_tsec(0),
	combout => \bcd_tsec~1_combout\);

-- Location: FF_X72_Y30_N31
\bcd_tsec[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10Hz~clkctrl_outclk\,
	d => \bcd_tsec~1_combout\,
	clrn => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcd_tsec(1));

-- Location: LCCOMB_X72_Y30_N4
\bcd_tsec~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_tsec~0_combout\ = (!bcd_tsec(3) & (bcd_tsec(2) $ (((bcd_tsec(0) & bcd_tsec(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcd_tsec(0),
	datab => bcd_tsec(1),
	datac => bcd_tsec(2),
	datad => bcd_tsec(3),
	combout => \bcd_tsec~0_combout\);

-- Location: FF_X72_Y30_N5
\bcd_tsec[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10Hz~clkctrl_outclk\,
	d => \bcd_tsec~0_combout\,
	clrn => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcd_tsec(2));

-- Location: LCCOMB_X72_Y30_N28
\bcd_tsec~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_tsec~2_combout\ = (!bcd_tsec(0) & (((!bcd_tsec(2) & !bcd_tsec(1))) # (!bcd_tsec(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcd_tsec(2),
	datab => bcd_tsec(1),
	datac => bcd_tsec(0),
	datad => bcd_tsec(3),
	combout => \bcd_tsec~2_combout\);

-- Location: FF_X72_Y30_N29
\bcd_tsec[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10Hz~clkctrl_outclk\,
	d => \bcd_tsec~2_combout\,
	clrn => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcd_tsec(0));

-- Location: LCCOMB_X72_Y30_N24
\LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (bcd_tsec(3) & ((bcd_tsec(0)) # ((bcd_tsec(2)) # (bcd_tsec(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcd_tsec(0),
	datab => bcd_tsec(2),
	datac => bcd_tsec(1),
	datad => bcd_tsec(3),
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X74_Y31_N28
\bcd_sec_d0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_sec_d0~2_combout\ = (!bcd_sec_d0(3) & (bcd_sec_d0(2) $ (((bcd_sec_d0(0) & bcd_sec_d0(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcd_sec_d0(0),
	datab => bcd_sec_d0(1),
	datac => bcd_sec_d0(2),
	datad => bcd_sec_d0(3),
	combout => \bcd_sec_d0~2_combout\);

-- Location: FF_X74_Y31_N29
\bcd_sec_d0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10Hz~clkctrl_outclk\,
	d => \bcd_sec_d0~2_combout\,
	clrn => \reset_key~input_o\,
	ena => \LessThan2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcd_sec_d0(2));

-- Location: LCCOMB_X74_Y31_N26
\bcd_sec_d0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_sec_d0~3_combout\ = (bcd_sec_d0(0) & (bcd_sec_d0(1) & (!bcd_sec_d0(3) & bcd_sec_d0(2)))) # (!bcd_sec_d0(0) & (!bcd_sec_d0(1) & (bcd_sec_d0(3) & !bcd_sec_d0(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcd_sec_d0(0),
	datab => bcd_sec_d0(1),
	datac => bcd_sec_d0(3),
	datad => bcd_sec_d0(2),
	combout => \bcd_sec_d0~3_combout\);

-- Location: FF_X74_Y31_N27
\bcd_sec_d0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10Hz~clkctrl_outclk\,
	d => \bcd_sec_d0~3_combout\,
	clrn => \reset_key~input_o\,
	ena => \LessThan2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcd_sec_d0(3));

-- Location: LCCOMB_X74_Y31_N4
\bcd_sec_d0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_sec_d0~0_combout\ = (!bcd_sec_d0(0) & (((!bcd_sec_d0(1) & !bcd_sec_d0(2))) # (!bcd_sec_d0(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcd_sec_d0(3),
	datab => bcd_sec_d0(1),
	datac => bcd_sec_d0(0),
	datad => bcd_sec_d0(2),
	combout => \bcd_sec_d0~0_combout\);

-- Location: FF_X74_Y31_N5
\bcd_sec_d0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10Hz~clkctrl_outclk\,
	d => \bcd_sec_d0~0_combout\,
	clrn => \reset_key~input_o\,
	ena => \LessThan2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcd_sec_d0(0));

-- Location: LCCOMB_X74_Y31_N22
\bcd_sec_d0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_sec_d0~1_combout\ = (!bcd_sec_d0(3) & (bcd_sec_d0(0) $ (bcd_sec_d0(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcd_sec_d0(0),
	datac => bcd_sec_d0(1),
	datad => bcd_sec_d0(3),
	combout => \bcd_sec_d0~1_combout\);

-- Location: FF_X74_Y31_N23
\bcd_sec_d0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10Hz~clkctrl_outclk\,
	d => \bcd_sec_d0~1_combout\,
	clrn => \reset_key~input_o\,
	ena => \LessThan2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcd_sec_d0(1));

-- Location: LCCOMB_X74_Y31_N8
\LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = ((!bcd_sec_d0(1) & (!bcd_sec_d0(0) & !bcd_sec_d0(2)))) # (!bcd_sec_d0(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcd_sec_d0(1),
	datab => bcd_sec_d0(0),
	datac => bcd_sec_d0(3),
	datad => bcd_sec_d0(2),
	combout => \LessThan3~0_combout\);

-- Location: LCCOMB_X76_Y30_N20
\bcd_sec_d1[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_sec_d1[0]~1_combout\ = (\LessThan2~0_combout\ & !\LessThan3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan2~0_combout\,
	datad => \LessThan3~0_combout\,
	combout => \bcd_sec_d1[0]~1_combout\);

-- Location: FF_X76_Y30_N9
\bcd_sec_d1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10Hz~clkctrl_outclk\,
	d => \bcd_sec_d1~3_combout\,
	clrn => \reset_key~input_o\,
	ena => \bcd_sec_d1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcd_sec_d1(2));

-- Location: LCCOMB_X76_Y30_N18
\bcd_sec_d1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_sec_d1~2_combout\ = (!bcd_sec_d1(2) & (bcd_sec_d1(1) $ (bcd_sec_d1(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcd_sec_d1(2),
	datac => bcd_sec_d1(1),
	datad => bcd_sec_d1(0),
	combout => \bcd_sec_d1~2_combout\);

-- Location: FF_X76_Y30_N19
\bcd_sec_d1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10Hz~clkctrl_outclk\,
	d => \bcd_sec_d1~2_combout\,
	clrn => \reset_key~input_o\,
	ena => \bcd_sec_d1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcd_sec_d1(1));

-- Location: LCCOMB_X76_Y30_N4
\bcd_sec_d1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_sec_d1~0_combout\ = (!bcd_sec_d1(0) & ((!bcd_sec_d1(2)) # (!bcd_sec_d1(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => bcd_sec_d1(1),
	datac => bcd_sec_d1(0),
	datad => bcd_sec_d1(2),
	combout => \bcd_sec_d1~0_combout\);

-- Location: FF_X76_Y30_N5
\bcd_sec_d1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10Hz~clkctrl_outclk\,
	d => \bcd_sec_d1~0_combout\,
	clrn => \reset_key~input_o\,
	ena => \bcd_sec_d1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcd_sec_d1(0));

-- Location: LCCOMB_X76_Y30_N12
\LessThan4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~0_combout\ = ((!bcd_sec_d1(0) & !bcd_sec_d1(1))) # (!bcd_sec_d1(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => bcd_sec_d1(0),
	datac => bcd_sec_d1(2),
	datad => bcd_sec_d1(1),
	combout => \LessThan4~0_combout\);

-- Location: LCCOMB_X77_Y30_N10
\bcd_min_d0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_min_d0~0_combout\ = (!bcd_min_d0(0) & (((!bcd_min_d0(2) & !bcd_min_d0(1))) # (!bcd_min_d0(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcd_min_d0(2),
	datab => bcd_min_d0(1),
	datac => bcd_min_d0(0),
	datad => bcd_min_d0(3),
	combout => \bcd_min_d0~0_combout\);

-- Location: LCCOMB_X77_Y30_N14
\bcd_min_d0[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_min_d0[3]~1_combout\ = (!\LessThan4~0_combout\ & (\LessThan2~0_combout\ & !\LessThan3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan4~0_combout\,
	datab => \LessThan2~0_combout\,
	datad => \LessThan3~0_combout\,
	combout => \bcd_min_d0[3]~1_combout\);

-- Location: FF_X77_Y30_N11
\bcd_min_d0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10Hz~clkctrl_outclk\,
	d => \bcd_min_d0~0_combout\,
	clrn => \reset_key~input_o\,
	ena => \bcd_min_d0[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcd_min_d0(0));

-- Location: LCCOMB_X77_Y30_N6
\bcd_min_d0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_min_d0~3_combout\ = (!bcd_min_d0(3) & (bcd_min_d0(2) $ (((bcd_min_d0(0) & bcd_min_d0(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcd_min_d0(0),
	datab => bcd_min_d0(1),
	datac => bcd_min_d0(2),
	datad => bcd_min_d0(3),
	combout => \bcd_min_d0~3_combout\);

-- Location: FF_X77_Y30_N7
\bcd_min_d0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10Hz~clkctrl_outclk\,
	d => \bcd_min_d0~3_combout\,
	clrn => \reset_key~input_o\,
	ena => \bcd_min_d0[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcd_min_d0(2));

-- Location: LCCOMB_X77_Y30_N28
\bcd_min_d0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_min_d0~4_combout\ = (bcd_min_d0(2) & (bcd_min_d0(1) & (!bcd_min_d0(3) & bcd_min_d0(0)))) # (!bcd_min_d0(2) & (!bcd_min_d0(1) & (bcd_min_d0(3) & !bcd_min_d0(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcd_min_d0(2),
	datab => bcd_min_d0(1),
	datac => bcd_min_d0(3),
	datad => bcd_min_d0(0),
	combout => \bcd_min_d0~4_combout\);

-- Location: FF_X77_Y30_N29
\bcd_min_d0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10Hz~clkctrl_outclk\,
	d => \bcd_min_d0~4_combout\,
	clrn => \reset_key~input_o\,
	ena => \bcd_min_d0[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcd_min_d0(3));

-- Location: LCCOMB_X77_Y30_N20
\bcd_min_d0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_min_d0~2_combout\ = (!bcd_min_d0(3) & (bcd_min_d0(1) $ (bcd_min_d0(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcd_min_d0(3),
	datac => bcd_min_d0(1),
	datad => bcd_min_d0(0),
	combout => \bcd_min_d0~2_combout\);

-- Location: FF_X77_Y30_N21
\bcd_min_d0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10Hz~clkctrl_outclk\,
	d => \bcd_min_d0~2_combout\,
	clrn => \reset_key~input_o\,
	ena => \bcd_min_d0[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcd_min_d0(1));

-- Location: LCCOMB_X74_Y30_N24
\LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan5~0_combout\ = ((!bcd_min_d0(1) & (!bcd_min_d0(0) & !bcd_min_d0(2)))) # (!bcd_min_d0(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcd_min_d0(1),
	datab => bcd_min_d0(0),
	datac => bcd_min_d0(2),
	datad => bcd_min_d0(3),
	combout => \LessThan5~0_combout\);

-- Location: LCCOMB_X74_Y30_N10
\bcd_min_d1[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_min_d1[3]~1_combout\ = (!\LessThan4~0_combout\ & (!\LessThan5~0_combout\ & (\LessThan2~0_combout\ & !\LessThan3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan4~0_combout\,
	datab => \LessThan5~0_combout\,
	datac => \LessThan2~0_combout\,
	datad => \LessThan3~0_combout\,
	combout => \bcd_min_d1[3]~1_combout\);

-- Location: FF_X75_Y30_N25
\bcd_min_d1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10Hz~clkctrl_outclk\,
	d => \bcd_min_d1~2_combout\,
	clrn => \reset_key~input_o\,
	ena => \bcd_min_d1[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcd_min_d1(0));

-- Location: LCCOMB_X75_Y30_N22
\bcd_min_d1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_min_d1~0_combout\ = (bcd_min_d1(1) & (!bcd_min_d1(2) & bcd_min_d1(0))) # (!bcd_min_d1(1) & (bcd_min_d1(2) & !bcd_min_d1(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcd_min_d1(1),
	datac => bcd_min_d1(2),
	datad => bcd_min_d1(0),
	combout => \bcd_min_d1~0_combout\);

-- Location: FF_X75_Y30_N23
\bcd_min_d1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10Hz~clkctrl_outclk\,
	d => \bcd_min_d1~0_combout\,
	clrn => \reset_key~input_o\,
	ena => \bcd_min_d1[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcd_min_d1(2));

-- Location: LCCOMB_X75_Y30_N6
\bcd_min_d1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_min_d1~3_combout\ = (!bcd_min_d1(2) & (bcd_min_d1(1) $ (bcd_min_d1(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcd_min_d1(2),
	datac => bcd_min_d1(1),
	datad => bcd_min_d1(0),
	combout => \bcd_min_d1~3_combout\);

-- Location: FF_X75_Y30_N7
\bcd_min_d1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10Hz~clkctrl_outclk\,
	d => \bcd_min_d1~3_combout\,
	clrn => \reset_key~input_o\,
	ena => \bcd_min_d1[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcd_min_d1(1));

-- Location: LCCOMB_X74_Y30_N22
\bcd_hr_d1[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_hr_d1[3]~11_combout\ = (bcd_min_d1(2) & (\bcd_min_d1[3]~1_combout\ & ((bcd_min_d1(1)) # (bcd_min_d1(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcd_min_d1(1),
	datab => bcd_min_d1(2),
	datac => bcd_min_d1(0),
	datad => \bcd_min_d1[3]~1_combout\,
	combout => \bcd_hr_d1[3]~11_combout\);

-- Location: FF_X74_Y30_N21
\bcd_hr_d0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10Hz~clkctrl_outclk\,
	d => \bcd_hr_d0~5_combout\,
	clrn => \reset_key~input_o\,
	ena => \bcd_hr_d1[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcd_hr_d0(2));

-- Location: LCCOMB_X74_Y30_N6
\bcd_hr_d0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_hr_d0~4_combout\ = (\process_2~3_combout\ & (bcd_hr_d0(3) $ (((\process_2~4_combout\ & bcd_hr_d0(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_2~4_combout\,
	datab => bcd_hr_d0(2),
	datac => bcd_hr_d0(3),
	datad => \process_2~3_combout\,
	combout => \bcd_hr_d0~4_combout\);

-- Location: FF_X74_Y30_N7
\bcd_hr_d0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10Hz~clkctrl_outclk\,
	d => \bcd_hr_d0~4_combout\,
	clrn => \reset_key~input_o\,
	ena => \bcd_hr_d1[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcd_hr_d0(3));

-- Location: LCCOMB_X75_Y30_N16
\LessThan6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan6~0_combout\ = ((!bcd_min_d1(0) & !bcd_min_d1(1))) # (!bcd_min_d1(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcd_min_d1(2),
	datab => bcd_min_d1(0),
	datad => bcd_min_d1(1),
	combout => \LessThan6~0_combout\);

-- Location: LCCOMB_X74_Y30_N0
\bcd_hr_d1[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_hr_d1[3]~7_combout\ = (\LessThan6~0_combout\) # (((!\process_2~5_combout\ & \process_2~2_combout\)) # (!\bcd_min_d1[3]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_2~5_combout\,
	datab => \process_2~2_combout\,
	datac => \LessThan6~0_combout\,
	datad => \bcd_min_d1[3]~1_combout\,
	combout => \bcd_hr_d1[3]~7_combout\);

-- Location: LCCOMB_X74_Y30_N2
\bcd_hr_d1[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_hr_d1[1]~8_combout\ = bcd_hr_d1(1) $ (((!\bcd_hr_d1[3]~7_combout\ & (\process_2~5_combout\ $ (bcd_hr_d1(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_2~5_combout\,
	datab => bcd_hr_d1(0),
	datac => bcd_hr_d1(1),
	datad => \bcd_hr_d1[3]~7_combout\,
	combout => \bcd_hr_d1[1]~8_combout\);

-- Location: FF_X74_Y30_N3
\bcd_hr_d1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10Hz~clkctrl_outclk\,
	d => \bcd_hr_d1[1]~8_combout\,
	clrn => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcd_hr_d1(1));

-- Location: LCCOMB_X74_Y30_N18
\process_2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_2~1_combout\ = (!bcd_hr_d0(3) & (!bcd_hr_d1(0) & (bcd_hr_d1(1) & !bcd_hr_d0(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcd_hr_d0(3),
	datab => bcd_hr_d1(0),
	datac => bcd_hr_d1(1),
	datad => bcd_hr_d0(2),
	combout => \process_2~1_combout\);

-- Location: LCCOMB_X74_Y30_N12
\bcd_hr_d0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_hr_d0~2_combout\ = (!bcd_hr_d0(0) & (\process_2~2_combout\ & ((!\process_2~0_combout\) # (!\process_2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_2~1_combout\,
	datab => \process_2~0_combout\,
	datac => bcd_hr_d0(0),
	datad => \process_2~2_combout\,
	combout => \bcd_hr_d0~2_combout\);

-- Location: FF_X74_Y30_N13
\bcd_hr_d0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10Hz~clkctrl_outclk\,
	d => \bcd_hr_d0~2_combout\,
	clrn => \reset_key~input_o\,
	ena => \bcd_hr_d1[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcd_hr_d0(0));

-- Location: LCCOMB_X74_Y30_N26
\bcd_hr_d0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_hr_d0~3_combout\ = (\process_2~3_combout\ & (bcd_hr_d0(0) $ (bcd_hr_d0(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcd_hr_d0(0),
	datac => bcd_hr_d0(1),
	datad => \process_2~3_combout\,
	combout => \bcd_hr_d0~3_combout\);

-- Location: FF_X74_Y30_N27
\bcd_hr_d0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10Hz~clkctrl_outclk\,
	d => \bcd_hr_d0~3_combout\,
	clrn => \reset_key~input_o\,
	ena => \bcd_hr_d1[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcd_hr_d0(1));

-- Location: LCCOMB_X74_Y30_N16
\bcd_hr_d1[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_hr_d1[2]~13_combout\ = bcd_hr_d1(2) $ (((bcd_hr_d1(0) & (bcd_hr_d1(1) & !\bcd_hr_d1[3]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcd_hr_d1(0),
	datab => bcd_hr_d1(1),
	datac => bcd_hr_d1(2),
	datad => \bcd_hr_d1[3]~7_combout\,
	combout => \bcd_hr_d1[2]~13_combout\);

-- Location: FF_X74_Y30_N17
\bcd_hr_d1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10Hz~clkctrl_outclk\,
	d => \bcd_hr_d1[2]~13_combout\,
	clrn => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcd_hr_d1(2));

-- Location: LCCOMB_X73_Y30_N16
\bcd_hr_d1[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_hr_d1[2]~9_combout\ = (bcd_hr_d1(0) & bcd_hr_d1(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => bcd_hr_d1(0),
	datad => bcd_hr_d1(1),
	combout => \bcd_hr_d1[2]~9_combout\);

-- Location: LCCOMB_X74_Y30_N14
\bcd_hr_d1[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_hr_d1[3]~10_combout\ = bcd_hr_d1(3) $ (((\bcd_hr_d1[2]~9_combout\ & (bcd_hr_d1(2) & !\bcd_hr_d1[3]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_hr_d1[2]~9_combout\,
	datab => bcd_hr_d1(2),
	datac => bcd_hr_d1(3),
	datad => \bcd_hr_d1[3]~7_combout\,
	combout => \bcd_hr_d1[3]~10_combout\);

-- Location: FF_X74_Y30_N15
\bcd_hr_d1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10Hz~clkctrl_outclk\,
	d => \bcd_hr_d1[3]~10_combout\,
	clrn => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcd_hr_d1(3));

-- Location: LCCOMB_X74_Y30_N4
\process_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_2~0_combout\ = (bcd_hr_d0(1) & (!bcd_hr_d1(2) & (!bcd_hr_d1(3) & bcd_hr_d0(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcd_hr_d0(1),
	datab => bcd_hr_d1(2),
	datac => bcd_hr_d1(3),
	datad => bcd_hr_d0(0),
	combout => \process_2~0_combout\);

-- Location: LCCOMB_X74_Y30_N30
\process_2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_2~5_combout\ = (\process_2~0_combout\ & \process_2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \process_2~0_combout\,
	datad => \process_2~1_combout\,
	combout => \process_2~5_combout\);

-- Location: LCCOMB_X73_Y30_N6
\bcd_hr_d1[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_hr_d1[0]~12_combout\ = ((\process_2~2_combout\) # ((!bcd_min_d1(1) & !bcd_min_d1(0)))) # (!bcd_min_d1(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcd_min_d1(1),
	datab => bcd_min_d1(2),
	datac => bcd_min_d1(0),
	datad => \process_2~2_combout\,
	combout => \bcd_hr_d1[0]~12_combout\);

-- Location: LCCOMB_X74_Y30_N8
\bcd_hr_d1[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_hr_d1[0]~6_combout\ = bcd_hr_d1(0) $ (((!\process_2~5_combout\ & (!\bcd_hr_d1[0]~12_combout\ & \bcd_min_d1[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_2~5_combout\,
	datab => \bcd_hr_d1[0]~12_combout\,
	datac => bcd_hr_d1(0),
	datad => \bcd_min_d1[3]~1_combout\,
	combout => \bcd_hr_d1[0]~6_combout\);

-- Location: FF_X74_Y30_N9
\bcd_hr_d1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10Hz~clkctrl_outclk\,
	d => \bcd_hr_d1[0]~6_combout\,
	clrn => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcd_hr_d1(0));

-- Location: LCCOMB_X75_Y30_N4
\Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\current_state.WRITE_CHAR1~q\ & bcd_hr_d1(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_state.WRITE_CHAR1~q\,
	datad => bcd_hr_d1(0),
	combout => \Selector8~0_combout\);

-- Location: LCCOMB_X75_Y30_N2
\Selector8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~3_combout\ = (\current_state.WRITE_CHAR4~q\ & ((bcd_min_d1(0)) # ((\current_state.WRITE_CHAR2~q\ & bcd_hr_d0(0))))) # (!\current_state.WRITE_CHAR4~q\ & (((\current_state.WRITE_CHAR2~q\ & bcd_hr_d0(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.WRITE_CHAR4~q\,
	datab => bcd_min_d1(0),
	datac => \current_state.WRITE_CHAR2~q\,
	datad => bcd_hr_d0(0),
	combout => \Selector8~3_combout\);

-- Location: LCCOMB_X75_Y30_N0
\Selector8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~4_combout\ = (\current_state.DISPLAY_CLEAR~q\) # ((\Selector8~3_combout\) # ((data_bus_value(0) & !\lcd_rs~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data_bus_value(0),
	datab => \current_state.DISPLAY_CLEAR~q\,
	datac => \lcd_rs~0_combout\,
	datad => \Selector8~3_combout\,
	combout => \Selector8~4_combout\);

-- Location: LCCOMB_X75_Y30_N30
\Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~1_combout\ = (bcd_tsec(0) & ((\current_state.WRITE_CHAR10~q\) # ((\current_state.WRITE_CHAR8~q\ & bcd_sec_d0(0))))) # (!bcd_tsec(0) & (((\current_state.WRITE_CHAR8~q\ & bcd_sec_d0(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcd_tsec(0),
	datab => \current_state.WRITE_CHAR10~q\,
	datac => \current_state.WRITE_CHAR8~q\,
	datad => bcd_sec_d0(0),
	combout => \Selector8~1_combout\);

-- Location: LCCOMB_X75_Y30_N12
\Selector8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~2_combout\ = (bcd_sec_d1(0) & ((\current_state.WRITE_CHAR7~q\) # ((\current_state.WRITE_CHAR5~q\ & bcd_min_d0(0))))) # (!bcd_sec_d1(0) & (((\current_state.WRITE_CHAR5~q\ & bcd_min_d0(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcd_sec_d1(0),
	datab => \current_state.WRITE_CHAR7~q\,
	datac => \current_state.WRITE_CHAR5~q\,
	datad => bcd_min_d0(0),
	combout => \Selector8~2_combout\);

-- Location: LCCOMB_X75_Y30_N20
\Selector8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~5_combout\ = (\Selector8~0_combout\) # ((\Selector8~4_combout\) # ((\Selector8~1_combout\) # (\Selector8~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector8~0_combout\,
	datab => \Selector8~4_combout\,
	datac => \Selector8~1_combout\,
	datad => \Selector8~2_combout\,
	combout => \Selector8~5_combout\);

-- Location: FF_X75_Y30_N21
\data_bus_value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_400Hz~clkctrl_outclk\,
	d => \Selector8~5_combout\,
	clrn => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_bus_value(0));

-- Location: LCCOMB_X75_Y31_N12
\Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\current_state.WRITE_CHAR8~q\ & ((bcd_sec_d0(1)) # ((\current_state.WRITE_CHAR10~q\ & bcd_tsec(1))))) # (!\current_state.WRITE_CHAR8~q\ & (((\current_state.WRITE_CHAR10~q\ & bcd_tsec(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.WRITE_CHAR8~q\,
	datab => bcd_sec_d0(1),
	datac => \current_state.WRITE_CHAR10~q\,
	datad => bcd_tsec(1),
	combout => \Selector7~0_combout\);

-- Location: LCCOMB_X74_Y31_N2
\Selector1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~4_combout\ = (!\current_state.WRITE_CHAR9~q\ & (!\current_state.WRITE_CHAR3~q\ & !\current_state.WRITE_CHAR6~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.WRITE_CHAR9~q\,
	datac => \current_state.WRITE_CHAR3~q\,
	datad => \current_state.WRITE_CHAR6~q\,
	combout => \Selector1~4_combout\);

-- Location: LCCOMB_X75_Y31_N16
\Selector7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~4_combout\ = ((\current_state.WRITE_CHAR1~q\ & bcd_hr_d1(1))) # (!\Selector1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~4_combout\,
	datab => \current_state.WRITE_CHAR1~q\,
	datad => bcd_hr_d1(1),
	combout => \Selector7~4_combout\);

-- Location: LCCOMB_X75_Y31_N18
\Selector7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~2_combout\ = (\current_state.WRITE_CHAR4~q\ & ((bcd_min_d1(1)) # ((\current_state.WRITE_CHAR2~q\ & bcd_hr_d0(1))))) # (!\current_state.WRITE_CHAR4~q\ & (\current_state.WRITE_CHAR2~q\ & (bcd_hr_d0(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.WRITE_CHAR4~q\,
	datab => \current_state.WRITE_CHAR2~q\,
	datac => bcd_hr_d0(1),
	datad => bcd_min_d1(1),
	combout => \Selector7~2_combout\);

-- Location: LCCOMB_X75_Y31_N14
\Selector7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~3_combout\ = (\current_state.MODE_SET~q\) # ((\Selector7~2_combout\) # ((data_bus_value(1) & !\lcd_rs~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.MODE_SET~q\,
	datab => data_bus_value(1),
	datac => \lcd_rs~0_combout\,
	datad => \Selector7~2_combout\,
	combout => \Selector7~3_combout\);

-- Location: LCCOMB_X76_Y30_N10
\Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~1_combout\ = (\current_state.WRITE_CHAR7~q\ & ((bcd_sec_d1(1)) # ((bcd_min_d0(1) & \current_state.WRITE_CHAR5~q\)))) # (!\current_state.WRITE_CHAR7~q\ & (((bcd_min_d0(1) & \current_state.WRITE_CHAR5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.WRITE_CHAR7~q\,
	datab => bcd_sec_d1(1),
	datac => bcd_min_d0(1),
	datad => \current_state.WRITE_CHAR5~q\,
	combout => \Selector7~1_combout\);

-- Location: LCCOMB_X75_Y31_N28
\Selector7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~5_combout\ = (\Selector7~0_combout\) # ((\Selector7~4_combout\) # ((\Selector7~3_combout\) # (\Selector7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector7~0_combout\,
	datab => \Selector7~4_combout\,
	datac => \Selector7~3_combout\,
	datad => \Selector7~1_combout\,
	combout => \Selector7~5_combout\);

-- Location: FF_X75_Y31_N29
\data_bus_value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_400Hz~clkctrl_outclk\,
	d => \Selector7~5_combout\,
	clrn => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_bus_value(1));

-- Location: LCCOMB_X75_Y30_N10
\Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\current_state.MODE_SET~q\) # ((\current_state.WRITE_CHAR9~q\) # ((bcd_hr_d1(2) & \current_state.WRITE_CHAR1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcd_hr_d1(2),
	datab => \current_state.MODE_SET~q\,
	datac => \current_state.WRITE_CHAR1~q\,
	datad => \current_state.WRITE_CHAR9~q\,
	combout => \Selector6~0_combout\);

-- Location: LCCOMB_X75_Y30_N14
\Selector6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~2_combout\ = (\current_state.WRITE_CHAR7~q\ & ((bcd_sec_d1(2)) # ((\current_state.WRITE_CHAR5~q\ & bcd_min_d0(2))))) # (!\current_state.WRITE_CHAR7~q\ & (\current_state.WRITE_CHAR5~q\ & ((bcd_min_d0(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.WRITE_CHAR7~q\,
	datab => \current_state.WRITE_CHAR5~q\,
	datac => bcd_sec_d1(2),
	datad => bcd_min_d0(2),
	combout => \Selector6~2_combout\);

-- Location: LCCOMB_X75_Y30_N8
\Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~1_combout\ = (bcd_sec_d0(2) & ((\current_state.WRITE_CHAR8~q\) # ((\current_state.WRITE_CHAR10~q\ & bcd_tsec(2))))) # (!bcd_sec_d0(2) & (\current_state.WRITE_CHAR10~q\ & ((bcd_tsec(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcd_sec_d0(2),
	datab => \current_state.WRITE_CHAR10~q\,
	datac => \current_state.WRITE_CHAR8~q\,
	datad => bcd_tsec(2),
	combout => \Selector6~1_combout\);

-- Location: LCCOMB_X75_Y30_N28
\Selector6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~3_combout\ = (\current_state.WRITE_CHAR4~q\ & ((bcd_min_d1(2)) # ((\current_state.WRITE_CHAR2~q\ & bcd_hr_d0(2))))) # (!\current_state.WRITE_CHAR4~q\ & (((\current_state.WRITE_CHAR2~q\ & bcd_hr_d0(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.WRITE_CHAR4~q\,
	datab => bcd_min_d1(2),
	datac => \current_state.WRITE_CHAR2~q\,
	datad => bcd_hr_d0(2),
	combout => \Selector6~3_combout\);

-- Location: LCCOMB_X75_Y30_N18
\Selector6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~4_combout\ = (\current_state.DISPLAY_ON~q\) # ((\Selector6~3_combout\) # ((data_bus_value(2) & !\lcd_rs~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data_bus_value(2),
	datab => \current_state.DISPLAY_ON~q\,
	datac => \lcd_rs~0_combout\,
	datad => \Selector6~3_combout\,
	combout => \Selector6~4_combout\);

-- Location: LCCOMB_X75_Y30_N26
\Selector6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~5_combout\ = (\Selector6~0_combout\) # ((\Selector6~2_combout\) # ((\Selector6~1_combout\) # (\Selector6~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector6~0_combout\,
	datab => \Selector6~2_combout\,
	datac => \Selector6~1_combout\,
	datad => \Selector6~4_combout\,
	combout => \Selector6~5_combout\);

-- Location: FF_X75_Y30_N27
\data_bus_value[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_400Hz~clkctrl_outclk\,
	d => \Selector6~5_combout\,
	clrn => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_bus_value(2));

-- Location: LCCOMB_X72_Y31_N16
\Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\current_state.WRITE_CHAR10~q\ & ((bcd_tsec(3)) # ((\current_state.WRITE_CHAR8~q\ & bcd_sec_d0(3))))) # (!\current_state.WRITE_CHAR10~q\ & (\current_state.WRITE_CHAR8~q\ & (bcd_sec_d0(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.WRITE_CHAR10~q\,
	datab => \current_state.WRITE_CHAR8~q\,
	datac => bcd_sec_d0(3),
	datad => bcd_tsec(3),
	combout => \Selector5~0_combout\);

-- Location: LCCOMB_X74_Y31_N6
\Selector5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~4_combout\ = (\current_state.RESET2~q\) # ((\current_state.RESET3~q\) # ((\current_state.FUNC_SET~q\) # (!\Selector1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.RESET2~q\,
	datab => \current_state.RESET3~q\,
	datac => \current_state.FUNC_SET~q\,
	datad => \Selector1~4_combout\,
	combout => \Selector5~4_combout\);

-- Location: LCCOMB_X73_Y31_N14
\Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~1_combout\ = (\current_state.WRITE_CHAR5~q\ & ((bcd_min_d0(3)) # ((\current_state.WRITE_CHAR2~q\ & bcd_hr_d0(3))))) # (!\current_state.WRITE_CHAR5~q\ & (\current_state.WRITE_CHAR2~q\ & (bcd_hr_d0(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.WRITE_CHAR5~q\,
	datab => \current_state.WRITE_CHAR2~q\,
	datac => bcd_hr_d0(3),
	datad => bcd_min_d0(3),
	combout => \Selector5~1_combout\);

-- Location: LCCOMB_X73_Y31_N0
\Selector5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~2_combout\ = (\current_state.DISPLAY_OFF~q\) # ((\current_state.DISPLAY_ON~q\) # ((\current_state.WRITE_CHAR1~q\ & bcd_hr_d1(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.DISPLAY_OFF~q\,
	datab => \current_state.DISPLAY_ON~q\,
	datac => \current_state.WRITE_CHAR1~q\,
	datad => bcd_hr_d1(3),
	combout => \Selector5~2_combout\);

-- Location: LCCOMB_X73_Y31_N10
\Selector5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~3_combout\ = ((\Selector5~2_combout\) # ((!data_bus_value(3) & !\lcd_rs~0_combout\))) # (!\current_state.RESET1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data_bus_value(3),
	datab => \current_state.RESET1~q\,
	datac => \lcd_rs~0_combout\,
	datad => \Selector5~2_combout\,
	combout => \Selector5~3_combout\);

-- Location: LCCOMB_X73_Y31_N12
\Selector5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~5_combout\ = (!\Selector5~0_combout\ & (!\Selector5~4_combout\ & (!\Selector5~1_combout\ & !\Selector5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector5~0_combout\,
	datab => \Selector5~4_combout\,
	datac => \Selector5~1_combout\,
	datad => \Selector5~3_combout\,
	combout => \Selector5~5_combout\);

-- Location: FF_X73_Y31_N13
\data_bus_value[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_400Hz~clkctrl_outclk\,
	d => \Selector5~5_combout\,
	clrn => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_bus_value(3));

-- Location: LCCOMB_X76_Y31_N2
\WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr6~0_combout\ = (!\current_state.TOGGLE_E~q\ & (!\current_state.RETURN_HOME~q\ & (!\current_state.HOLD~q\ & !\current_state.MODE_SET~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.TOGGLE_E~q\,
	datab => \current_state.RETURN_HOME~q\,
	datac => \current_state.HOLD~q\,
	datad => \current_state.MODE_SET~q\,
	combout => \WideOr6~0_combout\);

-- Location: LCCOMB_X76_Y31_N28
\WideOr6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr6~1_combout\ = (!\current_state.DISPLAY_ON~q\ & (!\current_state.DISPLAY_CLEAR~q\ & (!\current_state.DISPLAY_OFF~q\ & \WideOr6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.DISPLAY_ON~q\,
	datab => \current_state.DISPLAY_CLEAR~q\,
	datac => \current_state.DISPLAY_OFF~q\,
	datad => \WideOr6~0_combout\,
	combout => \WideOr6~1_combout\);

-- Location: LCCOMB_X76_Y31_N14
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\current_state.WRITE_CHAR9~q\ & ((\lcd_rs~0_combout\) # ((data_bus_value(4))))) # (!\current_state.WRITE_CHAR9~q\ & (!\WideOr6~1_combout\ & ((\lcd_rs~0_combout\) # (data_bus_value(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.WRITE_CHAR9~q\,
	datab => \lcd_rs~0_combout\,
	datac => data_bus_value(4),
	datad => \WideOr6~1_combout\,
	combout => \Selector4~0_combout\);

-- Location: FF_X76_Y31_N15
\data_bus_value[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_400Hz~clkctrl_outclk\,
	d => \Selector4~0_combout\,
	clrn => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_bus_value(4));

-- Location: LCCOMB_X76_Y31_N24
\Selector3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~2_combout\ = (!\WideOr6~1_combout\ & ((data_bus_value(5)) # ((!\current_state.TOGGLE_E~q\ & !\current_state.HOLD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.TOGGLE_E~q\,
	datab => \current_state.HOLD~q\,
	datac => data_bus_value(5),
	datad => \WideOr6~1_combout\,
	combout => \Selector3~2_combout\);

-- Location: FF_X76_Y31_N25
\data_bus_value[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_400Hz~clkctrl_outclk\,
	d => \Selector3~2_combout\,
	clrn => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_bus_value(5));

-- Location: LCCOMB_X72_Y31_N22
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\current_state.RETURN_HOME~q\) # ((data_bus_value(7) & ((\current_state.TOGGLE_E~q\) # (\current_state.HOLD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.TOGGLE_E~q\,
	datab => \current_state.RETURN_HOME~q\,
	datac => data_bus_value(7),
	datad => \current_state.HOLD~q\,
	combout => \Selector2~0_combout\);

-- Location: FF_X72_Y31_N23
\data_bus_value[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_400Hz~clkctrl_outclk\,
	d => \Selector2~0_combout\,
	clrn => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_bus_value(7));

-- Location: LCCOMB_X75_Y31_N20
\Selector1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~2_combout\ = (\current_state.WRITE_CHAR4~q\) # ((\current_state.WRITE_CHAR5~q\) # ((\current_state.WRITE_CHAR7~q\) # (\current_state.WRITE_CHAR8~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.WRITE_CHAR4~q\,
	datab => \current_state.WRITE_CHAR5~q\,
	datac => \current_state.WRITE_CHAR7~q\,
	datad => \current_state.WRITE_CHAR8~q\,
	combout => \Selector1~2_combout\);

-- Location: LCCOMB_X75_Y31_N0
\Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (\current_state.WRITE_CHAR2~q\) # ((\current_state.WRITE_CHAR6~q\) # ((\current_state.WRITE_CHAR9~q\) # (\current_state.WRITE_CHAR3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.WRITE_CHAR2~q\,
	datab => \current_state.WRITE_CHAR6~q\,
	datac => \current_state.WRITE_CHAR9~q\,
	datad => \current_state.WRITE_CHAR3~q\,
	combout => \Selector1~1_combout\);

-- Location: LCCOMB_X75_Y31_N2
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\current_state.WRITE_CHAR1~q\) # ((\lcd_rs~reg0_q\ & ((\current_state.TOGGLE_E~q\) # (\current_state.HOLD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_rs~reg0_q\,
	datab => \current_state.WRITE_CHAR1~q\,
	datac => \current_state.TOGGLE_E~q\,
	datad => \current_state.HOLD~q\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X75_Y31_N22
\Selector1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~3_combout\ = (\Selector1~2_combout\) # ((\Selector1~1_combout\) # ((\current_state.WRITE_CHAR10~q\) # (\Selector1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~2_combout\,
	datab => \Selector1~1_combout\,
	datac => \current_state.WRITE_CHAR10~q\,
	datad => \Selector1~0_combout\,
	combout => \Selector1~3_combout\);

-- Location: FF_X75_Y31_N23
\lcd_rs~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_400Hz~clkctrl_outclk\,
	d => \Selector1~3_combout\,
	clrn => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_rs~reg0_q\);

-- Location: LCCOMB_X72_Y31_N0
\lcd_enable~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd_enable~0_combout\ = (\current_state.HOLD~q\ & (\lcd_enable~reg0_q\)) # (!\current_state.HOLD~q\ & ((\current_state.TOGGLE_E~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.HOLD~q\,
	datac => \lcd_enable~reg0_q\,
	datad => \current_state.TOGGLE_E~q\,
	combout => \lcd_enable~0_combout\);

-- Location: FF_X72_Y31_N1
\lcd_enable~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_400Hz~clkctrl_outclk\,
	d => \lcd_enable~0_combout\,
	clrn => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_enable~reg0_q\);

-- Location: LCCOMB_X72_Y30_N12
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (bcd_tsec(3) & (bcd_tsec(0) & (bcd_tsec(1) $ (bcd_tsec(2))))) # (!bcd_tsec(3) & (!bcd_tsec(1) & (bcd_tsec(0) $ (bcd_tsec(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcd_tsec(0),
	datab => bcd_tsec(3),
	datac => bcd_tsec(1),
	datad => bcd_tsec(2),
	combout => \Mux6~0_combout\);

-- Location: FF_X72_Y30_N13
\hex0[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10Hz~clkctrl_outclk\,
	d => \Mux6~0_combout\,
	ena => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex0[0]~reg0_q\);

-- Location: LCCOMB_X72_Y30_N18
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (bcd_tsec(3) & ((bcd_tsec(0) & (bcd_tsec(1))) # (!bcd_tsec(0) & ((bcd_tsec(2)))))) # (!bcd_tsec(3) & (bcd_tsec(2) & (bcd_tsec(0) $ (bcd_tsec(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcd_tsec(0),
	datab => bcd_tsec(3),
	datac => bcd_tsec(1),
	datad => bcd_tsec(2),
	combout => \Mux5~0_combout\);

-- Location: FF_X72_Y30_N19
\hex0[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10Hz~clkctrl_outclk\,
	d => \Mux5~0_combout\,
	ena => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex0[1]~reg0_q\);

-- Location: LCCOMB_X72_Y30_N20
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (bcd_tsec(3) & (bcd_tsec(2) & ((bcd_tsec(1)) # (!bcd_tsec(0))))) # (!bcd_tsec(3) & (!bcd_tsec(0) & (bcd_tsec(1) & !bcd_tsec(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcd_tsec(0),
	datab => bcd_tsec(3),
	datac => bcd_tsec(1),
	datad => bcd_tsec(2),
	combout => \Mux4~0_combout\);

-- Location: FF_X72_Y30_N21
\hex0[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10Hz~clkctrl_outclk\,
	d => \Mux4~0_combout\,
	ena => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex0[2]~reg0_q\);

-- Location: LCCOMB_X72_Y30_N22
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (bcd_tsec(0) & ((bcd_tsec(1) $ (!bcd_tsec(2))))) # (!bcd_tsec(0) & ((bcd_tsec(3) & (bcd_tsec(1) & !bcd_tsec(2))) # (!bcd_tsec(3) & (!bcd_tsec(1) & bcd_tsec(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcd_tsec(0),
	datab => bcd_tsec(3),
	datac => bcd_tsec(1),
	datad => bcd_tsec(2),
	combout => \Mux3~0_combout\);

-- Location: FF_X72_Y30_N23
\hex0[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10Hz~clkctrl_outclk\,
	d => \Mux3~0_combout\,
	ena => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex0[3]~reg0_q\);

-- Location: LCCOMB_X72_Y30_N16
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (bcd_tsec(1) & (bcd_tsec(0) & (!bcd_tsec(3)))) # (!bcd_tsec(1) & ((bcd_tsec(2) & ((!bcd_tsec(3)))) # (!bcd_tsec(2) & (bcd_tsec(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcd_tsec(0),
	datab => bcd_tsec(3),
	datac => bcd_tsec(1),
	datad => bcd_tsec(2),
	combout => \Mux2~0_combout\);

-- Location: FF_X72_Y30_N17
\hex0[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10Hz~clkctrl_outclk\,
	d => \Mux2~0_combout\,
	ena => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex0[4]~reg0_q\);

-- Location: LCCOMB_X72_Y30_N14
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (bcd_tsec(0) & (bcd_tsec(3) $ (((bcd_tsec(1)) # (!bcd_tsec(2)))))) # (!bcd_tsec(0) & (!bcd_tsec(3) & (bcd_tsec(1) & !bcd_tsec(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcd_tsec(0),
	datab => bcd_tsec(3),
	datac => bcd_tsec(1),
	datad => bcd_tsec(2),
	combout => \Mux1~0_combout\);

-- Location: FF_X72_Y30_N15
\hex0[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10Hz~clkctrl_outclk\,
	d => \Mux1~0_combout\,
	ena => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex0[5]~reg0_q\);

-- Location: LCCOMB_X72_Y30_N8
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (bcd_tsec(0) & (!bcd_tsec(3) & (bcd_tsec(1) $ (!bcd_tsec(2))))) # (!bcd_tsec(0) & (!bcd_tsec(1) & (bcd_tsec(3) $ (!bcd_tsec(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcd_tsec(0),
	datab => bcd_tsec(3),
	datac => bcd_tsec(1),
	datad => bcd_tsec(2),
	combout => \Mux0~0_combout\);

-- Location: FF_X72_Y30_N9
\hex0[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10Hz~clkctrl_outclk\,
	d => \Mux0~0_combout\,
	ena => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex0[6]~reg0_q\);

-- Location: LCCOMB_X76_Y30_N30
\Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (bcd_sec_d0(3) & (bcd_sec_d0(0) & (bcd_sec_d0(1) $ (bcd_sec_d0(2))))) # (!bcd_sec_d0(3) & (!bcd_sec_d0(1) & (bcd_sec_d0(0) $ (bcd_sec_d0(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcd_sec_d0(0),
	datab => bcd_sec_d0(3),
	datac => bcd_sec_d0(1),
	datad => bcd_sec_d0(2),
	combout => \Mux13~0_combout\);

-- Location: FF_X76_Y30_N31
\hex2[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10Hz~clkctrl_outclk\,
	d => \Mux13~0_combout\,
	ena => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex2[0]~reg0_q\);

-- Location: LCCOMB_X76_Y30_N28
\Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (bcd_sec_d0(3) & ((bcd_sec_d0(0) & (bcd_sec_d0(1))) # (!bcd_sec_d0(0) & ((bcd_sec_d0(2)))))) # (!bcd_sec_d0(3) & (bcd_sec_d0(2) & (bcd_sec_d0(0) $ (bcd_sec_d0(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcd_sec_d0(0),
	datab => bcd_sec_d0(3),
	datac => bcd_sec_d0(1),
	datad => bcd_sec_d0(2),
	combout => \Mux12~0_combout\);

-- Location: FF_X76_Y30_N29
\hex2[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10Hz~clkctrl_outclk\,
	d => \Mux12~0_combout\,
	ena => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex2[1]~reg0_q\);

-- Location: LCCOMB_X76_Y30_N6
\Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (bcd_sec_d0(3) & (bcd_sec_d0(2) & ((bcd_sec_d0(1)) # (!bcd_sec_d0(0))))) # (!bcd_sec_d0(3) & (!bcd_sec_d0(0) & (bcd_sec_d0(1) & !bcd_sec_d0(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcd_sec_d0(0),
	datab => bcd_sec_d0(3),
	datac => bcd_sec_d0(1),
	datad => bcd_sec_d0(2),
	combout => \Mux11~0_combout\);

-- Location: FF_X76_Y30_N7
\hex2[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10Hz~clkctrl_outclk\,
	d => \Mux11~0_combout\,
	ena => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex2[2]~reg0_q\);

-- Location: LCCOMB_X76_Y30_N16
\Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (bcd_sec_d0(0) & ((bcd_sec_d0(1) $ (!bcd_sec_d0(2))))) # (!bcd_sec_d0(0) & ((bcd_sec_d0(3) & (bcd_sec_d0(1) & !bcd_sec_d0(2))) # (!bcd_sec_d0(3) & (!bcd_sec_d0(1) & bcd_sec_d0(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcd_sec_d0(0),
	datab => bcd_sec_d0(3),
	datac => bcd_sec_d0(1),
	datad => bcd_sec_d0(2),
	combout => \Mux10~0_combout\);

-- Location: FF_X76_Y30_N17
\hex2[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10Hz~clkctrl_outclk\,
	d => \Mux10~0_combout\,
	ena => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex2[3]~reg0_q\);

-- Location: LCCOMB_X76_Y30_N26
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (bcd_sec_d0(1) & (bcd_sec_d0(0) & (!bcd_sec_d0(3)))) # (!bcd_sec_d0(1) & ((bcd_sec_d0(2) & ((!bcd_sec_d0(3)))) # (!bcd_sec_d0(2) & (bcd_sec_d0(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcd_sec_d0(0),
	datab => bcd_sec_d0(3),
	datac => bcd_sec_d0(1),
	datad => bcd_sec_d0(2),
	combout => \Mux9~0_combout\);

-- Location: FF_X76_Y30_N27
\hex2[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10Hz~clkctrl_outclk\,
	d => \Mux9~0_combout\,
	ena => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex2[4]~reg0_q\);

-- Location: LCCOMB_X76_Y30_N24
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (bcd_sec_d0(0) & (bcd_sec_d0(3) $ (((bcd_sec_d0(1)) # (!bcd_sec_d0(2)))))) # (!bcd_sec_d0(0) & (!bcd_sec_d0(3) & (bcd_sec_d0(1) & !bcd_sec_d0(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcd_sec_d0(0),
	datab => bcd_sec_d0(3),
	datac => bcd_sec_d0(1),
	datad => bcd_sec_d0(2),
	combout => \Mux8~0_combout\);

-- Location: FF_X76_Y30_N25
\hex2[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10Hz~clkctrl_outclk\,
	d => \Mux8~0_combout\,
	ena => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex2[5]~reg0_q\);

-- Location: LCCOMB_X76_Y30_N2
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (bcd_sec_d0(0) & (!bcd_sec_d0(3) & (bcd_sec_d0(1) $ (!bcd_sec_d0(2))))) # (!bcd_sec_d0(0) & (!bcd_sec_d0(1) & (bcd_sec_d0(3) $ (!bcd_sec_d0(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcd_sec_d0(0),
	datab => bcd_sec_d0(3),
	datac => bcd_sec_d0(1),
	datad => bcd_sec_d0(2),
	combout => \Mux7~0_combout\);

-- Location: FF_X76_Y30_N3
\hex2[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10Hz~clkctrl_outclk\,
	d => \Mux7~0_combout\,
	ena => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex2[6]~reg0_q\);

-- Location: LCCOMB_X79_Y30_N12
\Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (!bcd_sec_d1(1) & (bcd_sec_d1(2) $ (bcd_sec_d1(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcd_sec_d1(1),
	datac => bcd_sec_d1(2),
	datad => bcd_sec_d1(0),
	combout => \Mux20~0_combout\);

-- Location: FF_X79_Y30_N13
\hex3[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10Hz~clkctrl_outclk\,
	d => \Mux20~0_combout\,
	ena => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex3[0]~reg0_q\);

-- Location: LCCOMB_X79_Y30_N30
\Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (bcd_sec_d1(2) & (bcd_sec_d1(1) $ (bcd_sec_d1(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcd_sec_d1(1),
	datac => bcd_sec_d1(2),
	datad => bcd_sec_d1(0),
	combout => \Mux19~0_combout\);

-- Location: FF_X79_Y30_N31
\hex3[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10Hz~clkctrl_outclk\,
	d => \Mux19~0_combout\,
	ena => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex3[1]~reg0_q\);

-- Location: LCCOMB_X79_Y30_N16
\Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (bcd_sec_d1(1) & (!bcd_sec_d1(2) & !bcd_sec_d1(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcd_sec_d1(1),
	datac => bcd_sec_d1(2),
	datad => bcd_sec_d1(0),
	combout => \Mux18~0_combout\);

-- Location: FF_X79_Y30_N17
\hex3[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10Hz~clkctrl_outclk\,
	d => \Mux18~0_combout\,
	ena => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex3[2]~reg0_q\);

-- Location: LCCOMB_X79_Y30_N26
\Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (bcd_sec_d1(1) & (bcd_sec_d1(2) & bcd_sec_d1(0))) # (!bcd_sec_d1(1) & (bcd_sec_d1(2) $ (bcd_sec_d1(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcd_sec_d1(1),
	datac => bcd_sec_d1(2),
	datad => bcd_sec_d1(0),
	combout => \Mux17~0_combout\);

-- Location: FF_X79_Y30_N27
\hex3[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10Hz~clkctrl_outclk\,
	d => \Mux17~0_combout\,
	ena => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex3[3]~reg0_q\);

-- Location: LCCOMB_X79_Y30_N8
\Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (bcd_sec_d1(0)) # ((!bcd_sec_d1(1) & bcd_sec_d1(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcd_sec_d1(1),
	datac => bcd_sec_d1(2),
	datad => bcd_sec_d1(0),
	combout => \Mux16~0_combout\);

-- Location: FF_X79_Y30_N9
\hex3[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10Hz~clkctrl_outclk\,
	d => \Mux16~0_combout\,
	ena => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex3[4]~reg0_q\);

-- Location: LCCOMB_X79_Y30_N10
\Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (bcd_sec_d1(1) & ((bcd_sec_d1(0)) # (!bcd_sec_d1(2)))) # (!bcd_sec_d1(1) & (!bcd_sec_d1(2) & bcd_sec_d1(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcd_sec_d1(1),
	datac => bcd_sec_d1(2),
	datad => bcd_sec_d1(0),
	combout => \Mux15~0_combout\);

-- Location: FF_X79_Y30_N11
\hex3[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10Hz~clkctrl_outclk\,
	d => \Mux15~0_combout\,
	ena => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex3[5]~reg0_q\);

-- Location: LCCOMB_X79_Y30_N4
\Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (bcd_sec_d1(1) & (bcd_sec_d1(2) & bcd_sec_d1(0))) # (!bcd_sec_d1(1) & (!bcd_sec_d1(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcd_sec_d1(1),
	datac => bcd_sec_d1(2),
	datad => bcd_sec_d1(0),
	combout => \Mux14~0_combout\);

-- Location: FF_X79_Y30_N5
\hex3[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10Hz~clkctrl_outclk\,
	d => \Mux14~0_combout\,
	ena => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex3[6]~reg0_q\);

-- Location: LCCOMB_X77_Y30_N24
\Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (bcd_min_d0(3) & (bcd_min_d0(0) & (bcd_min_d0(1) $ (bcd_min_d0(2))))) # (!bcd_min_d0(3) & (!bcd_min_d0(1) & (bcd_min_d0(0) $ (bcd_min_d0(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcd_min_d0(0),
	datab => bcd_min_d0(1),
	datac => bcd_min_d0(3),
	datad => bcd_min_d0(2),
	combout => \Mux27~0_combout\);

-- Location: FF_X77_Y30_N25
\hex4[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10Hz~clkctrl_outclk\,
	d => \Mux27~0_combout\,
	ena => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex4[0]~reg0_q\);

-- Location: LCCOMB_X77_Y30_N2
\Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (bcd_min_d0(1) & ((bcd_min_d0(0) & (bcd_min_d0(3))) # (!bcd_min_d0(0) & ((bcd_min_d0(2)))))) # (!bcd_min_d0(1) & (bcd_min_d0(2) & (bcd_min_d0(0) $ (bcd_min_d0(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcd_min_d0(0),
	datab => bcd_min_d0(1),
	datac => bcd_min_d0(3),
	datad => bcd_min_d0(2),
	combout => \Mux26~0_combout\);

-- Location: FF_X77_Y30_N3
\hex4[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10Hz~clkctrl_outclk\,
	d => \Mux26~0_combout\,
	ena => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex4[1]~reg0_q\);

-- Location: LCCOMB_X77_Y30_N0
\Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (bcd_min_d0(3) & (bcd_min_d0(2) & ((bcd_min_d0(1)) # (!bcd_min_d0(0))))) # (!bcd_min_d0(3) & (!bcd_min_d0(0) & (bcd_min_d0(1) & !bcd_min_d0(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcd_min_d0(0),
	datab => bcd_min_d0(1),
	datac => bcd_min_d0(3),
	datad => bcd_min_d0(2),
	combout => \Mux25~0_combout\);

-- Location: FF_X77_Y30_N1
\hex4[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10Hz~clkctrl_outclk\,
	d => \Mux25~0_combout\,
	ena => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex4[2]~reg0_q\);

-- Location: LCCOMB_X77_Y30_N26
\Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (bcd_min_d0(0) & (bcd_min_d0(1) $ (((!bcd_min_d0(2)))))) # (!bcd_min_d0(0) & ((bcd_min_d0(1) & (bcd_min_d0(3) & !bcd_min_d0(2))) # (!bcd_min_d0(1) & (!bcd_min_d0(3) & bcd_min_d0(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcd_min_d0(0),
	datab => bcd_min_d0(1),
	datac => bcd_min_d0(3),
	datad => bcd_min_d0(2),
	combout => \Mux24~0_combout\);

-- Location: FF_X77_Y30_N27
\hex4[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10Hz~clkctrl_outclk\,
	d => \Mux24~0_combout\,
	ena => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex4[3]~reg0_q\);

-- Location: LCCOMB_X77_Y30_N8
\Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (bcd_min_d0(1) & (bcd_min_d0(0) & (!bcd_min_d0(3)))) # (!bcd_min_d0(1) & ((bcd_min_d0(2) & ((!bcd_min_d0(3)))) # (!bcd_min_d0(2) & (bcd_min_d0(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcd_min_d0(0),
	datab => bcd_min_d0(1),
	datac => bcd_min_d0(3),
	datad => bcd_min_d0(2),
	combout => \Mux23~0_combout\);

-- Location: FF_X77_Y30_N9
\hex4[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10Hz~clkctrl_outclk\,
	d => \Mux23~0_combout\,
	ena => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex4[4]~reg0_q\);

-- Location: LCCOMB_X77_Y30_N22
\Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (bcd_min_d0(0) & (bcd_min_d0(3) $ (((bcd_min_d0(1)) # (!bcd_min_d0(2)))))) # (!bcd_min_d0(0) & (bcd_min_d0(1) & (!bcd_min_d0(3) & !bcd_min_d0(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcd_min_d0(0),
	datab => bcd_min_d0(1),
	datac => bcd_min_d0(3),
	datad => bcd_min_d0(2),
	combout => \Mux22~0_combout\);

-- Location: FF_X77_Y30_N23
\hex4[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10Hz~clkctrl_outclk\,
	d => \Mux22~0_combout\,
	ena => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex4[5]~reg0_q\);

-- Location: LCCOMB_X77_Y30_N12
\Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (bcd_min_d0(0) & (!bcd_min_d0(3) & (bcd_min_d0(1) $ (!bcd_min_d0(2))))) # (!bcd_min_d0(0) & (!bcd_min_d0(1) & (bcd_min_d0(3) $ (!bcd_min_d0(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcd_min_d0(0),
	datab => bcd_min_d0(1),
	datac => bcd_min_d0(3),
	datad => bcd_min_d0(2),
	combout => \Mux21~0_combout\);

-- Location: FF_X77_Y30_N13
\hex4[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10Hz~clkctrl_outclk\,
	d => \Mux21~0_combout\,
	ena => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex4[6]~reg0_q\);

-- Location: LCCOMB_X77_Y30_N18
\Mux34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux34~0_combout\ = (!bcd_min_d1(1) & (bcd_min_d1(0) $ (bcd_min_d1(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => bcd_min_d1(0),
	datac => bcd_min_d1(1),
	datad => bcd_min_d1(2),
	combout => \Mux34~0_combout\);

-- Location: FF_X77_Y30_N19
\hex5[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10Hz~clkctrl_outclk\,
	d => \Mux34~0_combout\,
	ena => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex5[0]~reg0_q\);

-- Location: LCCOMB_X77_Y30_N16
\Mux33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux33~0_combout\ = (bcd_min_d1(2) & (bcd_min_d1(0) $ (bcd_min_d1(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => bcd_min_d1(0),
	datac => bcd_min_d1(1),
	datad => bcd_min_d1(2),
	combout => \Mux33~0_combout\);

-- Location: FF_X77_Y30_N17
\hex5[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10Hz~clkctrl_outclk\,
	d => \Mux33~0_combout\,
	ena => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex5[1]~reg0_q\);

-- Location: LCCOMB_X77_Y30_N30
\Mux32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux32~0_combout\ = (!bcd_min_d1(0) & (bcd_min_d1(1) & !bcd_min_d1(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => bcd_min_d1(0),
	datac => bcd_min_d1(1),
	datad => bcd_min_d1(2),
	combout => \Mux32~0_combout\);

-- Location: FF_X77_Y30_N31
\hex5[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10Hz~clkctrl_outclk\,
	d => \Mux32~0_combout\,
	ena => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex5[2]~reg0_q\);

-- Location: LCCOMB_X73_Y30_N20
\Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = (bcd_min_d1(1) & (bcd_min_d1(0) & bcd_min_d1(2))) # (!bcd_min_d1(1) & (bcd_min_d1(0) $ (bcd_min_d1(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcd_min_d1(1),
	datac => bcd_min_d1(0),
	datad => bcd_min_d1(2),
	combout => \Mux31~0_combout\);

-- Location: FF_X73_Y30_N21
\hex5[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10Hz~clkctrl_outclk\,
	d => \Mux31~0_combout\,
	ena => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex5[3]~reg0_q\);

-- Location: LCCOMB_X73_Y30_N18
\Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = (bcd_min_d1(0)) # ((!bcd_min_d1(1) & bcd_min_d1(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcd_min_d1(1),
	datac => bcd_min_d1(0),
	datad => bcd_min_d1(2),
	combout => \Mux30~0_combout\);

-- Location: FF_X73_Y30_N19
\hex5[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10Hz~clkctrl_outclk\,
	d => \Mux30~0_combout\,
	ena => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex5[4]~reg0_q\);

-- Location: LCCOMB_X77_Y30_N4
\Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = (bcd_min_d1(0) & ((bcd_min_d1(1)) # (!bcd_min_d1(2)))) # (!bcd_min_d1(0) & (bcd_min_d1(1) & !bcd_min_d1(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => bcd_min_d1(0),
	datac => bcd_min_d1(1),
	datad => bcd_min_d1(2),
	combout => \Mux29~0_combout\);

-- Location: FF_X77_Y30_N5
\hex5[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10Hz~clkctrl_outclk\,
	d => \Mux29~0_combout\,
	ena => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex5[5]~reg0_q\);

-- Location: LCCOMB_X73_Y30_N4
\Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = (bcd_min_d1(1) & (bcd_min_d1(0) & bcd_min_d1(2))) # (!bcd_min_d1(1) & ((!bcd_min_d1(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcd_min_d1(1),
	datac => bcd_min_d1(0),
	datad => bcd_min_d1(2),
	combout => \Mux28~0_combout\);

-- Location: FF_X73_Y30_N5
\hex5[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10Hz~clkctrl_outclk\,
	d => \Mux28~0_combout\,
	ena => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex5[6]~reg0_q\);

-- Location: LCCOMB_X79_Y30_N22
\Mux41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux41~0_combout\ = (bcd_hr_d0(2) & (!bcd_hr_d0(1) & (bcd_hr_d0(0) $ (!bcd_hr_d0(3))))) # (!bcd_hr_d0(2) & (bcd_hr_d0(0) & (bcd_hr_d0(1) $ (!bcd_hr_d0(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcd_hr_d0(2),
	datab => bcd_hr_d0(1),
	datac => bcd_hr_d0(0),
	datad => bcd_hr_d0(3),
	combout => \Mux41~0_combout\);

-- Location: FF_X79_Y30_N23
\hex6[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10Hz~clkctrl_outclk\,
	d => \Mux41~0_combout\,
	ena => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex6[0]~reg0_q\);

-- Location: LCCOMB_X76_Y30_N14
\Mux40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux40~0_combout\ = (bcd_hr_d0(3) & ((bcd_hr_d0(0) & (bcd_hr_d0(1))) # (!bcd_hr_d0(0) & ((bcd_hr_d0(2)))))) # (!bcd_hr_d0(3) & (bcd_hr_d0(2) & (bcd_hr_d0(1) $ (bcd_hr_d0(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcd_hr_d0(3),
	datab => bcd_hr_d0(1),
	datac => bcd_hr_d0(0),
	datad => bcd_hr_d0(2),
	combout => \Mux40~0_combout\);

-- Location: LCCOMB_X72_Y30_N26
\hex6[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex6[1]~reg0feeder_combout\ = \Mux40~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux40~0_combout\,
	combout => \hex6[1]~reg0feeder_combout\);

-- Location: FF_X72_Y30_N27
\hex6[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10Hz~clkctrl_outclk\,
	d => \hex6[1]~reg0feeder_combout\,
	ena => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex6[1]~reg0_q\);

-- Location: LCCOMB_X73_Y30_N10
\Mux39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux39~0_combout\ = (bcd_hr_d0(2) & (bcd_hr_d0(3) & ((bcd_hr_d0(1)) # (!bcd_hr_d0(0))))) # (!bcd_hr_d0(2) & (bcd_hr_d0(1) & (!bcd_hr_d0(0) & !bcd_hr_d0(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcd_hr_d0(2),
	datab => bcd_hr_d0(1),
	datac => bcd_hr_d0(0),
	datad => bcd_hr_d0(3),
	combout => \Mux39~0_combout\);

-- Location: FF_X73_Y30_N11
\hex6[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10Hz~clkctrl_outclk\,
	d => \Mux39~0_combout\,
	ena => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex6[2]~reg0_q\);

-- Location: LCCOMB_X79_Y30_N24
\Mux38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux38~0_combout\ = (bcd_hr_d0(0) & (bcd_hr_d0(2) $ ((!bcd_hr_d0(1))))) # (!bcd_hr_d0(0) & ((bcd_hr_d0(2) & (!bcd_hr_d0(1) & !bcd_hr_d0(3))) # (!bcd_hr_d0(2) & (bcd_hr_d0(1) & bcd_hr_d0(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcd_hr_d0(2),
	datab => bcd_hr_d0(1),
	datac => bcd_hr_d0(0),
	datad => bcd_hr_d0(3),
	combout => \Mux38~0_combout\);

-- Location: FF_X79_Y30_N25
\hex6[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10Hz~clkctrl_outclk\,
	d => \Mux38~0_combout\,
	ena => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex6[3]~reg0_q\);

-- Location: LCCOMB_X76_Y30_N0
\Mux37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux37~0_combout\ = (bcd_hr_d0(1) & (!bcd_hr_d0(3) & (bcd_hr_d0(0)))) # (!bcd_hr_d0(1) & ((bcd_hr_d0(2) & (!bcd_hr_d0(3))) # (!bcd_hr_d0(2) & ((bcd_hr_d0(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcd_hr_d0(3),
	datab => bcd_hr_d0(1),
	datac => bcd_hr_d0(0),
	datad => bcd_hr_d0(2),
	combout => \Mux37~0_combout\);

-- Location: FF_X76_Y30_N1
\hex6[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10Hz~clkctrl_outclk\,
	d => \Mux37~0_combout\,
	ena => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex6[4]~reg0_q\);

-- Location: LCCOMB_X73_Y30_N8
\Mux36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux36~0_combout\ = (bcd_hr_d0(2) & (bcd_hr_d0(0) & (bcd_hr_d0(1) $ (bcd_hr_d0(3))))) # (!bcd_hr_d0(2) & (!bcd_hr_d0(3) & ((bcd_hr_d0(1)) # (bcd_hr_d0(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcd_hr_d0(2),
	datab => bcd_hr_d0(1),
	datac => bcd_hr_d0(0),
	datad => bcd_hr_d0(3),
	combout => \Mux36~0_combout\);

-- Location: FF_X73_Y30_N9
\hex6[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10Hz~clkctrl_outclk\,
	d => \Mux36~0_combout\,
	ena => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex6[5]~reg0_q\);

-- Location: LCCOMB_X76_Y30_N22
\Mux35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux35~0_combout\ = (bcd_hr_d0(0) & (!bcd_hr_d0(3) & (bcd_hr_d0(1) $ (!bcd_hr_d0(2))))) # (!bcd_hr_d0(0) & (!bcd_hr_d0(1) & (bcd_hr_d0(3) $ (!bcd_hr_d0(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcd_hr_d0(3),
	datab => bcd_hr_d0(1),
	datac => bcd_hr_d0(0),
	datad => bcd_hr_d0(2),
	combout => \Mux35~0_combout\);

-- Location: FF_X76_Y30_N23
\hex6[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10Hz~clkctrl_outclk\,
	d => \Mux35~0_combout\,
	ena => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex6[6]~reg0_q\);

-- Location: LCCOMB_X73_Y30_N26
\Mux48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux48~0_combout\ = (bcd_hr_d1(2) & (!bcd_hr_d1(1) & (bcd_hr_d1(0) $ (!bcd_hr_d1(3))))) # (!bcd_hr_d1(2) & (bcd_hr_d1(0) & (bcd_hr_d1(3) $ (!bcd_hr_d1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcd_hr_d1(2),
	datab => bcd_hr_d1(0),
	datac => bcd_hr_d1(3),
	datad => bcd_hr_d1(1),
	combout => \Mux48~0_combout\);

-- Location: FF_X73_Y30_N27
\hex7[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10Hz~clkctrl_outclk\,
	d => \Mux48~0_combout\,
	ena => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex7[0]~reg0_q\);

-- Location: LCCOMB_X73_Y30_N0
\Mux47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux47~0_combout\ = (bcd_hr_d1(3) & ((bcd_hr_d1(0) & ((bcd_hr_d1(1)))) # (!bcd_hr_d1(0) & (bcd_hr_d1(2))))) # (!bcd_hr_d1(3) & (bcd_hr_d1(2) & (bcd_hr_d1(0) $ (bcd_hr_d1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcd_hr_d1(2),
	datab => bcd_hr_d1(0),
	datac => bcd_hr_d1(3),
	datad => bcd_hr_d1(1),
	combout => \Mux47~0_combout\);

-- Location: FF_X73_Y30_N1
\hex7[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10Hz~clkctrl_outclk\,
	d => \Mux47~0_combout\,
	ena => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex7[1]~reg0_q\);

-- Location: LCCOMB_X73_Y30_N22
\Mux46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux46~0_combout\ = (bcd_hr_d1(2) & (bcd_hr_d1(3) & ((bcd_hr_d1(1)) # (!bcd_hr_d1(0))))) # (!bcd_hr_d1(2) & (!bcd_hr_d1(0) & (!bcd_hr_d1(3) & bcd_hr_d1(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcd_hr_d1(2),
	datab => bcd_hr_d1(0),
	datac => bcd_hr_d1(3),
	datad => bcd_hr_d1(1),
	combout => \Mux46~0_combout\);

-- Location: FF_X73_Y30_N23
\hex7[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10Hz~clkctrl_outclk\,
	d => \Mux46~0_combout\,
	ena => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex7[2]~reg0_q\);

-- Location: LCCOMB_X73_Y30_N28
\Mux45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux45~0_combout\ = (bcd_hr_d1(0) & (bcd_hr_d1(2) $ (((!bcd_hr_d1(1)))))) # (!bcd_hr_d1(0) & ((bcd_hr_d1(2) & (!bcd_hr_d1(3) & !bcd_hr_d1(1))) # (!bcd_hr_d1(2) & (bcd_hr_d1(3) & bcd_hr_d1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcd_hr_d1(2),
	datab => bcd_hr_d1(0),
	datac => bcd_hr_d1(3),
	datad => bcd_hr_d1(1),
	combout => \Mux45~0_combout\);

-- Location: FF_X73_Y30_N29
\hex7[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10Hz~clkctrl_outclk\,
	d => \Mux45~0_combout\,
	ena => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex7[3]~reg0_q\);

-- Location: LCCOMB_X73_Y30_N2
\Mux44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux44~0_combout\ = (bcd_hr_d1(1) & (((bcd_hr_d1(0) & !bcd_hr_d1(3))))) # (!bcd_hr_d1(1) & ((bcd_hr_d1(2) & ((!bcd_hr_d1(3)))) # (!bcd_hr_d1(2) & (bcd_hr_d1(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcd_hr_d1(2),
	datab => bcd_hr_d1(0),
	datac => bcd_hr_d1(3),
	datad => bcd_hr_d1(1),
	combout => \Mux44~0_combout\);

-- Location: FF_X73_Y30_N3
\hex7[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10Hz~clkctrl_outclk\,
	d => \Mux44~0_combout\,
	ena => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex7[4]~reg0_q\);

-- Location: LCCOMB_X73_Y30_N12
\Mux43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux43~0_combout\ = (bcd_hr_d1(2) & (bcd_hr_d1(0) & (bcd_hr_d1(3) $ (bcd_hr_d1(1))))) # (!bcd_hr_d1(2) & (!bcd_hr_d1(3) & ((bcd_hr_d1(0)) # (bcd_hr_d1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcd_hr_d1(2),
	datab => bcd_hr_d1(0),
	datac => bcd_hr_d1(3),
	datad => bcd_hr_d1(1),
	combout => \Mux43~0_combout\);

-- Location: FF_X73_Y30_N13
\hex7[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10Hz~clkctrl_outclk\,
	d => \Mux43~0_combout\,
	ena => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex7[5]~reg0_q\);

-- Location: LCCOMB_X73_Y30_N30
\Mux42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux42~0_combout\ = (bcd_hr_d1(0) & (!bcd_hr_d1(3) & (bcd_hr_d1(2) $ (!bcd_hr_d1(1))))) # (!bcd_hr_d1(0) & (!bcd_hr_d1(1) & (bcd_hr_d1(2) $ (!bcd_hr_d1(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcd_hr_d1(2),
	datab => bcd_hr_d1(0),
	datac => bcd_hr_d1(3),
	datad => bcd_hr_d1(1),
	combout => \Mux42~0_combout\);

-- Location: FF_X73_Y30_N31
\hex7[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10Hz~clkctrl_outclk\,
	d => \Mux42~0_combout\,
	ena => \reset_key~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hex7[6]~reg0_q\);

-- Location: IOIBUF_X0_Y52_N15
\data_bus[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data_bus(0),
	o => \data_bus[0]~input_o\);

-- Location: IOIBUF_X0_Y44_N8
\data_bus[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data_bus(1),
	o => \data_bus[1]~input_o\);

-- Location: IOIBUF_X0_Y44_N1
\data_bus[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data_bus(2),
	o => \data_bus[2]~input_o\);

-- Location: IOIBUF_X0_Y49_N8
\data_bus[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data_bus(3),
	o => \data_bus[3]~input_o\);

-- Location: IOIBUF_X0_Y54_N8
\data_bus[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data_bus(4),
	o => \data_bus[4]~input_o\);

-- Location: IOIBUF_X0_Y55_N22
\data_bus[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data_bus(5),
	o => \data_bus[5]~input_o\);

-- Location: IOIBUF_X0_Y51_N15
\data_bus[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data_bus(6),
	o => \data_bus[6]~input_o\);

-- Location: IOIBUF_X0_Y47_N1
\data_bus[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => data_bus(7),
	o => \data_bus[7]~input_o\);

ww_lcd_blon <= \lcd_blon~output_o\;

ww_lcd_rs <= \lcd_rs~output_o\;

ww_lcd_enable <= \lcd_enable~output_o\;

ww_lcd_on <= \lcd_on~output_o\;

ww_led_reset <= \led_reset~output_o\;

ww_led_second <= \led_second~output_o\;

ww_led_counter(0) <= \led_counter[0]~output_o\;

ww_led_counter(1) <= \led_counter[1]~output_o\;

ww_led_counter(2) <= \led_counter[2]~output_o\;

ww_led_counter(3) <= \led_counter[3]~output_o\;

ww_led_counter(4) <= \led_counter[4]~output_o\;

ww_led_counter(5) <= \led_counter[5]~output_o\;

ww_led_counter(6) <= \led_counter[6]~output_o\;

ww_led_counter(7) <= \led_counter[7]~output_o\;

ww_lcd_rw <= \lcd_rw~output_o\;

ww_hex0(0) <= \hex0[0]~output_o\;

ww_hex0(1) <= \hex0[1]~output_o\;

ww_hex0(2) <= \hex0[2]~output_o\;

ww_hex0(3) <= \hex0[3]~output_o\;

ww_hex0(4) <= \hex0[4]~output_o\;

ww_hex0(5) <= \hex0[5]~output_o\;

ww_hex0(6) <= \hex0[6]~output_o\;

ww_hex1(0) <= \hex1[0]~output_o\;

ww_hex1(1) <= \hex1[1]~output_o\;

ww_hex1(2) <= \hex1[2]~output_o\;

ww_hex1(3) <= \hex1[3]~output_o\;

ww_hex1(4) <= \hex1[4]~output_o\;

ww_hex1(5) <= \hex1[5]~output_o\;

ww_hex1(6) <= \hex1[6]~output_o\;

ww_hex2(0) <= \hex2[0]~output_o\;

ww_hex2(1) <= \hex2[1]~output_o\;

ww_hex2(2) <= \hex2[2]~output_o\;

ww_hex2(3) <= \hex2[3]~output_o\;

ww_hex2(4) <= \hex2[4]~output_o\;

ww_hex2(5) <= \hex2[5]~output_o\;

ww_hex2(6) <= \hex2[6]~output_o\;

ww_hex3(0) <= \hex3[0]~output_o\;

ww_hex3(1) <= \hex3[1]~output_o\;

ww_hex3(2) <= \hex3[2]~output_o\;

ww_hex3(3) <= \hex3[3]~output_o\;

ww_hex3(4) <= \hex3[4]~output_o\;

ww_hex3(5) <= \hex3[5]~output_o\;

ww_hex3(6) <= \hex3[6]~output_o\;

ww_hex4(0) <= \hex4[0]~output_o\;

ww_hex4(1) <= \hex4[1]~output_o\;

ww_hex4(2) <= \hex4[2]~output_o\;

ww_hex4(3) <= \hex4[3]~output_o\;

ww_hex4(4) <= \hex4[4]~output_o\;

ww_hex4(5) <= \hex4[5]~output_o\;

ww_hex4(6) <= \hex4[6]~output_o\;

ww_hex5(0) <= \hex5[0]~output_o\;

ww_hex5(1) <= \hex5[1]~output_o\;

ww_hex5(2) <= \hex5[2]~output_o\;

ww_hex5(3) <= \hex5[3]~output_o\;

ww_hex5(4) <= \hex5[4]~output_o\;

ww_hex5(5) <= \hex5[5]~output_o\;

ww_hex5(6) <= \hex5[6]~output_o\;

ww_hex6(0) <= \hex6[0]~output_o\;

ww_hex6(1) <= \hex6[1]~output_o\;

ww_hex6(2) <= \hex6[2]~output_o\;

ww_hex6(3) <= \hex6[3]~output_o\;

ww_hex6(4) <= \hex6[4]~output_o\;

ww_hex6(5) <= \hex6[5]~output_o\;

ww_hex6(6) <= \hex6[6]~output_o\;

ww_hex7(0) <= \hex7[0]~output_o\;

ww_hex7(1) <= \hex7[1]~output_o\;

ww_hex7(2) <= \hex7[2]~output_o\;

ww_hex7(3) <= \hex7[3]~output_o\;

ww_hex7(4) <= \hex7[4]~output_o\;

ww_hex7(5) <= \hex7[5]~output_o\;

ww_hex7(6) <= \hex7[6]~output_o\;

data_bus(0) <= \data_bus[0]~output_o\;

data_bus(1) <= \data_bus[1]~output_o\;

data_bus(2) <= \data_bus[2]~output_o\;

data_bus(3) <= \data_bus[3]~output_o\;

data_bus(4) <= \data_bus[4]~output_o\;

data_bus(5) <= \data_bus[5]~output_o\;

data_bus(6) <= \data_bus[6]~output_o\;

data_bus(7) <= \data_bus[7]~output_o\;
END structure;


