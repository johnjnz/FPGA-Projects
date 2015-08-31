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

-- DATE "08/26/2015 16:45:03"

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

ENTITY 	I2C_TEST IS
    PORT (
	scl : INOUT std_logic;
	sda : INOUT std_logic;
	clk : IN std_logic;
	rst : IN std_logic;
	busy : OUT std_logic;
	led_status : OUT std_logic_vector(7 DOWNTO 0);
	ssd_hex0 : OUT std_logic_vector(6 DOWNTO 0);
	ssd_hex1 : OUT std_logic_vector(6 DOWNTO 0);
	ssd_hex4 : OUT std_logic_vector(6 DOWNTO 0)
	);
END I2C_TEST;

-- Design Ports Information
-- busy	=>  Location: PIN_R27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_status[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- led_status[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- led_status[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- led_status[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- led_status[4]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- led_status[5]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- led_status[6]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- led_status[7]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- ssd_hex0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- ssd_hex0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- ssd_hex0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- ssd_hex0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- ssd_hex0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- ssd_hex0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- ssd_hex0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- ssd_hex1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- ssd_hex1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- ssd_hex1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- ssd_hex1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- ssd_hex1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- ssd_hex1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- ssd_hex1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- ssd_hex4[0]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- ssd_hex4[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- ssd_hex4[2]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- ssd_hex4[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- ssd_hex4[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- ssd_hex4[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- ssd_hex4[6]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- scl	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- sda	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: 8mA
-- clk	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF I2C_TEST IS
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
SIGNAL ww_rst : std_logic;
SIGNAL ww_busy : std_logic;
SIGNAL ww_led_status : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ssd_hex0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_ssd_hex1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_ssd_hex4 : std_logic_vector(6 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \scl~output_o\ : std_logic;
SIGNAL \sda~output_o\ : std_logic;
SIGNAL \busy~output_o\ : std_logic;
SIGNAL \led_status[0]~output_o\ : std_logic;
SIGNAL \led_status[1]~output_o\ : std_logic;
SIGNAL \led_status[2]~output_o\ : std_logic;
SIGNAL \led_status[3]~output_o\ : std_logic;
SIGNAL \led_status[4]~output_o\ : std_logic;
SIGNAL \led_status[5]~output_o\ : std_logic;
SIGNAL \led_status[6]~output_o\ : std_logic;
SIGNAL \led_status[7]~output_o\ : std_logic;
SIGNAL \ssd_hex0[0]~output_o\ : std_logic;
SIGNAL \ssd_hex0[1]~output_o\ : std_logic;
SIGNAL \ssd_hex0[2]~output_o\ : std_logic;
SIGNAL \ssd_hex0[3]~output_o\ : std_logic;
SIGNAL \ssd_hex0[4]~output_o\ : std_logic;
SIGNAL \ssd_hex0[5]~output_o\ : std_logic;
SIGNAL \ssd_hex0[6]~output_o\ : std_logic;
SIGNAL \ssd_hex1[0]~output_o\ : std_logic;
SIGNAL \ssd_hex1[1]~output_o\ : std_logic;
SIGNAL \ssd_hex1[2]~output_o\ : std_logic;
SIGNAL \ssd_hex1[3]~output_o\ : std_logic;
SIGNAL \ssd_hex1[4]~output_o\ : std_logic;
SIGNAL \ssd_hex1[5]~output_o\ : std_logic;
SIGNAL \ssd_hex1[6]~output_o\ : std_logic;
SIGNAL \ssd_hex4[0]~output_o\ : std_logic;
SIGNAL \ssd_hex4[1]~output_o\ : std_logic;
SIGNAL \ssd_hex4[2]~output_o\ : std_logic;
SIGNAL \ssd_hex4[3]~output_o\ : std_logic;
SIGNAL \ssd_hex4[4]~output_o\ : std_logic;
SIGNAL \ssd_hex4[5]~output_o\ : std_logic;
SIGNAL \ssd_hex4[6]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \sda~input_o\ : std_logic;
SIGNAL \i2cSlave|sda_reg~0_combout\ : std_logic;
SIGNAL \i2cSlave|sda_reg~q\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \i2cSlave|sda_prev_reg~feeder_combout\ : std_logic;
SIGNAL \i2cSlave|sda_prev_reg~q\ : std_logic;
SIGNAL \scl~input_o\ : std_logic;
SIGNAL \i2cSlave|scl_reg~0_combout\ : std_logic;
SIGNAL \i2cSlave|scl_reg~q\ : std_logic;
SIGNAL \i2cSlave|scl_prev_reg~feeder_combout\ : std_logic;
SIGNAL \i2cSlave|scl_prev_reg~q\ : std_logic;
SIGNAL \i2cSlave|process_0~1_combout\ : std_logic;
SIGNAL \i2cSlave|stop_reg~feeder_combout\ : std_logic;
SIGNAL \i2cSlave|stop_reg~q\ : std_logic;
SIGNAL \i2cSlave|state_reg~43_combout\ : std_logic;
SIGNAL \i2cSlave|start_reg~0_combout\ : std_logic;
SIGNAL \i2cSlave|start_reg~feeder_combout\ : std_logic;
SIGNAL \i2cSlave|start_reg~q\ : std_logic;
SIGNAL \i2cSlave|bits_processed_reg~0_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg~25_combout\ : std_logic;
SIGNAL \i2cSlave|process_0~2_combout\ : std_logic;
SIGNAL \i2cSlave|scl_falling_reg~q\ : std_logic;
SIGNAL \i2cSlave|process_0~0_combout\ : std_logic;
SIGNAL \i2cSlave|scl_rising_reg~q\ : std_logic;
SIGNAL \i2cSlave|bits_processed_reg~12_combout\ : std_logic;
SIGNAL \i2cSlave|Add1~0_combout\ : std_logic;
SIGNAL \i2cSlave|bits_processed_reg[2]~9_combout\ : std_logic;
SIGNAL \i2cSlave|process_1~0_combout\ : std_logic;
SIGNAL \i2cSlave|bits_processed_reg~13_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg~49_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg~50_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg.I2C_READ_ACK_START~q\ : std_logic;
SIGNAL \i2cSlave|data_to_master_reg[0]~0_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg~51_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg.I2C_READ_ACK_GOT_RISING~q\ : std_logic;
SIGNAL \i2cSlave|continue_reg~0_combout\ : std_logic;
SIGNAL \i2cSlave|continue_reg~q\ : std_logic;
SIGNAL \i2cSlave|state_reg~52_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg~53_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg.I2C_READ_STOP~q\ : std_logic;
SIGNAL \i2cSlave|state_reg~20_combout\ : std_logic;
SIGNAL \i2cSlave|Decoder0~0_combout\ : std_logic;
SIGNAL \i2cSlave|addr_reg[0]~0_combout\ : std_logic;
SIGNAL \i2cSlave|addr_reg[0]~1_combout\ : std_logic;
SIGNAL \i2cSlave|addr_reg[0]~8_combout\ : std_logic;
SIGNAL \i2cSlave|addr_reg[1]~3_combout\ : std_logic;
SIGNAL \i2cSlave|addr_reg[1]~9_combout\ : std_logic;
SIGNAL \i2cSlave|addr_reg[3]~12_combout\ : std_logic;
SIGNAL \i2cSlave|addr_reg[3]~13_combout\ : std_logic;
SIGNAL \i2cSlave|addr_reg[2]~10_combout\ : std_logic;
SIGNAL \i2cSlave|addr_reg[0]~5_combout\ : std_logic;
SIGNAL \i2cSlave|addr_reg[2]~11_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg~30_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg~31_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg~34_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg~35_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg~36_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg~37_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg~19_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg~38_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg~39_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg~40_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg.I2C_ANSWER_ACK_START~q\ : std_logic;
SIGNAL \i2cSlave|state_reg~18_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg~26_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg~24_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg~32_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg~22_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg~33_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg.I2C_READ~q\ : std_logic;
SIGNAL \i2cSlave|Selector8~0_combout\ : std_logic;
SIGNAL \i2cSlave|bits_processed_reg~14_combout\ : std_logic;
SIGNAL \i2cSlave|bits_processed_reg~15_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg~23_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg~27_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg~28_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg.I2C_WRITE~q\ : std_logic;
SIGNAL \i2cSlave|state_reg~21_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg~45_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg~46_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg~47_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg~48_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg.I2C_GET_ADDRESS_AND_CMD~q\ : std_logic;
SIGNAL \i2cSlave|process_1~1_combout\ : std_logic;
SIGNAL \i2cSlave|bits_processed_reg[0]~7_combout\ : std_logic;
SIGNAL \i2cSlave|bits_processed_reg[0]~4_combout\ : std_logic;
SIGNAL \i2cSlave|bits_processed_reg[0]~5_combout\ : std_logic;
SIGNAL \i2cSlave|bits_processed_reg[0]~6_combout\ : std_logic;
SIGNAL \i2cSlave|bits_processed_reg[0]~8_combout\ : std_logic;
SIGNAL \i2cSlave|bits_processed_reg[1]~11_combout\ : std_logic;
SIGNAL \i2cSlave|addr_reg[6]~6_combout\ : std_logic;
SIGNAL \i2cSlave|addr_reg[6]~7_combout\ : std_logic;
SIGNAL \i2cSlave|addr_reg[4]~2_combout\ : std_logic;
SIGNAL \i2cSlave|addr_reg[5]~4_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg~29_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg~41_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg~42_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg~44_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg.I2C_IDLE~q\ : std_logic;
SIGNAL \i2cSlave|bits_processed_reg[0]~2_combout\ : std_logic;
SIGNAL \i2cSlave|bits_processed_reg[0]~1_combout\ : std_logic;
SIGNAL \i2cSlave|bits_processed_reg[2]~3_combout\ : std_logic;
SIGNAL \i2cSlave|bits_processed_reg[0]~10_combout\ : std_logic;
SIGNAL \i2cSlave|Equal2~0_combout\ : std_logic;
SIGNAL \i2cSlave|cmd_reg~0_combout\ : std_logic;
SIGNAL \i2cSlave|cmd_reg~1_combout\ : std_logic;
SIGNAL \i2cSlave|cmd_reg~q\ : std_logic;
SIGNAL \i2cSlave|data_to_master_reg[0]~1_combout\ : std_logic;
SIGNAL \i2cSlave|data_to_master_reg[0]~2_combout\ : std_logic;
SIGNAL \i2cSlave|Mux0~0_combout\ : std_logic;
SIGNAL \i2cSlave|sda_o_reg~q\ : std_logic;
SIGNAL \i2cSlave|sda_wen_reg~0_combout\ : std_logic;
SIGNAL \i2cSlave|sda_wen_reg~q\ : std_logic;
SIGNAL \i2cSlave|data_valid_reg~0_combout\ : std_logic;
SIGNAL \i2cSlave|data_valid_reg~q\ : std_logic;
SIGNAL \Selector10~1_combout\ : std_logic;
SIGNAL \i2cSlave|Decoder1~0_combout\ : std_logic;
SIGNAL \i2cSlave|Decoder1~3_combout\ : std_logic;
SIGNAL \i2cSlave|data_reg[2]~2_combout\ : std_logic;
SIGNAL \cmd[2]~feeder_combout\ : std_logic;
SIGNAL \cmd[1]~0_combout\ : std_logic;
SIGNAL \i2cSlave|Decoder1~4_combout\ : std_logic;
SIGNAL \i2cSlave|data_reg[3]~3_combout\ : std_logic;
SIGNAL \cmd[3]~feeder_combout\ : std_logic;
SIGNAL \i2cSlave|Decoder1~2_combout\ : std_logic;
SIGNAL \i2cSlave|data_reg[1]~1_combout\ : std_logic;
SIGNAL \cmd[1]~feeder_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \i2cSlave|Decoder1~1_combout\ : std_logic;
SIGNAL \i2cSlave|data_reg[0]~0_combout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \state_reg.LED_RESET~q\ : std_logic;
SIGNAL \Selector13~1_combout\ : std_logic;
SIGNAL \state_reg.LED_CTRL~q\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \Selector10~2_combout\ : std_logic;
SIGNAL \state_reg.GET_CMD~q\ : std_logic;
SIGNAL \state_reg.GET_DATA~0_combout\ : std_logic;
SIGNAL \state_reg.GET_DATA~q\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \state_reg.DECODE_CMD~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \update_ssd~q\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \data_reg[0]~0_combout\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \led_status[0]~reg0_q\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \led_status[1]~reg0_q\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \led_status[2]~reg0_q\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \led_status[3]~reg0_q\ : std_logic;
SIGNAL \i2cSlave|Decoder1~5_combout\ : std_logic;
SIGNAL \i2cSlave|data_reg[4]~4_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \led_status[4]~reg0_q\ : std_logic;
SIGNAL \i2cSlave|Decoder1~6_combout\ : std_logic;
SIGNAL \i2cSlave|data_reg[5]~5_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \led_status[5]~reg0_q\ : std_logic;
SIGNAL \i2cSlave|Decoder1~7_combout\ : std_logic;
SIGNAL \i2cSlave|data_reg[6]~6_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \led_status[6]~reg0_q\ : std_logic;
SIGNAL \i2cSlave|Decoder1~8_combout\ : std_logic;
SIGNAL \i2cSlave|data_reg[7]~7_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \led_status[7]~reg0_q\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \ssd_hex0[0]~reg0_q\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \ssd_hex0[1]~reg0_q\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \ssd_hex0[2]~reg0_q\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \ssd_hex0[3]~reg0_q\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \ssd_hex0[4]~reg0_q\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \ssd_hex0[5]~reg0_q\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \ssd_hex0[6]~reg0_q\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \ssd_hex1[0]~reg0_q\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \ssd_hex1[1]~reg0_q\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \ssd_hex1[2]~reg0_q\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \ssd_hex1[3]~reg0_q\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \ssd_hex1[4]~reg0_q\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \ssd_hex1[5]~reg0_q\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \ssd_hex1[6]~reg0_q\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \ssd_hex4[0]~reg0_q\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \ssd_hex4[1]~reg0_q\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \ssd_hex4[2]~reg0_q\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \ssd_hex4[3]~reg0_q\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \ssd_hex4[4]~reg0_q\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \ssd_hex4[5]~reg0_q\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \ssd_hex4[6]~reg0_q\ : std_logic;
SIGNAL data_reg : std_logic_vector(7 DOWNTO 0);
SIGNAL cmd : std_logic_vector(3 DOWNTO 0);
SIGNAL \i2cSlave|data_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \i2cSlave|bits_processed_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i2cSlave|data_to_master_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \i2cSlave|addr_reg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \i2cSlave|ALT_INV_state_reg.I2C_READ~q\ : std_logic;
SIGNAL \i2cSlave|ALT_INV_state_reg.I2C_WRITE~q\ : std_logic;
SIGNAL \ALT_INV_led_status[7]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_led_status[6]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_led_status[5]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_led_status[4]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_led_status[3]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_led_status[2]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_led_status[1]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_led_status[0]~reg0_q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
busy <= ww_busy;
led_status <= ww_led_status;
ssd_hex0 <= ww_ssd_hex0;
ssd_hex1 <= ww_ssd_hex1;
ssd_hex4 <= ww_ssd_hex4;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\i2cSlave|ALT_INV_state_reg.I2C_READ~q\ <= NOT \i2cSlave|state_reg.I2C_READ~q\;
\i2cSlave|ALT_INV_state_reg.I2C_WRITE~q\ <= NOT \i2cSlave|state_reg.I2C_WRITE~q\;
\ALT_INV_led_status[7]~reg0_q\ <= NOT \led_status[7]~reg0_q\;
\ALT_INV_led_status[6]~reg0_q\ <= NOT \led_status[6]~reg0_q\;
\ALT_INV_led_status[5]~reg0_q\ <= NOT \led_status[5]~reg0_q\;
\ALT_INV_led_status[4]~reg0_q\ <= NOT \led_status[4]~reg0_q\;
\ALT_INV_led_status[3]~reg0_q\ <= NOT \led_status[3]~reg0_q\;
\ALT_INV_led_status[2]~reg0_q\ <= NOT \led_status[2]~reg0_q\;
\ALT_INV_led_status[1]~reg0_q\ <= NOT \led_status[1]~reg0_q\;
\ALT_INV_led_status[0]~reg0_q\ <= NOT \led_status[0]~reg0_q\;

-- Location: IOOBUF_X109_Y0_N9
\scl~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \scl~output_o\);

-- Location: IOOBUF_X96_Y0_N23
\sda~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2cSlave|sda_o_reg~q\,
	oe => \i2cSlave|sda_wen_reg~q\,
	devoe => ww_devoe,
	o => \sda~output_o\);

-- Location: IOOBUF_X115_Y34_N16
\busy~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \update_ssd~q\,
	devoe => ww_devoe,
	o => \busy~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\led_status[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_led_status[0]~reg0_q\,
	devoe => ww_devoe,
	o => \led_status[0]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\led_status[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_led_status[1]~reg0_q\,
	devoe => ww_devoe,
	o => \led_status[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\led_status[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_led_status[2]~reg0_q\,
	devoe => ww_devoe,
	o => \led_status[2]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\led_status[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_led_status[3]~reg0_q\,
	devoe => ww_devoe,
	o => \led_status[3]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\led_status[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_led_status[4]~reg0_q\,
	devoe => ww_devoe,
	o => \led_status[4]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\led_status[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_led_status[5]~reg0_q\,
	devoe => ww_devoe,
	o => \led_status[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\led_status[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_led_status[6]~reg0_q\,
	devoe => ww_devoe,
	o => \led_status[6]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\led_status[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_led_status[7]~reg0_q\,
	devoe => ww_devoe,
	o => \led_status[7]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\ssd_hex0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ssd_hex0[0]~reg0_q\,
	devoe => ww_devoe,
	o => \ssd_hex0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\ssd_hex0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ssd_hex0[1]~reg0_q\,
	devoe => ww_devoe,
	o => \ssd_hex0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\ssd_hex0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ssd_hex0[2]~reg0_q\,
	devoe => ww_devoe,
	o => \ssd_hex0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\ssd_hex0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ssd_hex0[3]~reg0_q\,
	devoe => ww_devoe,
	o => \ssd_hex0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\ssd_hex0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ssd_hex0[4]~reg0_q\,
	devoe => ww_devoe,
	o => \ssd_hex0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\ssd_hex0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ssd_hex0[5]~reg0_q\,
	devoe => ww_devoe,
	o => \ssd_hex0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\ssd_hex0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ssd_hex0[6]~reg0_q\,
	devoe => ww_devoe,
	o => \ssd_hex0[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\ssd_hex1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ssd_hex1[0]~reg0_q\,
	devoe => ww_devoe,
	o => \ssd_hex1[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\ssd_hex1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ssd_hex1[1]~reg0_q\,
	devoe => ww_devoe,
	o => \ssd_hex1[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\ssd_hex1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ssd_hex1[2]~reg0_q\,
	devoe => ww_devoe,
	o => \ssd_hex1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\ssd_hex1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ssd_hex1[3]~reg0_q\,
	devoe => ww_devoe,
	o => \ssd_hex1[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\ssd_hex1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ssd_hex1[4]~reg0_q\,
	devoe => ww_devoe,
	o => \ssd_hex1[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\ssd_hex1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ssd_hex1[5]~reg0_q\,
	devoe => ww_devoe,
	o => \ssd_hex1[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\ssd_hex1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ssd_hex1[6]~reg0_q\,
	devoe => ww_devoe,
	o => \ssd_hex1[6]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\ssd_hex4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ssd_hex4[0]~reg0_q\,
	devoe => ww_devoe,
	o => \ssd_hex4[0]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\ssd_hex4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ssd_hex4[1]~reg0_q\,
	devoe => ww_devoe,
	o => \ssd_hex4[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\ssd_hex4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ssd_hex4[2]~reg0_q\,
	devoe => ww_devoe,
	o => \ssd_hex4[2]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\ssd_hex4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ssd_hex4[3]~reg0_q\,
	devoe => ww_devoe,
	o => \ssd_hex4[3]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\ssd_hex4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ssd_hex4[4]~reg0_q\,
	devoe => ww_devoe,
	o => \ssd_hex4[4]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\ssd_hex4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ssd_hex4[5]~reg0_q\,
	devoe => ww_devoe,
	o => \ssd_hex4[5]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\ssd_hex4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ssd_hex4[6]~reg0_q\,
	devoe => ww_devoe,
	o => \ssd_hex4[6]~output_o\);

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

-- Location: IOIBUF_X96_Y0_N22
\sda~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => sda,
	o => \sda~input_o\);

-- Location: LCCOMB_X106_Y32_N16
\i2cSlave|sda_reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|sda_reg~0_combout\ = !\sda~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sda~input_o\,
	combout => \i2cSlave|sda_reg~0_combout\);

-- Location: FF_X106_Y32_N17
\i2cSlave|sda_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|sda_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|sda_reg~q\);

-- Location: IOIBUF_X60_Y0_N22
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: LCCOMB_X106_Y32_N12
\i2cSlave|sda_prev_reg~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|sda_prev_reg~feeder_combout\ = \i2cSlave|sda_reg~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2cSlave|sda_reg~q\,
	combout => \i2cSlave|sda_prev_reg~feeder_combout\);

-- Location: FF_X106_Y32_N13
\i2cSlave|sda_prev_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|sda_prev_reg~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|sda_prev_reg~q\);

-- Location: IOIBUF_X109_Y0_N8
\scl~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => scl,
	o => \scl~input_o\);

-- Location: LCCOMB_X106_Y32_N8
\i2cSlave|scl_reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|scl_reg~0_combout\ = !\scl~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \scl~input_o\,
	combout => \i2cSlave|scl_reg~0_combout\);

-- Location: FF_X106_Y32_N9
\i2cSlave|scl_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|scl_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|scl_reg~q\);

-- Location: LCCOMB_X106_Y32_N18
\i2cSlave|scl_prev_reg~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|scl_prev_reg~feeder_combout\ = \i2cSlave|scl_reg~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2cSlave|scl_reg~q\,
	combout => \i2cSlave|scl_prev_reg~feeder_combout\);

-- Location: FF_X106_Y32_N19
\i2cSlave|scl_prev_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|scl_prev_reg~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|scl_prev_reg~q\);

-- Location: LCCOMB_X106_Y32_N2
\i2cSlave|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|process_0~1_combout\ = (\i2cSlave|sda_prev_reg~q\ & (!\i2cSlave|scl_prev_reg~q\ & (!\i2cSlave|scl_reg~q\ & !\i2cSlave|sda_reg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|sda_prev_reg~q\,
	datab => \i2cSlave|scl_prev_reg~q\,
	datac => \i2cSlave|scl_reg~q\,
	datad => \i2cSlave|sda_reg~q\,
	combout => \i2cSlave|process_0~1_combout\);

-- Location: LCCOMB_X110_Y32_N18
\i2cSlave|stop_reg~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|stop_reg~feeder_combout\ = \i2cSlave|process_0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2cSlave|process_0~1_combout\,
	combout => \i2cSlave|stop_reg~feeder_combout\);

-- Location: FF_X110_Y32_N19
\i2cSlave|stop_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|stop_reg~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|stop_reg~q\);

-- Location: LCCOMB_X110_Y32_N10
\i2cSlave|state_reg~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~43_combout\ = (!\rst~input_o\ & !\i2cSlave|stop_reg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datad => \i2cSlave|stop_reg~q\,
	combout => \i2cSlave|state_reg~43_combout\);

-- Location: LCCOMB_X106_Y32_N0
\i2cSlave|start_reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|start_reg~0_combout\ = (!\i2cSlave|sda_prev_reg~q\ & (!\i2cSlave|scl_prev_reg~q\ & (!\i2cSlave|scl_reg~q\ & \i2cSlave|sda_reg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|sda_prev_reg~q\,
	datab => \i2cSlave|scl_prev_reg~q\,
	datac => \i2cSlave|scl_reg~q\,
	datad => \i2cSlave|sda_reg~q\,
	combout => \i2cSlave|start_reg~0_combout\);

-- Location: LCCOMB_X110_Y32_N24
\i2cSlave|start_reg~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|start_reg~feeder_combout\ = \i2cSlave|start_reg~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2cSlave|start_reg~0_combout\,
	combout => \i2cSlave|start_reg~feeder_combout\);

-- Location: FF_X110_Y32_N25
\i2cSlave|start_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|start_reg~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|start_reg~q\);

-- Location: LCCOMB_X110_Y32_N22
\i2cSlave|bits_processed_reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|bits_processed_reg~0_combout\ = (!\i2cSlave|stop_reg~q\ & !\i2cSlave|start_reg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2cSlave|stop_reg~q\,
	datad => \i2cSlave|start_reg~q\,
	combout => \i2cSlave|bits_processed_reg~0_combout\);

-- Location: LCCOMB_X110_Y32_N28
\i2cSlave|state_reg~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~25_combout\ = (!\rst~input_o\ & (!\i2cSlave|start_reg~q\ & !\i2cSlave|stop_reg~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \i2cSlave|start_reg~q\,
	datad => \i2cSlave|stop_reg~q\,
	combout => \i2cSlave|state_reg~25_combout\);

-- Location: LCCOMB_X106_Y32_N26
\i2cSlave|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|process_0~2_combout\ = (\i2cSlave|scl_reg~q\ & !\i2cSlave|scl_prev_reg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2cSlave|scl_reg~q\,
	datad => \i2cSlave|scl_prev_reg~q\,
	combout => \i2cSlave|process_0~2_combout\);

-- Location: FF_X107_Y32_N31
\i2cSlave|scl_falling_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i2cSlave|process_0~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|scl_falling_reg~q\);

-- Location: LCCOMB_X106_Y32_N6
\i2cSlave|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|process_0~0_combout\ = (!\i2cSlave|scl_reg~q\ & \i2cSlave|scl_prev_reg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2cSlave|scl_reg~q\,
	datad => \i2cSlave|scl_prev_reg~q\,
	combout => \i2cSlave|process_0~0_combout\);

-- Location: FF_X107_Y32_N17
\i2cSlave|scl_rising_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i2cSlave|process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|scl_rising_reg~q\);

-- Location: LCCOMB_X107_Y32_N16
\i2cSlave|bits_processed_reg~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|bits_processed_reg~12_combout\ = (\i2cSlave|scl_rising_reg~q\ & ((\i2cSlave|state_reg.I2C_WRITE~q\) # ((\i2cSlave|state_reg.I2C_GET_ADDRESS_AND_CMD~q\ & !\i2cSlave|bits_processed_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|state_reg.I2C_WRITE~q\,
	datab => \i2cSlave|state_reg.I2C_GET_ADDRESS_AND_CMD~q\,
	datac => \i2cSlave|scl_rising_reg~q\,
	datad => \i2cSlave|bits_processed_reg\(3),
	combout => \i2cSlave|bits_processed_reg~12_combout\);

-- Location: LCCOMB_X108_Y33_N4
\i2cSlave|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|Add1~0_combout\ = \i2cSlave|bits_processed_reg\(2) $ (((\i2cSlave|bits_processed_reg\(0) & \i2cSlave|bits_processed_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|bits_processed_reg\(0),
	datab => \i2cSlave|bits_processed_reg\(1),
	datad => \i2cSlave|bits_processed_reg\(2),
	combout => \i2cSlave|Add1~0_combout\);

-- Location: LCCOMB_X107_Y32_N26
\i2cSlave|bits_processed_reg[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|bits_processed_reg[2]~9_combout\ = (\i2cSlave|bits_processed_reg[0]~8_combout\ & (((\i2cSlave|bits_processed_reg\(2))))) # (!\i2cSlave|bits_processed_reg[0]~8_combout\ & (\i2cSlave|Add1~0_combout\ & (\i2cSlave|bits_processed_reg[2]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|Add1~0_combout\,
	datab => \i2cSlave|bits_processed_reg[2]~3_combout\,
	datac => \i2cSlave|bits_processed_reg\(2),
	datad => \i2cSlave|bits_processed_reg[0]~8_combout\,
	combout => \i2cSlave|bits_processed_reg[2]~9_combout\);

-- Location: FF_X107_Y32_N27
\i2cSlave|bits_processed_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|bits_processed_reg[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|bits_processed_reg\(2));

-- Location: LCCOMB_X108_Y32_N22
\i2cSlave|process_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|process_1~0_combout\ = (\i2cSlave|bits_processed_reg\(3) & (!\i2cSlave|bits_processed_reg\(1) & (!\i2cSlave|bits_processed_reg\(2) & !\i2cSlave|bits_processed_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|bits_processed_reg\(3),
	datab => \i2cSlave|bits_processed_reg\(1),
	datac => \i2cSlave|bits_processed_reg\(2),
	datad => \i2cSlave|bits_processed_reg\(0),
	combout => \i2cSlave|process_1~0_combout\);

-- Location: LCCOMB_X108_Y32_N0
\i2cSlave|bits_processed_reg~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|bits_processed_reg~13_combout\ = (\i2cSlave|bits_processed_reg\(3) & ((\i2cSlave|state_reg.I2C_GET_ADDRESS_AND_CMD~q\) # (\i2cSlave|state_reg.I2C_WRITE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2cSlave|bits_processed_reg\(3),
	datac => \i2cSlave|state_reg.I2C_GET_ADDRESS_AND_CMD~q\,
	datad => \i2cSlave|state_reg.I2C_WRITE~q\,
	combout => \i2cSlave|bits_processed_reg~13_combout\);

-- Location: LCCOMB_X107_Y32_N30
\i2cSlave|state_reg~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~49_combout\ = (\i2cSlave|state_reg.I2C_READ~q\ & (\i2cSlave|Equal2~0_combout\ & (\i2cSlave|scl_falling_reg~q\ & !\i2cSlave|bits_processed_reg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|state_reg.I2C_READ~q\,
	datab => \i2cSlave|Equal2~0_combout\,
	datac => \i2cSlave|scl_falling_reg~q\,
	datad => \i2cSlave|bits_processed_reg\(3),
	combout => \i2cSlave|state_reg~49_combout\);

-- Location: LCCOMB_X108_Y32_N24
\i2cSlave|state_reg~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~50_combout\ = (\i2cSlave|state_reg~47_combout\ & (\i2cSlave|state_reg~25_combout\ & (\i2cSlave|state_reg~49_combout\))) # (!\i2cSlave|state_reg~47_combout\ & (((\i2cSlave|state_reg.I2C_READ_ACK_START~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|state_reg~25_combout\,
	datab => \i2cSlave|state_reg~49_combout\,
	datac => \i2cSlave|state_reg.I2C_READ_ACK_START~q\,
	datad => \i2cSlave|state_reg~47_combout\,
	combout => \i2cSlave|state_reg~50_combout\);

-- Location: FF_X108_Y32_N25
\i2cSlave|state_reg.I2C_READ_ACK_START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|state_reg~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|state_reg.I2C_READ_ACK_START~q\);

-- Location: LCCOMB_X108_Y32_N18
\i2cSlave|data_to_master_reg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|data_to_master_reg[0]~0_combout\ = (\i2cSlave|scl_rising_reg~q\ & \i2cSlave|state_reg.I2C_READ_ACK_START~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2cSlave|scl_rising_reg~q\,
	datad => \i2cSlave|state_reg.I2C_READ_ACK_START~q\,
	combout => \i2cSlave|data_to_master_reg[0]~0_combout\);

-- Location: LCCOMB_X108_Y32_N26
\i2cSlave|state_reg~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~51_combout\ = (\i2cSlave|state_reg~25_combout\ & ((\i2cSlave|data_to_master_reg[0]~0_combout\) # ((\i2cSlave|state_reg.I2C_READ_ACK_GOT_RISING~q\ & !\i2cSlave|state_reg~47_combout\)))) # (!\i2cSlave|state_reg~25_combout\ & 
-- (((\i2cSlave|state_reg.I2C_READ_ACK_GOT_RISING~q\ & !\i2cSlave|state_reg~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|state_reg~25_combout\,
	datab => \i2cSlave|data_to_master_reg[0]~0_combout\,
	datac => \i2cSlave|state_reg.I2C_READ_ACK_GOT_RISING~q\,
	datad => \i2cSlave|state_reg~47_combout\,
	combout => \i2cSlave|state_reg~51_combout\);

-- Location: FF_X108_Y32_N27
\i2cSlave|state_reg.I2C_READ_ACK_GOT_RISING\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|state_reg~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|state_reg.I2C_READ_ACK_GOT_RISING~q\);

-- Location: LCCOMB_X110_Y32_N30
\i2cSlave|continue_reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|continue_reg~0_combout\ = (\i2cSlave|state_reg.I2C_READ_ACK_START~q\ & ((\i2cSlave|scl_rising_reg~q\ & (\i2cSlave|sda_reg~q\)) # (!\i2cSlave|scl_rising_reg~q\ & ((\i2cSlave|continue_reg~q\))))) # (!\i2cSlave|state_reg.I2C_READ_ACK_START~q\ & 
-- (((\i2cSlave|continue_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|sda_reg~q\,
	datab => \i2cSlave|state_reg.I2C_READ_ACK_START~q\,
	datac => \i2cSlave|continue_reg~q\,
	datad => \i2cSlave|scl_rising_reg~q\,
	combout => \i2cSlave|continue_reg~0_combout\);

-- Location: FF_X110_Y32_N31
\i2cSlave|continue_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|continue_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|continue_reg~q\);

-- Location: LCCOMB_X110_Y32_N12
\i2cSlave|state_reg~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~52_combout\ = (!\i2cSlave|continue_reg~q\ & (\i2cSlave|scl_falling_reg~q\ & \i2cSlave|state_reg.I2C_READ_ACK_GOT_RISING~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|continue_reg~q\,
	datac => \i2cSlave|scl_falling_reg~q\,
	datad => \i2cSlave|state_reg.I2C_READ_ACK_GOT_RISING~q\,
	combout => \i2cSlave|state_reg~52_combout\);

-- Location: LCCOMB_X110_Y32_N8
\i2cSlave|state_reg~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~53_combout\ = (\i2cSlave|state_reg~25_combout\ & ((\i2cSlave|state_reg.I2C_READ_STOP~q\) # (\i2cSlave|state_reg~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2cSlave|state_reg~25_combout\,
	datac => \i2cSlave|state_reg.I2C_READ_STOP~q\,
	datad => \i2cSlave|state_reg~52_combout\,
	combout => \i2cSlave|state_reg~53_combout\);

-- Location: FF_X110_Y32_N9
\i2cSlave|state_reg.I2C_READ_STOP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|state_reg~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|state_reg.I2C_READ_STOP~q\);

-- Location: LCCOMB_X108_Y32_N16
\i2cSlave|state_reg~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~20_combout\ = (\i2cSlave|scl_falling_reg~q\ & (\i2cSlave|state_reg.I2C_GET_ADDRESS_AND_CMD~q\ & \i2cSlave|process_1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|scl_falling_reg~q\,
	datab => \i2cSlave|state_reg.I2C_GET_ADDRESS_AND_CMD~q\,
	datac => \i2cSlave|process_1~0_combout\,
	combout => \i2cSlave|state_reg~20_combout\);

-- Location: LCCOMB_X107_Y32_N22
\i2cSlave|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|Decoder0~0_combout\ = (!\i2cSlave|bits_processed_reg\(3) & (\i2cSlave|scl_rising_reg~q\ & (\i2cSlave|state_reg.I2C_GET_ADDRESS_AND_CMD~q\ & !\i2cSlave|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|bits_processed_reg\(3),
	datab => \i2cSlave|scl_rising_reg~q\,
	datac => \i2cSlave|state_reg.I2C_GET_ADDRESS_AND_CMD~q\,
	datad => \i2cSlave|Equal2~0_combout\,
	combout => \i2cSlave|Decoder0~0_combout\);

-- Location: LCCOMB_X108_Y33_N12
\i2cSlave|addr_reg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|addr_reg[0]~0_combout\ = (!\i2cSlave|sda_reg~q\ & (\i2cSlave|bits_processed_reg\(1) & (!\i2cSlave|bits_processed_reg\(0) & \i2cSlave|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|sda_reg~q\,
	datab => \i2cSlave|bits_processed_reg\(1),
	datac => \i2cSlave|bits_processed_reg\(0),
	datad => \i2cSlave|Decoder0~0_combout\,
	combout => \i2cSlave|addr_reg[0]~0_combout\);

-- Location: LCCOMB_X108_Y33_N6
\i2cSlave|addr_reg[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|addr_reg[0]~1_combout\ = (\i2cSlave|bits_processed_reg\(1) & (!\i2cSlave|bits_processed_reg\(0) & \i2cSlave|Decoder0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2cSlave|bits_processed_reg\(1),
	datac => \i2cSlave|bits_processed_reg\(0),
	datad => \i2cSlave|Decoder0~0_combout\,
	combout => \i2cSlave|addr_reg[0]~1_combout\);

-- Location: LCCOMB_X108_Y33_N22
\i2cSlave|addr_reg[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|addr_reg[0]~8_combout\ = (\i2cSlave|Add1~0_combout\ & ((\i2cSlave|addr_reg[0]~0_combout\) # ((\i2cSlave|addr_reg\(0) & !\i2cSlave|addr_reg[0]~1_combout\)))) # (!\i2cSlave|Add1~0_combout\ & (((\i2cSlave|addr_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|addr_reg[0]~0_combout\,
	datab => \i2cSlave|Add1~0_combout\,
	datac => \i2cSlave|addr_reg\(0),
	datad => \i2cSlave|addr_reg[0]~1_combout\,
	combout => \i2cSlave|addr_reg[0]~8_combout\);

-- Location: FF_X108_Y33_N23
\i2cSlave|addr_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|addr_reg[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|addr_reg\(0));

-- Location: LCCOMB_X108_Y33_N28
\i2cSlave|addr_reg[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|addr_reg[1]~3_combout\ = (!\i2cSlave|bits_processed_reg\(1) & (\i2cSlave|bits_processed_reg\(0) & \i2cSlave|Decoder0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2cSlave|bits_processed_reg\(1),
	datac => \i2cSlave|bits_processed_reg\(0),
	datad => \i2cSlave|Decoder0~0_combout\,
	combout => \i2cSlave|addr_reg[1]~3_combout\);

-- Location: LCCOMB_X108_Y33_N16
\i2cSlave|addr_reg[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|addr_reg[1]~9_combout\ = (\i2cSlave|Add1~0_combout\ & ((\i2cSlave|addr_reg[1]~3_combout\ & (!\i2cSlave|sda_reg~q\)) # (!\i2cSlave|addr_reg[1]~3_combout\ & ((\i2cSlave|addr_reg\(1)))))) # (!\i2cSlave|Add1~0_combout\ & 
-- (((\i2cSlave|addr_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|sda_reg~q\,
	datab => \i2cSlave|Add1~0_combout\,
	datac => \i2cSlave|addr_reg\(1),
	datad => \i2cSlave|addr_reg[1]~3_combout\,
	combout => \i2cSlave|addr_reg[1]~9_combout\);

-- Location: FF_X108_Y33_N17
\i2cSlave|addr_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|addr_reg[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|addr_reg\(1));

-- Location: LCCOMB_X108_Y33_N18
\i2cSlave|addr_reg[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|addr_reg[3]~12_combout\ = (\i2cSlave|bits_processed_reg\(1) & (!\i2cSlave|bits_processed_reg\(2) & (\i2cSlave|bits_processed_reg\(0) & \i2cSlave|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|bits_processed_reg\(1),
	datab => \i2cSlave|bits_processed_reg\(2),
	datac => \i2cSlave|bits_processed_reg\(0),
	datad => \i2cSlave|Decoder0~0_combout\,
	combout => \i2cSlave|addr_reg[3]~12_combout\);

-- Location: LCCOMB_X108_Y33_N8
\i2cSlave|addr_reg[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|addr_reg[3]~13_combout\ = (\i2cSlave|addr_reg[3]~12_combout\ & (!\i2cSlave|sda_reg~q\)) # (!\i2cSlave|addr_reg[3]~12_combout\ & ((\i2cSlave|addr_reg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2cSlave|sda_reg~q\,
	datac => \i2cSlave|addr_reg\(3),
	datad => \i2cSlave|addr_reg[3]~12_combout\,
	combout => \i2cSlave|addr_reg[3]~13_combout\);

-- Location: FF_X108_Y33_N9
\i2cSlave|addr_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|addr_reg[3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|addr_reg\(3));

-- Location: LCCOMB_X107_Y33_N16
\i2cSlave|addr_reg[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|addr_reg[2]~10_combout\ = (\i2cSlave|bits_processed_reg\(0) & (\i2cSlave|bits_processed_reg\(1) & !\i2cSlave|bits_processed_reg\(2))) # (!\i2cSlave|bits_processed_reg\(0) & (!\i2cSlave|bits_processed_reg\(1) & \i2cSlave|bits_processed_reg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|bits_processed_reg\(0),
	datab => \i2cSlave|bits_processed_reg\(1),
	datad => \i2cSlave|bits_processed_reg\(2),
	combout => \i2cSlave|addr_reg[2]~10_combout\);

-- Location: LCCOMB_X108_Y33_N10
\i2cSlave|addr_reg[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|addr_reg[0]~5_combout\ = (!\i2cSlave|bits_processed_reg\(0) & \i2cSlave|Decoder0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2cSlave|bits_processed_reg\(0),
	datad => \i2cSlave|Decoder0~0_combout\,
	combout => \i2cSlave|addr_reg[0]~5_combout\);

-- Location: LCCOMB_X108_Y33_N2
\i2cSlave|addr_reg[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|addr_reg[2]~11_combout\ = (\i2cSlave|addr_reg[2]~10_combout\ & ((\i2cSlave|addr_reg[0]~5_combout\ & (!\i2cSlave|sda_reg~q\)) # (!\i2cSlave|addr_reg[0]~5_combout\ & ((\i2cSlave|addr_reg\(2)))))) # (!\i2cSlave|addr_reg[2]~10_combout\ & 
-- (((\i2cSlave|addr_reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|addr_reg[2]~10_combout\,
	datab => \i2cSlave|sda_reg~q\,
	datac => \i2cSlave|addr_reg\(2),
	datad => \i2cSlave|addr_reg[0]~5_combout\,
	combout => \i2cSlave|addr_reg[2]~11_combout\);

-- Location: FF_X108_Y33_N3
\i2cSlave|addr_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|addr_reg[2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|addr_reg\(2));

-- Location: LCCOMB_X108_Y33_N30
\i2cSlave|state_reg~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~30_combout\ = (\i2cSlave|addr_reg\(0) & (\i2cSlave|addr_reg\(1) & (!\i2cSlave|addr_reg\(3) & !\i2cSlave|addr_reg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|addr_reg\(0),
	datab => \i2cSlave|addr_reg\(1),
	datac => \i2cSlave|addr_reg\(3),
	datad => \i2cSlave|addr_reg\(2),
	combout => \i2cSlave|state_reg~30_combout\);

-- Location: LCCOMB_X109_Y32_N30
\i2cSlave|state_reg~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~31_combout\ = (\i2cSlave|state_reg.I2C_GET_ADDRESS_AND_CMD~q\ & (\i2cSlave|scl_falling_reg~q\ & (\i2cSlave|state_reg~30_combout\ & \i2cSlave|process_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|state_reg.I2C_GET_ADDRESS_AND_CMD~q\,
	datab => \i2cSlave|scl_falling_reg~q\,
	datac => \i2cSlave|state_reg~30_combout\,
	datad => \i2cSlave|process_1~0_combout\,
	combout => \i2cSlave|state_reg~31_combout\);

-- Location: LCCOMB_X109_Y32_N0
\i2cSlave|state_reg~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~34_combout\ = (\i2cSlave|state_reg~25_combout\ & (((!\i2cSlave|process_1~0_combout\) # (!\i2cSlave|scl_falling_reg~q\)) # (!\i2cSlave|state_reg.I2C_WRITE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|state_reg.I2C_WRITE~q\,
	datab => \i2cSlave|scl_falling_reg~q\,
	datac => \i2cSlave|state_reg~25_combout\,
	datad => \i2cSlave|process_1~0_combout\,
	combout => \i2cSlave|state_reg~34_combout\);

-- Location: LCCOMB_X109_Y32_N18
\i2cSlave|state_reg~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~35_combout\ = (\i2cSlave|state_reg~34_combout\ & (\i2cSlave|state_reg~29_combout\ & ((\i2cSlave|state_reg~31_combout\)))) # (!\i2cSlave|state_reg~34_combout\ & (((\i2cSlave|state_reg~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|state_reg~29_combout\,
	datab => \i2cSlave|state_reg~25_combout\,
	datac => \i2cSlave|state_reg~31_combout\,
	datad => \i2cSlave|state_reg~34_combout\,
	combout => \i2cSlave|state_reg~35_combout\);

-- Location: LCCOMB_X109_Y32_N20
\i2cSlave|state_reg~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~36_combout\ = (\i2cSlave|state_reg.I2C_READ_STOP~q\) # ((\i2cSlave|state_reg.I2C_GET_ADDRESS_AND_CMD~q\) # ((!\i2cSlave|state_reg.I2C_IDLE~q\ & !\i2cSlave|start_reg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|state_reg.I2C_IDLE~q\,
	datab => \i2cSlave|start_reg~q\,
	datac => \i2cSlave|state_reg.I2C_READ_STOP~q\,
	datad => \i2cSlave|state_reg.I2C_GET_ADDRESS_AND_CMD~q\,
	combout => \i2cSlave|state_reg~36_combout\);

-- Location: LCCOMB_X109_Y32_N26
\i2cSlave|state_reg~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~37_combout\ = (\i2cSlave|state_reg.I2C_READ~q\) # ((\i2cSlave|state_reg.I2C_READ_ACK_START~q\ & ((!\i2cSlave|scl_rising_reg~q\))) # (!\i2cSlave|state_reg.I2C_READ_ACK_START~q\ & (!\i2cSlave|scl_falling_reg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|state_reg.I2C_READ~q\,
	datab => \i2cSlave|scl_falling_reg~q\,
	datac => \i2cSlave|state_reg.I2C_READ_ACK_START~q\,
	datad => \i2cSlave|scl_rising_reg~q\,
	combout => \i2cSlave|state_reg~37_combout\);

-- Location: LCCOMB_X109_Y32_N12
\i2cSlave|state_reg~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~19_combout\ = (!\i2cSlave|bits_processed_reg\(3) & (\i2cSlave|state_reg.I2C_READ~q\ & \i2cSlave|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2cSlave|bits_processed_reg\(3),
	datac => \i2cSlave|state_reg.I2C_READ~q\,
	datad => \i2cSlave|Equal2~0_combout\,
	combout => \i2cSlave|state_reg~19_combout\);

-- Location: LCCOMB_X109_Y32_N28
\i2cSlave|state_reg~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~38_combout\ = (\i2cSlave|state_reg.I2C_WRITE~q\) # ((\i2cSlave|state_reg.I2C_IDLE~q\ & (\i2cSlave|state_reg~37_combout\ & !\i2cSlave|state_reg~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|state_reg.I2C_IDLE~q\,
	datab => \i2cSlave|state_reg.I2C_WRITE~q\,
	datac => \i2cSlave|state_reg~37_combout\,
	datad => \i2cSlave|state_reg~19_combout\,
	combout => \i2cSlave|state_reg~38_combout\);

-- Location: LCCOMB_X109_Y32_N10
\i2cSlave|state_reg~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~39_combout\ = (\i2cSlave|state_reg~34_combout\ & ((\i2cSlave|state_reg~36_combout\) # ((\i2cSlave|state_reg~38_combout\) # (!\i2cSlave|state_reg~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|state_reg~36_combout\,
	datab => \i2cSlave|state_reg~34_combout\,
	datac => \i2cSlave|state_reg~23_combout\,
	datad => \i2cSlave|state_reg~38_combout\,
	combout => \i2cSlave|state_reg~39_combout\);

-- Location: LCCOMB_X109_Y32_N24
\i2cSlave|state_reg~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~40_combout\ = (\i2cSlave|state_reg~35_combout\) # ((!\i2cSlave|state_reg~20_combout\ & (\i2cSlave|state_reg.I2C_ANSWER_ACK_START~q\ & \i2cSlave|state_reg~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|state_reg~20_combout\,
	datab => \i2cSlave|state_reg~35_combout\,
	datac => \i2cSlave|state_reg.I2C_ANSWER_ACK_START~q\,
	datad => \i2cSlave|state_reg~39_combout\,
	combout => \i2cSlave|state_reg~40_combout\);

-- Location: FF_X109_Y32_N25
\i2cSlave|state_reg.I2C_ANSWER_ACK_START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|state_reg~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|state_reg.I2C_ANSWER_ACK_START~q\);

-- Location: LCCOMB_X108_Y32_N20
\i2cSlave|state_reg~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~18_combout\ = (\i2cSlave|state_reg.I2C_IDLE~q\ & (!\i2cSlave|state_reg.I2C_READ_ACK_GOT_RISING~q\ & (!\i2cSlave|state_reg.I2C_READ_STOP~q\ & !\i2cSlave|state_reg.I2C_ANSWER_ACK_START~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|state_reg.I2C_IDLE~q\,
	datab => \i2cSlave|state_reg.I2C_READ_ACK_GOT_RISING~q\,
	datac => \i2cSlave|state_reg.I2C_READ_STOP~q\,
	datad => \i2cSlave|state_reg.I2C_ANSWER_ACK_START~q\,
	combout => \i2cSlave|state_reg~18_combout\);

-- Location: LCCOMB_X110_Y32_N26
\i2cSlave|state_reg~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~26_combout\ = ((!\i2cSlave|continue_reg~q\ & (\i2cSlave|state_reg.I2C_READ_ACK_GOT_RISING~q\ & \i2cSlave|scl_falling_reg~q\))) # (!\i2cSlave|state_reg~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|continue_reg~q\,
	datab => \i2cSlave|state_reg.I2C_READ_ACK_GOT_RISING~q\,
	datac => \i2cSlave|scl_falling_reg~q\,
	datad => \i2cSlave|state_reg~25_combout\,
	combout => \i2cSlave|state_reg~26_combout\);

-- Location: LCCOMB_X110_Y32_N0
\i2cSlave|state_reg~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~24_combout\ = (\i2cSlave|scl_falling_reg~q\ & ((\i2cSlave|state_reg.I2C_ANSWER_ACK_START~q\) # ((\i2cSlave|continue_reg~q\ & \i2cSlave|state_reg.I2C_READ_ACK_GOT_RISING~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|continue_reg~q\,
	datab => \i2cSlave|state_reg.I2C_ANSWER_ACK_START~q\,
	datac => \i2cSlave|scl_falling_reg~q\,
	datad => \i2cSlave|state_reg.I2C_READ_ACK_GOT_RISING~q\,
	combout => \i2cSlave|state_reg~24_combout\);

-- Location: LCCOMB_X110_Y32_N16
\i2cSlave|state_reg~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~32_combout\ = (!\i2cSlave|state_reg~26_combout\ & ((\i2cSlave|state_reg~24_combout\ & (\i2cSlave|cmd_reg~q\)) # (!\i2cSlave|state_reg~24_combout\ & ((\i2cSlave|state_reg.I2C_READ~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|cmd_reg~q\,
	datab => \i2cSlave|state_reg.I2C_READ~q\,
	datac => \i2cSlave|state_reg~26_combout\,
	datad => \i2cSlave|state_reg~24_combout\,
	combout => \i2cSlave|state_reg~32_combout\);

-- Location: LCCOMB_X109_Y32_N14
\i2cSlave|state_reg~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~22_combout\ = (\i2cSlave|state_reg~19_combout\) # ((\i2cSlave|state_reg~20_combout\) # (!\i2cSlave|state_reg~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|state_reg~19_combout\,
	datac => \i2cSlave|state_reg~20_combout\,
	datad => \i2cSlave|state_reg~21_combout\,
	combout => \i2cSlave|state_reg~22_combout\);

-- Location: LCCOMB_X110_Y32_N20
\i2cSlave|state_reg~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~33_combout\ = (\i2cSlave|state_reg~32_combout\ & (((!\i2cSlave|state_reg~22_combout\) # (!\i2cSlave|state_reg~23_combout\)) # (!\i2cSlave|state_reg~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|state_reg~18_combout\,
	datab => \i2cSlave|state_reg~32_combout\,
	datac => \i2cSlave|state_reg~23_combout\,
	datad => \i2cSlave|state_reg~22_combout\,
	combout => \i2cSlave|state_reg~33_combout\);

-- Location: FF_X110_Y32_N21
\i2cSlave|state_reg.I2C_READ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|state_reg~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|state_reg.I2C_READ~q\);

-- Location: LCCOMB_X108_Y32_N30
\i2cSlave|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|Selector8~0_combout\ = (\i2cSlave|bits_processed_reg\(3) & ((\i2cSlave|state_reg.I2C_READ~q\) # ((\i2cSlave|state_reg.I2C_READ_ACK_START~q\) # (!\i2cSlave|state_reg~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|state_reg.I2C_READ~q\,
	datab => \i2cSlave|state_reg.I2C_READ_ACK_START~q\,
	datac => \i2cSlave|bits_processed_reg\(3),
	datad => \i2cSlave|state_reg~18_combout\,
	combout => \i2cSlave|Selector8~0_combout\);

-- Location: LCCOMB_X108_Y32_N6
\i2cSlave|bits_processed_reg~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|bits_processed_reg~14_combout\ = (\i2cSlave|Selector8~0_combout\) # ((\i2cSlave|bits_processed_reg~13_combout\ & ((!\i2cSlave|scl_falling_reg~q\) # (!\i2cSlave|process_1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|process_1~0_combout\,
	datab => \i2cSlave|bits_processed_reg~13_combout\,
	datac => \i2cSlave|Selector8~0_combout\,
	datad => \i2cSlave|scl_falling_reg~q\,
	combout => \i2cSlave|bits_processed_reg~14_combout\);

-- Location: LCCOMB_X108_Y32_N4
\i2cSlave|bits_processed_reg~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|bits_processed_reg~15_combout\ = (\i2cSlave|bits_processed_reg~0_combout\ & ((\i2cSlave|bits_processed_reg~14_combout\) # ((\i2cSlave|Equal2~0_combout\ & \i2cSlave|bits_processed_reg~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|bits_processed_reg~0_combout\,
	datab => \i2cSlave|Equal2~0_combout\,
	datac => \i2cSlave|bits_processed_reg~12_combout\,
	datad => \i2cSlave|bits_processed_reg~14_combout\,
	combout => \i2cSlave|bits_processed_reg~15_combout\);

-- Location: FF_X108_Y32_N5
\i2cSlave|bits_processed_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|bits_processed_reg~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|bits_processed_reg\(3));

-- Location: LCCOMB_X109_Y32_N4
\i2cSlave|state_reg~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~23_combout\ = ((\i2cSlave|scl_falling_reg~q\ & ((\i2cSlave|bits_processed_reg\(3)) # (\i2cSlave|Equal2~0_combout\)))) # (!\i2cSlave|state_reg.I2C_READ~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|bits_processed_reg\(3),
	datab => \i2cSlave|scl_falling_reg~q\,
	datac => \i2cSlave|state_reg.I2C_READ~q\,
	datad => \i2cSlave|Equal2~0_combout\,
	combout => \i2cSlave|state_reg~23_combout\);

-- Location: LCCOMB_X110_Y32_N4
\i2cSlave|state_reg~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~27_combout\ = (!\i2cSlave|state_reg~26_combout\ & ((\i2cSlave|state_reg~24_combout\ & (!\i2cSlave|cmd_reg~q\)) # (!\i2cSlave|state_reg~24_combout\ & ((\i2cSlave|state_reg.I2C_WRITE~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|cmd_reg~q\,
	datab => \i2cSlave|state_reg.I2C_WRITE~q\,
	datac => \i2cSlave|state_reg~26_combout\,
	datad => \i2cSlave|state_reg~24_combout\,
	combout => \i2cSlave|state_reg~27_combout\);

-- Location: LCCOMB_X109_Y32_N16
\i2cSlave|state_reg~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~28_combout\ = (\i2cSlave|state_reg~27_combout\ & (((!\i2cSlave|state_reg~22_combout\) # (!\i2cSlave|state_reg~18_combout\)) # (!\i2cSlave|state_reg~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|state_reg~23_combout\,
	datab => \i2cSlave|state_reg~18_combout\,
	datac => \i2cSlave|state_reg~22_combout\,
	datad => \i2cSlave|state_reg~27_combout\,
	combout => \i2cSlave|state_reg~28_combout\);

-- Location: FF_X109_Y32_N17
\i2cSlave|state_reg.I2C_WRITE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|state_reg~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|state_reg.I2C_WRITE~q\);

-- Location: LCCOMB_X108_Y32_N12
\i2cSlave|state_reg~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~21_combout\ = (!\i2cSlave|data_to_master_reg[0]~0_combout\ & (((!\i2cSlave|process_1~0_combout\) # (!\i2cSlave|state_reg.I2C_WRITE~q\)) # (!\i2cSlave|scl_falling_reg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|scl_falling_reg~q\,
	datab => \i2cSlave|state_reg.I2C_WRITE~q\,
	datac => \i2cSlave|process_1~0_combout\,
	datad => \i2cSlave|data_to_master_reg[0]~0_combout\,
	combout => \i2cSlave|state_reg~21_combout\);

-- Location: LCCOMB_X108_Y32_N10
\i2cSlave|state_reg~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~45_combout\ = (\i2cSlave|state_reg.I2C_READ_ACK_GOT_RISING~q\) # ((\i2cSlave|state_reg.I2C_ANSWER_ACK_START~q\) # ((\i2cSlave|state_reg.I2C_GET_ADDRESS_AND_CMD~q\ & \i2cSlave|process_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|state_reg.I2C_READ_ACK_GOT_RISING~q\,
	datab => \i2cSlave|state_reg.I2C_GET_ADDRESS_AND_CMD~q\,
	datac => \i2cSlave|process_1~0_combout\,
	datad => \i2cSlave|state_reg.I2C_ANSWER_ACK_START~q\,
	combout => \i2cSlave|state_reg~45_combout\);

-- Location: LCCOMB_X108_Y32_N28
\i2cSlave|state_reg~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~46_combout\ = (\i2cSlave|state_reg~45_combout\) # ((\i2cSlave|state_reg.I2C_READ~q\ & (\i2cSlave|Equal2~0_combout\ & !\i2cSlave|bits_processed_reg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|state_reg.I2C_READ~q\,
	datab => \i2cSlave|Equal2~0_combout\,
	datac => \i2cSlave|bits_processed_reg\(3),
	datad => \i2cSlave|state_reg~45_combout\,
	combout => \i2cSlave|state_reg~46_combout\);

-- Location: LCCOMB_X108_Y32_N2
\i2cSlave|state_reg~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~47_combout\ = (((\i2cSlave|scl_falling_reg~q\ & \i2cSlave|state_reg~46_combout\)) # (!\i2cSlave|state_reg~21_combout\)) # (!\i2cSlave|state_reg~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|state_reg~25_combout\,
	datab => \i2cSlave|scl_falling_reg~q\,
	datac => \i2cSlave|state_reg~21_combout\,
	datad => \i2cSlave|state_reg~46_combout\,
	combout => \i2cSlave|state_reg~47_combout\);

-- Location: LCCOMB_X108_Y32_N8
\i2cSlave|state_reg~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~48_combout\ = (\i2cSlave|start_reg~q\ & ((\i2cSlave|state_reg~43_combout\) # ((\i2cSlave|state_reg.I2C_GET_ADDRESS_AND_CMD~q\ & !\i2cSlave|state_reg~47_combout\)))) # (!\i2cSlave|start_reg~q\ & 
-- (((\i2cSlave|state_reg.I2C_GET_ADDRESS_AND_CMD~q\ & !\i2cSlave|state_reg~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|start_reg~q\,
	datab => \i2cSlave|state_reg~43_combout\,
	datac => \i2cSlave|state_reg.I2C_GET_ADDRESS_AND_CMD~q\,
	datad => \i2cSlave|state_reg~47_combout\,
	combout => \i2cSlave|state_reg~48_combout\);

-- Location: FF_X108_Y32_N9
\i2cSlave|state_reg.I2C_GET_ADDRESS_AND_CMD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|state_reg~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|state_reg.I2C_GET_ADDRESS_AND_CMD~q\);

-- Location: LCCOMB_X107_Y32_N24
\i2cSlave|process_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|process_1~1_combout\ = (!\i2cSlave|bits_processed_reg\(1) & (!\i2cSlave|bits_processed_reg\(2) & !\i2cSlave|bits_processed_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|bits_processed_reg\(1),
	datac => \i2cSlave|bits_processed_reg\(2),
	datad => \i2cSlave|bits_processed_reg\(0),
	combout => \i2cSlave|process_1~1_combout\);

-- Location: LCCOMB_X107_Y32_N10
\i2cSlave|bits_processed_reg[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|bits_processed_reg[0]~7_combout\ = (\i2cSlave|bits_processed_reg\(3) & (((!\i2cSlave|process_1~1_combout\)) # (!\i2cSlave|scl_falling_reg~q\))) # (!\i2cSlave|bits_processed_reg\(3) & (((!\i2cSlave|scl_rising_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|scl_falling_reg~q\,
	datab => \i2cSlave|scl_rising_reg~q\,
	datac => \i2cSlave|process_1~1_combout\,
	datad => \i2cSlave|bits_processed_reg\(3),
	combout => \i2cSlave|bits_processed_reg[0]~7_combout\);

-- Location: LCCOMB_X107_Y32_N18
\i2cSlave|bits_processed_reg[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|bits_processed_reg[0]~4_combout\ = (\i2cSlave|state_reg.I2C_READ~q\ & ((\i2cSlave|scl_falling_reg~q\) # ((\i2cSlave|Equal2~0_combout\ & !\i2cSlave|state_reg.I2C_IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|scl_falling_reg~q\,
	datab => \i2cSlave|Equal2~0_combout\,
	datac => \i2cSlave|state_reg.I2C_READ~q\,
	datad => \i2cSlave|state_reg.I2C_IDLE~q\,
	combout => \i2cSlave|bits_processed_reg[0]~4_combout\);

-- Location: LCCOMB_X107_Y32_N12
\i2cSlave|bits_processed_reg[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|bits_processed_reg[0]~5_combout\ = (\i2cSlave|bits_processed_reg\(3) & (((\i2cSlave|scl_falling_reg~q\ & \i2cSlave|process_1~0_combout\)))) # (!\i2cSlave|bits_processed_reg\(3) & ((\i2cSlave|scl_rising_reg~q\) # ((\i2cSlave|scl_falling_reg~q\ & 
-- \i2cSlave|process_1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|bits_processed_reg\(3),
	datab => \i2cSlave|scl_rising_reg~q\,
	datac => \i2cSlave|scl_falling_reg~q\,
	datad => \i2cSlave|process_1~0_combout\,
	combout => \i2cSlave|bits_processed_reg[0]~5_combout\);

-- Location: LCCOMB_X107_Y32_N2
\i2cSlave|bits_processed_reg[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|bits_processed_reg[0]~6_combout\ = (\i2cSlave|state_reg.I2C_WRITE~q\ & (!\i2cSlave|bits_processed_reg[0]~5_combout\ & ((\i2cSlave|bits_processed_reg\(3)) # (!\i2cSlave|bits_processed_reg[0]~4_combout\)))) # (!\i2cSlave|state_reg.I2C_WRITE~q\ & 
-- ((\i2cSlave|bits_processed_reg\(3)) # ((!\i2cSlave|bits_processed_reg[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|state_reg.I2C_WRITE~q\,
	datab => \i2cSlave|bits_processed_reg\(3),
	datac => \i2cSlave|bits_processed_reg[0]~4_combout\,
	datad => \i2cSlave|bits_processed_reg[0]~5_combout\,
	combout => \i2cSlave|bits_processed_reg[0]~6_combout\);

-- Location: LCCOMB_X107_Y32_N0
\i2cSlave|bits_processed_reg[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|bits_processed_reg[0]~8_combout\ = (\i2cSlave|bits_processed_reg~0_combout\ & (\i2cSlave|bits_processed_reg[0]~6_combout\ & ((\i2cSlave|bits_processed_reg[0]~7_combout\) # (!\i2cSlave|state_reg.I2C_GET_ADDRESS_AND_CMD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|bits_processed_reg~0_combout\,
	datab => \i2cSlave|state_reg.I2C_GET_ADDRESS_AND_CMD~q\,
	datac => \i2cSlave|bits_processed_reg[0]~7_combout\,
	datad => \i2cSlave|bits_processed_reg[0]~6_combout\,
	combout => \i2cSlave|bits_processed_reg[0]~8_combout\);

-- Location: LCCOMB_X107_Y32_N6
\i2cSlave|bits_processed_reg[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|bits_processed_reg[1]~11_combout\ = (\i2cSlave|bits_processed_reg[0]~8_combout\ & (((\i2cSlave|bits_processed_reg\(1))))) # (!\i2cSlave|bits_processed_reg[0]~8_combout\ & (\i2cSlave|bits_processed_reg[2]~3_combout\ & 
-- (\i2cSlave|bits_processed_reg\(0) $ (\i2cSlave|bits_processed_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|bits_processed_reg\(0),
	datab => \i2cSlave|bits_processed_reg[2]~3_combout\,
	datac => \i2cSlave|bits_processed_reg\(1),
	datad => \i2cSlave|bits_processed_reg[0]~8_combout\,
	combout => \i2cSlave|bits_processed_reg[1]~11_combout\);

-- Location: FF_X107_Y32_N7
\i2cSlave|bits_processed_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|bits_processed_reg[1]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|bits_processed_reg\(1));

-- Location: LCCOMB_X108_Y33_N24
\i2cSlave|addr_reg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|addr_reg[6]~6_combout\ = (\i2cSlave|bits_processed_reg\(1) & (\i2cSlave|bits_processed_reg\(0) & \i2cSlave|bits_processed_reg\(2))) # (!\i2cSlave|bits_processed_reg\(1) & (!\i2cSlave|bits_processed_reg\(0) & !\i2cSlave|bits_processed_reg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2cSlave|bits_processed_reg\(1),
	datac => \i2cSlave|bits_processed_reg\(0),
	datad => \i2cSlave|bits_processed_reg\(2),
	combout => \i2cSlave|addr_reg[6]~6_combout\);

-- Location: LCCOMB_X108_Y33_N14
\i2cSlave|addr_reg[6]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|addr_reg[6]~7_combout\ = (\i2cSlave|addr_reg[6]~6_combout\ & ((\i2cSlave|addr_reg[0]~5_combout\ & (!\i2cSlave|sda_reg~q\)) # (!\i2cSlave|addr_reg[0]~5_combout\ & ((\i2cSlave|addr_reg\(6)))))) # (!\i2cSlave|addr_reg[6]~6_combout\ & 
-- (((\i2cSlave|addr_reg\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|sda_reg~q\,
	datab => \i2cSlave|addr_reg[6]~6_combout\,
	datac => \i2cSlave|addr_reg\(6),
	datad => \i2cSlave|addr_reg[0]~5_combout\,
	combout => \i2cSlave|addr_reg[6]~7_combout\);

-- Location: FF_X108_Y33_N15
\i2cSlave|addr_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|addr_reg[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|addr_reg\(6));

-- Location: LCCOMB_X108_Y33_N26
\i2cSlave|addr_reg[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|addr_reg[4]~2_combout\ = (\i2cSlave|Add1~0_combout\ & (((\i2cSlave|addr_reg\(4))))) # (!\i2cSlave|Add1~0_combout\ & ((\i2cSlave|addr_reg[0]~0_combout\) # ((!\i2cSlave|addr_reg[0]~1_combout\ & \i2cSlave|addr_reg\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|addr_reg[0]~1_combout\,
	datab => \i2cSlave|Add1~0_combout\,
	datac => \i2cSlave|addr_reg\(4),
	datad => \i2cSlave|addr_reg[0]~0_combout\,
	combout => \i2cSlave|addr_reg[4]~2_combout\);

-- Location: FF_X108_Y33_N27
\i2cSlave|addr_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|addr_reg[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|addr_reg\(4));

-- Location: LCCOMB_X108_Y33_N0
\i2cSlave|addr_reg[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|addr_reg[5]~4_combout\ = (\i2cSlave|Add1~0_combout\ & (((\i2cSlave|addr_reg\(5))))) # (!\i2cSlave|Add1~0_combout\ & ((\i2cSlave|addr_reg[1]~3_combout\ & (!\i2cSlave|sda_reg~q\)) # (!\i2cSlave|addr_reg[1]~3_combout\ & 
-- ((\i2cSlave|addr_reg\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|sda_reg~q\,
	datab => \i2cSlave|Add1~0_combout\,
	datac => \i2cSlave|addr_reg\(5),
	datad => \i2cSlave|addr_reg[1]~3_combout\,
	combout => \i2cSlave|addr_reg[5]~4_combout\);

-- Location: FF_X108_Y33_N1
\i2cSlave|addr_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|addr_reg[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|addr_reg\(5));

-- Location: LCCOMB_X108_Y33_N20
\i2cSlave|state_reg~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~29_combout\ = (!\i2cSlave|addr_reg\(6) & (!\i2cSlave|addr_reg\(4) & !\i2cSlave|addr_reg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2cSlave|addr_reg\(6),
	datac => \i2cSlave|addr_reg\(4),
	datad => \i2cSlave|addr_reg\(5),
	combout => \i2cSlave|state_reg~29_combout\);

-- Location: LCCOMB_X109_Y32_N8
\i2cSlave|state_reg~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~41_combout\ = (\i2cSlave|state_reg~20_combout\ & (\i2cSlave|state_reg~34_combout\ & ((!\i2cSlave|state_reg~30_combout\) # (!\i2cSlave|state_reg~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|state_reg~29_combout\,
	datab => \i2cSlave|state_reg~30_combout\,
	datac => \i2cSlave|state_reg~20_combout\,
	datad => \i2cSlave|state_reg~34_combout\,
	combout => \i2cSlave|state_reg~41_combout\);

-- Location: LCCOMB_X109_Y32_N22
\i2cSlave|state_reg~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~42_combout\ = (!\i2cSlave|state_reg.I2C_IDLE~q\ & ((!\i2cSlave|state_reg~29_combout\) # (!\i2cSlave|state_reg~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|state_reg.I2C_IDLE~q\,
	datac => \i2cSlave|state_reg~31_combout\,
	datad => \i2cSlave|state_reg~29_combout\,
	combout => \i2cSlave|state_reg~42_combout\);

-- Location: LCCOMB_X109_Y32_N6
\i2cSlave|state_reg~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~44_combout\ = (\i2cSlave|state_reg~43_combout\ & (!\i2cSlave|state_reg~41_combout\ & ((!\i2cSlave|state_reg~39_combout\) # (!\i2cSlave|state_reg~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|state_reg~43_combout\,
	datab => \i2cSlave|state_reg~41_combout\,
	datac => \i2cSlave|state_reg~42_combout\,
	datad => \i2cSlave|state_reg~39_combout\,
	combout => \i2cSlave|state_reg~44_combout\);

-- Location: FF_X109_Y32_N7
\i2cSlave|state_reg.I2C_IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|state_reg~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|state_reg.I2C_IDLE~q\);

-- Location: LCCOMB_X107_Y32_N14
\i2cSlave|bits_processed_reg[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|bits_processed_reg[0]~2_combout\ = (\i2cSlave|state_reg.I2C_READ~q\ & ((\i2cSlave|bits_processed_reg\(3)) # (\i2cSlave|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|bits_processed_reg\(3),
	datab => \i2cSlave|Equal2~0_combout\,
	datad => \i2cSlave|state_reg.I2C_READ~q\,
	combout => \i2cSlave|bits_processed_reg[0]~2_combout\);

-- Location: LCCOMB_X107_Y32_N8
\i2cSlave|bits_processed_reg[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|bits_processed_reg[0]~1_combout\ = (((!\i2cSlave|state_reg.I2C_WRITE~q\ & !\i2cSlave|state_reg.I2C_GET_ADDRESS_AND_CMD~q\)) # (!\i2cSlave|process_1~0_combout\)) # (!\i2cSlave|scl_falling_reg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|state_reg.I2C_WRITE~q\,
	datab => \i2cSlave|scl_falling_reg~q\,
	datac => \i2cSlave|state_reg.I2C_GET_ADDRESS_AND_CMD~q\,
	datad => \i2cSlave|process_1~0_combout\,
	combout => \i2cSlave|bits_processed_reg[0]~1_combout\);

-- Location: LCCOMB_X107_Y32_N4
\i2cSlave|bits_processed_reg[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|bits_processed_reg[2]~3_combout\ = (\i2cSlave|state_reg.I2C_IDLE~q\ & (\i2cSlave|bits_processed_reg~0_combout\ & (!\i2cSlave|bits_processed_reg[0]~2_combout\ & \i2cSlave|bits_processed_reg[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|state_reg.I2C_IDLE~q\,
	datab => \i2cSlave|bits_processed_reg~0_combout\,
	datac => \i2cSlave|bits_processed_reg[0]~2_combout\,
	datad => \i2cSlave|bits_processed_reg[0]~1_combout\,
	combout => \i2cSlave|bits_processed_reg[2]~3_combout\);

-- Location: LCCOMB_X107_Y32_N28
\i2cSlave|bits_processed_reg[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|bits_processed_reg[0]~10_combout\ = (\i2cSlave|bits_processed_reg\(0) & ((\i2cSlave|bits_processed_reg[0]~8_combout\))) # (!\i2cSlave|bits_processed_reg\(0) & (\i2cSlave|bits_processed_reg[2]~3_combout\ & 
-- !\i2cSlave|bits_processed_reg[0]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2cSlave|bits_processed_reg[2]~3_combout\,
	datac => \i2cSlave|bits_processed_reg\(0),
	datad => \i2cSlave|bits_processed_reg[0]~8_combout\,
	combout => \i2cSlave|bits_processed_reg[0]~10_combout\);

-- Location: FF_X107_Y32_N29
\i2cSlave|bits_processed_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|bits_processed_reg[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|bits_processed_reg\(0));

-- Location: LCCOMB_X107_Y32_N20
\i2cSlave|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|Equal2~0_combout\ = (\i2cSlave|bits_processed_reg\(0) & (\i2cSlave|bits_processed_reg\(2) & \i2cSlave|bits_processed_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2cSlave|bits_processed_reg\(0),
	datac => \i2cSlave|bits_processed_reg\(2),
	datad => \i2cSlave|bits_processed_reg\(1),
	combout => \i2cSlave|Equal2~0_combout\);

-- Location: LCCOMB_X110_Y32_N2
\i2cSlave|cmd_reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|cmd_reg~0_combout\ = (\i2cSlave|Equal2~0_combout\ & (!\i2cSlave|bits_processed_reg\(3) & (\i2cSlave|state_reg.I2C_GET_ADDRESS_AND_CMD~q\ & \i2cSlave|scl_rising_reg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|Equal2~0_combout\,
	datab => \i2cSlave|bits_processed_reg\(3),
	datac => \i2cSlave|state_reg.I2C_GET_ADDRESS_AND_CMD~q\,
	datad => \i2cSlave|scl_rising_reg~q\,
	combout => \i2cSlave|cmd_reg~0_combout\);

-- Location: LCCOMB_X110_Y32_N6
\i2cSlave|cmd_reg~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|cmd_reg~1_combout\ = (\i2cSlave|cmd_reg~0_combout\ & (!\i2cSlave|sda_reg~q\)) # (!\i2cSlave|cmd_reg~0_combout\ & ((\i2cSlave|cmd_reg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2cSlave|sda_reg~q\,
	datac => \i2cSlave|cmd_reg~q\,
	datad => \i2cSlave|cmd_reg~0_combout\,
	combout => \i2cSlave|cmd_reg~1_combout\);

-- Location: FF_X110_Y32_N7
\i2cSlave|cmd_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|cmd_reg~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|cmd_reg~q\);

-- Location: LCCOMB_X110_Y32_N14
\i2cSlave|data_to_master_reg[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|data_to_master_reg[0]~1_combout\ = (\i2cSlave|data_to_master_reg\(0)) # ((\i2cSlave|scl_rising_reg~q\ & (\i2cSlave|state_reg.I2C_READ_ACK_START~q\ & \i2cSlave|sda_reg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|scl_rising_reg~q\,
	datab => \i2cSlave|state_reg.I2C_READ_ACK_START~q\,
	datac => \i2cSlave|sda_reg~q\,
	datad => \i2cSlave|data_to_master_reg\(0),
	combout => \i2cSlave|data_to_master_reg[0]~1_combout\);

-- Location: LCCOMB_X109_Y32_N2
\i2cSlave|data_to_master_reg[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|data_to_master_reg[0]~2_combout\ = (\i2cSlave|data_to_master_reg[0]~1_combout\) # ((\i2cSlave|cmd_reg~q\ & (\i2cSlave|state_reg~31_combout\ & \i2cSlave|state_reg~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|cmd_reg~q\,
	datab => \i2cSlave|data_to_master_reg[0]~1_combout\,
	datac => \i2cSlave|state_reg~31_combout\,
	datad => \i2cSlave|state_reg~29_combout\,
	combout => \i2cSlave|data_to_master_reg[0]~2_combout\);

-- Location: FF_X109_Y32_N3
\i2cSlave|data_to_master_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|data_to_master_reg[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|data_to_master_reg\(0));

-- Location: LCCOMB_X106_Y32_N4
\i2cSlave|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|Mux0~0_combout\ = (\i2cSlave|data_to_master_reg\(0) & \i2cSlave|bits_processed_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2cSlave|data_to_master_reg\(0),
	datad => \i2cSlave|bits_processed_reg\(0),
	combout => \i2cSlave|Mux0~0_combout\);

-- Location: FF_X106_Y32_N5
\i2cSlave|sda_o_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|Mux0~0_combout\,
	sclr => \i2cSlave|ALT_INV_state_reg.I2C_READ~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|sda_o_reg~q\);

-- Location: LCCOMB_X106_Y32_N22
\i2cSlave|sda_wen_reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|sda_wen_reg~0_combout\ = (\i2cSlave|state_reg.I2C_READ~q\) # (\i2cSlave|state_reg.I2C_ANSWER_ACK_START~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2cSlave|state_reg.I2C_READ~q\,
	datad => \i2cSlave|state_reg.I2C_ANSWER_ACK_START~q\,
	combout => \i2cSlave|sda_wen_reg~0_combout\);

-- Location: FF_X106_Y32_N23
\i2cSlave|sda_wen_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|sda_wen_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|sda_wen_reg~q\);

-- Location: LCCOMB_X108_Y34_N12
\i2cSlave|data_valid_reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|data_valid_reg~0_combout\ = (!\i2cSlave|bits_processed_reg\(3) & (\i2cSlave|scl_rising_reg~q\ & \i2cSlave|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2cSlave|bits_processed_reg\(3),
	datac => \i2cSlave|scl_rising_reg~q\,
	datad => \i2cSlave|Equal2~0_combout\,
	combout => \i2cSlave|data_valid_reg~0_combout\);

-- Location: FF_X108_Y34_N13
\i2cSlave|data_valid_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|data_valid_reg~0_combout\,
	sclr => \i2cSlave|ALT_INV_state_reg.I2C_WRITE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|data_valid_reg~q\);

-- Location: LCCOMB_X108_Y34_N0
\Selector10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~1_combout\ = (!\i2cSlave|data_valid_reg~q\ & (!\state_reg.GET_CMD~q\ & !\state_reg.DECODE_CMD~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|data_valid_reg~q\,
	datab => \state_reg.GET_CMD~q\,
	datad => \state_reg.DECODE_CMD~q\,
	combout => \Selector10~1_combout\);

-- Location: LCCOMB_X108_Y32_N14
\i2cSlave|Decoder1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|Decoder1~0_combout\ = (!\i2cSlave|bits_processed_reg\(3) & (\i2cSlave|scl_rising_reg~q\ & \i2cSlave|state_reg.I2C_WRITE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2cSlave|bits_processed_reg\(3),
	datac => \i2cSlave|scl_rising_reg~q\,
	datad => \i2cSlave|state_reg.I2C_WRITE~q\,
	combout => \i2cSlave|Decoder1~0_combout\);

-- Location: LCCOMB_X109_Y34_N18
\i2cSlave|Decoder1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|Decoder1~3_combout\ = (\i2cSlave|bits_processed_reg\(0) & (\i2cSlave|bits_processed_reg\(2) & (!\i2cSlave|bits_processed_reg\(1) & \i2cSlave|Decoder1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|bits_processed_reg\(0),
	datab => \i2cSlave|bits_processed_reg\(2),
	datac => \i2cSlave|bits_processed_reg\(1),
	datad => \i2cSlave|Decoder1~0_combout\,
	combout => \i2cSlave|Decoder1~3_combout\);

-- Location: LCCOMB_X109_Y34_N14
\i2cSlave|data_reg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|data_reg[2]~2_combout\ = (\i2cSlave|Decoder1~3_combout\ & (!\i2cSlave|sda_reg~q\)) # (!\i2cSlave|Decoder1~3_combout\ & ((\i2cSlave|data_reg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2cSlave|sda_reg~q\,
	datac => \i2cSlave|data_reg\(2),
	datad => \i2cSlave|Decoder1~3_combout\,
	combout => \i2cSlave|data_reg[2]~2_combout\);

-- Location: FF_X109_Y34_N15
\i2cSlave|data_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|data_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|data_reg\(2));

-- Location: LCCOMB_X109_Y34_N28
\cmd[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \cmd[2]~feeder_combout\ = \i2cSlave|data_reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2cSlave|data_reg\(2),
	combout => \cmd[2]~feeder_combout\);

-- Location: LCCOMB_X109_Y34_N12
\cmd[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cmd[1]~0_combout\ = (!\state_reg.GET_CMD~q\ & \i2cSlave|data_valid_reg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_reg.GET_CMD~q\,
	datad => \i2cSlave|data_valid_reg~q\,
	combout => \cmd[1]~0_combout\);

-- Location: FF_X109_Y34_N29
\cmd[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cmd[2]~feeder_combout\,
	ena => \cmd[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cmd(2));

-- Location: LCCOMB_X109_Y34_N16
\i2cSlave|Decoder1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|Decoder1~4_combout\ = (!\i2cSlave|bits_processed_reg\(0) & (\i2cSlave|bits_processed_reg\(2) & (!\i2cSlave|bits_processed_reg\(1) & \i2cSlave|Decoder1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|bits_processed_reg\(0),
	datab => \i2cSlave|bits_processed_reg\(2),
	datac => \i2cSlave|bits_processed_reg\(1),
	datad => \i2cSlave|Decoder1~0_combout\,
	combout => \i2cSlave|Decoder1~4_combout\);

-- Location: LCCOMB_X109_Y34_N8
\i2cSlave|data_reg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|data_reg[3]~3_combout\ = (\i2cSlave|Decoder1~4_combout\ & (!\i2cSlave|sda_reg~q\)) # (!\i2cSlave|Decoder1~4_combout\ & ((\i2cSlave|data_reg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2cSlave|sda_reg~q\,
	datac => \i2cSlave|data_reg\(3),
	datad => \i2cSlave|Decoder1~4_combout\,
	combout => \i2cSlave|data_reg[3]~3_combout\);

-- Location: FF_X109_Y34_N9
\i2cSlave|data_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|data_reg[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|data_reg\(3));

-- Location: LCCOMB_X109_Y34_N22
\cmd[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \cmd[3]~feeder_combout\ = \i2cSlave|data_reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2cSlave|data_reg\(3),
	combout => \cmd[3]~feeder_combout\);

-- Location: FF_X109_Y34_N23
\cmd[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cmd[3]~feeder_combout\,
	ena => \cmd[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cmd(3));

-- Location: LCCOMB_X109_Y34_N20
\i2cSlave|Decoder1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|Decoder1~2_combout\ = (!\i2cSlave|bits_processed_reg\(0) & (\i2cSlave|bits_processed_reg\(2) & (\i2cSlave|bits_processed_reg\(1) & \i2cSlave|Decoder1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|bits_processed_reg\(0),
	datab => \i2cSlave|bits_processed_reg\(2),
	datac => \i2cSlave|bits_processed_reg\(1),
	datad => \i2cSlave|Decoder1~0_combout\,
	combout => \i2cSlave|Decoder1~2_combout\);

-- Location: LCCOMB_X109_Y34_N24
\i2cSlave|data_reg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|data_reg[1]~1_combout\ = (\i2cSlave|Decoder1~2_combout\ & (!\i2cSlave|sda_reg~q\)) # (!\i2cSlave|Decoder1~2_combout\ & ((\i2cSlave|data_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2cSlave|sda_reg~q\,
	datac => \i2cSlave|data_reg\(1),
	datad => \i2cSlave|Decoder1~2_combout\,
	combout => \i2cSlave|data_reg[1]~1_combout\);

-- Location: FF_X109_Y34_N25
\i2cSlave|data_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|data_reg[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|data_reg\(1));

-- Location: LCCOMB_X109_Y34_N2
\cmd[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \cmd[1]~feeder_combout\ = \i2cSlave|data_reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2cSlave|data_reg\(1),
	combout => \cmd[1]~feeder_combout\);

-- Location: FF_X109_Y34_N3
\cmd[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cmd[1]~feeder_combout\,
	ena => \cmd[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cmd(1));

-- Location: LCCOMB_X109_Y34_N4
\Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (!cmd(2) & (!cmd(3) & !cmd(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cmd(2),
	datac => cmd(3),
	datad => cmd(1),
	combout => \Selector13~0_combout\);

-- Location: LCCOMB_X109_Y34_N10
\i2cSlave|Decoder1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|Decoder1~1_combout\ = (\i2cSlave|bits_processed_reg\(0) & (\i2cSlave|bits_processed_reg\(2) & (\i2cSlave|bits_processed_reg\(1) & \i2cSlave|Decoder1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|bits_processed_reg\(0),
	datab => \i2cSlave|bits_processed_reg\(2),
	datac => \i2cSlave|bits_processed_reg\(1),
	datad => \i2cSlave|Decoder1~0_combout\,
	combout => \i2cSlave|Decoder1~1_combout\);

-- Location: LCCOMB_X109_Y34_N30
\i2cSlave|data_reg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|data_reg[0]~0_combout\ = (\i2cSlave|Decoder1~1_combout\ & (!\i2cSlave|sda_reg~q\)) # (!\i2cSlave|Decoder1~1_combout\ & ((\i2cSlave|data_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2cSlave|sda_reg~q\,
	datac => \i2cSlave|data_reg\(0),
	datad => \i2cSlave|Decoder1~1_combout\,
	combout => \i2cSlave|data_reg[0]~0_combout\);

-- Location: FF_X109_Y34_N31
\i2cSlave|data_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|data_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|data_reg\(0));

-- Location: FF_X109_Y34_N13
\cmd[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i2cSlave|data_reg\(0),
	sload => VCC,
	ena => \cmd[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cmd(0));

-- Location: LCCOMB_X108_Y34_N28
\Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (\Selector13~0_combout\ & (cmd(0) & \state_reg.DECODE_CMD~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector13~0_combout\,
	datac => cmd(0),
	datad => \state_reg.DECODE_CMD~q\,
	combout => \Selector14~0_combout\);

-- Location: FF_X108_Y34_N29
\state_reg.LED_RESET\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_reg.LED_RESET~q\);

-- Location: LCCOMB_X108_Y34_N22
\Selector13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~1_combout\ = (\Selector13~0_combout\ & (!cmd(0) & \state_reg.DECODE_CMD~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector13~0_combout\,
	datac => cmd(0),
	datad => \state_reg.DECODE_CMD~q\,
	combout => \Selector13~1_combout\);

-- Location: FF_X108_Y34_N23
\state_reg.LED_CTRL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_reg.LED_CTRL~q\);

-- Location: LCCOMB_X107_Y34_N26
\Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\state_reg.LED_RESET~q\) # (\state_reg.LED_CTRL~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_reg.LED_RESET~q\,
	datad => \state_reg.LED_CTRL~q\,
	combout => \Selector10~0_combout\);

-- Location: LCCOMB_X108_Y34_N2
\Selector10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~2_combout\ = (!\Selector10~1_combout\ & (!\Selector10~0_combout\ & ((\Selector13~0_combout\) # (!\state_reg.DECODE_CMD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_reg.DECODE_CMD~q\,
	datab => \Selector10~1_combout\,
	datac => \Selector10~0_combout\,
	datad => \Selector13~0_combout\,
	combout => \Selector10~2_combout\);

-- Location: FF_X108_Y34_N3
\state_reg.GET_CMD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_reg.GET_CMD~q\);

-- Location: LCCOMB_X108_Y34_N10
\state_reg.GET_DATA~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \state_reg.GET_DATA~0_combout\ = (\i2cSlave|data_valid_reg~q\ & (!\state_reg.GET_CMD~q\)) # (!\i2cSlave|data_valid_reg~q\ & ((\state_reg.GET_DATA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_reg.GET_CMD~q\,
	datac => \state_reg.GET_DATA~q\,
	datad => \i2cSlave|data_valid_reg~q\,
	combout => \state_reg.GET_DATA~0_combout\);

-- Location: FF_X108_Y34_N11
\state_reg.GET_DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state_reg.GET_DATA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_reg.GET_DATA~q\);

-- Location: LCCOMB_X109_Y34_N6
\Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\i2cSlave|data_valid_reg~q\ & \state_reg.GET_DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|data_valid_reg~q\,
	datad => \state_reg.GET_DATA~q\,
	combout => \Selector12~0_combout\);

-- Location: FF_X109_Y34_N7
\state_reg.DECODE_CMD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_reg.DECODE_CMD~q\);

-- Location: LCCOMB_X109_Y34_N0
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\state_reg.DECODE_CMD~q\) # ((\update_ssd~q\ & \state_reg.GET_CMD~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_reg.DECODE_CMD~q\,
	datac => \update_ssd~q\,
	datad => \state_reg.GET_CMD~q\,
	combout => \Selector1~0_combout\);

-- Location: FF_X109_Y34_N1
update_ssd : dffeas
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
	q => \update_ssd~q\);

-- Location: LCCOMB_X108_Y34_N4
\Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\state_reg.GET_DATA~q\ & \i2cSlave|data_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_reg.GET_DATA~q\,
	datac => \i2cSlave|data_reg\(0),
	combout => \Selector9~0_combout\);

-- Location: LCCOMB_X108_Y34_N14
\data_reg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_reg[0]~0_combout\ = (\i2cSlave|data_valid_reg~q\ & ((\state_reg.GET_DATA~q\) # (!\state_reg.GET_CMD~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|data_valid_reg~q\,
	datab => \state_reg.GET_CMD~q\,
	datad => \state_reg.GET_DATA~q\,
	combout => \data_reg[0]~0_combout\);

-- Location: FF_X108_Y34_N5
\data_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector9~0_combout\,
	ena => \data_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_reg(0));

-- Location: LCCOMB_X107_Y34_N16
\Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = (!\state_reg.LED_CTRL~q\) # (!data_reg(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data_reg(0),
	datad => \state_reg.LED_CTRL~q\,
	combout => \Selector22~0_combout\);

-- Location: FF_X107_Y34_N17
\led_status[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector22~0_combout\,
	ena => \Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_status[0]~reg0_q\);

-- Location: LCCOMB_X108_Y34_N18
\Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\state_reg.GET_DATA~q\ & \i2cSlave|data_reg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_reg.GET_DATA~q\,
	datad => \i2cSlave|data_reg\(1),
	combout => \Selector8~0_combout\);

-- Location: FF_X108_Y34_N19
\data_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector8~0_combout\,
	ena => \data_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_reg(1));

-- Location: LCCOMB_X108_Y34_N8
\Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = (!data_reg(1)) # (!\state_reg.LED_CTRL~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state_reg.LED_CTRL~q\,
	datad => data_reg(1),
	combout => \Selector21~0_combout\);

-- Location: FF_X107_Y34_N27
\led_status[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Selector21~0_combout\,
	sload => VCC,
	ena => \Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_status[1]~reg0_q\);

-- Location: LCCOMB_X108_Y34_N26
\Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\state_reg.GET_DATA~q\ & \i2cSlave|data_reg\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_reg.GET_DATA~q\,
	datac => \i2cSlave|data_reg\(2),
	combout => \Selector7~0_combout\);

-- Location: FF_X108_Y34_N27
\data_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector7~0_combout\,
	ena => \data_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_reg(2));

-- Location: LCCOMB_X107_Y34_N12
\Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (!\state_reg.LED_CTRL~q\) # (!data_reg(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => data_reg(2),
	datad => \state_reg.LED_CTRL~q\,
	combout => \Selector20~0_combout\);

-- Location: FF_X107_Y34_N13
\led_status[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector20~0_combout\,
	ena => \Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_status[2]~reg0_q\);

-- Location: LCCOMB_X108_Y34_N20
\Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\state_reg.GET_DATA~q\ & \i2cSlave|data_reg\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_reg.GET_DATA~q\,
	datac => \i2cSlave|data_reg\(3),
	combout => \Selector6~0_combout\);

-- Location: FF_X108_Y34_N21
\data_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector6~0_combout\,
	ena => \data_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_reg(3));

-- Location: LCCOMB_X107_Y34_N30
\Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (!\state_reg.LED_CTRL~q\) # (!data_reg(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => data_reg(3),
	datad => \state_reg.LED_CTRL~q\,
	combout => \Selector19~0_combout\);

-- Location: FF_X107_Y34_N31
\led_status[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector19~0_combout\,
	ena => \Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_status[3]~reg0_q\);

-- Location: LCCOMB_X107_Y34_N20
\i2cSlave|Decoder1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|Decoder1~5_combout\ = (!\i2cSlave|bits_processed_reg\(2) & (\i2cSlave|bits_processed_reg\(0) & (\i2cSlave|bits_processed_reg\(1) & \i2cSlave|Decoder1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|bits_processed_reg\(2),
	datab => \i2cSlave|bits_processed_reg\(0),
	datac => \i2cSlave|bits_processed_reg\(1),
	datad => \i2cSlave|Decoder1~0_combout\,
	combout => \i2cSlave|Decoder1~5_combout\);

-- Location: LCCOMB_X107_Y34_N0
\i2cSlave|data_reg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|data_reg[4]~4_combout\ = (\i2cSlave|Decoder1~5_combout\ & (!\i2cSlave|sda_reg~q\)) # (!\i2cSlave|Decoder1~5_combout\ & ((\i2cSlave|data_reg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|sda_reg~q\,
	datac => \i2cSlave|data_reg\(4),
	datad => \i2cSlave|Decoder1~5_combout\,
	combout => \i2cSlave|data_reg[4]~4_combout\);

-- Location: FF_X107_Y34_N1
\i2cSlave|data_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|data_reg[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|data_reg\(4));

-- Location: LCCOMB_X108_Y34_N30
\Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\i2cSlave|data_reg\(4) & \state_reg.GET_DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2cSlave|data_reg\(4),
	datad => \state_reg.GET_DATA~q\,
	combout => \Selector5~0_combout\);

-- Location: FF_X108_Y34_N31
\data_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector5~0_combout\,
	ena => \data_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_reg(4));

-- Location: LCCOMB_X107_Y34_N24
\Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (!\state_reg.LED_CTRL~q\) # (!data_reg(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => data_reg(4),
	datad => \state_reg.LED_CTRL~q\,
	combout => \Selector18~0_combout\);

-- Location: FF_X107_Y34_N25
\led_status[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector18~0_combout\,
	ena => \Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_status[4]~reg0_q\);

-- Location: LCCOMB_X107_Y34_N2
\i2cSlave|Decoder1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|Decoder1~6_combout\ = (!\i2cSlave|bits_processed_reg\(2) & (\i2cSlave|bits_processed_reg\(1) & (!\i2cSlave|bits_processed_reg\(0) & \i2cSlave|Decoder1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|bits_processed_reg\(2),
	datab => \i2cSlave|bits_processed_reg\(1),
	datac => \i2cSlave|bits_processed_reg\(0),
	datad => \i2cSlave|Decoder1~0_combout\,
	combout => \i2cSlave|Decoder1~6_combout\);

-- Location: LCCOMB_X107_Y34_N14
\i2cSlave|data_reg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|data_reg[5]~5_combout\ = (\i2cSlave|Decoder1~6_combout\ & (!\i2cSlave|sda_reg~q\)) # (!\i2cSlave|Decoder1~6_combout\ & ((\i2cSlave|data_reg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|sda_reg~q\,
	datac => \i2cSlave|data_reg\(5),
	datad => \i2cSlave|Decoder1~6_combout\,
	combout => \i2cSlave|data_reg[5]~5_combout\);

-- Location: FF_X107_Y34_N15
\i2cSlave|data_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|data_reg[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|data_reg\(5));

-- Location: LCCOMB_X108_Y34_N24
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\state_reg.GET_DATA~q\ & \i2cSlave|data_reg\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_reg.GET_DATA~q\,
	datad => \i2cSlave|data_reg\(5),
	combout => \Selector4~0_combout\);

-- Location: FF_X108_Y34_N25
\data_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector4~0_combout\,
	ena => \data_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_reg(5));

-- Location: LCCOMB_X107_Y34_N10
\Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (!\state_reg.LED_CTRL~q\) # (!data_reg(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => data_reg(5),
	datad => \state_reg.LED_CTRL~q\,
	combout => \Selector17~0_combout\);

-- Location: FF_X107_Y34_N11
\led_status[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector17~0_combout\,
	ena => \Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_status[5]~reg0_q\);

-- Location: LCCOMB_X107_Y34_N28
\i2cSlave|Decoder1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|Decoder1~7_combout\ = (!\i2cSlave|bits_processed_reg\(2) & (\i2cSlave|bits_processed_reg\(0) & (!\i2cSlave|bits_processed_reg\(1) & \i2cSlave|Decoder1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|bits_processed_reg\(2),
	datab => \i2cSlave|bits_processed_reg\(0),
	datac => \i2cSlave|bits_processed_reg\(1),
	datad => \i2cSlave|Decoder1~0_combout\,
	combout => \i2cSlave|Decoder1~7_combout\);

-- Location: LCCOMB_X107_Y34_N4
\i2cSlave|data_reg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|data_reg[6]~6_combout\ = (\i2cSlave|Decoder1~7_combout\ & (!\i2cSlave|sda_reg~q\)) # (!\i2cSlave|Decoder1~7_combout\ & ((\i2cSlave|data_reg\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|sda_reg~q\,
	datac => \i2cSlave|data_reg\(6),
	datad => \i2cSlave|Decoder1~7_combout\,
	combout => \i2cSlave|data_reg[6]~6_combout\);

-- Location: FF_X107_Y34_N5
\i2cSlave|data_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|data_reg[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|data_reg\(6));

-- Location: LCCOMB_X108_Y34_N6
\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\i2cSlave|data_reg\(6) & \state_reg.GET_DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2cSlave|data_reg\(6),
	datad => \state_reg.GET_DATA~q\,
	combout => \Selector3~0_combout\);

-- Location: FF_X108_Y34_N7
\data_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector3~0_combout\,
	ena => \data_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_reg(6));

-- Location: LCCOMB_X107_Y34_N8
\Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (!\state_reg.LED_CTRL~q\) # (!data_reg(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => data_reg(6),
	datad => \state_reg.LED_CTRL~q\,
	combout => \Selector16~0_combout\);

-- Location: FF_X107_Y34_N9
\led_status[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector16~0_combout\,
	ena => \Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_status[6]~reg0_q\);

-- Location: LCCOMB_X107_Y34_N6
\i2cSlave|Decoder1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|Decoder1~8_combout\ = (!\i2cSlave|bits_processed_reg\(2) & (!\i2cSlave|bits_processed_reg\(1) & (!\i2cSlave|bits_processed_reg\(0) & \i2cSlave|Decoder1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|bits_processed_reg\(2),
	datab => \i2cSlave|bits_processed_reg\(1),
	datac => \i2cSlave|bits_processed_reg\(0),
	datad => \i2cSlave|Decoder1~0_combout\,
	combout => \i2cSlave|Decoder1~8_combout\);

-- Location: LCCOMB_X107_Y34_N22
\i2cSlave|data_reg[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|data_reg[7]~7_combout\ = (\i2cSlave|Decoder1~8_combout\ & (!\i2cSlave|sda_reg~q\)) # (!\i2cSlave|Decoder1~8_combout\ & ((\i2cSlave|data_reg\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|sda_reg~q\,
	datac => \i2cSlave|data_reg\(7),
	datad => \i2cSlave|Decoder1~8_combout\,
	combout => \i2cSlave|data_reg[7]~7_combout\);

-- Location: FF_X107_Y34_N23
\i2cSlave|data_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|data_reg[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|data_reg\(7));

-- Location: LCCOMB_X108_Y34_N16
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\state_reg.GET_DATA~q\ & \i2cSlave|data_reg\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_reg.GET_DATA~q\,
	datad => \i2cSlave|data_reg\(7),
	combout => \Selector2~0_combout\);

-- Location: FF_X108_Y34_N17
\data_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector2~0_combout\,
	ena => \data_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_reg(7));

-- Location: LCCOMB_X107_Y34_N18
\Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (!\state_reg.LED_CTRL~q\) # (!data_reg(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => data_reg(7),
	datad => \state_reg.LED_CTRL~q\,
	combout => \Selector15~0_combout\);

-- Location: FF_X107_Y34_N19
\led_status[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector15~0_combout\,
	ena => \Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_status[7]~reg0_q\);

-- Location: LCCOMB_X110_Y34_N20
\Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (data_reg(2) & (!data_reg(1) & (data_reg(0) $ (!data_reg(3))))) # (!data_reg(2) & (data_reg(0) & (data_reg(3) $ (!data_reg(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data_reg(2),
	datab => data_reg(0),
	datac => data_reg(3),
	datad => data_reg(1),
	combout => \Mux20~0_combout\);

-- Location: FF_X110_Y34_N21
\ssd_hex0[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux20~0_combout\,
	ena => \update_ssd~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssd_hex0[0]~reg0_q\);

-- Location: LCCOMB_X110_Y34_N14
\Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (data_reg(3) & ((data_reg(0) & ((data_reg(1)))) # (!data_reg(0) & (data_reg(2))))) # (!data_reg(3) & (data_reg(2) & (data_reg(0) $ (data_reg(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data_reg(2),
	datab => data_reg(0),
	datac => data_reg(3),
	datad => data_reg(1),
	combout => \Mux19~0_combout\);

-- Location: FF_X110_Y34_N15
\ssd_hex0[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux19~0_combout\,
	ena => \update_ssd~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssd_hex0[1]~reg0_q\);

-- Location: LCCOMB_X110_Y34_N24
\Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (data_reg(2) & (data_reg(3) & ((data_reg(1)) # (!data_reg(0))))) # (!data_reg(2) & (!data_reg(0) & (!data_reg(3) & data_reg(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data_reg(2),
	datab => data_reg(0),
	datac => data_reg(3),
	datad => data_reg(1),
	combout => \Mux18~0_combout\);

-- Location: FF_X110_Y34_N25
\ssd_hex0[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux18~0_combout\,
	ena => \update_ssd~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssd_hex0[2]~reg0_q\);

-- Location: LCCOMB_X111_Y34_N20
\Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (data_reg(0) & (data_reg(2) $ (((!data_reg(1)))))) # (!data_reg(0) & ((data_reg(2) & (!data_reg(3) & !data_reg(1))) # (!data_reg(2) & (data_reg(3) & data_reg(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data_reg(0),
	datab => data_reg(2),
	datac => data_reg(3),
	datad => data_reg(1),
	combout => \Mux17~0_combout\);

-- Location: FF_X111_Y34_N21
\ssd_hex0[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux17~0_combout\,
	ena => \update_ssd~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssd_hex0[3]~reg0_q\);

-- Location: LCCOMB_X111_Y34_N14
\Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (data_reg(1) & (data_reg(0) & ((!data_reg(3))))) # (!data_reg(1) & ((data_reg(2) & ((!data_reg(3)))) # (!data_reg(2) & (data_reg(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data_reg(0),
	datab => data_reg(2),
	datac => data_reg(3),
	datad => data_reg(1),
	combout => \Mux16~0_combout\);

-- Location: FF_X111_Y34_N15
\ssd_hex0[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux16~0_combout\,
	ena => \update_ssd~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssd_hex0[4]~reg0_q\);

-- Location: LCCOMB_X111_Y34_N0
\Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (data_reg(0) & (data_reg(3) $ (((data_reg(1)) # (!data_reg(2)))))) # (!data_reg(0) & (!data_reg(2) & (!data_reg(3) & data_reg(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data_reg(0),
	datab => data_reg(2),
	datac => data_reg(3),
	datad => data_reg(1),
	combout => \Mux15~0_combout\);

-- Location: FF_X111_Y34_N1
\ssd_hex0[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux15~0_combout\,
	ena => \update_ssd~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssd_hex0[5]~reg0_q\);

-- Location: LCCOMB_X111_Y34_N22
\Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (data_reg(0) & (!data_reg(3) & (data_reg(2) $ (!data_reg(1))))) # (!data_reg(0) & (!data_reg(1) & (data_reg(2) $ (!data_reg(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data_reg(0),
	datab => data_reg(2),
	datac => data_reg(3),
	datad => data_reg(1),
	combout => \Mux14~0_combout\);

-- Location: FF_X111_Y34_N23
\ssd_hex0[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux14~0_combout\,
	ena => \update_ssd~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssd_hex0[6]~reg0_q\);

-- Location: LCCOMB_X111_Y34_N4
\Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (data_reg(7) & (data_reg(4) & (data_reg(6) $ (data_reg(5))))) # (!data_reg(7) & (!data_reg(5) & (data_reg(6) $ (data_reg(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data_reg(7),
	datab => data_reg(6),
	datac => data_reg(4),
	datad => data_reg(5),
	combout => \Mux13~0_combout\);

-- Location: FF_X111_Y34_N5
\ssd_hex1[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux13~0_combout\,
	ena => \update_ssd~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssd_hex1[0]~reg0_q\);

-- Location: LCCOMB_X111_Y34_N18
\Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (data_reg(7) & ((data_reg(4) & ((data_reg(5)))) # (!data_reg(4) & (data_reg(6))))) # (!data_reg(7) & (data_reg(6) & (data_reg(4) $ (data_reg(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data_reg(7),
	datab => data_reg(6),
	datac => data_reg(4),
	datad => data_reg(5),
	combout => \Mux12~0_combout\);

-- Location: FF_X111_Y34_N19
\ssd_hex1[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux12~0_combout\,
	ena => \update_ssd~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssd_hex1[1]~reg0_q\);

-- Location: LCCOMB_X111_Y34_N24
\Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (data_reg(7) & (data_reg(6) & ((data_reg(5)) # (!data_reg(4))))) # (!data_reg(7) & (!data_reg(6) & (!data_reg(4) & data_reg(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data_reg(7),
	datab => data_reg(6),
	datac => data_reg(4),
	datad => data_reg(5),
	combout => \Mux11~0_combout\);

-- Location: FF_X111_Y34_N25
\ssd_hex1[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux11~0_combout\,
	ena => \update_ssd~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssd_hex1[2]~reg0_q\);

-- Location: LCCOMB_X111_Y34_N30
\Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (data_reg(4) & ((data_reg(6) $ (!data_reg(5))))) # (!data_reg(4) & ((data_reg(7) & (!data_reg(6) & data_reg(5))) # (!data_reg(7) & (data_reg(6) & !data_reg(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data_reg(7),
	datab => data_reg(6),
	datac => data_reg(4),
	datad => data_reg(5),
	combout => \Mux10~0_combout\);

-- Location: FF_X111_Y34_N31
\ssd_hex1[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux10~0_combout\,
	ena => \update_ssd~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssd_hex1[3]~reg0_q\);

-- Location: LCCOMB_X111_Y34_N16
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (data_reg(5) & (!data_reg(7) & ((data_reg(4))))) # (!data_reg(5) & ((data_reg(6) & (!data_reg(7))) # (!data_reg(6) & ((data_reg(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data_reg(7),
	datab => data_reg(6),
	datac => data_reg(4),
	datad => data_reg(5),
	combout => \Mux9~0_combout\);

-- Location: FF_X111_Y34_N17
\ssd_hex1[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux9~0_combout\,
	ena => \update_ssd~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssd_hex1[4]~reg0_q\);

-- Location: LCCOMB_X111_Y34_N10
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (data_reg(6) & (data_reg(4) & (data_reg(7) $ (data_reg(5))))) # (!data_reg(6) & (!data_reg(7) & ((data_reg(4)) # (data_reg(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data_reg(7),
	datab => data_reg(6),
	datac => data_reg(4),
	datad => data_reg(5),
	combout => \Mux8~0_combout\);

-- Location: FF_X111_Y34_N11
\ssd_hex1[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux8~0_combout\,
	ena => \update_ssd~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssd_hex1[5]~reg0_q\);

-- Location: LCCOMB_X111_Y34_N12
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (data_reg(4) & (!data_reg(7) & (data_reg(6) $ (!data_reg(5))))) # (!data_reg(4) & (!data_reg(5) & (data_reg(7) $ (!data_reg(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data_reg(7),
	datab => data_reg(6),
	datac => data_reg(4),
	datad => data_reg(5),
	combout => \Mux7~0_combout\);

-- Location: FF_X111_Y34_N13
\ssd_hex1[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux7~0_combout\,
	ena => \update_ssd~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssd_hex1[6]~reg0_q\);

-- Location: LCCOMB_X110_Y34_N26
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (cmd(3) & (cmd(0) & (cmd(1) $ (cmd(2))))) # (!cmd(3) & (!cmd(1) & (cmd(0) $ (cmd(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cmd(1),
	datab => cmd(3),
	datac => cmd(0),
	datad => cmd(2),
	combout => \Mux6~0_combout\);

-- Location: FF_X110_Y34_N27
\ssd_hex4[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux6~0_combout\,
	ena => \update_ssd~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssd_hex4[0]~reg0_q\);

-- Location: LCCOMB_X110_Y34_N28
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (cmd(1) & ((cmd(0) & (cmd(3))) # (!cmd(0) & ((cmd(2)))))) # (!cmd(1) & (cmd(2) & (cmd(3) $ (cmd(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cmd(1),
	datab => cmd(3),
	datac => cmd(0),
	datad => cmd(2),
	combout => \Mux5~0_combout\);

-- Location: FF_X110_Y34_N29
\ssd_hex4[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux5~0_combout\,
	ena => \update_ssd~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssd_hex4[1]~reg0_q\);

-- Location: LCCOMB_X110_Y34_N18
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (cmd(3) & (cmd(2) & ((cmd(1)) # (!cmd(0))))) # (!cmd(3) & (cmd(1) & (!cmd(0) & !cmd(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cmd(1),
	datab => cmd(3),
	datac => cmd(0),
	datad => cmd(2),
	combout => \Mux4~0_combout\);

-- Location: FF_X110_Y34_N19
\ssd_hex4[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux4~0_combout\,
	ena => \update_ssd~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssd_hex4[2]~reg0_q\);

-- Location: LCCOMB_X110_Y34_N4
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (cmd(0) & (cmd(1) $ (((!cmd(2)))))) # (!cmd(0) & ((cmd(1) & (cmd(3) & !cmd(2))) # (!cmd(1) & (!cmd(3) & cmd(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cmd(1),
	datab => cmd(3),
	datac => cmd(0),
	datad => cmd(2),
	combout => \Mux3~0_combout\);

-- Location: FF_X110_Y34_N5
\ssd_hex4[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux3~0_combout\,
	ena => \update_ssd~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssd_hex4[3]~reg0_q\);

-- Location: LCCOMB_X110_Y34_N22
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (cmd(1) & (!cmd(3) & (cmd(0)))) # (!cmd(1) & ((cmd(2) & (!cmd(3))) # (!cmd(2) & ((cmd(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cmd(1),
	datab => cmd(3),
	datac => cmd(0),
	datad => cmd(2),
	combout => \Mux2~0_combout\);

-- Location: FF_X110_Y34_N23
\ssd_hex4[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux2~0_combout\,
	ena => \update_ssd~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssd_hex4[4]~reg0_q\);

-- Location: LCCOMB_X110_Y34_N8
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (cmd(1) & (!cmd(3) & ((cmd(0)) # (!cmd(2))))) # (!cmd(1) & (cmd(0) & (cmd(3) $ (!cmd(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cmd(1),
	datab => cmd(3),
	datac => cmd(0),
	datad => cmd(2),
	combout => \Mux1~0_combout\);

-- Location: FF_X110_Y34_N9
\ssd_hex4[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux1~0_combout\,
	ena => \update_ssd~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssd_hex4[5]~reg0_q\);

-- Location: LCCOMB_X110_Y34_N10
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (cmd(0) & (!cmd(3) & (cmd(1) $ (!cmd(2))))) # (!cmd(0) & (!cmd(1) & (cmd(3) $ (!cmd(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cmd(1),
	datab => cmd(3),
	datac => cmd(0),
	datad => cmd(2),
	combout => \Mux0~0_combout\);

-- Location: FF_X110_Y34_N11
\ssd_hex4[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux0~0_combout\,
	ena => \update_ssd~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ssd_hex4[6]~reg0_q\);

ww_busy <= \busy~output_o\;

ww_led_status(0) <= \led_status[0]~output_o\;

ww_led_status(1) <= \led_status[1]~output_o\;

ww_led_status(2) <= \led_status[2]~output_o\;

ww_led_status(3) <= \led_status[3]~output_o\;

ww_led_status(4) <= \led_status[4]~output_o\;

ww_led_status(5) <= \led_status[5]~output_o\;

ww_led_status(6) <= \led_status[6]~output_o\;

ww_led_status(7) <= \led_status[7]~output_o\;

ww_ssd_hex0(0) <= \ssd_hex0[0]~output_o\;

ww_ssd_hex0(1) <= \ssd_hex0[1]~output_o\;

ww_ssd_hex0(2) <= \ssd_hex0[2]~output_o\;

ww_ssd_hex0(3) <= \ssd_hex0[3]~output_o\;

ww_ssd_hex0(4) <= \ssd_hex0[4]~output_o\;

ww_ssd_hex0(5) <= \ssd_hex0[5]~output_o\;

ww_ssd_hex0(6) <= \ssd_hex0[6]~output_o\;

ww_ssd_hex1(0) <= \ssd_hex1[0]~output_o\;

ww_ssd_hex1(1) <= \ssd_hex1[1]~output_o\;

ww_ssd_hex1(2) <= \ssd_hex1[2]~output_o\;

ww_ssd_hex1(3) <= \ssd_hex1[3]~output_o\;

ww_ssd_hex1(4) <= \ssd_hex1[4]~output_o\;

ww_ssd_hex1(5) <= \ssd_hex1[5]~output_o\;

ww_ssd_hex1(6) <= \ssd_hex1[6]~output_o\;

ww_ssd_hex4(0) <= \ssd_hex4[0]~output_o\;

ww_ssd_hex4(1) <= \ssd_hex4[1]~output_o\;

ww_ssd_hex4(2) <= \ssd_hex4[2]~output_o\;

ww_ssd_hex4(3) <= \ssd_hex4[3]~output_o\;

ww_ssd_hex4(4) <= \ssd_hex4[4]~output_o\;

ww_ssd_hex4(5) <= \ssd_hex4[5]~output_o\;

ww_ssd_hex4(6) <= \ssd_hex4[6]~output_o\;

scl <= \scl~output_o\;

sda <= \sda~output_o\;
END structure;


