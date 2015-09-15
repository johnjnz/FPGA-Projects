-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
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
-- VERSION "Version 15.0.2 Build 153 07/15/2015 SJ Web Edition"

-- DATE "09/15/2015 19:00:13"

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

ENTITY 	sram_test IS
    PORT (
	clk_50mhz : IN std_logic;
	switch : IN std_logic_vector(31 DOWNTO 0);
	keys : IN std_logic_vector(3 DOWNTO 0);
	leds : OUT std_logic_vector(31 DOWNTO 0);
	ssd0 : OUT std_logic_vector(6 DOWNTO 0);
	ssd1 : OUT std_logic_vector(6 DOWNTO 0);
	heartbeat_led : OUT std_logic
	);
END sram_test;

-- Design Ports Information
-- leds[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- leds[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- leds[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- leds[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- leds[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- leds[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- leds[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- leds[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- leds[8]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- leds[9]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- leds[10]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- leds[11]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- leds[12]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- leds[13]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- leds[14]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- leds[15]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- leds[16]	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[17]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[18]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[19]	=>  Location: PIN_AC21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[20]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[21]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[22]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[23]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[24]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[25]	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[26]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[27]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[28]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[29]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[30]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[31]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- ssd0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- ssd0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- ssd0[3]	=>  Location: PIN_L26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ssd0[4]	=>  Location: PIN_L25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ssd0[5]	=>  Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ssd0[6]	=>  Location: PIN_H22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ssd1[0]	=>  Location: PIN_M24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ssd1[1]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ssd1[2]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ssd1[3]	=>  Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ssd1[4]	=>  Location: PIN_W25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ssd1[5]	=>  Location: PIN_U23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ssd1[6]	=>  Location: PIN_U24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- heartbeat_led	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- clk_50mhz	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switch[0]	=>  Location: PIN_AB28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switch[1]	=>  Location: PIN_AC28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switch[2]	=>  Location: PIN_AC27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switch[3]	=>  Location: PIN_AD27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switch[4]	=>  Location: PIN_AB27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switch[5]	=>  Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switch[6]	=>  Location: PIN_AD26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switch[7]	=>  Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switch[8]	=>  Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switch[9]	=>  Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switch[10]	=>  Location: PIN_AC24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switch[11]	=>  Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switch[12]	=>  Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switch[13]	=>  Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switch[14]	=>  Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switch[15]	=>  Location: PIN_AA22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switch[16]	=>  Location: PIN_AF27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[17]	=>  Location: PIN_V27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[18]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[19]	=>  Location: PIN_AD28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[20]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[21]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[22]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[23]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[24]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[25]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[26]	=>  Location: PIN_V26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[27]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[28]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[29]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[30]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[31]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keys[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keys[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keys[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- keys[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF sram_test IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_50mhz : std_logic;
SIGNAL ww_switch : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_keys : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_leds : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_ssd0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_ssd1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_heartbeat_led : std_logic;
SIGNAL \instance_ram|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \instance_ram|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \instance_ram|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \instance_ram|ram_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \instance_ram|ram_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \instance_ram|ram_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \clk_50mhz~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \leds[0]~output_o\ : std_logic;
SIGNAL \leds[1]~output_o\ : std_logic;
SIGNAL \leds[2]~output_o\ : std_logic;
SIGNAL \leds[3]~output_o\ : std_logic;
SIGNAL \leds[4]~output_o\ : std_logic;
SIGNAL \leds[5]~output_o\ : std_logic;
SIGNAL \leds[6]~output_o\ : std_logic;
SIGNAL \leds[7]~output_o\ : std_logic;
SIGNAL \leds[8]~output_o\ : std_logic;
SIGNAL \leds[9]~output_o\ : std_logic;
SIGNAL \leds[10]~output_o\ : std_logic;
SIGNAL \leds[11]~output_o\ : std_logic;
SIGNAL \leds[12]~output_o\ : std_logic;
SIGNAL \leds[13]~output_o\ : std_logic;
SIGNAL \leds[14]~output_o\ : std_logic;
SIGNAL \leds[15]~output_o\ : std_logic;
SIGNAL \leds[16]~output_o\ : std_logic;
SIGNAL \leds[17]~output_o\ : std_logic;
SIGNAL \leds[18]~output_o\ : std_logic;
SIGNAL \leds[19]~output_o\ : std_logic;
SIGNAL \leds[20]~output_o\ : std_logic;
SIGNAL \leds[21]~output_o\ : std_logic;
SIGNAL \leds[22]~output_o\ : std_logic;
SIGNAL \leds[23]~output_o\ : std_logic;
SIGNAL \leds[24]~output_o\ : std_logic;
SIGNAL \leds[25]~output_o\ : std_logic;
SIGNAL \leds[26]~output_o\ : std_logic;
SIGNAL \leds[27]~output_o\ : std_logic;
SIGNAL \leds[28]~output_o\ : std_logic;
SIGNAL \leds[29]~output_o\ : std_logic;
SIGNAL \leds[30]~output_o\ : std_logic;
SIGNAL \leds[31]~output_o\ : std_logic;
SIGNAL \ssd0[0]~output_o\ : std_logic;
SIGNAL \ssd0[1]~output_o\ : std_logic;
SIGNAL \ssd0[2]~output_o\ : std_logic;
SIGNAL \ssd0[3]~output_o\ : std_logic;
SIGNAL \ssd0[4]~output_o\ : std_logic;
SIGNAL \ssd0[5]~output_o\ : std_logic;
SIGNAL \ssd0[6]~output_o\ : std_logic;
SIGNAL \ssd1[0]~output_o\ : std_logic;
SIGNAL \ssd1[1]~output_o\ : std_logic;
SIGNAL \ssd1[2]~output_o\ : std_logic;
SIGNAL \ssd1[3]~output_o\ : std_logic;
SIGNAL \ssd1[4]~output_o\ : std_logic;
SIGNAL \ssd1[5]~output_o\ : std_logic;
SIGNAL \ssd1[6]~output_o\ : std_logic;
SIGNAL \heartbeat_led~output_o\ : std_logic;
SIGNAL \clk_50mhz~input_o\ : std_logic;
SIGNAL \clk_50mhz~inputclkctrl_outclk\ : std_logic;
SIGNAL \keys[3]~input_o\ : std_logic;
SIGNAL \instance_debounce|reg_A[3]~feeder_combout\ : std_logic;
SIGNAL \instance_debounce|reg_B[3]~feeder_combout\ : std_logic;
SIGNAL \instance_debounce|reg_out[3]~feeder_combout\ : std_logic;
SIGNAL \instance_debounce|cnt_reg[0]~14_combout\ : std_logic;
SIGNAL \keys[2]~input_o\ : std_logic;
SIGNAL \instance_debounce|reg_A[2]~feeder_combout\ : std_logic;
SIGNAL \instance_debounce|reg_B[2]~feeder_combout\ : std_logic;
SIGNAL \instance_debounce|cnt_next~1_combout\ : std_logic;
SIGNAL \keys[0]~input_o\ : std_logic;
SIGNAL \instance_debounce|reg_A[0]~feeder_combout\ : std_logic;
SIGNAL \instance_debounce|reg_B[0]~feeder_combout\ : std_logic;
SIGNAL \keys[1]~input_o\ : std_logic;
SIGNAL \instance_debounce|reg_A[1]~feeder_combout\ : std_logic;
SIGNAL \instance_debounce|reg_B[1]~feeder_combout\ : std_logic;
SIGNAL \instance_debounce|cnt_next~0_combout\ : std_logic;
SIGNAL \instance_debounce|cnt_next~2_combout\ : std_logic;
SIGNAL \instance_debounce|cnt_reg[0]~15\ : std_logic;
SIGNAL \instance_debounce|cnt_reg[1]~16_combout\ : std_logic;
SIGNAL \instance_debounce|cnt_reg[1]~17\ : std_logic;
SIGNAL \instance_debounce|cnt_reg[2]~18_combout\ : std_logic;
SIGNAL \instance_debounce|cnt_reg[2]~19\ : std_logic;
SIGNAL \instance_debounce|cnt_reg[3]~20_combout\ : std_logic;
SIGNAL \instance_debounce|cnt_reg[3]~21\ : std_logic;
SIGNAL \instance_debounce|cnt_reg[4]~22_combout\ : std_logic;
SIGNAL \instance_debounce|cnt_reg[4]~23\ : std_logic;
SIGNAL \instance_debounce|cnt_reg[5]~24_combout\ : std_logic;
SIGNAL \instance_debounce|cnt_reg[5]~25\ : std_logic;
SIGNAL \instance_debounce|cnt_reg[6]~26_combout\ : std_logic;
SIGNAL \instance_debounce|cnt_reg[6]~27\ : std_logic;
SIGNAL \instance_debounce|cnt_reg[7]~28_combout\ : std_logic;
SIGNAL \instance_debounce|cnt_reg[7]~29\ : std_logic;
SIGNAL \instance_debounce|cnt_reg[8]~30_combout\ : std_logic;
SIGNAL \instance_debounce|cnt_reg[8]~31\ : std_logic;
SIGNAL \instance_debounce|cnt_reg[9]~32_combout\ : std_logic;
SIGNAL \instance_debounce|cnt_reg[9]~33\ : std_logic;
SIGNAL \instance_debounce|cnt_reg[10]~34_combout\ : std_logic;
SIGNAL \instance_debounce|cnt_reg[10]~35\ : std_logic;
SIGNAL \instance_debounce|cnt_reg[11]~36_combout\ : std_logic;
SIGNAL \instance_debounce|Equal0~2_combout\ : std_logic;
SIGNAL \instance_debounce|Equal0~1_combout\ : std_logic;
SIGNAL \instance_debounce|cnt_reg[11]~37\ : std_logic;
SIGNAL \instance_debounce|cnt_reg[12]~38_combout\ : std_logic;
SIGNAL \instance_debounce|cnt_reg[12]~39\ : std_logic;
SIGNAL \instance_debounce|cnt_reg[13]~40_combout\ : std_logic;
SIGNAL \instance_debounce|Equal0~3_combout\ : std_logic;
SIGNAL \instance_debounce|Equal0~0_combout\ : std_logic;
SIGNAL \instance_debounce|Equal0~4_combout\ : std_logic;
SIGNAL \instance_debounce|strb_next~1_combout\ : std_logic;
SIGNAL \instance_debounce|strb_next~0_combout\ : std_logic;
SIGNAL \instance_debounce|strb_next~2_combout\ : std_logic;
SIGNAL \instance_debounce|strb_reg~q\ : std_logic;
SIGNAL \next_state.IDLE~0_combout\ : std_logic;
SIGNAL \next_state.IDLE~1_combout\ : std_logic;
SIGNAL \next_state.IDLE~q\ : std_logic;
SIGNAL \curr_state.IDLE~q\ : std_logic;
SIGNAL \next_state~9_combout\ : std_logic;
SIGNAL \next_state~10_combout\ : std_logic;
SIGNAL \next_state.WRITE_RAM~q\ : std_logic;
SIGNAL \curr_state.WRITE_RAM~q\ : std_logic;
SIGNAL \write_en~feeder_combout\ : std_logic;
SIGNAL \write_en~q\ : std_logic;
SIGNAL \switch[0]~input_o\ : std_logic;
SIGNAL \ram_data_in[0]~feeder_combout\ : std_logic;
SIGNAL \ram_address[0]~8_combout\ : std_logic;
SIGNAL \ram_address[0]~10_combout\ : std_logic;
SIGNAL \keypress~0_combout\ : std_logic;
SIGNAL \ram_address[0]~9\ : std_logic;
SIGNAL \ram_address[1]~11_combout\ : std_logic;
SIGNAL \ram_address[1]~12\ : std_logic;
SIGNAL \ram_address[2]~13_combout\ : std_logic;
SIGNAL \ram_address[2]~14\ : std_logic;
SIGNAL \ram_address[3]~15_combout\ : std_logic;
SIGNAL \ram_address[3]~16\ : std_logic;
SIGNAL \ram_address[4]~17_combout\ : std_logic;
SIGNAL \ram_address[4]~18\ : std_logic;
SIGNAL \ram_address[5]~19_combout\ : std_logic;
SIGNAL \ram_address[5]~20\ : std_logic;
SIGNAL \ram_address[6]~21_combout\ : std_logic;
SIGNAL \ram_address[6]~22\ : std_logic;
SIGNAL \ram_address[7]~23_combout\ : std_logic;
SIGNAL \switch[1]~input_o\ : std_logic;
SIGNAL \switch[2]~input_o\ : std_logic;
SIGNAL \ram_data_in[2]~feeder_combout\ : std_logic;
SIGNAL \switch[3]~input_o\ : std_logic;
SIGNAL \ram_data_in[3]~feeder_combout\ : std_logic;
SIGNAL \switch[4]~input_o\ : std_logic;
SIGNAL \ram_data_in[4]~feeder_combout\ : std_logic;
SIGNAL \switch[5]~input_o\ : std_logic;
SIGNAL \ram_data_in[5]~feeder_combout\ : std_logic;
SIGNAL \switch[6]~input_o\ : std_logic;
SIGNAL \ram_data_in[6]~feeder_combout\ : std_logic;
SIGNAL \switch[7]~input_o\ : std_logic;
SIGNAL \ram_data_in[7]~feeder_combout\ : std_logic;
SIGNAL \switch[8]~input_o\ : std_logic;
SIGNAL \ram_data_in[8]~feeder_combout\ : std_logic;
SIGNAL \switch[9]~input_o\ : std_logic;
SIGNAL \ram_data_in[9]~feeder_combout\ : std_logic;
SIGNAL \switch[10]~input_o\ : std_logic;
SIGNAL \switch[11]~input_o\ : std_logic;
SIGNAL \switch[12]~input_o\ : std_logic;
SIGNAL \ram_data_in[12]~feeder_combout\ : std_logic;
SIGNAL \switch[13]~input_o\ : std_logic;
SIGNAL \ram_data_in[13]~feeder_combout\ : std_logic;
SIGNAL \instance_ram|ram_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \instance_ram|ram_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \instance_ram|ram_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \instance_ram|ram_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \instance_ram|ram_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \instance_ram|ram_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \instance_ram|ram_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \instance_ram|ram_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \instance_ram|ram_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \instance_ram|ram_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \instance_ram|ram_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \instance_ram|ram_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \instance_ram|ram_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \instance_ram|ram_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \switch[14]~input_o\ : std_logic;
SIGNAL \switch[15]~input_o\ : std_logic;
SIGNAL \switch[16]~input_o\ : std_logic;
SIGNAL \switch[17]~input_o\ : std_logic;
SIGNAL \ram_data_in[17]~feeder_combout\ : std_logic;
SIGNAL \switch[18]~input_o\ : std_logic;
SIGNAL \ram_data_in[18]~feeder_combout\ : std_logic;
SIGNAL \switch[19]~input_o\ : std_logic;
SIGNAL \switch[20]~input_o\ : std_logic;
SIGNAL \ram_data_in[20]~feeder_combout\ : std_logic;
SIGNAL \switch[21]~input_o\ : std_logic;
SIGNAL \ram_data_in[21]~feeder_combout\ : std_logic;
SIGNAL \switch[22]~input_o\ : std_logic;
SIGNAL \ram_data_in[22]~feeder_combout\ : std_logic;
SIGNAL \switch[23]~input_o\ : std_logic;
SIGNAL \ram_data_in[23]~feeder_combout\ : std_logic;
SIGNAL \switch[24]~input_o\ : std_logic;
SIGNAL \ram_data_in[24]~feeder_combout\ : std_logic;
SIGNAL \switch[25]~input_o\ : std_logic;
SIGNAL \switch[26]~input_o\ : std_logic;
SIGNAL \ram_data_in[26]~feeder_combout\ : std_logic;
SIGNAL \switch[27]~input_o\ : std_logic;
SIGNAL \ram_data_in[27]~feeder_combout\ : std_logic;
SIGNAL \switch[28]~input_o\ : std_logic;
SIGNAL \ram_data_in[28]~feeder_combout\ : std_logic;
SIGNAL \switch[29]~input_o\ : std_logic;
SIGNAL \switch[30]~input_o\ : std_logic;
SIGNAL \ram_data_in[30]~feeder_combout\ : std_logic;
SIGNAL \switch[31]~input_o\ : std_logic;
SIGNAL \ram_data_in[31]~feeder_combout\ : std_logic;
SIGNAL \instance_ram|ram_rtl_0|auto_generated|ram_block1a14~portadataout\ : std_logic;
SIGNAL \instance_ram|ram_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \instance_ram|ram_rtl_0|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \instance_ram|ram_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \instance_ram|ram_rtl_0|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \instance_ram|ram_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \instance_ram|ram_rtl_0|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \instance_ram|ram_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \instance_ram|ram_rtl_0|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \instance_ram|ram_rtl_0|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \instance_ram|ram_rtl_0|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \instance_ram|ram_rtl_0|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \instance_ram|ram_rtl_0|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \instance_ram|ram_rtl_0|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \instance_ram|ram_rtl_0|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \instance_ram|ram_rtl_0|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \instance_ram|ram_rtl_0|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \instance_ram|ram_rtl_0|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \slv[1]~feeder_combout\ : std_logic;
SIGNAL \slv[0]~feeder_combout\ : std_logic;
SIGNAL \slv[2]~feeder_combout\ : std_logic;
SIGNAL \slv[3]~feeder_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \ssd0[0]~reg0_q\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \ssd0[1]~reg0_q\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \ssd0[2]~reg0_q\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \ssd0[3]~reg0_q\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \ssd0[4]~reg0_q\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \ssd0[5]~reg0_q\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \ssd0[6]~reg0_q\ : std_logic;
SIGNAL \slv[7]~feeder_combout\ : std_logic;
SIGNAL \slv[6]~feeder_combout\ : std_logic;
SIGNAL \slv[4]~feeder_combout\ : std_logic;
SIGNAL \slv[5]~feeder_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \ssd1[0]~reg0_q\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \ssd1[1]~reg0_q\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \ssd1[2]~reg0_q\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \ssd1[3]~reg0_q\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \ssd1[4]~reg0_q\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \ssd1[5]~reg0_q\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \ssd1[6]~reg0_q\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \heartbeat:count[0]~q\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \heartbeat:count[1]~q\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \heartbeat:count[2]~q\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \heartbeat:count[3]~q\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \heartbeat:count[4]~q\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \heartbeat:count[5]~q\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \heartbeat:count[6]~q\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \count~0_combout\ : std_logic;
SIGNAL \heartbeat:count[7]~q\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \heartbeat:count[8]~q\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \count~1_combout\ : std_logic;
SIGNAL \heartbeat:count[9]~q\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \heartbeat:count[10]~q\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \count~2_combout\ : std_logic;
SIGNAL \heartbeat:count[11]~q\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \count~3_combout\ : std_logic;
SIGNAL \heartbeat:count[12]~q\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \count~4_combout\ : std_logic;
SIGNAL \heartbeat:count[13]~q\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \heartbeat:count[14]~q\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \count~5_combout\ : std_logic;
SIGNAL \heartbeat:count[15]~q\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \heartbeat:count[16]~q\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \heartbeat:count[17]~q\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \count~6_combout\ : std_logic;
SIGNAL \heartbeat:count[18]~q\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \count~7_combout\ : std_logic;
SIGNAL \heartbeat:count[19]~q\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \heartbeat:count[20]~q\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \heartbeat:count[21]~q\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \heartbeat:count[22]~q\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \count~8_combout\ : std_logic;
SIGNAL \heartbeat:count[23]~q\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \count~9_combout\ : std_logic;
SIGNAL \heartbeat:count[24]~q\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \heartbeat:count[25]~q\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \heartbeat:count[26]~q\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \heartbeat:count[27]~q\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \heartbeat:count[28]~q\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \heartbeat:count[29]~q\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \heartbeat:count[30]~q\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \heartbeat:count[31]~q\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \clk_1hz~0_combout\ : std_logic;
SIGNAL \clk_1hz~q\ : std_logic;
SIGNAL \instance_debounce|reg_A\ : std_logic_vector(3 DOWNTO 0);
SIGNAL ram_address : std_logic_vector(7 DOWNTO 0);
SIGNAL \instance_debounce|cnt_reg\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \instance_debounce|reg_B\ : std_logic_vector(3 DOWNTO 0);
SIGNAL ram_data_in : std_logic_vector(31 DOWNTO 0);
SIGNAL \instance_debounce|reg_out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL slv : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_clk_50mhz <= clk_50mhz;
ww_switch <= switch;
ww_keys <= keys;
leds <= ww_leds;
ssd0 <= ww_ssd0;
ssd1 <= ww_ssd1;
heartbeat_led <= ww_heartbeat_led;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\instance_ram|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & ram_data_in(13) & ram_data_in(12) & ram_data_in(11) & ram_data_in(10) & ram_data_in(9) & ram_data_in(8) & ram_data_in(7) & ram_data_in(6) & 
ram_data_in(5) & ram_data_in(4) & ram_data_in(3) & ram_data_in(2) & ram_data_in(1) & ram_data_in(0));

\instance_ram|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (ram_address(7) & ram_address(6) & ram_address(5) & ram_address(4) & ram_address(3) & ram_address(2) & ram_address(1) & ram_address(0));

\instance_ram|ram_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \instance_ram|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\instance_ram|ram_rtl_0|auto_generated|ram_block1a1\ <= \instance_ram|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\instance_ram|ram_rtl_0|auto_generated|ram_block1a2\ <= \instance_ram|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\instance_ram|ram_rtl_0|auto_generated|ram_block1a3\ <= \instance_ram|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\instance_ram|ram_rtl_0|auto_generated|ram_block1a4\ <= \instance_ram|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\instance_ram|ram_rtl_0|auto_generated|ram_block1a5\ <= \instance_ram|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\instance_ram|ram_rtl_0|auto_generated|ram_block1a6\ <= \instance_ram|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\instance_ram|ram_rtl_0|auto_generated|ram_block1a7\ <= \instance_ram|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\instance_ram|ram_rtl_0|auto_generated|ram_block1a8\ <= \instance_ram|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\instance_ram|ram_rtl_0|auto_generated|ram_block1a9\ <= \instance_ram|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\instance_ram|ram_rtl_0|auto_generated|ram_block1a10\ <= \instance_ram|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\instance_ram|ram_rtl_0|auto_generated|ram_block1a11\ <= \instance_ram|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\instance_ram|ram_rtl_0|auto_generated|ram_block1a12\ <= \instance_ram|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\instance_ram|ram_rtl_0|auto_generated|ram_block1a13\ <= \instance_ram|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);

\instance_ram|ram_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\ <= (ram_data_in(31) & ram_data_in(30) & ram_data_in(29) & ram_data_in(28) & ram_data_in(27) & ram_data_in(26) & ram_data_in(25) & ram_data_in(24) & ram_data_in(23) & 
ram_data_in(22) & ram_data_in(21) & ram_data_in(20) & ram_data_in(19) & ram_data_in(18) & ram_data_in(17) & ram_data_in(16) & ram_data_in(15) & ram_data_in(14));

\instance_ram|ram_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (ram_address(7) & ram_address(6) & ram_address(5) & ram_address(4) & ram_address(3) & ram_address(2) & ram_address(1) & ram_address(0));

\instance_ram|ram_rtl_0|auto_generated|ram_block1a14~portadataout\ <= \instance_ram|ram_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(0);
\instance_ram|ram_rtl_0|auto_generated|ram_block1a15\ <= \instance_ram|ram_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(1);
\instance_ram|ram_rtl_0|auto_generated|ram_block1a16\ <= \instance_ram|ram_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(2);
\instance_ram|ram_rtl_0|auto_generated|ram_block1a17\ <= \instance_ram|ram_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(3);
\instance_ram|ram_rtl_0|auto_generated|ram_block1a18\ <= \instance_ram|ram_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(4);
\instance_ram|ram_rtl_0|auto_generated|ram_block1a19\ <= \instance_ram|ram_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(5);
\instance_ram|ram_rtl_0|auto_generated|ram_block1a20\ <= \instance_ram|ram_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(6);
\instance_ram|ram_rtl_0|auto_generated|ram_block1a21\ <= \instance_ram|ram_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(7);
\instance_ram|ram_rtl_0|auto_generated|ram_block1a22\ <= \instance_ram|ram_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(8);
\instance_ram|ram_rtl_0|auto_generated|ram_block1a23\ <= \instance_ram|ram_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(9);
\instance_ram|ram_rtl_0|auto_generated|ram_block1a24\ <= \instance_ram|ram_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(10);
\instance_ram|ram_rtl_0|auto_generated|ram_block1a25\ <= \instance_ram|ram_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(11);
\instance_ram|ram_rtl_0|auto_generated|ram_block1a26\ <= \instance_ram|ram_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(12);
\instance_ram|ram_rtl_0|auto_generated|ram_block1a27\ <= \instance_ram|ram_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(13);
\instance_ram|ram_rtl_0|auto_generated|ram_block1a28\ <= \instance_ram|ram_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(14);
\instance_ram|ram_rtl_0|auto_generated|ram_block1a29\ <= \instance_ram|ram_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(15);
\instance_ram|ram_rtl_0|auto_generated|ram_block1a30\ <= \instance_ram|ram_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(16);
\instance_ram|ram_rtl_0|auto_generated|ram_block1a31\ <= \instance_ram|ram_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(17);

\clk_50mhz~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_50mhz~input_o\);

-- Location: IOOBUF_X69_Y73_N16
\leds[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instance_ram|ram_rtl_0|auto_generated|ram_block1a0~portadataout\,
	devoe => ww_devoe,
	o => \leds[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\leds[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instance_ram|ram_rtl_0|auto_generated|ram_block1a1\,
	devoe => ww_devoe,
	o => \leds[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\leds[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instance_ram|ram_rtl_0|auto_generated|ram_block1a2\,
	devoe => ww_devoe,
	o => \leds[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\leds[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instance_ram|ram_rtl_0|auto_generated|ram_block1a3\,
	devoe => ww_devoe,
	o => \leds[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\leds[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instance_ram|ram_rtl_0|auto_generated|ram_block1a4\,
	devoe => ww_devoe,
	o => \leds[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\leds[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instance_ram|ram_rtl_0|auto_generated|ram_block1a5\,
	devoe => ww_devoe,
	o => \leds[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\leds[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instance_ram|ram_rtl_0|auto_generated|ram_block1a6\,
	devoe => ww_devoe,
	o => \leds[6]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\leds[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instance_ram|ram_rtl_0|auto_generated|ram_block1a7\,
	devoe => ww_devoe,
	o => \leds[7]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\leds[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instance_ram|ram_rtl_0|auto_generated|ram_block1a8\,
	devoe => ww_devoe,
	o => \leds[8]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\leds[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instance_ram|ram_rtl_0|auto_generated|ram_block1a9\,
	devoe => ww_devoe,
	o => \leds[9]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\leds[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instance_ram|ram_rtl_0|auto_generated|ram_block1a10\,
	devoe => ww_devoe,
	o => \leds[10]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\leds[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instance_ram|ram_rtl_0|auto_generated|ram_block1a11\,
	devoe => ww_devoe,
	o => \leds[11]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\leds[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instance_ram|ram_rtl_0|auto_generated|ram_block1a12\,
	devoe => ww_devoe,
	o => \leds[12]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\leds[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instance_ram|ram_rtl_0|auto_generated|ram_block1a13\,
	devoe => ww_devoe,
	o => \leds[13]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\leds[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instance_ram|ram_rtl_0|auto_generated|ram_block1a14~portadataout\,
	devoe => ww_devoe,
	o => \leds[14]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\leds[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instance_ram|ram_rtl_0|auto_generated|ram_block1a15\,
	devoe => ww_devoe,
	o => \leds[15]~output_o\);

-- Location: IOOBUF_X100_Y0_N16
\leds[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instance_ram|ram_rtl_0|auto_generated|ram_block1a16\,
	devoe => ww_devoe,
	o => \leds[16]~output_o\);

-- Location: IOOBUF_X100_Y0_N23
\leds[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instance_ram|ram_rtl_0|auto_generated|ram_block1a17\,
	devoe => ww_devoe,
	o => \leds[17]~output_o\);

-- Location: IOOBUF_X102_Y73_N9
\leds[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instance_ram|ram_rtl_0|auto_generated|ram_block1a18\,
	devoe => ww_devoe,
	o => \leds[18]~output_o\);

-- Location: IOOBUF_X102_Y0_N23
\leds[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instance_ram|ram_rtl_0|auto_generated|ram_block1a19\,
	devoe => ww_devoe,
	o => \leds[19]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\leds[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instance_ram|ram_rtl_0|auto_generated|ram_block1a20\,
	devoe => ww_devoe,
	o => \leds[20]~output_o\);

-- Location: IOOBUF_X109_Y0_N2
\leds[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instance_ram|ram_rtl_0|auto_generated|ram_block1a21\,
	devoe => ww_devoe,
	o => \leds[21]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\leds[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instance_ram|ram_rtl_0|auto_generated|ram_block1a22\,
	devoe => ww_devoe,
	o => \leds[22]~output_o\);

-- Location: IOOBUF_X102_Y73_N2
\leds[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instance_ram|ram_rtl_0|auto_generated|ram_block1a23\,
	devoe => ww_devoe,
	o => \leds[23]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\leds[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instance_ram|ram_rtl_0|auto_generated|ram_block1a24\,
	devoe => ww_devoe,
	o => \leds[24]~output_o\);

-- Location: IOOBUF_X102_Y0_N16
\leds[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instance_ram|ram_rtl_0|auto_generated|ram_block1a25\,
	devoe => ww_devoe,
	o => \leds[25]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\leds[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instance_ram|ram_rtl_0|auto_generated|ram_block1a26\,
	devoe => ww_devoe,
	o => \leds[26]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\leds[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instance_ram|ram_rtl_0|auto_generated|ram_block1a27\,
	devoe => ww_devoe,
	o => \leds[27]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\leds[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instance_ram|ram_rtl_0|auto_generated|ram_block1a28\,
	devoe => ww_devoe,
	o => \leds[28]~output_o\);

-- Location: IOOBUF_X105_Y0_N16
\leds[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instance_ram|ram_rtl_0|auto_generated|ram_block1a29\,
	devoe => ww_devoe,
	o => \leds[29]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\leds[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instance_ram|ram_rtl_0|auto_generated|ram_block1a30\,
	devoe => ww_devoe,
	o => \leds[30]~output_o\);

-- Location: IOOBUF_X107_Y0_N2
\leds[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instance_ram|ram_rtl_0|auto_generated|ram_block1a31\,
	devoe => ww_devoe,
	o => \leds[31]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\ssd0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ssd0[0]~reg0_q\,
	devoe => ww_devoe,
	o => \ssd0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\ssd0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ssd0[1]~reg0_q\,
	devoe => ww_devoe,
	o => \ssd0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\ssd0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ssd0[2]~reg0_q\,
	devoe => ww_devoe,
	o => \ssd0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\ssd0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ssd0[3]~reg0_q\,
	devoe => ww_devoe,
	o => \ssd0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\ssd0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ssd0[4]~reg0_q\,
	devoe => ww_devoe,
	o => \ssd0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\ssd0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ssd0[5]~reg0_q\,
	devoe => ww_devoe,
	o => \ssd0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\ssd0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ssd0[6]~reg0_q\,
	devoe => ww_devoe,
	o => \ssd0[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\ssd1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ssd1[0]~reg0_q\,
	devoe => ww_devoe,
	o => \ssd1[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\ssd1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ssd1[1]~reg0_q\,
	devoe => ww_devoe,
	o => \ssd1[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\ssd1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ssd1[2]~reg0_q\,
	devoe => ww_devoe,
	o => \ssd1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\ssd1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ssd1[3]~reg0_q\,
	devoe => ww_devoe,
	o => \ssd1[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\ssd1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ssd1[4]~reg0_q\,
	devoe => ww_devoe,
	o => \ssd1[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\ssd1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ssd1[5]~reg0_q\,
	devoe => ww_devoe,
	o => \ssd1[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\ssd1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ssd1[6]~reg0_q\,
	devoe => ww_devoe,
	o => \ssd1[6]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\heartbeat_led~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clk_1hz~q\,
	devoe => ww_devoe,
	o => \heartbeat_led~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\clk_50mhz~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_50mhz,
	o => \clk_50mhz~input_o\);

-- Location: CLKCTRL_G4
\clk_50mhz~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_50mhz~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_50mhz~inputclkctrl_outclk\);

-- Location: IOIBUF_X115_Y35_N22
\keys[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keys(3),
	o => \keys[3]~input_o\);

-- Location: LCCOMB_X108_Y20_N10
\instance_debounce|reg_A[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance_debounce|reg_A[3]~feeder_combout\ = \keys[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \keys[3]~input_o\,
	combout => \instance_debounce|reg_A[3]~feeder_combout\);

-- Location: FF_X108_Y20_N11
\instance_debounce|reg_A[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \instance_debounce|reg_A[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance_debounce|reg_A\(3));

-- Location: LCCOMB_X108_Y20_N30
\instance_debounce|reg_B[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance_debounce|reg_B[3]~feeder_combout\ = \instance_debounce|reg_A\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instance_debounce|reg_A\(3),
	combout => \instance_debounce|reg_B[3]~feeder_combout\);

-- Location: FF_X108_Y20_N31
\instance_debounce|reg_B[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \instance_debounce|reg_B[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance_debounce|reg_B\(3));

-- Location: LCCOMB_X108_Y20_N24
\instance_debounce|reg_out[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance_debounce|reg_out[3]~feeder_combout\ = \instance_debounce|reg_B\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instance_debounce|reg_B\(3),
	combout => \instance_debounce|reg_out[3]~feeder_combout\);

-- Location: LCCOMB_X107_Y20_N2
\instance_debounce|cnt_reg[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance_debounce|cnt_reg[0]~14_combout\ = \instance_debounce|cnt_reg\(0) $ (VCC)
-- \instance_debounce|cnt_reg[0]~15\ = CARRY(\instance_debounce|cnt_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instance_debounce|cnt_reg\(0),
	datad => VCC,
	combout => \instance_debounce|cnt_reg[0]~14_combout\,
	cout => \instance_debounce|cnt_reg[0]~15\);

-- Location: IOIBUF_X115_Y42_N15
\keys[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keys(2),
	o => \keys[2]~input_o\);

-- Location: LCCOMB_X108_Y20_N0
\instance_debounce|reg_A[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance_debounce|reg_A[2]~feeder_combout\ = \keys[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \keys[2]~input_o\,
	combout => \instance_debounce|reg_A[2]~feeder_combout\);

-- Location: FF_X108_Y20_N1
\instance_debounce|reg_A[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \instance_debounce|reg_A[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance_debounce|reg_A\(2));

-- Location: LCCOMB_X108_Y20_N22
\instance_debounce|reg_B[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance_debounce|reg_B[2]~feeder_combout\ = \instance_debounce|reg_A\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instance_debounce|reg_A\(2),
	combout => \instance_debounce|reg_B[2]~feeder_combout\);

-- Location: FF_X108_Y20_N23
\instance_debounce|reg_B[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \instance_debounce|reg_B[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance_debounce|reg_B\(2));

-- Location: LCCOMB_X108_Y20_N16
\instance_debounce|cnt_next~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance_debounce|cnt_next~1_combout\ = (\instance_debounce|reg_B\(2) & ((\instance_debounce|reg_B\(3) $ (\instance_debounce|reg_A\(3))) # (!\instance_debounce|reg_A\(2)))) # (!\instance_debounce|reg_B\(2) & ((\instance_debounce|reg_A\(2)) # 
-- (\instance_debounce|reg_B\(3) $ (\instance_debounce|reg_A\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_debounce|reg_B\(2),
	datab => \instance_debounce|reg_A\(2),
	datac => \instance_debounce|reg_B\(3),
	datad => \instance_debounce|reg_A\(3),
	combout => \instance_debounce|cnt_next~1_combout\);

-- Location: IOIBUF_X115_Y40_N8
\keys[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keys(0),
	o => \keys[0]~input_o\);

-- Location: LCCOMB_X112_Y20_N30
\instance_debounce|reg_A[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance_debounce|reg_A[0]~feeder_combout\ = \keys[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \keys[0]~input_o\,
	combout => \instance_debounce|reg_A[0]~feeder_combout\);

-- Location: FF_X112_Y20_N31
\instance_debounce|reg_A[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \instance_debounce|reg_A[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance_debounce|reg_A\(0));

-- Location: LCCOMB_X112_Y20_N16
\instance_debounce|reg_B[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance_debounce|reg_B[0]~feeder_combout\ = \instance_debounce|reg_A\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instance_debounce|reg_A\(0),
	combout => \instance_debounce|reg_B[0]~feeder_combout\);

-- Location: FF_X112_Y20_N17
\instance_debounce|reg_B[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \instance_debounce|reg_B[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance_debounce|reg_B\(0));

-- Location: IOIBUF_X115_Y53_N15
\keys[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keys(1),
	o => \keys[1]~input_o\);

-- Location: LCCOMB_X112_Y20_N12
\instance_debounce|reg_A[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance_debounce|reg_A[1]~feeder_combout\ = \keys[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \keys[1]~input_o\,
	combout => \instance_debounce|reg_A[1]~feeder_combout\);

-- Location: FF_X112_Y20_N13
\instance_debounce|reg_A[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \instance_debounce|reg_A[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance_debounce|reg_A\(1));

-- Location: LCCOMB_X112_Y20_N26
\instance_debounce|reg_B[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance_debounce|reg_B[1]~feeder_combout\ = \instance_debounce|reg_A\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instance_debounce|reg_A\(1),
	combout => \instance_debounce|reg_B[1]~feeder_combout\);

-- Location: FF_X112_Y20_N27
\instance_debounce|reg_B[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \instance_debounce|reg_B[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance_debounce|reg_B\(1));

-- Location: LCCOMB_X112_Y20_N20
\instance_debounce|cnt_next~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance_debounce|cnt_next~0_combout\ = (\instance_debounce|reg_A\(0) & ((\instance_debounce|reg_B\(1) $ (\instance_debounce|reg_A\(1))) # (!\instance_debounce|reg_B\(0)))) # (!\instance_debounce|reg_A\(0) & ((\instance_debounce|reg_B\(0)) # 
-- (\instance_debounce|reg_B\(1) $ (\instance_debounce|reg_A\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_debounce|reg_A\(0),
	datab => \instance_debounce|reg_B\(0),
	datac => \instance_debounce|reg_B\(1),
	datad => \instance_debounce|reg_A\(1),
	combout => \instance_debounce|cnt_next~0_combout\);

-- Location: LCCOMB_X107_Y20_N30
\instance_debounce|cnt_next~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance_debounce|cnt_next~2_combout\ = (\instance_debounce|cnt_next~1_combout\) # ((\instance_debounce|cnt_next~0_combout\) # (\instance_debounce|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instance_debounce|cnt_next~1_combout\,
	datac => \instance_debounce|cnt_next~0_combout\,
	datad => \instance_debounce|Equal0~4_combout\,
	combout => \instance_debounce|cnt_next~2_combout\);

-- Location: FF_X107_Y20_N3
\instance_debounce|cnt_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \instance_debounce|cnt_reg[0]~14_combout\,
	sclr => \instance_debounce|cnt_next~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance_debounce|cnt_reg\(0));

-- Location: LCCOMB_X107_Y20_N4
\instance_debounce|cnt_reg[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance_debounce|cnt_reg[1]~16_combout\ = (\instance_debounce|cnt_reg\(1) & (!\instance_debounce|cnt_reg[0]~15\)) # (!\instance_debounce|cnt_reg\(1) & ((\instance_debounce|cnt_reg[0]~15\) # (GND)))
-- \instance_debounce|cnt_reg[1]~17\ = CARRY((!\instance_debounce|cnt_reg[0]~15\) # (!\instance_debounce|cnt_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instance_debounce|cnt_reg\(1),
	datad => VCC,
	cin => \instance_debounce|cnt_reg[0]~15\,
	combout => \instance_debounce|cnt_reg[1]~16_combout\,
	cout => \instance_debounce|cnt_reg[1]~17\);

-- Location: FF_X107_Y20_N5
\instance_debounce|cnt_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \instance_debounce|cnt_reg[1]~16_combout\,
	sclr => \instance_debounce|cnt_next~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance_debounce|cnt_reg\(1));

-- Location: LCCOMB_X107_Y20_N6
\instance_debounce|cnt_reg[2]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance_debounce|cnt_reg[2]~18_combout\ = (\instance_debounce|cnt_reg\(2) & (\instance_debounce|cnt_reg[1]~17\ $ (GND))) # (!\instance_debounce|cnt_reg\(2) & (!\instance_debounce|cnt_reg[1]~17\ & VCC))
-- \instance_debounce|cnt_reg[2]~19\ = CARRY((\instance_debounce|cnt_reg\(2) & !\instance_debounce|cnt_reg[1]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_debounce|cnt_reg\(2),
	datad => VCC,
	cin => \instance_debounce|cnt_reg[1]~17\,
	combout => \instance_debounce|cnt_reg[2]~18_combout\,
	cout => \instance_debounce|cnt_reg[2]~19\);

-- Location: FF_X107_Y20_N7
\instance_debounce|cnt_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \instance_debounce|cnt_reg[2]~18_combout\,
	sclr => \instance_debounce|cnt_next~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance_debounce|cnt_reg\(2));

-- Location: LCCOMB_X107_Y20_N8
\instance_debounce|cnt_reg[3]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance_debounce|cnt_reg[3]~20_combout\ = (\instance_debounce|cnt_reg\(3) & (!\instance_debounce|cnt_reg[2]~19\)) # (!\instance_debounce|cnt_reg\(3) & ((\instance_debounce|cnt_reg[2]~19\) # (GND)))
-- \instance_debounce|cnt_reg[3]~21\ = CARRY((!\instance_debounce|cnt_reg[2]~19\) # (!\instance_debounce|cnt_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instance_debounce|cnt_reg\(3),
	datad => VCC,
	cin => \instance_debounce|cnt_reg[2]~19\,
	combout => \instance_debounce|cnt_reg[3]~20_combout\,
	cout => \instance_debounce|cnt_reg[3]~21\);

-- Location: FF_X107_Y20_N9
\instance_debounce|cnt_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \instance_debounce|cnt_reg[3]~20_combout\,
	sclr => \instance_debounce|cnt_next~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance_debounce|cnt_reg\(3));

-- Location: LCCOMB_X107_Y20_N10
\instance_debounce|cnt_reg[4]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance_debounce|cnt_reg[4]~22_combout\ = (\instance_debounce|cnt_reg\(4) & (\instance_debounce|cnt_reg[3]~21\ $ (GND))) # (!\instance_debounce|cnt_reg\(4) & (!\instance_debounce|cnt_reg[3]~21\ & VCC))
-- \instance_debounce|cnt_reg[4]~23\ = CARRY((\instance_debounce|cnt_reg\(4) & !\instance_debounce|cnt_reg[3]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_debounce|cnt_reg\(4),
	datad => VCC,
	cin => \instance_debounce|cnt_reg[3]~21\,
	combout => \instance_debounce|cnt_reg[4]~22_combout\,
	cout => \instance_debounce|cnt_reg[4]~23\);

-- Location: FF_X107_Y20_N11
\instance_debounce|cnt_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \instance_debounce|cnt_reg[4]~22_combout\,
	sclr => \instance_debounce|cnt_next~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance_debounce|cnt_reg\(4));

-- Location: LCCOMB_X107_Y20_N12
\instance_debounce|cnt_reg[5]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance_debounce|cnt_reg[5]~24_combout\ = (\instance_debounce|cnt_reg\(5) & (!\instance_debounce|cnt_reg[4]~23\)) # (!\instance_debounce|cnt_reg\(5) & ((\instance_debounce|cnt_reg[4]~23\) # (GND)))
-- \instance_debounce|cnt_reg[5]~25\ = CARRY((!\instance_debounce|cnt_reg[4]~23\) # (!\instance_debounce|cnt_reg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_debounce|cnt_reg\(5),
	datad => VCC,
	cin => \instance_debounce|cnt_reg[4]~23\,
	combout => \instance_debounce|cnt_reg[5]~24_combout\,
	cout => \instance_debounce|cnt_reg[5]~25\);

-- Location: FF_X107_Y20_N13
\instance_debounce|cnt_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \instance_debounce|cnt_reg[5]~24_combout\,
	sclr => \instance_debounce|cnt_next~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance_debounce|cnt_reg\(5));

-- Location: LCCOMB_X107_Y20_N14
\instance_debounce|cnt_reg[6]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance_debounce|cnt_reg[6]~26_combout\ = (\instance_debounce|cnt_reg\(6) & (\instance_debounce|cnt_reg[5]~25\ $ (GND))) # (!\instance_debounce|cnt_reg\(6) & (!\instance_debounce|cnt_reg[5]~25\ & VCC))
-- \instance_debounce|cnt_reg[6]~27\ = CARRY((\instance_debounce|cnt_reg\(6) & !\instance_debounce|cnt_reg[5]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instance_debounce|cnt_reg\(6),
	datad => VCC,
	cin => \instance_debounce|cnt_reg[5]~25\,
	combout => \instance_debounce|cnt_reg[6]~26_combout\,
	cout => \instance_debounce|cnt_reg[6]~27\);

-- Location: FF_X107_Y20_N15
\instance_debounce|cnt_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \instance_debounce|cnt_reg[6]~26_combout\,
	sclr => \instance_debounce|cnt_next~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance_debounce|cnt_reg\(6));

-- Location: LCCOMB_X107_Y20_N16
\instance_debounce|cnt_reg[7]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance_debounce|cnt_reg[7]~28_combout\ = (\instance_debounce|cnt_reg\(7) & (!\instance_debounce|cnt_reg[6]~27\)) # (!\instance_debounce|cnt_reg\(7) & ((\instance_debounce|cnt_reg[6]~27\) # (GND)))
-- \instance_debounce|cnt_reg[7]~29\ = CARRY((!\instance_debounce|cnt_reg[6]~27\) # (!\instance_debounce|cnt_reg\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instance_debounce|cnt_reg\(7),
	datad => VCC,
	cin => \instance_debounce|cnt_reg[6]~27\,
	combout => \instance_debounce|cnt_reg[7]~28_combout\,
	cout => \instance_debounce|cnt_reg[7]~29\);

-- Location: FF_X107_Y20_N17
\instance_debounce|cnt_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \instance_debounce|cnt_reg[7]~28_combout\,
	sclr => \instance_debounce|cnt_next~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance_debounce|cnt_reg\(7));

-- Location: LCCOMB_X107_Y20_N18
\instance_debounce|cnt_reg[8]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance_debounce|cnt_reg[8]~30_combout\ = (\instance_debounce|cnt_reg\(8) & (\instance_debounce|cnt_reg[7]~29\ $ (GND))) # (!\instance_debounce|cnt_reg\(8) & (!\instance_debounce|cnt_reg[7]~29\ & VCC))
-- \instance_debounce|cnt_reg[8]~31\ = CARRY((\instance_debounce|cnt_reg\(8) & !\instance_debounce|cnt_reg[7]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instance_debounce|cnt_reg\(8),
	datad => VCC,
	cin => \instance_debounce|cnt_reg[7]~29\,
	combout => \instance_debounce|cnt_reg[8]~30_combout\,
	cout => \instance_debounce|cnt_reg[8]~31\);

-- Location: FF_X107_Y20_N19
\instance_debounce|cnt_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \instance_debounce|cnt_reg[8]~30_combout\,
	sclr => \instance_debounce|cnt_next~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance_debounce|cnt_reg\(8));

-- Location: LCCOMB_X107_Y20_N20
\instance_debounce|cnt_reg[9]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance_debounce|cnt_reg[9]~32_combout\ = (\instance_debounce|cnt_reg\(9) & (!\instance_debounce|cnt_reg[8]~31\)) # (!\instance_debounce|cnt_reg\(9) & ((\instance_debounce|cnt_reg[8]~31\) # (GND)))
-- \instance_debounce|cnt_reg[9]~33\ = CARRY((!\instance_debounce|cnt_reg[8]~31\) # (!\instance_debounce|cnt_reg\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instance_debounce|cnt_reg\(9),
	datad => VCC,
	cin => \instance_debounce|cnt_reg[8]~31\,
	combout => \instance_debounce|cnt_reg[9]~32_combout\,
	cout => \instance_debounce|cnt_reg[9]~33\);

-- Location: FF_X107_Y20_N21
\instance_debounce|cnt_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \instance_debounce|cnt_reg[9]~32_combout\,
	sclr => \instance_debounce|cnt_next~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance_debounce|cnt_reg\(9));

-- Location: LCCOMB_X107_Y20_N22
\instance_debounce|cnt_reg[10]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance_debounce|cnt_reg[10]~34_combout\ = (\instance_debounce|cnt_reg\(10) & (\instance_debounce|cnt_reg[9]~33\ $ (GND))) # (!\instance_debounce|cnt_reg\(10) & (!\instance_debounce|cnt_reg[9]~33\ & VCC))
-- \instance_debounce|cnt_reg[10]~35\ = CARRY((\instance_debounce|cnt_reg\(10) & !\instance_debounce|cnt_reg[9]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_debounce|cnt_reg\(10),
	datad => VCC,
	cin => \instance_debounce|cnt_reg[9]~33\,
	combout => \instance_debounce|cnt_reg[10]~34_combout\,
	cout => \instance_debounce|cnt_reg[10]~35\);

-- Location: FF_X107_Y20_N23
\instance_debounce|cnt_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \instance_debounce|cnt_reg[10]~34_combout\,
	sclr => \instance_debounce|cnt_next~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance_debounce|cnt_reg\(10));

-- Location: LCCOMB_X107_Y20_N24
\instance_debounce|cnt_reg[11]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance_debounce|cnt_reg[11]~36_combout\ = (\instance_debounce|cnt_reg\(11) & (!\instance_debounce|cnt_reg[10]~35\)) # (!\instance_debounce|cnt_reg\(11) & ((\instance_debounce|cnt_reg[10]~35\) # (GND)))
-- \instance_debounce|cnt_reg[11]~37\ = CARRY((!\instance_debounce|cnt_reg[10]~35\) # (!\instance_debounce|cnt_reg\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instance_debounce|cnt_reg\(11),
	datad => VCC,
	cin => \instance_debounce|cnt_reg[10]~35\,
	combout => \instance_debounce|cnt_reg[11]~36_combout\,
	cout => \instance_debounce|cnt_reg[11]~37\);

-- Location: FF_X107_Y20_N25
\instance_debounce|cnt_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \instance_debounce|cnt_reg[11]~36_combout\,
	sclr => \instance_debounce|cnt_next~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance_debounce|cnt_reg\(11));

-- Location: LCCOMB_X107_Y20_N0
\instance_debounce|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance_debounce|Equal0~2_combout\ = (\instance_debounce|cnt_reg\(10) & (!\instance_debounce|cnt_reg\(11) & (\instance_debounce|cnt_reg\(9) & \instance_debounce|cnt_reg\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_debounce|cnt_reg\(10),
	datab => \instance_debounce|cnt_reg\(11),
	datac => \instance_debounce|cnt_reg\(9),
	datad => \instance_debounce|cnt_reg\(8),
	combout => \instance_debounce|Equal0~2_combout\);

-- Location: LCCOMB_X108_Y20_N18
\instance_debounce|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance_debounce|Equal0~1_combout\ = (\instance_debounce|cnt_reg\(4) & (!\instance_debounce|cnt_reg\(6) & (!\instance_debounce|cnt_reg\(7) & !\instance_debounce|cnt_reg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_debounce|cnt_reg\(4),
	datab => \instance_debounce|cnt_reg\(6),
	datac => \instance_debounce|cnt_reg\(7),
	datad => \instance_debounce|cnt_reg\(5),
	combout => \instance_debounce|Equal0~1_combout\);

-- Location: LCCOMB_X107_Y20_N26
\instance_debounce|cnt_reg[12]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance_debounce|cnt_reg[12]~38_combout\ = (\instance_debounce|cnt_reg\(12) & (\instance_debounce|cnt_reg[11]~37\ $ (GND))) # (!\instance_debounce|cnt_reg\(12) & (!\instance_debounce|cnt_reg[11]~37\ & VCC))
-- \instance_debounce|cnt_reg[12]~39\ = CARRY((\instance_debounce|cnt_reg\(12) & !\instance_debounce|cnt_reg[11]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_debounce|cnt_reg\(12),
	datad => VCC,
	cin => \instance_debounce|cnt_reg[11]~37\,
	combout => \instance_debounce|cnt_reg[12]~38_combout\,
	cout => \instance_debounce|cnt_reg[12]~39\);

-- Location: FF_X107_Y20_N27
\instance_debounce|cnt_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \instance_debounce|cnt_reg[12]~38_combout\,
	sclr => \instance_debounce|cnt_next~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance_debounce|cnt_reg\(12));

-- Location: LCCOMB_X107_Y20_N28
\instance_debounce|cnt_reg[13]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance_debounce|cnt_reg[13]~40_combout\ = \instance_debounce|cnt_reg[12]~39\ $ (\instance_debounce|cnt_reg\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \instance_debounce|cnt_reg\(13),
	cin => \instance_debounce|cnt_reg[12]~39\,
	combout => \instance_debounce|cnt_reg[13]~40_combout\);

-- Location: FF_X107_Y20_N29
\instance_debounce|cnt_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \instance_debounce|cnt_reg[13]~40_combout\,
	sclr => \instance_debounce|cnt_next~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance_debounce|cnt_reg\(13));

-- Location: LCCOMB_X108_Y20_N4
\instance_debounce|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance_debounce|Equal0~3_combout\ = (!\instance_debounce|cnt_reg\(12) & \instance_debounce|cnt_reg\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instance_debounce|cnt_reg\(12),
	datad => \instance_debounce|cnt_reg\(13),
	combout => \instance_debounce|Equal0~3_combout\);

-- Location: LCCOMB_X108_Y20_N28
\instance_debounce|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance_debounce|Equal0~0_combout\ = (!\instance_debounce|cnt_reg\(3) & (!\instance_debounce|cnt_reg\(2) & (!\instance_debounce|cnt_reg\(1) & !\instance_debounce|cnt_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_debounce|cnt_reg\(3),
	datab => \instance_debounce|cnt_reg\(2),
	datac => \instance_debounce|cnt_reg\(1),
	datad => \instance_debounce|cnt_reg\(0),
	combout => \instance_debounce|Equal0~0_combout\);

-- Location: LCCOMB_X108_Y20_N26
\instance_debounce|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance_debounce|Equal0~4_combout\ = (\instance_debounce|Equal0~2_combout\ & (\instance_debounce|Equal0~1_combout\ & (\instance_debounce|Equal0~3_combout\ & \instance_debounce|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_debounce|Equal0~2_combout\,
	datab => \instance_debounce|Equal0~1_combout\,
	datac => \instance_debounce|Equal0~3_combout\,
	datad => \instance_debounce|Equal0~0_combout\,
	combout => \instance_debounce|Equal0~4_combout\);

-- Location: FF_X108_Y20_N25
\instance_debounce|reg_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \instance_debounce|reg_out[3]~feeder_combout\,
	ena => \instance_debounce|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance_debounce|reg_out\(3));

-- Location: FF_X108_Y20_N9
\instance_debounce|reg_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	asdata => \instance_debounce|reg_B\(2),
	sload => VCC,
	ena => \instance_debounce|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance_debounce|reg_out\(2));

-- Location: LCCOMB_X108_Y20_N8
\instance_debounce|strb_next~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance_debounce|strb_next~1_combout\ = (\instance_debounce|reg_B\(2) & ((\instance_debounce|reg_B\(3) $ (\instance_debounce|reg_out\(3))) # (!\instance_debounce|reg_out\(2)))) # (!\instance_debounce|reg_B\(2) & ((\instance_debounce|reg_out\(2)) # 
-- (\instance_debounce|reg_B\(3) $ (\instance_debounce|reg_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_debounce|reg_B\(2),
	datab => \instance_debounce|reg_B\(3),
	datac => \instance_debounce|reg_out\(2),
	datad => \instance_debounce|reg_out\(3),
	combout => \instance_debounce|strb_next~1_combout\);

-- Location: FF_X112_Y20_N7
\instance_debounce|reg_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	asdata => \instance_debounce|reg_B\(1),
	sload => VCC,
	ena => \instance_debounce|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance_debounce|reg_out\(1));

-- Location: FF_X112_Y20_N11
\instance_debounce|reg_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	asdata => \instance_debounce|reg_B\(0),
	sload => VCC,
	ena => \instance_debounce|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance_debounce|reg_out\(0));

-- Location: LCCOMB_X112_Y20_N6
\instance_debounce|strb_next~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance_debounce|strb_next~0_combout\ = (\instance_debounce|reg_B\(1) & ((\instance_debounce|reg_B\(0) $ (\instance_debounce|reg_out\(0))) # (!\instance_debounce|reg_out\(1)))) # (!\instance_debounce|reg_B\(1) & ((\instance_debounce|reg_out\(1)) # 
-- (\instance_debounce|reg_B\(0) $ (\instance_debounce|reg_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_debounce|reg_B\(1),
	datab => \instance_debounce|reg_B\(0),
	datac => \instance_debounce|reg_out\(1),
	datad => \instance_debounce|reg_out\(0),
	combout => \instance_debounce|strb_next~0_combout\);

-- Location: LCCOMB_X112_Y20_N8
\instance_debounce|strb_next~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \instance_debounce|strb_next~2_combout\ = (\instance_debounce|Equal0~4_combout\ & ((\instance_debounce|strb_next~1_combout\) # (\instance_debounce|strb_next~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_debounce|strb_next~1_combout\,
	datac => \instance_debounce|strb_next~0_combout\,
	datad => \instance_debounce|Equal0~4_combout\,
	combout => \instance_debounce|strb_next~2_combout\);

-- Location: FF_X112_Y20_N9
\instance_debounce|strb_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \instance_debounce|strb_next~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance_debounce|strb_reg~q\);

-- Location: LCCOMB_X112_Y20_N18
\next_state.IDLE~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state.IDLE~0_combout\ = (\next_state.IDLE~q\) # ((\instance_debounce|strb_reg~q\ & ((!\instance_debounce|reg_out\(2)) # (!\instance_debounce|reg_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_debounce|reg_out\(3),
	datab => \instance_debounce|strb_reg~q\,
	datac => \next_state.IDLE~q\,
	datad => \instance_debounce|reg_out\(2),
	combout => \next_state.IDLE~0_combout\);

-- Location: LCCOMB_X112_Y20_N24
\next_state.IDLE~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state.IDLE~1_combout\ = (\next_state.IDLE~0_combout\ & !\curr_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \next_state.IDLE~0_combout\,
	datac => \curr_state.IDLE~q\,
	combout => \next_state.IDLE~1_combout\);

-- Location: FF_X112_Y20_N25
\next_state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \next_state.IDLE~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \next_state.IDLE~q\);

-- Location: FF_X112_Y20_N19
\curr_state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	asdata => \next_state.IDLE~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \curr_state.IDLE~q\);

-- Location: LCCOMB_X112_Y20_N14
\next_state~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state~9_combout\ = (\instance_debounce|strb_reg~q\ & (((\next_state.WRITE_RAM~q\ & \instance_debounce|reg_out\(2))) # (!\instance_debounce|reg_out\(3)))) # (!\instance_debounce|strb_reg~q\ & (((\next_state.WRITE_RAM~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_debounce|reg_out\(3),
	datab => \instance_debounce|strb_reg~q\,
	datac => \next_state.WRITE_RAM~q\,
	datad => \instance_debounce|reg_out\(2),
	combout => \next_state~9_combout\);

-- Location: LCCOMB_X112_Y20_N22
\next_state~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_state~10_combout\ = (!\curr_state.IDLE~q\ & \next_state~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \curr_state.IDLE~q\,
	datac => \next_state~9_combout\,
	combout => \next_state~10_combout\);

-- Location: FF_X112_Y20_N23
\next_state.WRITE_RAM\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \next_state~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \next_state.WRITE_RAM~q\);

-- Location: FF_X112_Y20_N15
\curr_state.WRITE_RAM\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	asdata => \next_state.WRITE_RAM~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \curr_state.WRITE_RAM~q\);

-- Location: LCCOMB_X108_Y16_N28
\write_en~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_en~feeder_combout\ = \curr_state.WRITE_RAM~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \curr_state.WRITE_RAM~q\,
	combout => \write_en~feeder_combout\);

-- Location: FF_X108_Y16_N29
write_en : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \write_en~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \write_en~q\);

-- Location: IOIBUF_X115_Y17_N1
\switch[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(0),
	o => \switch[0]~input_o\);

-- Location: LCCOMB_X112_Y16_N16
\ram_data_in[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_data_in[0]~feeder_combout\ = \switch[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \switch[0]~input_o\,
	combout => \ram_data_in[0]~feeder_combout\);

-- Location: FF_X112_Y16_N17
\ram_data_in[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \ram_data_in[0]~feeder_combout\,
	ena => \curr_state.WRITE_RAM~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_data_in(0));

-- Location: LCCOMB_X111_Y20_N4
\ram_address[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_address[0]~8_combout\ = ram_address(0) $ (VCC)
-- \ram_address[0]~9\ = CARRY(ram_address(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ram_address(0),
	datad => VCC,
	combout => \ram_address[0]~8_combout\,
	cout => \ram_address[0]~9\);

-- Location: LCCOMB_X112_Y20_N10
\ram_address[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_address[0]~10_combout\ = (\instance_debounce|strb_reg~q\ & ((!\instance_debounce|reg_out\(1)) # (!\instance_debounce|reg_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instance_debounce|strb_reg~q\,
	datac => \instance_debounce|reg_out\(0),
	datad => \instance_debounce|reg_out\(1),
	combout => \ram_address[0]~10_combout\);

-- Location: FF_X111_Y20_N5
\ram_address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \ram_address[0]~8_combout\,
	ena => \ram_address[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_address(0));

-- Location: LCCOMB_X112_Y20_N28
\keypress~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypress~0_combout\ = (\instance_debounce|strb_reg~q\ & !\instance_debounce|reg_out\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instance_debounce|strb_reg~q\,
	datad => \instance_debounce|reg_out\(1),
	combout => \keypress~0_combout\);

-- Location: LCCOMB_X111_Y20_N6
\ram_address[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_address[1]~11_combout\ = (ram_address(1) & ((\keypress~0_combout\ & (\ram_address[0]~9\ & VCC)) # (!\keypress~0_combout\ & (!\ram_address[0]~9\)))) # (!ram_address(1) & ((\keypress~0_combout\ & (!\ram_address[0]~9\)) # (!\keypress~0_combout\ & 
-- ((\ram_address[0]~9\) # (GND)))))
-- \ram_address[1]~12\ = CARRY((ram_address(1) & (!\keypress~0_combout\ & !\ram_address[0]~9\)) # (!ram_address(1) & ((!\ram_address[0]~9\) # (!\keypress~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ram_address(1),
	datab => \keypress~0_combout\,
	datad => VCC,
	cin => \ram_address[0]~9\,
	combout => \ram_address[1]~11_combout\,
	cout => \ram_address[1]~12\);

-- Location: FF_X111_Y20_N7
\ram_address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \ram_address[1]~11_combout\,
	ena => \ram_address[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_address(1));

-- Location: LCCOMB_X111_Y20_N8
\ram_address[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_address[2]~13_combout\ = ((ram_address(2) $ (\keypress~0_combout\ $ (!\ram_address[1]~12\)))) # (GND)
-- \ram_address[2]~14\ = CARRY((ram_address(2) & ((\keypress~0_combout\) # (!\ram_address[1]~12\))) # (!ram_address(2) & (\keypress~0_combout\ & !\ram_address[1]~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ram_address(2),
	datab => \keypress~0_combout\,
	datad => VCC,
	cin => \ram_address[1]~12\,
	combout => \ram_address[2]~13_combout\,
	cout => \ram_address[2]~14\);

-- Location: FF_X111_Y20_N9
\ram_address[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \ram_address[2]~13_combout\,
	ena => \ram_address[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_address(2));

-- Location: LCCOMB_X111_Y20_N10
\ram_address[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_address[3]~15_combout\ = (ram_address(3) & ((\keypress~0_combout\ & (\ram_address[2]~14\ & VCC)) # (!\keypress~0_combout\ & (!\ram_address[2]~14\)))) # (!ram_address(3) & ((\keypress~0_combout\ & (!\ram_address[2]~14\)) # (!\keypress~0_combout\ & 
-- ((\ram_address[2]~14\) # (GND)))))
-- \ram_address[3]~16\ = CARRY((ram_address(3) & (!\keypress~0_combout\ & !\ram_address[2]~14\)) # (!ram_address(3) & ((!\ram_address[2]~14\) # (!\keypress~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ram_address(3),
	datab => \keypress~0_combout\,
	datad => VCC,
	cin => \ram_address[2]~14\,
	combout => \ram_address[3]~15_combout\,
	cout => \ram_address[3]~16\);

-- Location: FF_X111_Y20_N11
\ram_address[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \ram_address[3]~15_combout\,
	ena => \ram_address[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_address(3));

-- Location: LCCOMB_X111_Y20_N12
\ram_address[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_address[4]~17_combout\ = ((ram_address(4) $ (\keypress~0_combout\ $ (!\ram_address[3]~16\)))) # (GND)
-- \ram_address[4]~18\ = CARRY((ram_address(4) & ((\keypress~0_combout\) # (!\ram_address[3]~16\))) # (!ram_address(4) & (\keypress~0_combout\ & !\ram_address[3]~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ram_address(4),
	datab => \keypress~0_combout\,
	datad => VCC,
	cin => \ram_address[3]~16\,
	combout => \ram_address[4]~17_combout\,
	cout => \ram_address[4]~18\);

-- Location: FF_X111_Y20_N13
\ram_address[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \ram_address[4]~17_combout\,
	ena => \ram_address[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_address(4));

-- Location: LCCOMB_X111_Y20_N14
\ram_address[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_address[5]~19_combout\ = (ram_address(5) & ((\keypress~0_combout\ & (\ram_address[4]~18\ & VCC)) # (!\keypress~0_combout\ & (!\ram_address[4]~18\)))) # (!ram_address(5) & ((\keypress~0_combout\ & (!\ram_address[4]~18\)) # (!\keypress~0_combout\ & 
-- ((\ram_address[4]~18\) # (GND)))))
-- \ram_address[5]~20\ = CARRY((ram_address(5) & (!\keypress~0_combout\ & !\ram_address[4]~18\)) # (!ram_address(5) & ((!\ram_address[4]~18\) # (!\keypress~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ram_address(5),
	datab => \keypress~0_combout\,
	datad => VCC,
	cin => \ram_address[4]~18\,
	combout => \ram_address[5]~19_combout\,
	cout => \ram_address[5]~20\);

-- Location: FF_X111_Y20_N15
\ram_address[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \ram_address[5]~19_combout\,
	ena => \ram_address[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_address(5));

-- Location: LCCOMB_X111_Y20_N16
\ram_address[6]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_address[6]~21_combout\ = ((ram_address(6) $ (\keypress~0_combout\ $ (!\ram_address[5]~20\)))) # (GND)
-- \ram_address[6]~22\ = CARRY((ram_address(6) & ((\keypress~0_combout\) # (!\ram_address[5]~20\))) # (!ram_address(6) & (\keypress~0_combout\ & !\ram_address[5]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ram_address(6),
	datab => \keypress~0_combout\,
	datad => VCC,
	cin => \ram_address[5]~20\,
	combout => \ram_address[6]~21_combout\,
	cout => \ram_address[6]~22\);

-- Location: FF_X111_Y20_N17
\ram_address[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \ram_address[6]~21_combout\,
	ena => \ram_address[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_address(6));

-- Location: LCCOMB_X111_Y20_N18
\ram_address[7]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_address[7]~23_combout\ = \keypress~0_combout\ $ (\ram_address[6]~22\ $ (ram_address(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keypress~0_combout\,
	datad => ram_address(7),
	cin => \ram_address[6]~22\,
	combout => \ram_address[7]~23_combout\);

-- Location: FF_X111_Y20_N19
\ram_address[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \ram_address[7]~23_combout\,
	ena => \ram_address[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_address(7));

-- Location: IOIBUF_X115_Y14_N1
\switch[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(1),
	o => \switch[1]~input_o\);

-- Location: FF_X112_Y16_N3
\ram_data_in[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	asdata => \switch[1]~input_o\,
	sload => VCC,
	ena => \curr_state.WRITE_RAM~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_data_in(1));

-- Location: IOIBUF_X115_Y15_N8
\switch[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(2),
	o => \switch[2]~input_o\);

-- Location: LCCOMB_X112_Y16_N8
\ram_data_in[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_data_in[2]~feeder_combout\ = \switch[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \switch[2]~input_o\,
	combout => \ram_data_in[2]~feeder_combout\);

-- Location: FF_X112_Y16_N9
\ram_data_in[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \ram_data_in[2]~feeder_combout\,
	ena => \curr_state.WRITE_RAM~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_data_in(2));

-- Location: IOIBUF_X115_Y13_N8
\switch[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(3),
	o => \switch[3]~input_o\);

-- Location: LCCOMB_X112_Y16_N18
\ram_data_in[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_data_in[3]~feeder_combout\ = \switch[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \switch[3]~input_o\,
	combout => \ram_data_in[3]~feeder_combout\);

-- Location: FF_X112_Y16_N19
\ram_data_in[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \ram_data_in[3]~feeder_combout\,
	ena => \curr_state.WRITE_RAM~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_data_in(3));

-- Location: IOIBUF_X115_Y18_N8
\switch[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(4),
	o => \switch[4]~input_o\);

-- Location: LCCOMB_X112_Y16_N4
\ram_data_in[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_data_in[4]~feeder_combout\ = \switch[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \switch[4]~input_o\,
	combout => \ram_data_in[4]~feeder_combout\);

-- Location: FF_X112_Y16_N5
\ram_data_in[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \ram_data_in[4]~feeder_combout\,
	ena => \curr_state.WRITE_RAM~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_data_in(4));

-- Location: IOIBUF_X115_Y11_N8
\switch[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(5),
	o => \switch[5]~input_o\);

-- Location: LCCOMB_X108_Y16_N18
\ram_data_in[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_data_in[5]~feeder_combout\ = \switch[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \switch[5]~input_o\,
	combout => \ram_data_in[5]~feeder_combout\);

-- Location: FF_X108_Y16_N19
\ram_data_in[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \ram_data_in[5]~feeder_combout\,
	ena => \curr_state.WRITE_RAM~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_data_in(5));

-- Location: IOIBUF_X115_Y10_N1
\switch[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(6),
	o => \switch[6]~input_o\);

-- Location: LCCOMB_X108_Y16_N12
\ram_data_in[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_data_in[6]~feeder_combout\ = \switch[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \switch[6]~input_o\,
	combout => \ram_data_in[6]~feeder_combout\);

-- Location: FF_X108_Y16_N13
\ram_data_in[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \ram_data_in[6]~feeder_combout\,
	ena => \curr_state.WRITE_RAM~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_data_in(6));

-- Location: IOIBUF_X115_Y15_N1
\switch[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(7),
	o => \switch[7]~input_o\);

-- Location: LCCOMB_X112_Y16_N30
\ram_data_in[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_data_in[7]~feeder_combout\ = \switch[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \switch[7]~input_o\,
	combout => \ram_data_in[7]~feeder_combout\);

-- Location: FF_X112_Y16_N31
\ram_data_in[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \ram_data_in[7]~feeder_combout\,
	ena => \curr_state.WRITE_RAM~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_data_in(7));

-- Location: IOIBUF_X115_Y4_N22
\switch[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(8),
	o => \switch[8]~input_o\);

-- Location: LCCOMB_X108_Y16_N26
\ram_data_in[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_data_in[8]~feeder_combout\ = \switch[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \switch[8]~input_o\,
	combout => \ram_data_in[8]~feeder_combout\);

-- Location: FF_X108_Y16_N27
\ram_data_in[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \ram_data_in[8]~feeder_combout\,
	ena => \curr_state.WRITE_RAM~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_data_in(8));

-- Location: IOIBUF_X115_Y16_N8
\switch[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(9),
	o => \switch[9]~input_o\);

-- Location: LCCOMB_X108_Y16_N4
\ram_data_in[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_data_in[9]~feeder_combout\ = \switch[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \switch[9]~input_o\,
	combout => \ram_data_in[9]~feeder_combout\);

-- Location: FF_X108_Y16_N5
\ram_data_in[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \ram_data_in[9]~feeder_combout\,
	ena => \curr_state.WRITE_RAM~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_data_in(9));

-- Location: IOIBUF_X115_Y4_N15
\switch[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(10),
	o => \switch[10]~input_o\);

-- Location: FF_X108_Y16_N15
\ram_data_in[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	asdata => \switch[10]~input_o\,
	sload => VCC,
	ena => \curr_state.WRITE_RAM~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_data_in(10));

-- Location: IOIBUF_X115_Y5_N15
\switch[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(11),
	o => \switch[11]~input_o\);

-- Location: FF_X111_Y16_N17
\ram_data_in[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	asdata => \switch[11]~input_o\,
	sload => VCC,
	ena => \curr_state.WRITE_RAM~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_data_in(11));

-- Location: IOIBUF_X115_Y7_N15
\switch[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(12),
	o => \switch[12]~input_o\);

-- Location: LCCOMB_X108_Y16_N24
\ram_data_in[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_data_in[12]~feeder_combout\ = \switch[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \switch[12]~input_o\,
	combout => \ram_data_in[12]~feeder_combout\);

-- Location: FF_X108_Y16_N25
\ram_data_in[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \ram_data_in[12]~feeder_combout\,
	ena => \curr_state.WRITE_RAM~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_data_in(12));

-- Location: IOIBUF_X115_Y9_N22
\switch[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(13),
	o => \switch[13]~input_o\);

-- Location: LCCOMB_X108_Y16_N6
\ram_data_in[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_data_in[13]~feeder_combout\ = \switch[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \switch[13]~input_o\,
	combout => \ram_data_in[13]~feeder_combout\);

-- Location: FF_X108_Y16_N7
\ram_data_in[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \ram_data_in[13]~feeder_combout\,
	ena => \curr_state.WRITE_RAM~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_data_in(13));

-- Location: M9K_X104_Y16_N0
\instance_ram|ram_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "single_port_ram:instance_ram|altsyncram:ram_rtl_0|altsyncram_cf41:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \write_en~q\,
	portare => VCC,
	clk0 => \clk_50mhz~inputclkctrl_outclk\,
	portadatain => \instance_ram|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \instance_ram|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \instance_ram|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: IOIBUF_X115_Y10_N8
\switch[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(14),
	o => \switch[14]~input_o\);

-- Location: FF_X108_Y16_N9
\ram_data_in[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	asdata => \switch[14]~input_o\,
	sload => VCC,
	ena => \curr_state.WRITE_RAM~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_data_in(14));

-- Location: IOIBUF_X115_Y6_N15
\switch[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(15),
	o => \switch[15]~input_o\);

-- Location: FF_X108_Y16_N23
\ram_data_in[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	asdata => \switch[15]~input_o\,
	sload => VCC,
	ena => \curr_state.WRITE_RAM~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_data_in(15));

-- Location: IOIBUF_X115_Y8_N22
\switch[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(16),
	o => \switch[16]~input_o\);

-- Location: FF_X108_Y16_N1
\ram_data_in[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	asdata => \switch[16]~input_o\,
	sload => VCC,
	ena => \curr_state.WRITE_RAM~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_data_in(16));

-- Location: IOIBUF_X115_Y22_N15
\switch[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(17),
	o => \switch[17]~input_o\);

-- Location: LCCOMB_X108_Y16_N2
\ram_data_in[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_data_in[17]~feeder_combout\ = \switch[17]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \switch[17]~input_o\,
	combout => \ram_data_in[17]~feeder_combout\);

-- Location: FF_X108_Y16_N3
\ram_data_in[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \ram_data_in[17]~feeder_combout\,
	ena => \curr_state.WRITE_RAM~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_data_in(17));

-- Location: IOIBUF_X115_Y20_N1
\switch[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(18),
	o => \switch[18]~input_o\);

-- Location: LCCOMB_X112_Y16_N0
\ram_data_in[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_data_in[18]~feeder_combout\ = \switch[18]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \switch[18]~input_o\,
	combout => \ram_data_in[18]~feeder_combout\);

-- Location: FF_X112_Y16_N1
\ram_data_in[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \ram_data_in[18]~feeder_combout\,
	ena => \curr_state.WRITE_RAM~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_data_in(18));

-- Location: IOIBUF_X115_Y12_N1
\switch[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(19),
	o => \switch[19]~input_o\);

-- Location: FF_X112_Y16_N23
\ram_data_in[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	asdata => \switch[19]~input_o\,
	sload => VCC,
	ena => \curr_state.WRITE_RAM~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_data_in(19));

-- Location: IOIBUF_X115_Y23_N1
\switch[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(20),
	o => \switch[20]~input_o\);

-- Location: LCCOMB_X108_Y16_N20
\ram_data_in[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_data_in[20]~feeder_combout\ = \switch[20]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \switch[20]~input_o\,
	combout => \ram_data_in[20]~feeder_combout\);

-- Location: FF_X108_Y16_N21
\ram_data_in[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \ram_data_in[20]~feeder_combout\,
	ena => \curr_state.WRITE_RAM~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_data_in(20));

-- Location: IOIBUF_X115_Y16_N1
\switch[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(21),
	o => \switch[21]~input_o\);

-- Location: LCCOMB_X108_Y16_N10
\ram_data_in[21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_data_in[21]~feeder_combout\ = \switch[21]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \switch[21]~input_o\,
	combout => \ram_data_in[21]~feeder_combout\);

-- Location: FF_X108_Y16_N11
\ram_data_in[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \ram_data_in[21]~feeder_combout\,
	ena => \curr_state.WRITE_RAM~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_data_in(21));

-- Location: IOIBUF_X115_Y19_N8
\switch[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(22),
	o => \switch[22]~input_o\);

-- Location: LCCOMB_X112_Y16_N20
\ram_data_in[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_data_in[22]~feeder_combout\ = \switch[22]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \switch[22]~input_o\,
	combout => \ram_data_in[22]~feeder_combout\);

-- Location: FF_X112_Y16_N21
\ram_data_in[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \ram_data_in[22]~feeder_combout\,
	ena => \curr_state.WRITE_RAM~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_data_in(22));

-- Location: IOIBUF_X115_Y13_N1
\switch[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(23),
	o => \switch[23]~input_o\);

-- Location: LCCOMB_X112_Y16_N10
\ram_data_in[23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_data_in[23]~feeder_combout\ = \switch[23]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \switch[23]~input_o\,
	combout => \ram_data_in[23]~feeder_combout\);

-- Location: FF_X112_Y16_N11
\ram_data_in[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \ram_data_in[23]~feeder_combout\,
	ena => \curr_state.WRITE_RAM~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_data_in(23));

-- Location: IOIBUF_X115_Y12_N8
\switch[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(24),
	o => \switch[24]~input_o\);

-- Location: LCCOMB_X112_Y16_N12
\ram_data_in[24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_data_in[24]~feeder_combout\ = \switch[24]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \switch[24]~input_o\,
	combout => \ram_data_in[24]~feeder_combout\);

-- Location: FF_X112_Y16_N13
\ram_data_in[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \ram_data_in[24]~feeder_combout\,
	ena => \curr_state.WRITE_RAM~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_data_in(24));

-- Location: IOIBUF_X115_Y21_N15
\switch[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(25),
	o => \switch[25]~input_o\);

-- Location: FF_X112_Y16_N15
\ram_data_in[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	asdata => \switch[25]~input_o\,
	sload => VCC,
	ena => \curr_state.WRITE_RAM~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_data_in(25));

-- Location: IOIBUF_X115_Y23_N8
\switch[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(26),
	o => \switch[26]~input_o\);

-- Location: LCCOMB_X108_Y16_N16
\ram_data_in[26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_data_in[26]~feeder_combout\ = \switch[26]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \switch[26]~input_o\,
	combout => \ram_data_in[26]~feeder_combout\);

-- Location: FF_X108_Y16_N17
\ram_data_in[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \ram_data_in[26]~feeder_combout\,
	ena => \curr_state.WRITE_RAM~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_data_in(26));

-- Location: IOIBUF_X115_Y11_N1
\switch[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(27),
	o => \switch[27]~input_o\);

-- Location: LCCOMB_X108_Y16_N30
\ram_data_in[27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_data_in[27]~feeder_combout\ = \switch[27]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \switch[27]~input_o\,
	combout => \ram_data_in[27]~feeder_combout\);

-- Location: FF_X108_Y16_N31
\ram_data_in[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \ram_data_in[27]~feeder_combout\,
	ena => \curr_state.WRITE_RAM~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_data_in(27));

-- Location: IOIBUF_X115_Y19_N1
\switch[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(28),
	o => \switch[28]~input_o\);

-- Location: LCCOMB_X112_Y16_N28
\ram_data_in[28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_data_in[28]~feeder_combout\ = \switch[28]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \switch[28]~input_o\,
	combout => \ram_data_in[28]~feeder_combout\);

-- Location: FF_X112_Y16_N29
\ram_data_in[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \ram_data_in[28]~feeder_combout\,
	ena => \curr_state.WRITE_RAM~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_data_in(28));

-- Location: IOIBUF_X115_Y14_N8
\switch[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(29),
	o => \switch[29]~input_o\);

-- Location: FF_X112_Y16_N27
\ram_data_in[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	asdata => \switch[29]~input_o\,
	sload => VCC,
	ena => \curr_state.WRITE_RAM~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_data_in(29));

-- Location: IOIBUF_X115_Y18_N1
\switch[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(30),
	o => \switch[30]~input_o\);

-- Location: LCCOMB_X112_Y16_N24
\ram_data_in[30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_data_in[30]~feeder_combout\ = \switch[30]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \switch[30]~input_o\,
	combout => \ram_data_in[30]~feeder_combout\);

-- Location: FF_X112_Y16_N25
\ram_data_in[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \ram_data_in[30]~feeder_combout\,
	ena => \curr_state.WRITE_RAM~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_data_in(30));

-- Location: IOIBUF_X115_Y17_N8
\switch[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(31),
	o => \switch[31]~input_o\);

-- Location: LCCOMB_X112_Y16_N6
\ram_data_in[31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_data_in[31]~feeder_combout\ = \switch[31]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \switch[31]~input_o\,
	combout => \ram_data_in[31]~feeder_combout\);

-- Location: FF_X112_Y16_N7
\ram_data_in[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \ram_data_in[31]~feeder_combout\,
	ena => \curr_state.WRITE_RAM~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_data_in(31));

-- Location: M9K_X104_Y16_N0
\instance_ram|ram_rtl_0|auto_generated|ram_block1a14\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "single_port_ram:instance_ram|altsyncram:ram_rtl_0|altsyncram_cf41:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 14,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \write_en~q\,
	portare => VCC,
	clk0 => \clk_50mhz~inputclkctrl_outclk\,
	portadatain => \instance_ram|ram_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\,
	portaaddr => \instance_ram|ram_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \instance_ram|ram_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\);

-- Location: LCCOMB_X108_Y35_N12
\slv[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \slv[1]~feeder_combout\ = ram_address(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => ram_address(1),
	combout => \slv[1]~feeder_combout\);

-- Location: FF_X108_Y35_N13
\slv[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \slv[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => slv(1));

-- Location: LCCOMB_X108_Y35_N2
\slv[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \slv[0]~feeder_combout\ = ram_address(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => ram_address(0),
	combout => \slv[0]~feeder_combout\);

-- Location: FF_X108_Y35_N3
\slv[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \slv[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => slv(0));

-- Location: LCCOMB_X111_Y20_N24
\slv[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \slv[2]~feeder_combout\ = ram_address(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ram_address(2),
	combout => \slv[2]~feeder_combout\);

-- Location: FF_X111_Y20_N25
\slv[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \slv[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => slv(2));

-- Location: LCCOMB_X111_Y20_N2
\slv[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \slv[3]~feeder_combout\ = ram_address(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => ram_address(3),
	combout => \slv[3]~feeder_combout\);

-- Location: FF_X111_Y20_N3
\slv[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \slv[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => slv(3));

-- Location: LCCOMB_X108_Y35_N20
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (slv(2) & (!slv(1) & (slv(0) $ (!slv(3))))) # (!slv(2) & (slv(0) & (slv(1) $ (!slv(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => slv(1),
	datab => slv(0),
	datac => slv(2),
	datad => slv(3),
	combout => \Mux6~0_combout\);

-- Location: FF_X108_Y35_N21
\ssd0[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssd0[0]~reg0_q\);

-- Location: LCCOMB_X108_Y35_N18
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (slv(1) & ((slv(0) & ((slv(3)))) # (!slv(0) & (slv(2))))) # (!slv(1) & (slv(2) & (slv(0) $ (slv(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => slv(1),
	datab => slv(0),
	datac => slv(2),
	datad => slv(3),
	combout => \Mux5~0_combout\);

-- Location: FF_X108_Y35_N19
\ssd0[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssd0[1]~reg0_q\);

-- Location: LCCOMB_X108_Y35_N4
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (slv(2) & (slv(3) & ((slv(1)) # (!slv(0))))) # (!slv(2) & (slv(1) & (!slv(0) & !slv(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => slv(1),
	datab => slv(0),
	datac => slv(2),
	datad => slv(3),
	combout => \Mux4~0_combout\);

-- Location: FF_X108_Y35_N5
\ssd0[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssd0[2]~reg0_q\);

-- Location: LCCOMB_X108_Y35_N22
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (slv(0) & (slv(1) $ ((!slv(2))))) # (!slv(0) & ((slv(1) & (!slv(2) & slv(3))) # (!slv(1) & (slv(2) & !slv(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => slv(1),
	datab => slv(0),
	datac => slv(2),
	datad => slv(3),
	combout => \Mux3~0_combout\);

-- Location: FF_X108_Y35_N23
\ssd0[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssd0[3]~reg0_q\);

-- Location: LCCOMB_X108_Y35_N0
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (slv(1) & (slv(0) & ((!slv(3))))) # (!slv(1) & ((slv(2) & ((!slv(3)))) # (!slv(2) & (slv(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => slv(1),
	datab => slv(0),
	datac => slv(2),
	datad => slv(3),
	combout => \Mux2~0_combout\);

-- Location: FF_X108_Y35_N1
\ssd0[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssd0[4]~reg0_q\);

-- Location: LCCOMB_X108_Y35_N26
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (slv(1) & (!slv(3) & ((slv(0)) # (!slv(2))))) # (!slv(1) & (slv(0) & (slv(2) $ (!slv(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => slv(1),
	datab => slv(0),
	datac => slv(2),
	datad => slv(3),
	combout => \Mux1~0_combout\);

-- Location: FF_X108_Y35_N27
\ssd0[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssd0[5]~reg0_q\);

-- Location: LCCOMB_X108_Y35_N28
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (slv(0) & (!slv(3) & (slv(1) $ (!slv(2))))) # (!slv(0) & (!slv(1) & (slv(2) $ (!slv(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => slv(1),
	datab => slv(0),
	datac => slv(2),
	datad => slv(3),
	combout => \Mux0~0_combout\);

-- Location: FF_X108_Y35_N29
\ssd0[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssd0[6]~reg0_q\);

-- Location: LCCOMB_X111_Y20_N26
\slv[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \slv[7]~feeder_combout\ = ram_address(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => ram_address(7),
	combout => \slv[7]~feeder_combout\);

-- Location: FF_X111_Y20_N27
\slv[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \slv[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => slv(7));

-- Location: LCCOMB_X111_Y20_N0
\slv[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \slv[6]~feeder_combout\ = ram_address(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => ram_address(6),
	combout => \slv[6]~feeder_combout\);

-- Location: FF_X111_Y20_N1
\slv[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \slv[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => slv(6));

-- Location: LCCOMB_X111_Y20_N28
\slv[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \slv[4]~feeder_combout\ = ram_address(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => ram_address(4),
	combout => \slv[4]~feeder_combout\);

-- Location: FF_X111_Y20_N29
\slv[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \slv[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => slv(4));

-- Location: LCCOMB_X111_Y20_N22
\slv[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \slv[5]~feeder_combout\ = ram_address(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ram_address(5),
	combout => \slv[5]~feeder_combout\);

-- Location: FF_X111_Y20_N23
\slv[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \slv[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => slv(5));

-- Location: LCCOMB_X114_Y20_N4
\Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (slv(7) & (slv(4) & (slv(6) $ (slv(5))))) # (!slv(7) & (!slv(5) & (slv(6) $ (slv(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => slv(7),
	datab => slv(6),
	datac => slv(4),
	datad => slv(5),
	combout => \Mux13~0_combout\);

-- Location: FF_X114_Y20_N5
\ssd1[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \Mux13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssd1[0]~reg0_q\);

-- Location: LCCOMB_X114_Y20_N18
\Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (slv(7) & ((slv(4) & ((slv(5)))) # (!slv(4) & (slv(6))))) # (!slv(7) & (slv(6) & (slv(4) $ (slv(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => slv(7),
	datab => slv(6),
	datac => slv(4),
	datad => slv(5),
	combout => \Mux12~0_combout\);

-- Location: FF_X114_Y20_N19
\ssd1[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \Mux12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssd1[1]~reg0_q\);

-- Location: LCCOMB_X114_Y20_N0
\Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (slv(7) & (slv(6) & ((slv(5)) # (!slv(4))))) # (!slv(7) & (!slv(6) & (!slv(4) & slv(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => slv(7),
	datab => slv(6),
	datac => slv(4),
	datad => slv(5),
	combout => \Mux11~0_combout\);

-- Location: FF_X114_Y20_N1
\ssd1[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \Mux11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssd1[2]~reg0_q\);

-- Location: LCCOMB_X114_Y20_N22
\Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (slv(4) & ((slv(6) $ (!slv(5))))) # (!slv(4) & ((slv(7) & (!slv(6) & slv(5))) # (!slv(7) & (slv(6) & !slv(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => slv(7),
	datab => slv(6),
	datac => slv(4),
	datad => slv(5),
	combout => \Mux10~0_combout\);

-- Location: FF_X114_Y20_N23
\ssd1[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \Mux10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssd1[3]~reg0_q\);

-- Location: LCCOMB_X114_Y20_N12
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (slv(5) & (!slv(7) & ((slv(4))))) # (!slv(5) & ((slv(6) & (!slv(7))) # (!slv(6) & ((slv(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => slv(7),
	datab => slv(6),
	datac => slv(4),
	datad => slv(5),
	combout => \Mux9~0_combout\);

-- Location: FF_X114_Y20_N13
\ssd1[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \Mux9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssd1[4]~reg0_q\);

-- Location: LCCOMB_X114_Y20_N10
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (slv(6) & (slv(4) & (slv(7) $ (slv(5))))) # (!slv(6) & (!slv(7) & ((slv(4)) # (slv(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => slv(7),
	datab => slv(6),
	datac => slv(4),
	datad => slv(5),
	combout => \Mux8~0_combout\);

-- Location: FF_X114_Y20_N11
\ssd1[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \Mux8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssd1[5]~reg0_q\);

-- Location: LCCOMB_X114_Y20_N16
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (slv(4) & (!slv(7) & (slv(6) $ (!slv(5))))) # (!slv(4) & (!slv(5) & (slv(7) $ (!slv(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => slv(7),
	datab => slv(6),
	datac => slv(4),
	datad => slv(5),
	combout => \Mux7~0_combout\);

-- Location: FF_X114_Y20_N17
\ssd1[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssd1[6]~reg0_q\);

-- Location: LCCOMB_X47_Y20_N0
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \heartbeat:count[0]~q\ $ (VCC)
-- \Add0~1\ = CARRY(\heartbeat:count[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \heartbeat:count[0]~q\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: FF_X47_Y20_N1
\heartbeat:count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \heartbeat:count[0]~q\);

-- Location: LCCOMB_X47_Y20_N2
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\heartbeat:count[1]~q\ & (!\Add0~1\)) # (!\heartbeat:count[1]~q\ & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!\heartbeat:count[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \heartbeat:count[1]~q\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: FF_X47_Y20_N3
\heartbeat:count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \heartbeat:count[1]~q\);

-- Location: LCCOMB_X47_Y20_N4
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (\heartbeat:count[2]~q\ & (\Add0~3\ $ (GND))) # (!\heartbeat:count[2]~q\ & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((\heartbeat:count[2]~q\ & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \heartbeat:count[2]~q\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X47_Y20_N5
\heartbeat:count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \heartbeat:count[2]~q\);

-- Location: LCCOMB_X47_Y20_N6
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\heartbeat:count[3]~q\ & (!\Add0~5\)) # (!\heartbeat:count[3]~q\ & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!\heartbeat:count[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \heartbeat:count[3]~q\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: FF_X47_Y20_N7
\heartbeat:count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \heartbeat:count[3]~q\);

-- Location: LCCOMB_X47_Y20_N8
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (\heartbeat:count[4]~q\ & (\Add0~7\ $ (GND))) # (!\heartbeat:count[4]~q\ & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((\heartbeat:count[4]~q\ & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \heartbeat:count[4]~q\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: FF_X47_Y20_N9
\heartbeat:count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \heartbeat:count[4]~q\);

-- Location: LCCOMB_X47_Y20_N10
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\heartbeat:count[5]~q\ & (!\Add0~9\)) # (!\heartbeat:count[5]~q\ & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!\heartbeat:count[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \heartbeat:count[5]~q\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: FF_X47_Y20_N11
\heartbeat:count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \heartbeat:count[5]~q\);

-- Location: LCCOMB_X47_Y20_N12
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (\heartbeat:count[6]~q\ & (\Add0~11\ $ (GND))) # (!\heartbeat:count[6]~q\ & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((\heartbeat:count[6]~q\ & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \heartbeat:count[6]~q\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: FF_X47_Y20_N13
\heartbeat:count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \heartbeat:count[6]~q\);

-- Location: LCCOMB_X47_Y20_N14
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\heartbeat:count[7]~q\ & (!\Add0~13\)) # (!\heartbeat:count[7]~q\ & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!\heartbeat:count[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \heartbeat:count[7]~q\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X48_Y20_N14
\count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~0_combout\ = (\Add0~14_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datad => \Equal0~10_combout\,
	combout => \count~0_combout\);

-- Location: FF_X48_Y20_N15
\heartbeat:count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \heartbeat:count[7]~q\);

-- Location: LCCOMB_X47_Y20_N16
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (\heartbeat:count[8]~q\ & (\Add0~15\ $ (GND))) # (!\heartbeat:count[8]~q\ & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((\heartbeat:count[8]~q\ & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \heartbeat:count[8]~q\,
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: FF_X47_Y20_N17
\heartbeat:count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \heartbeat:count[8]~q\);

-- Location: LCCOMB_X47_Y20_N18
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (\heartbeat:count[9]~q\ & (!\Add0~17\)) # (!\heartbeat:count[9]~q\ & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!\heartbeat:count[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \heartbeat:count[9]~q\,
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X48_Y20_N22
\count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~1_combout\ = (\Add0~18_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~18_combout\,
	datad => \Equal0~10_combout\,
	combout => \count~1_combout\);

-- Location: FF_X48_Y20_N23
\heartbeat:count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \heartbeat:count[9]~q\);

-- Location: LCCOMB_X47_Y20_N20
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (\heartbeat:count[10]~q\ & (\Add0~19\ $ (GND))) # (!\heartbeat:count[10]~q\ & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((\heartbeat:count[10]~q\ & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \heartbeat:count[10]~q\,
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: FF_X47_Y20_N21
\heartbeat:count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \heartbeat:count[10]~q\);

-- Location: LCCOMB_X47_Y20_N22
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (\heartbeat:count[11]~q\ & (!\Add0~21\)) # (!\heartbeat:count[11]~q\ & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!\heartbeat:count[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \heartbeat:count[11]~q\,
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X48_Y20_N20
\count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~2_combout\ = (\Add0~22_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~22_combout\,
	datad => \Equal0~10_combout\,
	combout => \count~2_combout\);

-- Location: FF_X48_Y20_N21
\heartbeat:count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \heartbeat:count[11]~q\);

-- Location: LCCOMB_X47_Y20_N24
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (\heartbeat:count[12]~q\ & (\Add0~23\ $ (GND))) # (!\heartbeat:count[12]~q\ & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((\heartbeat:count[12]~q\ & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \heartbeat:count[12]~q\,
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X48_Y20_N24
\count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~3_combout\ = (\Add0~24_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~24_combout\,
	datad => \Equal0~10_combout\,
	combout => \count~3_combout\);

-- Location: FF_X48_Y20_N25
\heartbeat:count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \heartbeat:count[12]~q\);

-- Location: LCCOMB_X47_Y20_N26
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (\heartbeat:count[13]~q\ & (!\Add0~25\)) # (!\heartbeat:count[13]~q\ & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!\heartbeat:count[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \heartbeat:count[13]~q\,
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X48_Y20_N30
\count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~4_combout\ = (\Add0~26_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~26_combout\,
	datad => \Equal0~10_combout\,
	combout => \count~4_combout\);

-- Location: FF_X48_Y20_N31
\heartbeat:count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \heartbeat:count[13]~q\);

-- Location: LCCOMB_X47_Y20_N28
\Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (\heartbeat:count[14]~q\ & (\Add0~27\ $ (GND))) # (!\heartbeat:count[14]~q\ & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((\heartbeat:count[14]~q\ & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \heartbeat:count[14]~q\,
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: FF_X47_Y20_N29
\heartbeat:count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \heartbeat:count[14]~q\);

-- Location: LCCOMB_X47_Y20_N30
\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (\heartbeat:count[15]~q\ & (!\Add0~29\)) # (!\heartbeat:count[15]~q\ & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!\heartbeat:count[15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \heartbeat:count[15]~q\,
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X48_Y20_N12
\count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~5_combout\ = (\Add0~30_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~30_combout\,
	datad => \Equal0~10_combout\,
	combout => \count~5_combout\);

-- Location: FF_X48_Y20_N13
\heartbeat:count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \count~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \heartbeat:count[15]~q\);

-- Location: LCCOMB_X47_Y19_N0
\Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (\heartbeat:count[16]~q\ & (\Add0~31\ $ (GND))) # (!\heartbeat:count[16]~q\ & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((\heartbeat:count[16]~q\ & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \heartbeat:count[16]~q\,
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: FF_X47_Y19_N1
\heartbeat:count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \heartbeat:count[16]~q\);

-- Location: LCCOMB_X47_Y19_N2
\Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (\heartbeat:count[17]~q\ & (!\Add0~33\)) # (!\heartbeat:count[17]~q\ & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!\heartbeat:count[17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \heartbeat:count[17]~q\,
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: FF_X47_Y19_N3
\heartbeat:count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \heartbeat:count[17]~q\);

-- Location: LCCOMB_X47_Y19_N4
\Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (\heartbeat:count[18]~q\ & (\Add0~35\ $ (GND))) # (!\heartbeat:count[18]~q\ & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((\heartbeat:count[18]~q\ & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \heartbeat:count[18]~q\,
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X48_Y19_N18
\count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~6_combout\ = (\Add0~36_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~36_combout\,
	datad => \Equal0~10_combout\,
	combout => \count~6_combout\);

-- Location: FF_X48_Y19_N19
\heartbeat:count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \count~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \heartbeat:count[18]~q\);

-- Location: LCCOMB_X47_Y19_N6
\Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (\heartbeat:count[19]~q\ & (!\Add0~37\)) # (!\heartbeat:count[19]~q\ & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!\heartbeat:count[19]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \heartbeat:count[19]~q\,
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X48_Y19_N4
\count~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~7_combout\ = (\Add0~38_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~38_combout\,
	datad => \Equal0~10_combout\,
	combout => \count~7_combout\);

-- Location: FF_X48_Y19_N5
\heartbeat:count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \count~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \heartbeat:count[19]~q\);

-- Location: LCCOMB_X47_Y19_N8
\Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (\heartbeat:count[20]~q\ & (\Add0~39\ $ (GND))) # (!\heartbeat:count[20]~q\ & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((\heartbeat:count[20]~q\ & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \heartbeat:count[20]~q\,
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: FF_X47_Y19_N9
\heartbeat:count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \heartbeat:count[20]~q\);

-- Location: LCCOMB_X47_Y19_N10
\Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (\heartbeat:count[21]~q\ & (!\Add0~41\)) # (!\heartbeat:count[21]~q\ & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!\heartbeat:count[21]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \heartbeat:count[21]~q\,
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: FF_X47_Y19_N11
\heartbeat:count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \heartbeat:count[21]~q\);

-- Location: LCCOMB_X47_Y19_N12
\Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (\heartbeat:count[22]~q\ & (\Add0~43\ $ (GND))) # (!\heartbeat:count[22]~q\ & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((\heartbeat:count[22]~q\ & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \heartbeat:count[22]~q\,
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: FF_X47_Y19_N13
\heartbeat:count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \heartbeat:count[22]~q\);

-- Location: LCCOMB_X47_Y19_N14
\Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (\heartbeat:count[23]~q\ & (!\Add0~45\)) # (!\heartbeat:count[23]~q\ & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!\heartbeat:count[23]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \heartbeat:count[23]~q\,
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: LCCOMB_X48_Y19_N2
\count~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~8_combout\ = (!\Equal0~10_combout\ & \Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~10_combout\,
	datad => \Add0~46_combout\,
	combout => \count~8_combout\);

-- Location: FF_X48_Y19_N3
\heartbeat:count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \count~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \heartbeat:count[23]~q\);

-- Location: LCCOMB_X47_Y19_N16
\Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (\heartbeat:count[24]~q\ & (\Add0~47\ $ (GND))) # (!\heartbeat:count[24]~q\ & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((\heartbeat:count[24]~q\ & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \heartbeat:count[24]~q\,
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: LCCOMB_X48_Y19_N10
\count~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~9_combout\ = (\Add0~48_combout\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~48_combout\,
	datad => \Equal0~10_combout\,
	combout => \count~9_combout\);

-- Location: FF_X48_Y19_N11
\heartbeat:count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \count~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \heartbeat:count[24]~q\);

-- Location: LCCOMB_X47_Y19_N18
\Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (\heartbeat:count[25]~q\ & (!\Add0~49\)) # (!\heartbeat:count[25]~q\ & ((\Add0~49\) # (GND)))
-- \Add0~51\ = CARRY((!\Add0~49\) # (!\heartbeat:count[25]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \heartbeat:count[25]~q\,
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: FF_X47_Y19_N19
\heartbeat:count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \heartbeat:count[25]~q\);

-- Location: LCCOMB_X47_Y19_N20
\Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (\heartbeat:count[26]~q\ & (\Add0~51\ $ (GND))) # (!\heartbeat:count[26]~q\ & (!\Add0~51\ & VCC))
-- \Add0~53\ = CARRY((\heartbeat:count[26]~q\ & !\Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \heartbeat:count[26]~q\,
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: FF_X47_Y19_N21
\heartbeat:count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \heartbeat:count[26]~q\);

-- Location: LCCOMB_X47_Y19_N22
\Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (\heartbeat:count[27]~q\ & (!\Add0~53\)) # (!\heartbeat:count[27]~q\ & ((\Add0~53\) # (GND)))
-- \Add0~55\ = CARRY((!\Add0~53\) # (!\heartbeat:count[27]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \heartbeat:count[27]~q\,
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: FF_X47_Y19_N23
\heartbeat:count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \heartbeat:count[27]~q\);

-- Location: LCCOMB_X48_Y19_N12
\Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (\heartbeat:count[24]~q\ & (!\heartbeat:count[26]~q\ & (!\heartbeat:count[25]~q\ & !\heartbeat:count[27]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \heartbeat:count[24]~q\,
	datab => \heartbeat:count[26]~q\,
	datac => \heartbeat:count[25]~q\,
	datad => \heartbeat:count[27]~q\,
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X48_Y19_N24
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!\heartbeat:count[21]~q\ & !\heartbeat:count[20]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \heartbeat:count[21]~q\,
	datad => \heartbeat:count[20]~q\,
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X48_Y19_N22
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!\heartbeat:count[16]~q\ & (\heartbeat:count[18]~q\ & (\heartbeat:count[19]~q\ & !\heartbeat:count[17]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \heartbeat:count[16]~q\,
	datab => \heartbeat:count[18]~q\,
	datac => \heartbeat:count[19]~q\,
	datad => \heartbeat:count[17]~q\,
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X48_Y19_N8
\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!\heartbeat:count[22]~q\ & (\Equal0~6_combout\ & (\Equal0~5_combout\ & \heartbeat:count[23]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \heartbeat:count[22]~q\,
	datab => \Equal0~6_combout\,
	datac => \Equal0~5_combout\,
	datad => \heartbeat:count[23]~q\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X47_Y19_N24
\Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (\heartbeat:count[28]~q\ & (\Add0~55\ $ (GND))) # (!\heartbeat:count[28]~q\ & (!\Add0~55\ & VCC))
-- \Add0~57\ = CARRY((\heartbeat:count[28]~q\ & !\Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \heartbeat:count[28]~q\,
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: FF_X47_Y19_N25
\heartbeat:count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \heartbeat:count[28]~q\);

-- Location: LCCOMB_X47_Y19_N26
\Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (\heartbeat:count[29]~q\ & (!\Add0~57\)) # (!\heartbeat:count[29]~q\ & ((\Add0~57\) # (GND)))
-- \Add0~59\ = CARRY((!\Add0~57\) # (!\heartbeat:count[29]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \heartbeat:count[29]~q\,
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: FF_X47_Y19_N27
\heartbeat:count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \heartbeat:count[29]~q\);

-- Location: LCCOMB_X47_Y19_N28
\Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = (\heartbeat:count[30]~q\ & (\Add0~59\ $ (GND))) # (!\heartbeat:count[30]~q\ & (!\Add0~59\ & VCC))
-- \Add0~61\ = CARRY((\heartbeat:count[30]~q\ & !\Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \heartbeat:count[30]~q\,
	datad => VCC,
	cin => \Add0~59\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: FF_X47_Y19_N29
\heartbeat:count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \heartbeat:count[30]~q\);

-- Location: LCCOMB_X47_Y19_N30
\Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = \heartbeat:count[31]~q\ $ (\Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \heartbeat:count[31]~q\,
	cin => \Add0~61\,
	combout => \Add0~62_combout\);

-- Location: FF_X47_Y19_N31
\heartbeat:count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \heartbeat:count[31]~q\);

-- Location: LCCOMB_X48_Y19_N26
\Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (!\heartbeat:count[30]~q\ & (!\heartbeat:count[28]~q\ & (!\heartbeat:count[29]~q\ & !\heartbeat:count[31]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \heartbeat:count[30]~q\,
	datab => \heartbeat:count[28]~q\,
	datac => \heartbeat:count[29]~q\,
	datad => \heartbeat:count[31]~q\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X48_Y20_N10
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (\heartbeat:count[15]~q\ & (\heartbeat:count[12]~q\ & (\heartbeat:count[13]~q\ & !\heartbeat:count[14]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \heartbeat:count[15]~q\,
	datab => \heartbeat:count[12]~q\,
	datac => \heartbeat:count[13]~q\,
	datad => \heartbeat:count[14]~q\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X48_Y20_N8
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\heartbeat:count[4]~q\ & (!\heartbeat:count[7]~q\ & (\heartbeat:count[5]~q\ & \heartbeat:count[6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \heartbeat:count[4]~q\,
	datab => \heartbeat:count[7]~q\,
	datac => \heartbeat:count[5]~q\,
	datad => \heartbeat:count[6]~q\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X48_Y20_N26
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\heartbeat:count[9]~q\ & (\heartbeat:count[11]~q\ & (!\heartbeat:count[8]~q\ & !\heartbeat:count[10]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \heartbeat:count[9]~q\,
	datab => \heartbeat:count[11]~q\,
	datac => \heartbeat:count[8]~q\,
	datad => \heartbeat:count[10]~q\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X48_Y20_N28
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\heartbeat:count[0]~q\ & (\heartbeat:count[3]~q\ & (\heartbeat:count[2]~q\ & \heartbeat:count[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \heartbeat:count[0]~q\,
	datab => \heartbeat:count[3]~q\,
	datac => \heartbeat:count[2]~q\,
	datad => \heartbeat:count[1]~q\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X48_Y20_N4
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~3_combout\ & (\Equal0~1_combout\ & (\Equal0~2_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X48_Y19_N0
\Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (\Equal0~8_combout\ & (\Equal0~7_combout\ & (\Equal0~9_combout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datab => \Equal0~7_combout\,
	datac => \Equal0~9_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X48_Y19_N20
\clk_1hz~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_1hz~0_combout\ = \clk_1hz~q\ $ (\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_1hz~q\,
	datad => \Equal0~10_combout\,
	combout => \clk_1hz~0_combout\);

-- Location: FF_X48_Y19_N21
clk_1hz : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50mhz~inputclkctrl_outclk\,
	d => \clk_1hz~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_1hz~q\);

ww_leds(0) <= \leds[0]~output_o\;

ww_leds(1) <= \leds[1]~output_o\;

ww_leds(2) <= \leds[2]~output_o\;

ww_leds(3) <= \leds[3]~output_o\;

ww_leds(4) <= \leds[4]~output_o\;

ww_leds(5) <= \leds[5]~output_o\;

ww_leds(6) <= \leds[6]~output_o\;

ww_leds(7) <= \leds[7]~output_o\;

ww_leds(8) <= \leds[8]~output_o\;

ww_leds(9) <= \leds[9]~output_o\;

ww_leds(10) <= \leds[10]~output_o\;

ww_leds(11) <= \leds[11]~output_o\;

ww_leds(12) <= \leds[12]~output_o\;

ww_leds(13) <= \leds[13]~output_o\;

ww_leds(14) <= \leds[14]~output_o\;

ww_leds(15) <= \leds[15]~output_o\;

ww_leds(16) <= \leds[16]~output_o\;

ww_leds(17) <= \leds[17]~output_o\;

ww_leds(18) <= \leds[18]~output_o\;

ww_leds(19) <= \leds[19]~output_o\;

ww_leds(20) <= \leds[20]~output_o\;

ww_leds(21) <= \leds[21]~output_o\;

ww_leds(22) <= \leds[22]~output_o\;

ww_leds(23) <= \leds[23]~output_o\;

ww_leds(24) <= \leds[24]~output_o\;

ww_leds(25) <= \leds[25]~output_o\;

ww_leds(26) <= \leds[26]~output_o\;

ww_leds(27) <= \leds[27]~output_o\;

ww_leds(28) <= \leds[28]~output_o\;

ww_leds(29) <= \leds[29]~output_o\;

ww_leds(30) <= \leds[30]~output_o\;

ww_leds(31) <= \leds[31]~output_o\;

ww_ssd0(0) <= \ssd0[0]~output_o\;

ww_ssd0(1) <= \ssd0[1]~output_o\;

ww_ssd0(2) <= \ssd0[2]~output_o\;

ww_ssd0(3) <= \ssd0[3]~output_o\;

ww_ssd0(4) <= \ssd0[4]~output_o\;

ww_ssd0(5) <= \ssd0[5]~output_o\;

ww_ssd0(6) <= \ssd0[6]~output_o\;

ww_ssd1(0) <= \ssd1[0]~output_o\;

ww_ssd1(1) <= \ssd1[1]~output_o\;

ww_ssd1(2) <= \ssd1[2]~output_o\;

ww_ssd1(3) <= \ssd1[3]~output_o\;

ww_ssd1(4) <= \ssd1[4]~output_o\;

ww_ssd1(5) <= \ssd1[5]~output_o\;

ww_ssd1(6) <= \ssd1[6]~output_o\;

ww_heartbeat_led <= \heartbeat_led~output_o\;
END structure;


