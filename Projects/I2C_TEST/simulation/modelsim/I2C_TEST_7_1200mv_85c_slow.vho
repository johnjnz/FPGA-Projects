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

-- DATE "08/21/2015 19:32:02"

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
	scl : BUFFER std_logic;
	sda : BUFFER std_logic;
	clk : IN std_logic;
	rst : IN std_logic
	);
END I2C_TEST;

-- Design Ports Information
-- scl	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sda	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_scl : std_logic;
SIGNAL ww_sda : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \scl~output_o\ : std_logic;
SIGNAL \sda~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \scl~input_o\ : std_logic;
SIGNAL \i2cSlave|scl_reg~0_combout\ : std_logic;
SIGNAL \i2cSlave|scl_reg~q\ : std_logic;
SIGNAL \i2cSlave|scl_prev_reg~feeder_combout\ : std_logic;
SIGNAL \i2cSlave|scl_prev_reg~q\ : std_logic;
SIGNAL \i2cSlave|process_0~1_combout\ : std_logic;
SIGNAL \i2cSlave|scl_falling_reg~q\ : std_logic;
SIGNAL \sda~input_o\ : std_logic;
SIGNAL \i2cSlave|sda_reg~0_combout\ : std_logic;
SIGNAL \i2cSlave|sda_reg~q\ : std_logic;
SIGNAL \i2cSlave|process_0~0_combout\ : std_logic;
SIGNAL \i2cSlave|scl_rising_reg~q\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \i2cSlave|sda_prev_reg~q\ : std_logic;
SIGNAL \i2cSlave|process_0~2_combout\ : std_logic;
SIGNAL \i2cSlave|stop_reg~q\ : std_logic;
SIGNAL \i2cSlave|state_reg~48_combout\ : std_logic;
SIGNAL \i2cSlave|start_reg~0_combout\ : std_logic;
SIGNAL \i2cSlave|start_reg~q\ : std_logic;
SIGNAL \i2cSlave|bits_processed_reg~0_combout\ : std_logic;
SIGNAL \i2cSlave|process_1~1_combout\ : std_logic;
SIGNAL \i2cSlave|bits_processed_reg[2]~4_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg~27_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg~24_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg~35_combout\ : std_logic;
SIGNAL \i2cSlave|Add1~0_combout\ : std_logic;
SIGNAL \i2cSlave|Equal2~0_combout\ : std_logic;
SIGNAL \i2cSlave|Decoder0~0_combout\ : std_logic;
SIGNAL \i2cSlave|addr_reg[1]~6_combout\ : std_logic;
SIGNAL \i2cSlave|addr_reg[5]~7_combout\ : std_logic;
SIGNAL \i2cSlave|addr_reg[0]~4_combout\ : std_logic;
SIGNAL \i2cSlave|addr_reg[4]~5_combout\ : std_logic;
SIGNAL \i2cSlave|addr_reg[6]~8_combout\ : std_logic;
SIGNAL \i2cSlave|addr_reg[6]~9_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg~20_combout\ : std_logic;
SIGNAL \i2cSlave|addr_reg[1]~11_combout\ : std_logic;
SIGNAL \i2cSlave|addr_reg[2]~14_combout\ : std_logic;
SIGNAL \i2cSlave|addr_reg[2]~12_combout\ : std_logic;
SIGNAL \i2cSlave|addr_reg[3]~15_combout\ : std_logic;
SIGNAL \i2cSlave|addr_reg[3]~13_combout\ : std_logic;
SIGNAL \i2cSlave|addr_reg[0]~10_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg~21_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg~34_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg~51_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg~42_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg~47_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg.I2C_READ_ACK_START~q\ : std_logic;
SIGNAL \i2cSlave|continue_reg~0_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg~53_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg.I2C_READ_ACK_GOT_RISING~q\ : std_logic;
SIGNAL \i2cSlave|continue_reg~1_combout\ : std_logic;
SIGNAL \i2cSlave|continue_reg~q\ : std_logic;
SIGNAL \i2cSlave|state_reg~36_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg~41_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg.I2C_ANSWER_ACK_START~q\ : std_logic;
SIGNAL \i2cSlave|state_reg~23_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg~54_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg~55_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg.I2C_READ_STOP~q\ : std_logic;
SIGNAL \i2cSlave|state_reg~31_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg~30_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg~25_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg~26_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg~29_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg~32_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg~33_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg.I2C_READ~q\ : std_logic;
SIGNAL \i2cSlave|state_reg~37_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg~38_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg~39_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg~56_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg~40_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg~52_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg.I2C_IDLE~q\ : std_logic;
SIGNAL \i2cSlave|bits_processed_reg[2]~1_combout\ : std_logic;
SIGNAL \i2cSlave|bits_processed_reg[2]~2_combout\ : std_logic;
SIGNAL \i2cSlave|bits_processed_reg[2]~3_combout\ : std_logic;
SIGNAL \i2cSlave|bits_processed_reg[2]~5_combout\ : std_logic;
SIGNAL \i2cSlave|bits_processed_reg[0]~10_combout\ : std_logic;
SIGNAL \i2cSlave|bits_processed_reg[1]~9_combout\ : std_logic;
SIGNAL \i2cSlave|process_1~0_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg~28_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg~43_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg~44_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg~45_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg~46_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg~49_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg.I2C_GET_ADDRESS_AND_CMD~q\ : std_logic;
SIGNAL \i2cSlave|cmd_reg~0_combout\ : std_logic;
SIGNAL \i2cSlave|cmd_reg~1_combout\ : std_logic;
SIGNAL \i2cSlave|cmd_reg~q\ : std_logic;
SIGNAL \i2cSlave|state_reg~50_combout\ : std_logic;
SIGNAL \i2cSlave|state_reg.I2C_WRITE~q\ : std_logic;
SIGNAL \i2cSlave|state_reg~22_combout\ : std_logic;
SIGNAL \i2cSlave|Selector8~4_combout\ : std_logic;
SIGNAL \i2cSlave|Selector8~2_combout\ : std_logic;
SIGNAL \i2cSlave|Selector8~3_combout\ : std_logic;
SIGNAL \i2cSlave|Selector8~5_combout\ : std_logic;
SIGNAL \i2cSlave|bits_processed_reg~12_combout\ : std_logic;
SIGNAL \i2cSlave|bits_processed_reg[0]~6_combout\ : std_logic;
SIGNAL \i2cSlave|bits_processed_reg[0]~7_combout\ : std_logic;
SIGNAL \i2cSlave|bits_processed_reg[0]~8_combout\ : std_logic;
SIGNAL \i2cSlave|bits_processed_reg[2]~11_combout\ : std_logic;
SIGNAL \i2cSlave|Decoder1~0_combout\ : std_logic;
SIGNAL \i2cSlave|Decoder1~1_combout\ : std_logic;
SIGNAL \i2cSlave|data_reg[0]~0_combout\ : std_logic;
SIGNAL \data_to_master[0]~feeder_combout\ : std_logic;
SIGNAL \i2cSlave|data_valid_reg~0_combout\ : std_logic;
SIGNAL \i2cSlave|data_valid_reg~q\ : std_logic;
SIGNAL \i2cSlave|data_to_master_reg[0]~4_combout\ : std_logic;
SIGNAL \i2cSlave|data_to_master_reg[7]~0_combout\ : std_logic;
SIGNAL \i2cSlave|data_to_master_reg[7]~1_combout\ : std_logic;
SIGNAL \i2cSlave|data_to_master_reg[7]~2_combout\ : std_logic;
SIGNAL \i2cSlave|Decoder1~2_combout\ : std_logic;
SIGNAL \i2cSlave|data_reg[1]~1_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \i2cSlave|Decoder1~3_combout\ : std_logic;
SIGNAL \i2cSlave|data_reg[2]~2_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \data_to_master[2]~0_combout\ : std_logic;
SIGNAL \i2cSlave|data_to_master_reg[2]~3_combout\ : std_logic;
SIGNAL \i2cSlave|Decoder1~4_combout\ : std_logic;
SIGNAL \i2cSlave|data_reg[3]~3_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \i2cSlave|Mux0~0_combout\ : std_logic;
SIGNAL \i2cSlave|Mux0~1_combout\ : std_logic;
SIGNAL \i2cSlave|Decoder1~6_combout\ : std_logic;
SIGNAL \i2cSlave|data_reg[4]~5_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \data_to_master[4]~2_combout\ : std_logic;
SIGNAL \i2cSlave|data_to_master_reg[4]~6_combout\ : std_logic;
SIGNAL \i2cSlave|Decoder1~5_combout\ : std_logic;
SIGNAL \i2cSlave|data_reg[5]~4_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \i2cSlave|Decoder1~8_combout\ : std_logic;
SIGNAL \i2cSlave|data_reg[7]~7_combout\ : std_logic;
SIGNAL \i2cSlave|Decoder1~7_combout\ : std_logic;
SIGNAL \i2cSlave|data_reg[6]~6_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \data_to_master[6]~1_combout\ : std_logic;
SIGNAL \i2cSlave|data_to_master_reg[6]~5_combout\ : std_logic;
SIGNAL \i2cSlave|Mux0~2_combout\ : std_logic;
SIGNAL \i2cSlave|Mux0~3_combout\ : std_logic;
SIGNAL \i2cSlave|Mux0~4_combout\ : std_logic;
SIGNAL \i2cSlave|sda_o_reg~q\ : std_logic;
SIGNAL \i2cSlave|sda_wen_reg~0_combout\ : std_logic;
SIGNAL \i2cSlave|sda_wen_reg~q\ : std_logic;
SIGNAL \i2cSlave|data_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \i2cSlave|addr_reg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL data_to_master : std_logic_vector(7 DOWNTO 0);
SIGNAL \i2cSlave|bits_processed_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i2cSlave|data_to_master_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \i2cSlave|ALT_INV_state_reg.I2C_WRITE~q\ : std_logic;
SIGNAL \i2cSlave|ALT_INV_state_reg.I2C_READ~q\ : std_logic;

BEGIN

scl <= ww_scl;
sda <= ww_sda;
ww_clk <= clk;
ww_rst <= rst;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\i2cSlave|ALT_INV_state_reg.I2C_WRITE~q\ <= NOT \i2cSlave|state_reg.I2C_WRITE~q\;
\i2cSlave|ALT_INV_state_reg.I2C_READ~q\ <= NOT \i2cSlave|state_reg.I2C_READ~q\;

-- Location: IOOBUF_X27_Y73_N9
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

-- Location: IOOBUF_X29_Y73_N9
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

-- Location: IOIBUF_X0_Y36_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
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

-- Location: IOIBUF_X27_Y73_N8
\scl~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_scl,
	o => \scl~input_o\);

-- Location: LCCOMB_X27_Y71_N22
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

-- Location: FF_X27_Y71_N23
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

-- Location: LCCOMB_X27_Y71_N24
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

-- Location: FF_X27_Y71_N25
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

-- Location: LCCOMB_X27_Y71_N6
\i2cSlave|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|process_0~1_combout\ = (\i2cSlave|scl_reg~q\ & !\i2cSlave|scl_prev_reg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2cSlave|scl_reg~q\,
	datad => \i2cSlave|scl_prev_reg~q\,
	combout => \i2cSlave|process_0~1_combout\);

-- Location: FF_X28_Y71_N29
\i2cSlave|scl_falling_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i2cSlave|process_0~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|scl_falling_reg~q\);

-- Location: IOIBUF_X29_Y73_N8
\sda~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sda,
	o => \sda~input_o\);

-- Location: LCCOMB_X29_Y72_N30
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

-- Location: FF_X29_Y72_N31
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

-- Location: LCCOMB_X27_Y71_N10
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

-- Location: FF_X27_Y71_N11
\i2cSlave|scl_rising_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|scl_rising_reg~q\);

-- Location: IOIBUF_X27_Y73_N15
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: FF_X27_Y71_N13
\i2cSlave|sda_prev_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i2cSlave|sda_reg~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|sda_prev_reg~q\);

-- Location: LCCOMB_X27_Y71_N20
\i2cSlave|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|process_0~2_combout\ = (!\i2cSlave|scl_reg~q\ & (!\i2cSlave|scl_prev_reg~q\ & (!\i2cSlave|sda_reg~q\ & \i2cSlave|sda_prev_reg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|scl_reg~q\,
	datab => \i2cSlave|scl_prev_reg~q\,
	datac => \i2cSlave|sda_reg~q\,
	datad => \i2cSlave|sda_prev_reg~q\,
	combout => \i2cSlave|process_0~2_combout\);

-- Location: FF_X27_Y71_N21
\i2cSlave|stop_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|stop_reg~q\);

-- Location: LCCOMB_X27_Y71_N12
\i2cSlave|state_reg~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~48_combout\ = (!\rst~input_o\ & !\i2cSlave|stop_reg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datad => \i2cSlave|stop_reg~q\,
	combout => \i2cSlave|state_reg~48_combout\);

-- Location: LCCOMB_X27_Y71_N26
\i2cSlave|start_reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|start_reg~0_combout\ = (!\i2cSlave|scl_reg~q\ & (!\i2cSlave|scl_prev_reg~q\ & (\i2cSlave|sda_reg~q\ & !\i2cSlave|sda_prev_reg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|scl_reg~q\,
	datab => \i2cSlave|scl_prev_reg~q\,
	datac => \i2cSlave|sda_reg~q\,
	datad => \i2cSlave|sda_prev_reg~q\,
	combout => \i2cSlave|start_reg~0_combout\);

-- Location: FF_X27_Y71_N27
\i2cSlave|start_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|start_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|start_reg~q\);

-- Location: LCCOMB_X28_Y71_N28
\i2cSlave|bits_processed_reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|bits_processed_reg~0_combout\ = (!\i2cSlave|start_reg~q\ & !\i2cSlave|stop_reg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|start_reg~q\,
	datad => \i2cSlave|stop_reg~q\,
	combout => \i2cSlave|bits_processed_reg~0_combout\);

-- Location: LCCOMB_X28_Y71_N16
\i2cSlave|process_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|process_1~1_combout\ = (!\i2cSlave|bits_processed_reg\(2) & (!\i2cSlave|bits_processed_reg\(0) & !\i2cSlave|bits_processed_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|bits_processed_reg\(2),
	datab => \i2cSlave|bits_processed_reg\(0),
	datac => \i2cSlave|bits_processed_reg\(1),
	combout => \i2cSlave|process_1~1_combout\);

-- Location: LCCOMB_X28_Y71_N26
\i2cSlave|bits_processed_reg[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|bits_processed_reg[2]~4_combout\ = (\i2cSlave|bits_processed_reg\(3) & (((!\i2cSlave|process_1~1_combout\) # (!\i2cSlave|scl_falling_reg~q\)))) # (!\i2cSlave|bits_processed_reg\(3) & (!\i2cSlave|scl_rising_reg~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|scl_rising_reg~q\,
	datab => \i2cSlave|scl_falling_reg~q\,
	datac => \i2cSlave|bits_processed_reg\(3),
	datad => \i2cSlave|process_1~1_combout\,
	combout => \i2cSlave|bits_processed_reg[2]~4_combout\);

-- Location: LCCOMB_X29_Y71_N6
\i2cSlave|state_reg~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~27_combout\ = (\i2cSlave|scl_falling_reg~q\ & (\i2cSlave|state_reg.I2C_GET_ADDRESS_AND_CMD~q\ & \i2cSlave|process_1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2cSlave|scl_falling_reg~q\,
	datac => \i2cSlave|state_reg.I2C_GET_ADDRESS_AND_CMD~q\,
	datad => \i2cSlave|process_1~0_combout\,
	combout => \i2cSlave|state_reg~27_combout\);

-- Location: LCCOMB_X27_Y71_N28
\i2cSlave|state_reg~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~24_combout\ = (!\rst~input_o\ & (!\i2cSlave|start_reg~q\ & !\i2cSlave|stop_reg~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datac => \i2cSlave|start_reg~q\,
	datad => \i2cSlave|stop_reg~q\,
	combout => \i2cSlave|state_reg~24_combout\);

-- Location: LCCOMB_X29_Y71_N26
\i2cSlave|state_reg~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~35_combout\ = (\i2cSlave|state_reg~24_combout\ & (((!\i2cSlave|process_1~0_combout\) # (!\i2cSlave|scl_falling_reg~q\)) # (!\i2cSlave|state_reg.I2C_WRITE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|state_reg.I2C_WRITE~q\,
	datab => \i2cSlave|scl_falling_reg~q\,
	datac => \i2cSlave|state_reg~24_combout\,
	datad => \i2cSlave|process_1~0_combout\,
	combout => \i2cSlave|state_reg~35_combout\);

-- Location: LCCOMB_X26_Y71_N26
\i2cSlave|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|Add1~0_combout\ = \i2cSlave|bits_processed_reg\(2) $ (((\i2cSlave|bits_processed_reg\(0) & \i2cSlave|bits_processed_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|bits_processed_reg\(0),
	datac => \i2cSlave|bits_processed_reg\(2),
	datad => \i2cSlave|bits_processed_reg\(1),
	combout => \i2cSlave|Add1~0_combout\);

-- Location: LCCOMB_X29_Y71_N28
\i2cSlave|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|Equal2~0_combout\ = (\i2cSlave|bits_processed_reg\(1) & (\i2cSlave|bits_processed_reg\(2) & \i2cSlave|bits_processed_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|bits_processed_reg\(1),
	datab => \i2cSlave|bits_processed_reg\(2),
	datad => \i2cSlave|bits_processed_reg\(0),
	combout => \i2cSlave|Equal2~0_combout\);

-- Location: LCCOMB_X26_Y71_N28
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

-- Location: LCCOMB_X26_Y71_N24
\i2cSlave|addr_reg[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|addr_reg[1]~6_combout\ = (!\i2cSlave|bits_processed_reg\(1) & (\i2cSlave|bits_processed_reg\(0) & \i2cSlave|Decoder0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2cSlave|bits_processed_reg\(1),
	datac => \i2cSlave|bits_processed_reg\(0),
	datad => \i2cSlave|Decoder0~0_combout\,
	combout => \i2cSlave|addr_reg[1]~6_combout\);

-- Location: LCCOMB_X26_Y71_N14
\i2cSlave|addr_reg[5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|addr_reg[5]~7_combout\ = (\i2cSlave|Add1~0_combout\ & (((\i2cSlave|addr_reg\(5))))) # (!\i2cSlave|Add1~0_combout\ & ((\i2cSlave|addr_reg[1]~6_combout\ & (!\i2cSlave|sda_reg~q\)) # (!\i2cSlave|addr_reg[1]~6_combout\ & 
-- ((\i2cSlave|addr_reg\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|Add1~0_combout\,
	datab => \i2cSlave|sda_reg~q\,
	datac => \i2cSlave|addr_reg\(5),
	datad => \i2cSlave|addr_reg[1]~6_combout\,
	combout => \i2cSlave|addr_reg[5]~7_combout\);

-- Location: FF_X26_Y71_N15
\i2cSlave|addr_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|addr_reg[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|addr_reg\(5));

-- Location: LCCOMB_X26_Y71_N2
\i2cSlave|addr_reg[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|addr_reg[0]~4_combout\ = (\i2cSlave|bits_processed_reg\(1) & (!\i2cSlave|bits_processed_reg\(0) & \i2cSlave|Decoder0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2cSlave|bits_processed_reg\(1),
	datac => \i2cSlave|bits_processed_reg\(0),
	datad => \i2cSlave|Decoder0~0_combout\,
	combout => \i2cSlave|addr_reg[0]~4_combout\);

-- Location: LCCOMB_X26_Y71_N4
\i2cSlave|addr_reg[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|addr_reg[4]~5_combout\ = (\i2cSlave|Add1~0_combout\ & (((\i2cSlave|addr_reg\(4))))) # (!\i2cSlave|Add1~0_combout\ & ((\i2cSlave|addr_reg[0]~4_combout\ & (!\i2cSlave|sda_reg~q\)) # (!\i2cSlave|addr_reg[0]~4_combout\ & 
-- ((\i2cSlave|addr_reg\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|Add1~0_combout\,
	datab => \i2cSlave|sda_reg~q\,
	datac => \i2cSlave|addr_reg\(4),
	datad => \i2cSlave|addr_reg[0]~4_combout\,
	combout => \i2cSlave|addr_reg[4]~5_combout\);

-- Location: FF_X26_Y71_N5
\i2cSlave|addr_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|addr_reg[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|addr_reg\(4));

-- Location: LCCOMB_X26_Y71_N18
\i2cSlave|addr_reg[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|addr_reg[6]~8_combout\ = (!\i2cSlave|bits_processed_reg\(1) & (!\i2cSlave|bits_processed_reg\(0) & \i2cSlave|Decoder0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2cSlave|bits_processed_reg\(1),
	datac => \i2cSlave|bits_processed_reg\(0),
	datad => \i2cSlave|Decoder0~0_combout\,
	combout => \i2cSlave|addr_reg[6]~8_combout\);

-- Location: LCCOMB_X26_Y71_N12
\i2cSlave|addr_reg[6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|addr_reg[6]~9_combout\ = (\i2cSlave|Add1~0_combout\ & (((\i2cSlave|addr_reg\(6))))) # (!\i2cSlave|Add1~0_combout\ & ((\i2cSlave|addr_reg[6]~8_combout\ & (!\i2cSlave|sda_reg~q\)) # (!\i2cSlave|addr_reg[6]~8_combout\ & 
-- ((\i2cSlave|addr_reg\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|Add1~0_combout\,
	datab => \i2cSlave|sda_reg~q\,
	datac => \i2cSlave|addr_reg\(6),
	datad => \i2cSlave|addr_reg[6]~8_combout\,
	combout => \i2cSlave|addr_reg[6]~9_combout\);

-- Location: FF_X26_Y71_N13
\i2cSlave|addr_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|addr_reg[6]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|addr_reg\(6));

-- Location: LCCOMB_X26_Y71_N22
\i2cSlave|state_reg~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~20_combout\ = (!\i2cSlave|addr_reg\(5) & (!\i2cSlave|addr_reg\(4) & !\i2cSlave|addr_reg\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2cSlave|addr_reg\(5),
	datac => \i2cSlave|addr_reg\(4),
	datad => \i2cSlave|addr_reg\(6),
	combout => \i2cSlave|state_reg~20_combout\);

-- Location: LCCOMB_X26_Y71_N6
\i2cSlave|addr_reg[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|addr_reg[1]~11_combout\ = (\i2cSlave|Add1~0_combout\ & ((\i2cSlave|addr_reg[1]~6_combout\ & (!\i2cSlave|sda_reg~q\)) # (!\i2cSlave|addr_reg[1]~6_combout\ & ((\i2cSlave|addr_reg\(1)))))) # (!\i2cSlave|Add1~0_combout\ & 
-- (((\i2cSlave|addr_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|Add1~0_combout\,
	datab => \i2cSlave|sda_reg~q\,
	datac => \i2cSlave|addr_reg\(1),
	datad => \i2cSlave|addr_reg[1]~6_combout\,
	combout => \i2cSlave|addr_reg[1]~11_combout\);

-- Location: FF_X26_Y71_N7
\i2cSlave|addr_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|addr_reg[1]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|addr_reg\(1));

-- Location: LCCOMB_X26_Y71_N16
\i2cSlave|addr_reg[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|addr_reg[2]~14_combout\ = (!\i2cSlave|bits_processed_reg\(1) & (!\i2cSlave|bits_processed_reg\(0) & (\i2cSlave|bits_processed_reg\(2) & \i2cSlave|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|bits_processed_reg\(1),
	datab => \i2cSlave|bits_processed_reg\(0),
	datac => \i2cSlave|bits_processed_reg\(2),
	datad => \i2cSlave|Decoder0~0_combout\,
	combout => \i2cSlave|addr_reg[2]~14_combout\);

-- Location: LCCOMB_X26_Y71_N8
\i2cSlave|addr_reg[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|addr_reg[2]~12_combout\ = (\i2cSlave|addr_reg[2]~14_combout\ & (!\i2cSlave|sda_reg~q\)) # (!\i2cSlave|addr_reg[2]~14_combout\ & ((\i2cSlave|addr_reg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2cSlave|sda_reg~q\,
	datac => \i2cSlave|addr_reg\(2),
	datad => \i2cSlave|addr_reg[2]~14_combout\,
	combout => \i2cSlave|addr_reg[2]~12_combout\);

-- Location: FF_X26_Y71_N9
\i2cSlave|addr_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|addr_reg[2]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|addr_reg\(2));

-- Location: LCCOMB_X26_Y71_N10
\i2cSlave|addr_reg[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|addr_reg[3]~15_combout\ = (\i2cSlave|bits_processed_reg\(1) & (\i2cSlave|bits_processed_reg\(0) & (!\i2cSlave|bits_processed_reg\(2) & \i2cSlave|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|bits_processed_reg\(1),
	datab => \i2cSlave|bits_processed_reg\(0),
	datac => \i2cSlave|bits_processed_reg\(2),
	datad => \i2cSlave|Decoder0~0_combout\,
	combout => \i2cSlave|addr_reg[3]~15_combout\);

-- Location: LCCOMB_X26_Y71_N30
\i2cSlave|addr_reg[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|addr_reg[3]~13_combout\ = (\i2cSlave|addr_reg[3]~15_combout\ & (!\i2cSlave|sda_reg~q\)) # (!\i2cSlave|addr_reg[3]~15_combout\ & ((\i2cSlave|addr_reg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2cSlave|sda_reg~q\,
	datac => \i2cSlave|addr_reg\(3),
	datad => \i2cSlave|addr_reg[3]~15_combout\,
	combout => \i2cSlave|addr_reg[3]~13_combout\);

-- Location: FF_X26_Y71_N31
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

-- Location: LCCOMB_X26_Y71_N20
\i2cSlave|addr_reg[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|addr_reg[0]~10_combout\ = (\i2cSlave|Add1~0_combout\ & ((\i2cSlave|addr_reg[0]~4_combout\ & (!\i2cSlave|sda_reg~q\)) # (!\i2cSlave|addr_reg[0]~4_combout\ & ((\i2cSlave|addr_reg\(0)))))) # (!\i2cSlave|Add1~0_combout\ & 
-- (((\i2cSlave|addr_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|Add1~0_combout\,
	datab => \i2cSlave|sda_reg~q\,
	datac => \i2cSlave|addr_reg\(0),
	datad => \i2cSlave|addr_reg[0]~4_combout\,
	combout => \i2cSlave|addr_reg[0]~10_combout\);

-- Location: FF_X26_Y71_N21
\i2cSlave|addr_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|addr_reg[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|addr_reg\(0));

-- Location: LCCOMB_X26_Y71_N0
\i2cSlave|state_reg~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~21_combout\ = (\i2cSlave|addr_reg\(1) & (!\i2cSlave|addr_reg\(2) & (!\i2cSlave|addr_reg\(3) & \i2cSlave|addr_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|addr_reg\(1),
	datab => \i2cSlave|addr_reg\(2),
	datac => \i2cSlave|addr_reg\(3),
	datad => \i2cSlave|addr_reg\(0),
	combout => \i2cSlave|state_reg~21_combout\);

-- Location: LCCOMB_X29_Y71_N0
\i2cSlave|state_reg~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~34_combout\ = (\i2cSlave|state_reg~20_combout\ & (\i2cSlave|state_reg~21_combout\ & \i2cSlave|state_reg~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2cSlave|state_reg~20_combout\,
	datac => \i2cSlave|state_reg~21_combout\,
	datad => \i2cSlave|state_reg~27_combout\,
	combout => \i2cSlave|state_reg~34_combout\);

-- Location: LCCOMB_X29_Y71_N20
\i2cSlave|state_reg~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~51_combout\ = ((\i2cSlave|state_reg~27_combout\ & (\i2cSlave|state_reg~35_combout\ & !\i2cSlave|state_reg~34_combout\))) # (!\i2cSlave|state_reg~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|state_reg~27_combout\,
	datab => \i2cSlave|state_reg~48_combout\,
	datac => \i2cSlave|state_reg~35_combout\,
	datad => \i2cSlave|state_reg~34_combout\,
	combout => \i2cSlave|state_reg~51_combout\);

-- Location: LCCOMB_X29_Y71_N8
\i2cSlave|state_reg~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~42_combout\ = (!\i2cSlave|bits_processed_reg\(3) & (\i2cSlave|Equal2~0_combout\ & (\i2cSlave|state_reg.I2C_READ~q\ & \i2cSlave|scl_falling_reg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|bits_processed_reg\(3),
	datab => \i2cSlave|Equal2~0_combout\,
	datac => \i2cSlave|state_reg.I2C_READ~q\,
	datad => \i2cSlave|scl_falling_reg~q\,
	combout => \i2cSlave|state_reg~42_combout\);

-- Location: LCCOMB_X30_Y71_N18
\i2cSlave|state_reg~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~47_combout\ = (\i2cSlave|state_reg~46_combout\ & (\i2cSlave|state_reg~42_combout\ & (\i2cSlave|state_reg~24_combout\))) # (!\i2cSlave|state_reg~46_combout\ & (((\i2cSlave|state_reg.I2C_READ_ACK_START~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|state_reg~42_combout\,
	datab => \i2cSlave|state_reg~24_combout\,
	datac => \i2cSlave|state_reg.I2C_READ_ACK_START~q\,
	datad => \i2cSlave|state_reg~46_combout\,
	combout => \i2cSlave|state_reg~47_combout\);

-- Location: FF_X30_Y71_N19
\i2cSlave|state_reg.I2C_READ_ACK_START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|state_reg~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|state_reg.I2C_READ_ACK_START~q\);

-- Location: LCCOMB_X27_Y71_N0
\i2cSlave|continue_reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|continue_reg~0_combout\ = (\i2cSlave|scl_rising_reg~q\ & \i2cSlave|state_reg.I2C_READ_ACK_START~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|scl_rising_reg~q\,
	datad => \i2cSlave|state_reg.I2C_READ_ACK_START~q\,
	combout => \i2cSlave|continue_reg~0_combout\);

-- Location: LCCOMB_X30_Y71_N16
\i2cSlave|state_reg~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~53_combout\ = (\i2cSlave|continue_reg~0_combout\ & ((\i2cSlave|state_reg~24_combout\) # ((\i2cSlave|state_reg.I2C_READ_ACK_GOT_RISING~q\ & !\i2cSlave|state_reg~46_combout\)))) # (!\i2cSlave|continue_reg~0_combout\ & 
-- (((\i2cSlave|state_reg.I2C_READ_ACK_GOT_RISING~q\ & !\i2cSlave|state_reg~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|continue_reg~0_combout\,
	datab => \i2cSlave|state_reg~24_combout\,
	datac => \i2cSlave|state_reg.I2C_READ_ACK_GOT_RISING~q\,
	datad => \i2cSlave|state_reg~46_combout\,
	combout => \i2cSlave|state_reg~53_combout\);

-- Location: FF_X30_Y71_N17
\i2cSlave|state_reg.I2C_READ_ACK_GOT_RISING\ : dffeas
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
	q => \i2cSlave|state_reg.I2C_READ_ACK_GOT_RISING~q\);

-- Location: LCCOMB_X27_Y71_N4
\i2cSlave|continue_reg~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|continue_reg~1_combout\ = (\i2cSlave|scl_rising_reg~q\ & ((\i2cSlave|state_reg.I2C_READ_ACK_START~q\ & (\i2cSlave|sda_reg~q\)) # (!\i2cSlave|state_reg.I2C_READ_ACK_START~q\ & ((\i2cSlave|continue_reg~q\))))) # (!\i2cSlave|scl_rising_reg~q\ & 
-- (((\i2cSlave|continue_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|scl_rising_reg~q\,
	datab => \i2cSlave|sda_reg~q\,
	datac => \i2cSlave|continue_reg~q\,
	datad => \i2cSlave|state_reg.I2C_READ_ACK_START~q\,
	combout => \i2cSlave|continue_reg~1_combout\);

-- Location: FF_X27_Y71_N5
\i2cSlave|continue_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|continue_reg~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|continue_reg~q\);

-- Location: LCCOMB_X29_Y71_N16
\i2cSlave|state_reg~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~36_combout\ = (\i2cSlave|state_reg~35_combout\ & ((\i2cSlave|state_reg~34_combout\))) # (!\i2cSlave|state_reg~35_combout\ & (\i2cSlave|state_reg~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|state_reg~24_combout\,
	datac => \i2cSlave|state_reg~35_combout\,
	datad => \i2cSlave|state_reg~34_combout\,
	combout => \i2cSlave|state_reg~36_combout\);

-- Location: LCCOMB_X29_Y71_N4
\i2cSlave|state_reg~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~41_combout\ = (\i2cSlave|state_reg~36_combout\) # ((!\i2cSlave|state_reg~27_combout\ & (\i2cSlave|state_reg.I2C_ANSWER_ACK_START~q\ & \i2cSlave|state_reg~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|state_reg~27_combout\,
	datab => \i2cSlave|state_reg~36_combout\,
	datac => \i2cSlave|state_reg.I2C_ANSWER_ACK_START~q\,
	datad => \i2cSlave|state_reg~40_combout\,
	combout => \i2cSlave|state_reg~41_combout\);

-- Location: FF_X29_Y71_N5
\i2cSlave|state_reg.I2C_ANSWER_ACK_START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|state_reg~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|state_reg.I2C_ANSWER_ACK_START~q\);

-- Location: LCCOMB_X27_Y71_N18
\i2cSlave|state_reg~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~23_combout\ = (\i2cSlave|scl_falling_reg~q\ & ((\i2cSlave|state_reg.I2C_ANSWER_ACK_START~q\) # ((\i2cSlave|state_reg.I2C_READ_ACK_GOT_RISING~q\ & \i2cSlave|continue_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|state_reg.I2C_READ_ACK_GOT_RISING~q\,
	datab => \i2cSlave|continue_reg~q\,
	datac => \i2cSlave|scl_falling_reg~q\,
	datad => \i2cSlave|state_reg.I2C_ANSWER_ACK_START~q\,
	combout => \i2cSlave|state_reg~23_combout\);

-- Location: LCCOMB_X27_Y71_N30
\i2cSlave|state_reg~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~54_combout\ = (\i2cSlave|state_reg.I2C_READ_ACK_GOT_RISING~q\ & (!\i2cSlave|continue_reg~q\ & \i2cSlave|scl_falling_reg~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|state_reg.I2C_READ_ACK_GOT_RISING~q\,
	datab => \i2cSlave|continue_reg~q\,
	datac => \i2cSlave|scl_falling_reg~q\,
	combout => \i2cSlave|state_reg~54_combout\);

-- Location: LCCOMB_X27_Y71_N14
\i2cSlave|state_reg~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~55_combout\ = (\i2cSlave|state_reg~24_combout\ & ((\i2cSlave|state_reg~54_combout\) # (\i2cSlave|state_reg.I2C_READ_STOP~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|state_reg~54_combout\,
	datac => \i2cSlave|state_reg.I2C_READ_STOP~q\,
	datad => \i2cSlave|state_reg~24_combout\,
	combout => \i2cSlave|state_reg~55_combout\);

-- Location: FF_X27_Y71_N15
\i2cSlave|state_reg.I2C_READ_STOP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|state_reg~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|state_reg.I2C_READ_STOP~q\);

-- Location: LCCOMB_X30_Y71_N6
\i2cSlave|state_reg~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~31_combout\ = (!\i2cSlave|state_reg.I2C_READ_STOP~q\ & (!\i2cSlave|state_reg.I2C_READ_ACK_GOT_RISING~q\ & (!\i2cSlave|state_reg.I2C_ANSWER_ACK_START~q\ & \i2cSlave|state_reg.I2C_IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|state_reg.I2C_READ_STOP~q\,
	datab => \i2cSlave|state_reg.I2C_READ_ACK_GOT_RISING~q\,
	datac => \i2cSlave|state_reg.I2C_ANSWER_ACK_START~q\,
	datad => \i2cSlave|state_reg.I2C_IDLE~q\,
	combout => \i2cSlave|state_reg~31_combout\);

-- Location: LCCOMB_X30_Y71_N4
\i2cSlave|state_reg~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~30_combout\ = ((\i2cSlave|scl_falling_reg~q\ & ((\i2cSlave|bits_processed_reg\(3)) # (\i2cSlave|Equal2~0_combout\)))) # (!\i2cSlave|state_reg.I2C_READ~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|bits_processed_reg\(3),
	datab => \i2cSlave|state_reg.I2C_READ~q\,
	datac => \i2cSlave|scl_falling_reg~q\,
	datad => \i2cSlave|Equal2~0_combout\,
	combout => \i2cSlave|state_reg~30_combout\);

-- Location: LCCOMB_X27_Y71_N2
\i2cSlave|state_reg~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~25_combout\ = ((\i2cSlave|state_reg.I2C_READ_ACK_GOT_RISING~q\ & (!\i2cSlave|continue_reg~q\ & \i2cSlave|scl_falling_reg~q\))) # (!\i2cSlave|state_reg~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|state_reg.I2C_READ_ACK_GOT_RISING~q\,
	datab => \i2cSlave|continue_reg~q\,
	datac => \i2cSlave|scl_falling_reg~q\,
	datad => \i2cSlave|state_reg~24_combout\,
	combout => \i2cSlave|state_reg~25_combout\);

-- Location: LCCOMB_X30_Y71_N14
\i2cSlave|state_reg~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~26_combout\ = (!\i2cSlave|bits_processed_reg\(3) & (\i2cSlave|state_reg.I2C_READ~q\ & \i2cSlave|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|bits_processed_reg\(3),
	datab => \i2cSlave|state_reg.I2C_READ~q\,
	datad => \i2cSlave|Equal2~0_combout\,
	combout => \i2cSlave|state_reg~26_combout\);

-- Location: LCCOMB_X30_Y71_N2
\i2cSlave|state_reg~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~29_combout\ = (\i2cSlave|state_reg~28_combout\) # ((\i2cSlave|state_reg~27_combout\) # ((\i2cSlave|state_reg~26_combout\) # (\i2cSlave|continue_reg~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|state_reg~28_combout\,
	datab => \i2cSlave|state_reg~27_combout\,
	datac => \i2cSlave|state_reg~26_combout\,
	datad => \i2cSlave|continue_reg~0_combout\,
	combout => \i2cSlave|state_reg~29_combout\);

-- Location: LCCOMB_X30_Y71_N24
\i2cSlave|state_reg~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~32_combout\ = (\i2cSlave|state_reg~25_combout\) # ((\i2cSlave|state_reg~31_combout\ & (\i2cSlave|state_reg~30_combout\ & \i2cSlave|state_reg~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|state_reg~31_combout\,
	datab => \i2cSlave|state_reg~30_combout\,
	datac => \i2cSlave|state_reg~25_combout\,
	datad => \i2cSlave|state_reg~29_combout\,
	combout => \i2cSlave|state_reg~32_combout\);

-- Location: LCCOMB_X30_Y71_N0
\i2cSlave|state_reg~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~33_combout\ = (!\i2cSlave|state_reg~32_combout\ & ((\i2cSlave|state_reg~23_combout\ & (\i2cSlave|cmd_reg~q\)) # (!\i2cSlave|state_reg~23_combout\ & ((\i2cSlave|state_reg.I2C_READ~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|cmd_reg~q\,
	datab => \i2cSlave|state_reg~23_combout\,
	datac => \i2cSlave|state_reg.I2C_READ~q\,
	datad => \i2cSlave|state_reg~32_combout\,
	combout => \i2cSlave|state_reg~33_combout\);

-- Location: FF_X30_Y71_N1
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

-- Location: LCCOMB_X28_Y71_N6
\i2cSlave|state_reg~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~37_combout\ = (\i2cSlave|state_reg.I2C_IDLE~q\ & ((\i2cSlave|state_reg.I2C_READ_ACK_START~q\ & (\i2cSlave|scl_rising_reg~q\)) # (!\i2cSlave|state_reg.I2C_READ_ACK_START~q\ & ((\i2cSlave|scl_falling_reg~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|scl_rising_reg~q\,
	datab => \i2cSlave|scl_falling_reg~q\,
	datac => \i2cSlave|state_reg.I2C_IDLE~q\,
	datad => \i2cSlave|state_reg.I2C_READ_ACK_START~q\,
	combout => \i2cSlave|state_reg~37_combout\);

-- Location: LCCOMB_X28_Y71_N20
\i2cSlave|state_reg~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~38_combout\ = (!\i2cSlave|state_reg.I2C_READ~q\ & \i2cSlave|state_reg~37_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2cSlave|state_reg.I2C_READ~q\,
	datad => \i2cSlave|state_reg~37_combout\,
	combout => \i2cSlave|state_reg~38_combout\);

-- Location: LCCOMB_X30_Y71_N30
\i2cSlave|state_reg~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~39_combout\ = (\i2cSlave|state_reg.I2C_IDLE~q\ & (\i2cSlave|state_reg~26_combout\)) # (!\i2cSlave|state_reg.I2C_IDLE~q\ & ((\i2cSlave|start_reg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2cSlave|state_reg.I2C_IDLE~q\,
	datac => \i2cSlave|state_reg~26_combout\,
	datad => \i2cSlave|start_reg~q\,
	combout => \i2cSlave|state_reg~39_combout\);

-- Location: LCCOMB_X29_Y71_N18
\i2cSlave|state_reg~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~56_combout\ = (!\i2cSlave|state_reg.I2C_GET_ADDRESS_AND_CMD~q\ & (!\i2cSlave|state_reg.I2C_WRITE~q\ & (!\i2cSlave|state_reg.I2C_READ_STOP~q\ & \i2cSlave|state_reg~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|state_reg.I2C_GET_ADDRESS_AND_CMD~q\,
	datab => \i2cSlave|state_reg.I2C_WRITE~q\,
	datac => \i2cSlave|state_reg.I2C_READ_STOP~q\,
	datad => \i2cSlave|state_reg~30_combout\,
	combout => \i2cSlave|state_reg~56_combout\);

-- Location: LCCOMB_X29_Y71_N10
\i2cSlave|state_reg~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~40_combout\ = (\i2cSlave|state_reg~35_combout\ & (((!\i2cSlave|state_reg~38_combout\ & !\i2cSlave|state_reg~39_combout\)) # (!\i2cSlave|state_reg~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|state_reg~35_combout\,
	datab => \i2cSlave|state_reg~38_combout\,
	datac => \i2cSlave|state_reg~39_combout\,
	datad => \i2cSlave|state_reg~56_combout\,
	combout => \i2cSlave|state_reg~40_combout\);

-- Location: LCCOMB_X29_Y71_N30
\i2cSlave|state_reg~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~52_combout\ = (!\i2cSlave|state_reg~51_combout\ & ((\i2cSlave|state_reg~34_combout\) # ((\i2cSlave|state_reg.I2C_IDLE~q\) # (!\i2cSlave|state_reg~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|state_reg~51_combout\,
	datab => \i2cSlave|state_reg~34_combout\,
	datac => \i2cSlave|state_reg.I2C_IDLE~q\,
	datad => \i2cSlave|state_reg~40_combout\,
	combout => \i2cSlave|state_reg~52_combout\);

-- Location: FF_X29_Y71_N31
\i2cSlave|state_reg.I2C_IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|state_reg~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|state_reg.I2C_IDLE~q\);

-- Location: LCCOMB_X28_Y71_N30
\i2cSlave|bits_processed_reg[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|bits_processed_reg[2]~1_combout\ = (\i2cSlave|state_reg.I2C_READ~q\ & ((\i2cSlave|scl_falling_reg~q\) # ((!\i2cSlave|state_reg.I2C_IDLE~q\ & \i2cSlave|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|state_reg.I2C_IDLE~q\,
	datab => \i2cSlave|scl_falling_reg~q\,
	datac => \i2cSlave|state_reg.I2C_READ~q\,
	datad => \i2cSlave|Equal2~0_combout\,
	combout => \i2cSlave|bits_processed_reg[2]~1_combout\);

-- Location: LCCOMB_X28_Y71_N24
\i2cSlave|bits_processed_reg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|bits_processed_reg[2]~2_combout\ = (\i2cSlave|scl_rising_reg~q\ & (((\i2cSlave|scl_falling_reg~q\ & \i2cSlave|process_1~0_combout\)) # (!\i2cSlave|bits_processed_reg\(3)))) # (!\i2cSlave|scl_rising_reg~q\ & (\i2cSlave|scl_falling_reg~q\ & 
-- ((\i2cSlave|process_1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|scl_rising_reg~q\,
	datab => \i2cSlave|scl_falling_reg~q\,
	datac => \i2cSlave|bits_processed_reg\(3),
	datad => \i2cSlave|process_1~0_combout\,
	combout => \i2cSlave|bits_processed_reg[2]~2_combout\);

-- Location: LCCOMB_X28_Y71_N18
\i2cSlave|bits_processed_reg[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|bits_processed_reg[2]~3_combout\ = (\i2cSlave|state_reg.I2C_WRITE~q\ & (!\i2cSlave|bits_processed_reg[2]~2_combout\ & ((\i2cSlave|bits_processed_reg\(3)) # (!\i2cSlave|bits_processed_reg[2]~1_combout\)))) # (!\i2cSlave|state_reg.I2C_WRITE~q\ & 
-- ((\i2cSlave|bits_processed_reg\(3)) # ((!\i2cSlave|bits_processed_reg[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|state_reg.I2C_WRITE~q\,
	datab => \i2cSlave|bits_processed_reg\(3),
	datac => \i2cSlave|bits_processed_reg[2]~1_combout\,
	datad => \i2cSlave|bits_processed_reg[2]~2_combout\,
	combout => \i2cSlave|bits_processed_reg[2]~3_combout\);

-- Location: LCCOMB_X28_Y71_N12
\i2cSlave|bits_processed_reg[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|bits_processed_reg[2]~5_combout\ = (\i2cSlave|bits_processed_reg~0_combout\ & (\i2cSlave|bits_processed_reg[2]~3_combout\ & ((\i2cSlave|bits_processed_reg[2]~4_combout\) # (!\i2cSlave|state_reg.I2C_GET_ADDRESS_AND_CMD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|state_reg.I2C_GET_ADDRESS_AND_CMD~q\,
	datab => \i2cSlave|bits_processed_reg~0_combout\,
	datac => \i2cSlave|bits_processed_reg[2]~4_combout\,
	datad => \i2cSlave|bits_processed_reg[2]~3_combout\,
	combout => \i2cSlave|bits_processed_reg[2]~5_combout\);

-- Location: LCCOMB_X28_Y71_N14
\i2cSlave|bits_processed_reg[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|bits_processed_reg[0]~10_combout\ = (\i2cSlave|bits_processed_reg\(0) & ((\i2cSlave|bits_processed_reg[2]~5_combout\))) # (!\i2cSlave|bits_processed_reg\(0) & (\i2cSlave|bits_processed_reg[0]~8_combout\ & 
-- !\i2cSlave|bits_processed_reg[2]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2cSlave|bits_processed_reg[0]~8_combout\,
	datac => \i2cSlave|bits_processed_reg\(0),
	datad => \i2cSlave|bits_processed_reg[2]~5_combout\,
	combout => \i2cSlave|bits_processed_reg[0]~10_combout\);

-- Location: FF_X28_Y71_N15
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

-- Location: LCCOMB_X29_Y71_N12
\i2cSlave|bits_processed_reg[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|bits_processed_reg[1]~9_combout\ = (\i2cSlave|bits_processed_reg[2]~5_combout\ & (((\i2cSlave|bits_processed_reg\(1))))) # (!\i2cSlave|bits_processed_reg[2]~5_combout\ & (\i2cSlave|bits_processed_reg[0]~8_combout\ & 
-- (\i2cSlave|bits_processed_reg\(0) $ (\i2cSlave|bits_processed_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|bits_processed_reg[0]~8_combout\,
	datab => \i2cSlave|bits_processed_reg\(0),
	datac => \i2cSlave|bits_processed_reg\(1),
	datad => \i2cSlave|bits_processed_reg[2]~5_combout\,
	combout => \i2cSlave|bits_processed_reg[1]~9_combout\);

-- Location: FF_X29_Y71_N13
\i2cSlave|bits_processed_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|bits_processed_reg[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|bits_processed_reg\(1));

-- Location: LCCOMB_X29_Y71_N24
\i2cSlave|process_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|process_1~0_combout\ = (!\i2cSlave|bits_processed_reg\(1) & (!\i2cSlave|bits_processed_reg\(2) & (\i2cSlave|bits_processed_reg\(3) & !\i2cSlave|bits_processed_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|bits_processed_reg\(1),
	datab => \i2cSlave|bits_processed_reg\(2),
	datac => \i2cSlave|bits_processed_reg\(3),
	datad => \i2cSlave|bits_processed_reg\(0),
	combout => \i2cSlave|process_1~0_combout\);

-- Location: LCCOMB_X30_Y71_N12
\i2cSlave|state_reg~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~28_combout\ = (\i2cSlave|state_reg.I2C_WRITE~q\ & (\i2cSlave|scl_falling_reg~q\ & \i2cSlave|process_1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|state_reg.I2C_WRITE~q\,
	datac => \i2cSlave|scl_falling_reg~q\,
	datad => \i2cSlave|process_1~0_combout\,
	combout => \i2cSlave|state_reg~28_combout\);

-- Location: LCCOMB_X30_Y71_N8
\i2cSlave|state_reg~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~43_combout\ = (!\i2cSlave|state_reg.I2C_ANSWER_ACK_START~q\ & !\i2cSlave|state_reg.I2C_READ_ACK_GOT_RISING~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2cSlave|state_reg.I2C_ANSWER_ACK_START~q\,
	datad => \i2cSlave|state_reg.I2C_READ_ACK_GOT_RISING~q\,
	combout => \i2cSlave|state_reg~43_combout\);

-- Location: LCCOMB_X30_Y71_N22
\i2cSlave|state_reg~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~44_combout\ = ((!\i2cSlave|bits_processed_reg\(3) & (\i2cSlave|state_reg.I2C_READ~q\ & \i2cSlave|Equal2~0_combout\))) # (!\i2cSlave|state_reg~43_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|bits_processed_reg\(3),
	datab => \i2cSlave|state_reg.I2C_READ~q\,
	datac => \i2cSlave|state_reg~43_combout\,
	datad => \i2cSlave|Equal2~0_combout\,
	combout => \i2cSlave|state_reg~44_combout\);

-- Location: LCCOMB_X30_Y71_N28
\i2cSlave|state_reg~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~45_combout\ = (\i2cSlave|scl_falling_reg~q\ & ((\i2cSlave|state_reg~44_combout\) # ((\i2cSlave|state_reg.I2C_GET_ADDRESS_AND_CMD~q\ & \i2cSlave|process_1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|scl_falling_reg~q\,
	datab => \i2cSlave|state_reg.I2C_GET_ADDRESS_AND_CMD~q\,
	datac => \i2cSlave|state_reg~44_combout\,
	datad => \i2cSlave|process_1~0_combout\,
	combout => \i2cSlave|state_reg~45_combout\);

-- Location: LCCOMB_X30_Y71_N10
\i2cSlave|state_reg~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~46_combout\ = (\i2cSlave|state_reg~28_combout\) # (((\i2cSlave|continue_reg~0_combout\) # (\i2cSlave|state_reg~45_combout\)) # (!\i2cSlave|state_reg~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|state_reg~28_combout\,
	datab => \i2cSlave|state_reg~24_combout\,
	datac => \i2cSlave|continue_reg~0_combout\,
	datad => \i2cSlave|state_reg~45_combout\,
	combout => \i2cSlave|state_reg~46_combout\);

-- Location: LCCOMB_X30_Y71_N20
\i2cSlave|state_reg~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~49_combout\ = (\i2cSlave|state_reg~48_combout\ & ((\i2cSlave|start_reg~q\) # ((\i2cSlave|state_reg.I2C_GET_ADDRESS_AND_CMD~q\ & !\i2cSlave|state_reg~46_combout\)))) # (!\i2cSlave|state_reg~48_combout\ & 
-- (((\i2cSlave|state_reg.I2C_GET_ADDRESS_AND_CMD~q\ & !\i2cSlave|state_reg~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|state_reg~48_combout\,
	datab => \i2cSlave|start_reg~q\,
	datac => \i2cSlave|state_reg.I2C_GET_ADDRESS_AND_CMD~q\,
	datad => \i2cSlave|state_reg~46_combout\,
	combout => \i2cSlave|state_reg~49_combout\);

-- Location: FF_X30_Y71_N21
\i2cSlave|state_reg.I2C_GET_ADDRESS_AND_CMD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|state_reg~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|state_reg.I2C_GET_ADDRESS_AND_CMD~q\);

-- Location: LCCOMB_X29_Y72_N6
\i2cSlave|cmd_reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|cmd_reg~0_combout\ = (\i2cSlave|scl_rising_reg~q\ & (\i2cSlave|state_reg.I2C_GET_ADDRESS_AND_CMD~q\ & (\i2cSlave|Equal2~0_combout\ & !\i2cSlave|bits_processed_reg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|scl_rising_reg~q\,
	datab => \i2cSlave|state_reg.I2C_GET_ADDRESS_AND_CMD~q\,
	datac => \i2cSlave|Equal2~0_combout\,
	datad => \i2cSlave|bits_processed_reg\(3),
	combout => \i2cSlave|cmd_reg~0_combout\);

-- Location: LCCOMB_X29_Y72_N20
\i2cSlave|cmd_reg~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|cmd_reg~1_combout\ = (\i2cSlave|cmd_reg~0_combout\ & (!\i2cSlave|sda_reg~q\)) # (!\i2cSlave|cmd_reg~0_combout\ & ((\i2cSlave|cmd_reg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|sda_reg~q\,
	datac => \i2cSlave|cmd_reg~q\,
	datad => \i2cSlave|cmd_reg~0_combout\,
	combout => \i2cSlave|cmd_reg~1_combout\);

-- Location: FF_X29_Y72_N21
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

-- Location: LCCOMB_X30_Y71_N26
\i2cSlave|state_reg~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~50_combout\ = (!\i2cSlave|state_reg~32_combout\ & ((\i2cSlave|state_reg~23_combout\ & (!\i2cSlave|cmd_reg~q\)) # (!\i2cSlave|state_reg~23_combout\ & ((\i2cSlave|state_reg.I2C_WRITE~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|cmd_reg~q\,
	datab => \i2cSlave|state_reg~23_combout\,
	datac => \i2cSlave|state_reg.I2C_WRITE~q\,
	datad => \i2cSlave|state_reg~32_combout\,
	combout => \i2cSlave|state_reg~50_combout\);

-- Location: FF_X30_Y71_N27
\i2cSlave|state_reg.I2C_WRITE\ : dffeas
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
	q => \i2cSlave|state_reg.I2C_WRITE~q\);

-- Location: LCCOMB_X28_Y71_N4
\i2cSlave|state_reg~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|state_reg~22_combout\ = (!\i2cSlave|state_reg.I2C_WRITE~q\ & !\i2cSlave|state_reg.I2C_GET_ADDRESS_AND_CMD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2cSlave|state_reg.I2C_WRITE~q\,
	datad => \i2cSlave|state_reg.I2C_GET_ADDRESS_AND_CMD~q\,
	combout => \i2cSlave|state_reg~22_combout\);

-- Location: LCCOMB_X28_Y71_N8
\i2cSlave|Selector8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|Selector8~4_combout\ = (\i2cSlave|bits_processed_reg\(3) & (!\i2cSlave|state_reg~22_combout\ & ((!\i2cSlave|process_1~0_combout\) # (!\i2cSlave|scl_falling_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|bits_processed_reg\(3),
	datab => \i2cSlave|scl_falling_reg~q\,
	datac => \i2cSlave|state_reg~22_combout\,
	datad => \i2cSlave|process_1~0_combout\,
	combout => \i2cSlave|Selector8~4_combout\);

-- Location: LCCOMB_X29_Y71_N22
\i2cSlave|Selector8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|Selector8~2_combout\ = (\i2cSlave|bits_processed_reg\(3) & ((\i2cSlave|state_reg.I2C_READ_ACK_START~q\) # ((\i2cSlave|state_reg.I2C_READ~q\) # (!\i2cSlave|state_reg~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|state_reg.I2C_READ_ACK_START~q\,
	datab => \i2cSlave|bits_processed_reg\(3),
	datac => \i2cSlave|state_reg.I2C_READ~q\,
	datad => \i2cSlave|state_reg~31_combout\,
	combout => \i2cSlave|Selector8~2_combout\);

-- Location: LCCOMB_X27_Y71_N8
\i2cSlave|Selector8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|Selector8~3_combout\ = (\i2cSlave|scl_rising_reg~q\ & ((\i2cSlave|state_reg.I2C_WRITE~q\) # ((!\i2cSlave|bits_processed_reg\(3) & \i2cSlave|state_reg.I2C_GET_ADDRESS_AND_CMD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|bits_processed_reg\(3),
	datab => \i2cSlave|scl_rising_reg~q\,
	datac => \i2cSlave|state_reg.I2C_GET_ADDRESS_AND_CMD~q\,
	datad => \i2cSlave|state_reg.I2C_WRITE~q\,
	combout => \i2cSlave|Selector8~3_combout\);

-- Location: LCCOMB_X28_Y71_N2
\i2cSlave|Selector8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|Selector8~5_combout\ = (\i2cSlave|bits_processed_reg\(1) & (\i2cSlave|bits_processed_reg\(0) & (\i2cSlave|bits_processed_reg\(2) & \i2cSlave|Selector8~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|bits_processed_reg\(1),
	datab => \i2cSlave|bits_processed_reg\(0),
	datac => \i2cSlave|bits_processed_reg\(2),
	datad => \i2cSlave|Selector8~3_combout\,
	combout => \i2cSlave|Selector8~5_combout\);

-- Location: LCCOMB_X29_Y71_N14
\i2cSlave|bits_processed_reg~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|bits_processed_reg~12_combout\ = (\i2cSlave|bits_processed_reg~0_combout\ & ((\i2cSlave|Selector8~4_combout\) # ((\i2cSlave|Selector8~2_combout\) # (\i2cSlave|Selector8~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|Selector8~4_combout\,
	datab => \i2cSlave|bits_processed_reg~0_combout\,
	datac => \i2cSlave|Selector8~2_combout\,
	datad => \i2cSlave|Selector8~5_combout\,
	combout => \i2cSlave|bits_processed_reg~12_combout\);

-- Location: FF_X29_Y71_N15
\i2cSlave|bits_processed_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|bits_processed_reg~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|bits_processed_reg\(3));

-- Location: LCCOMB_X28_Y71_N10
\i2cSlave|bits_processed_reg[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|bits_processed_reg[0]~6_combout\ = (!\i2cSlave|start_reg~q\ & (\i2cSlave|state_reg.I2C_IDLE~q\ & !\i2cSlave|stop_reg~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|start_reg~q\,
	datac => \i2cSlave|state_reg.I2C_IDLE~q\,
	datad => \i2cSlave|stop_reg~q\,
	combout => \i2cSlave|bits_processed_reg[0]~6_combout\);

-- Location: LCCOMB_X28_Y71_N22
\i2cSlave|bits_processed_reg[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|bits_processed_reg[0]~7_combout\ = (\i2cSlave|bits_processed_reg[0]~6_combout\ & (((\i2cSlave|state_reg~22_combout\) # (!\i2cSlave|process_1~0_combout\)) # (!\i2cSlave|scl_falling_reg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|bits_processed_reg[0]~6_combout\,
	datab => \i2cSlave|scl_falling_reg~q\,
	datac => \i2cSlave|state_reg~22_combout\,
	datad => \i2cSlave|process_1~0_combout\,
	combout => \i2cSlave|bits_processed_reg[0]~7_combout\);

-- Location: LCCOMB_X28_Y71_N0
\i2cSlave|bits_processed_reg[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|bits_processed_reg[0]~8_combout\ = (\i2cSlave|bits_processed_reg[0]~7_combout\ & (((!\i2cSlave|bits_processed_reg\(3) & !\i2cSlave|Equal2~0_combout\)) # (!\i2cSlave|state_reg.I2C_READ~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|bits_processed_reg\(3),
	datab => \i2cSlave|state_reg.I2C_READ~q\,
	datac => \i2cSlave|bits_processed_reg[0]~7_combout\,
	datad => \i2cSlave|Equal2~0_combout\,
	combout => \i2cSlave|bits_processed_reg[0]~8_combout\);

-- Location: LCCOMB_X29_Y71_N2
\i2cSlave|bits_processed_reg[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|bits_processed_reg[2]~11_combout\ = (\i2cSlave|bits_processed_reg[2]~5_combout\ & (((\i2cSlave|bits_processed_reg\(2))))) # (!\i2cSlave|bits_processed_reg[2]~5_combout\ & (\i2cSlave|bits_processed_reg[0]~8_combout\ & 
-- (\i2cSlave|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|bits_processed_reg[0]~8_combout\,
	datab => \i2cSlave|Add1~0_combout\,
	datac => \i2cSlave|bits_processed_reg\(2),
	datad => \i2cSlave|bits_processed_reg[2]~5_combout\,
	combout => \i2cSlave|bits_processed_reg[2]~11_combout\);

-- Location: FF_X29_Y71_N3
\i2cSlave|bits_processed_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|bits_processed_reg[2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|bits_processed_reg\(2));

-- Location: LCCOMB_X28_Y72_N18
\i2cSlave|Decoder1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|Decoder1~0_combout\ = (\i2cSlave|scl_rising_reg~q\ & (!\i2cSlave|bits_processed_reg\(3) & \i2cSlave|state_reg.I2C_WRITE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2cSlave|scl_rising_reg~q\,
	datac => \i2cSlave|bits_processed_reg\(3),
	datad => \i2cSlave|state_reg.I2C_WRITE~q\,
	combout => \i2cSlave|Decoder1~0_combout\);

-- Location: LCCOMB_X28_Y72_N28
\i2cSlave|Decoder1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|Decoder1~1_combout\ = (\i2cSlave|bits_processed_reg\(0) & (\i2cSlave|bits_processed_reg\(1) & (\i2cSlave|bits_processed_reg\(2) & \i2cSlave|Decoder1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|bits_processed_reg\(0),
	datab => \i2cSlave|bits_processed_reg\(1),
	datac => \i2cSlave|bits_processed_reg\(2),
	datad => \i2cSlave|Decoder1~0_combout\,
	combout => \i2cSlave|Decoder1~1_combout\);

-- Location: LCCOMB_X28_Y72_N14
\i2cSlave|data_reg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|data_reg[0]~0_combout\ = (\i2cSlave|Decoder1~1_combout\ & (!\i2cSlave|sda_reg~q\)) # (!\i2cSlave|Decoder1~1_combout\ & ((\i2cSlave|data_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|sda_reg~q\,
	datac => \i2cSlave|data_reg\(0),
	datad => \i2cSlave|Decoder1~1_combout\,
	combout => \i2cSlave|data_reg[0]~0_combout\);

-- Location: FF_X28_Y72_N15
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

-- Location: LCCOMB_X27_Y72_N4
\data_to_master[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_to_master[0]~feeder_combout\ = \i2cSlave|data_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2cSlave|data_reg\(0),
	combout => \data_to_master[0]~feeder_combout\);

-- Location: LCCOMB_X27_Y72_N8
\i2cSlave|data_valid_reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|data_valid_reg~0_combout\ = (\i2cSlave|Equal2~0_combout\ & (\i2cSlave|scl_rising_reg~q\ & !\i2cSlave|bits_processed_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|Equal2~0_combout\,
	datab => \i2cSlave|scl_rising_reg~q\,
	datad => \i2cSlave|bits_processed_reg\(3),
	combout => \i2cSlave|data_valid_reg~0_combout\);

-- Location: FF_X27_Y72_N9
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

-- Location: FF_X27_Y72_N5
\data_to_master[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_to_master[0]~feeder_combout\,
	ena => \i2cSlave|data_valid_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_to_master(0));

-- Location: LCCOMB_X28_Y72_N30
\i2cSlave|data_to_master_reg[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|data_to_master_reg[0]~4_combout\ = !data_to_master(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => data_to_master(0),
	combout => \i2cSlave|data_to_master_reg[0]~4_combout\);

-- Location: LCCOMB_X28_Y72_N8
\i2cSlave|data_to_master_reg[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|data_to_master_reg[7]~0_combout\ = ((!\i2cSlave|state_reg.I2C_READ_ACK_START~q\) # (!\i2cSlave|scl_rising_reg~q\)) # (!\i2cSlave|sda_reg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|sda_reg~q\,
	datab => \i2cSlave|scl_rising_reg~q\,
	datad => \i2cSlave|state_reg.I2C_READ_ACK_START~q\,
	combout => \i2cSlave|data_to_master_reg[7]~0_combout\);

-- Location: LCCOMB_X28_Y72_N6
\i2cSlave|data_to_master_reg[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|data_to_master_reg[7]~1_combout\ = (((!\i2cSlave|process_1~0_combout\) # (!\i2cSlave|scl_falling_reg~q\)) # (!\i2cSlave|state_reg.I2C_GET_ADDRESS_AND_CMD~q\)) # (!\i2cSlave|cmd_reg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|cmd_reg~q\,
	datab => \i2cSlave|state_reg.I2C_GET_ADDRESS_AND_CMD~q\,
	datac => \i2cSlave|scl_falling_reg~q\,
	datad => \i2cSlave|process_1~0_combout\,
	combout => \i2cSlave|data_to_master_reg[7]~1_combout\);

-- Location: LCCOMB_X28_Y72_N20
\i2cSlave|data_to_master_reg[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|data_to_master_reg[7]~2_combout\ = ((\i2cSlave|state_reg~21_combout\ & (\i2cSlave|state_reg~20_combout\ & !\i2cSlave|data_to_master_reg[7]~1_combout\))) # (!\i2cSlave|data_to_master_reg[7]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|state_reg~21_combout\,
	datab => \i2cSlave|state_reg~20_combout\,
	datac => \i2cSlave|data_to_master_reg[7]~0_combout\,
	datad => \i2cSlave|data_to_master_reg[7]~1_combout\,
	combout => \i2cSlave|data_to_master_reg[7]~2_combout\);

-- Location: FF_X28_Y72_N31
\i2cSlave|data_to_master_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|data_to_master_reg[0]~4_combout\,
	ena => \i2cSlave|data_to_master_reg[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|data_to_master_reg\(0));

-- Location: LCCOMB_X27_Y72_N28
\i2cSlave|Decoder1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|Decoder1~2_combout\ = (\i2cSlave|bits_processed_reg\(1) & (\i2cSlave|bits_processed_reg\(2) & (!\i2cSlave|bits_processed_reg\(0) & \i2cSlave|Decoder1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|bits_processed_reg\(1),
	datab => \i2cSlave|bits_processed_reg\(2),
	datac => \i2cSlave|bits_processed_reg\(0),
	datad => \i2cSlave|Decoder1~0_combout\,
	combout => \i2cSlave|Decoder1~2_combout\);

-- Location: LCCOMB_X27_Y72_N30
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

-- Location: FF_X27_Y72_N31
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

-- Location: LCCOMB_X27_Y72_N14
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\i2cSlave|data_reg\(1) & (\i2cSlave|data_reg\(0) $ (VCC))) # (!\i2cSlave|data_reg\(1) & (\i2cSlave|data_reg\(0) & VCC))
-- \Add0~1\ = CARRY((\i2cSlave|data_reg\(1) & \i2cSlave|data_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|data_reg\(1),
	datab => \i2cSlave|data_reg\(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: FF_X27_Y72_N15
\data_to_master[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~0_combout\,
	ena => \i2cSlave|data_valid_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_to_master(1));

-- Location: FF_X28_Y72_N17
\i2cSlave|data_to_master_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => data_to_master(1),
	sload => VCC,
	ena => \i2cSlave|data_to_master_reg[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|data_to_master_reg\(1));

-- Location: LCCOMB_X27_Y72_N6
\i2cSlave|Decoder1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|Decoder1~3_combout\ = (!\i2cSlave|bits_processed_reg\(1) & (\i2cSlave|bits_processed_reg\(2) & (\i2cSlave|bits_processed_reg\(0) & \i2cSlave|Decoder1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|bits_processed_reg\(1),
	datab => \i2cSlave|bits_processed_reg\(2),
	datac => \i2cSlave|bits_processed_reg\(0),
	datad => \i2cSlave|Decoder1~0_combout\,
	combout => \i2cSlave|Decoder1~3_combout\);

-- Location: LCCOMB_X27_Y72_N12
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

-- Location: FF_X27_Y72_N13
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

-- Location: LCCOMB_X27_Y72_N16
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\i2cSlave|data_reg\(2) & (!\Add0~1\)) # (!\i2cSlave|data_reg\(2) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!\i2cSlave|data_reg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|data_reg\(2),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X27_Y72_N2
\data_to_master[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_to_master[2]~0_combout\ = !\Add0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~2_combout\,
	combout => \data_to_master[2]~0_combout\);

-- Location: FF_X27_Y72_N3
\data_to_master[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_to_master[2]~0_combout\,
	ena => \i2cSlave|data_valid_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_to_master(2));

-- Location: LCCOMB_X28_Y72_N22
\i2cSlave|data_to_master_reg[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|data_to_master_reg[2]~3_combout\ = !data_to_master(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => data_to_master(2),
	combout => \i2cSlave|data_to_master_reg[2]~3_combout\);

-- Location: FF_X28_Y72_N23
\i2cSlave|data_to_master_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|data_to_master_reg[2]~3_combout\,
	ena => \i2cSlave|data_to_master_reg[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|data_to_master_reg\(2));

-- Location: LCCOMB_X28_Y72_N10
\i2cSlave|Decoder1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|Decoder1~4_combout\ = (!\i2cSlave|bits_processed_reg\(0) & (!\i2cSlave|bits_processed_reg\(1) & (\i2cSlave|bits_processed_reg\(2) & \i2cSlave|Decoder1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|bits_processed_reg\(0),
	datab => \i2cSlave|bits_processed_reg\(1),
	datac => \i2cSlave|bits_processed_reg\(2),
	datad => \i2cSlave|Decoder1~0_combout\,
	combout => \i2cSlave|Decoder1~4_combout\);

-- Location: LCCOMB_X28_Y72_N24
\i2cSlave|data_reg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|data_reg[3]~3_combout\ = (\i2cSlave|Decoder1~4_combout\ & (!\i2cSlave|sda_reg~q\)) # (!\i2cSlave|Decoder1~4_combout\ & ((\i2cSlave|data_reg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|sda_reg~q\,
	datac => \i2cSlave|data_reg\(3),
	datad => \i2cSlave|Decoder1~4_combout\,
	combout => \i2cSlave|data_reg[3]~3_combout\);

-- Location: FF_X28_Y72_N25
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

-- Location: LCCOMB_X27_Y72_N18
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (\i2cSlave|data_reg\(3) & (\Add0~3\ $ (GND))) # (!\i2cSlave|data_reg\(3) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((\i2cSlave|data_reg\(3) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i2cSlave|data_reg\(3),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X27_Y72_N19
\data_to_master[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~4_combout\,
	ena => \i2cSlave|data_valid_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_to_master(3));

-- Location: FF_X28_Y72_N1
\i2cSlave|data_to_master_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => data_to_master(3),
	sload => VCC,
	ena => \i2cSlave|data_to_master_reg[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|data_to_master_reg\(3));

-- Location: LCCOMB_X28_Y72_N0
\i2cSlave|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|Mux0~0_combout\ = (\i2cSlave|bits_processed_reg\(1) & (((\i2cSlave|bits_processed_reg\(0))))) # (!\i2cSlave|bits_processed_reg\(1) & ((\i2cSlave|bits_processed_reg\(0) & (\i2cSlave|data_to_master_reg\(2))) # (!\i2cSlave|bits_processed_reg\(0) & 
-- ((\i2cSlave|data_to_master_reg\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|data_to_master_reg\(2),
	datab => \i2cSlave|bits_processed_reg\(1),
	datac => \i2cSlave|data_to_master_reg\(3),
	datad => \i2cSlave|bits_processed_reg\(0),
	combout => \i2cSlave|Mux0~0_combout\);

-- Location: LCCOMB_X28_Y72_N16
\i2cSlave|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|Mux0~1_combout\ = (\i2cSlave|bits_processed_reg\(1) & ((\i2cSlave|Mux0~0_combout\ & (\i2cSlave|data_to_master_reg\(0))) # (!\i2cSlave|Mux0~0_combout\ & ((\i2cSlave|data_to_master_reg\(1)))))) # (!\i2cSlave|bits_processed_reg\(1) & 
-- (((\i2cSlave|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|data_to_master_reg\(0),
	datab => \i2cSlave|bits_processed_reg\(1),
	datac => \i2cSlave|data_to_master_reg\(1),
	datad => \i2cSlave|Mux0~0_combout\,
	combout => \i2cSlave|Mux0~1_combout\);

-- Location: LCCOMB_X29_Y72_N10
\i2cSlave|Decoder1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|Decoder1~6_combout\ = (\i2cSlave|bits_processed_reg\(0) & (\i2cSlave|bits_processed_reg\(1) & (!\i2cSlave|bits_processed_reg\(2) & \i2cSlave|Decoder1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|bits_processed_reg\(0),
	datab => \i2cSlave|bits_processed_reg\(1),
	datac => \i2cSlave|bits_processed_reg\(2),
	datad => \i2cSlave|Decoder1~0_combout\,
	combout => \i2cSlave|Decoder1~6_combout\);

-- Location: LCCOMB_X29_Y72_N26
\i2cSlave|data_reg[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|data_reg[4]~5_combout\ = (\i2cSlave|Decoder1~6_combout\ & (!\i2cSlave|sda_reg~q\)) # (!\i2cSlave|Decoder1~6_combout\ & ((\i2cSlave|data_reg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|sda_reg~q\,
	datac => \i2cSlave|data_reg\(4),
	datad => \i2cSlave|Decoder1~6_combout\,
	combout => \i2cSlave|data_reg[4]~5_combout\);

-- Location: FF_X29_Y72_N27
\i2cSlave|data_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|data_reg[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|data_reg\(4));

-- Location: LCCOMB_X27_Y72_N20
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\i2cSlave|data_reg\(4) & (!\Add0~5\)) # (!\i2cSlave|data_reg\(4) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!\i2cSlave|data_reg\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|data_reg\(4),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X27_Y72_N0
\data_to_master[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_to_master[4]~2_combout\ = !\Add0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~6_combout\,
	combout => \data_to_master[4]~2_combout\);

-- Location: FF_X27_Y72_N1
\data_to_master[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_to_master[4]~2_combout\,
	ena => \i2cSlave|data_valid_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_to_master(4));

-- Location: LCCOMB_X28_Y72_N4
\i2cSlave|data_to_master_reg[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|data_to_master_reg[4]~6_combout\ = !data_to_master(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => data_to_master(4),
	combout => \i2cSlave|data_to_master_reg[4]~6_combout\);

-- Location: FF_X28_Y72_N5
\i2cSlave|data_to_master_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|data_to_master_reg[4]~6_combout\,
	ena => \i2cSlave|data_to_master_reg[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|data_to_master_reg\(4));

-- Location: LCCOMB_X29_Y72_N12
\i2cSlave|Decoder1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|Decoder1~5_combout\ = (!\i2cSlave|bits_processed_reg\(0) & (\i2cSlave|bits_processed_reg\(1) & (!\i2cSlave|bits_processed_reg\(2) & \i2cSlave|Decoder1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|bits_processed_reg\(0),
	datab => \i2cSlave|bits_processed_reg\(1),
	datac => \i2cSlave|bits_processed_reg\(2),
	datad => \i2cSlave|Decoder1~0_combout\,
	combout => \i2cSlave|Decoder1~5_combout\);

-- Location: LCCOMB_X29_Y72_N24
\i2cSlave|data_reg[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|data_reg[5]~4_combout\ = (\i2cSlave|Decoder1~5_combout\ & (!\i2cSlave|sda_reg~q\)) # (!\i2cSlave|Decoder1~5_combout\ & ((\i2cSlave|data_reg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|sda_reg~q\,
	datac => \i2cSlave|data_reg\(5),
	datad => \i2cSlave|Decoder1~5_combout\,
	combout => \i2cSlave|data_reg[5]~4_combout\);

-- Location: FF_X29_Y72_N25
\i2cSlave|data_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|data_reg[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|data_reg\(5));

-- Location: LCCOMB_X27_Y72_N22
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (\i2cSlave|data_reg\(5) & (\Add0~7\ $ (GND))) # (!\i2cSlave|data_reg\(5) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((\i2cSlave|data_reg\(5) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|data_reg\(5),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: FF_X27_Y72_N23
\data_to_master[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~8_combout\,
	ena => \i2cSlave|data_valid_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_to_master(5));

-- Location: FF_X28_Y72_N13
\i2cSlave|data_to_master_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => data_to_master(5),
	sload => VCC,
	ena => \i2cSlave|data_to_master_reg[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|data_to_master_reg\(5));

-- Location: LCCOMB_X29_Y72_N18
\i2cSlave|Decoder1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|Decoder1~8_combout\ = (!\i2cSlave|bits_processed_reg\(0) & (!\i2cSlave|bits_processed_reg\(1) & (!\i2cSlave|bits_processed_reg\(2) & \i2cSlave|Decoder1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|bits_processed_reg\(0),
	datab => \i2cSlave|bits_processed_reg\(1),
	datac => \i2cSlave|bits_processed_reg\(2),
	datad => \i2cSlave|Decoder1~0_combout\,
	combout => \i2cSlave|Decoder1~8_combout\);

-- Location: LCCOMB_X29_Y72_N22
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

-- Location: FF_X29_Y72_N23
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

-- Location: LCCOMB_X29_Y72_N16
\i2cSlave|Decoder1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|Decoder1~7_combout\ = (\i2cSlave|bits_processed_reg\(0) & (!\i2cSlave|bits_processed_reg\(1) & (!\i2cSlave|bits_processed_reg\(2) & \i2cSlave|Decoder1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|bits_processed_reg\(0),
	datab => \i2cSlave|bits_processed_reg\(1),
	datac => \i2cSlave|bits_processed_reg\(2),
	datad => \i2cSlave|Decoder1~0_combout\,
	combout => \i2cSlave|Decoder1~7_combout\);

-- Location: LCCOMB_X29_Y72_N8
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

-- Location: FF_X29_Y72_N9
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

-- Location: LCCOMB_X27_Y72_N24
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\i2cSlave|data_reg\(6) & (!\Add0~9\)) # (!\i2cSlave|data_reg\(6) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!\i2cSlave|data_reg\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i2cSlave|data_reg\(6),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X27_Y72_N26
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = \Add0~11\ $ (!\i2cSlave|data_reg\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \i2cSlave|data_reg\(7),
	cin => \Add0~11\,
	combout => \Add0~12_combout\);

-- Location: FF_X27_Y72_N27
\data_to_master[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~12_combout\,
	ena => \i2cSlave|data_valid_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_to_master(7));

-- Location: FF_X28_Y72_N9
\i2cSlave|data_to_master_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => data_to_master(7),
	sload => VCC,
	ena => \i2cSlave|data_to_master_reg[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|data_to_master_reg\(7));

-- Location: LCCOMB_X27_Y72_N10
\data_to_master[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_to_master[6]~1_combout\ = !\Add0~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~10_combout\,
	combout => \data_to_master[6]~1_combout\);

-- Location: FF_X27_Y72_N11
\data_to_master[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_to_master[6]~1_combout\,
	ena => \i2cSlave|data_valid_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_to_master(6));

-- Location: LCCOMB_X28_Y72_N26
\i2cSlave|data_to_master_reg[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|data_to_master_reg[6]~5_combout\ = !data_to_master(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => data_to_master(6),
	combout => \i2cSlave|data_to_master_reg[6]~5_combout\);

-- Location: FF_X28_Y72_N27
\i2cSlave|data_to_master_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|data_to_master_reg[6]~5_combout\,
	ena => \i2cSlave|data_to_master_reg[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|data_to_master_reg\(6));

-- Location: LCCOMB_X28_Y72_N2
\i2cSlave|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|Mux0~2_combout\ = (\i2cSlave|bits_processed_reg\(0) & (((\i2cSlave|data_to_master_reg\(6)) # (\i2cSlave|bits_processed_reg\(1))))) # (!\i2cSlave|bits_processed_reg\(0) & (\i2cSlave|data_to_master_reg\(7) & ((!\i2cSlave|bits_processed_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|bits_processed_reg\(0),
	datab => \i2cSlave|data_to_master_reg\(7),
	datac => \i2cSlave|data_to_master_reg\(6),
	datad => \i2cSlave|bits_processed_reg\(1),
	combout => \i2cSlave|Mux0~2_combout\);

-- Location: LCCOMB_X28_Y72_N12
\i2cSlave|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|Mux0~3_combout\ = (\i2cSlave|bits_processed_reg\(1) & ((\i2cSlave|Mux0~2_combout\ & (\i2cSlave|data_to_master_reg\(4))) # (!\i2cSlave|Mux0~2_combout\ & ((\i2cSlave|data_to_master_reg\(5)))))) # (!\i2cSlave|bits_processed_reg\(1) & 
-- (((\i2cSlave|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2cSlave|data_to_master_reg\(4),
	datab => \i2cSlave|bits_processed_reg\(1),
	datac => \i2cSlave|data_to_master_reg\(5),
	datad => \i2cSlave|Mux0~2_combout\,
	combout => \i2cSlave|Mux0~3_combout\);

-- Location: LCCOMB_X29_Y72_N0
\i2cSlave|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i2cSlave|Mux0~4_combout\ = (\i2cSlave|bits_processed_reg\(2) & (\i2cSlave|Mux0~1_combout\)) # (!\i2cSlave|bits_processed_reg\(2) & ((\i2cSlave|Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2cSlave|bits_processed_reg\(2),
	datac => \i2cSlave|Mux0~1_combout\,
	datad => \i2cSlave|Mux0~3_combout\,
	combout => \i2cSlave|Mux0~4_combout\);

-- Location: FF_X29_Y72_N1
\i2cSlave|sda_o_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i2cSlave|Mux0~4_combout\,
	sclr => \i2cSlave|ALT_INV_state_reg.I2C_READ~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|sda_o_reg~q\);

-- Location: LCCOMB_X27_Y71_N16
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

-- Location: FF_X28_Y71_N21
\i2cSlave|sda_wen_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i2cSlave|sda_wen_reg~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2cSlave|sda_wen_reg~q\);

ww_scl <= \scl~output_o\;

ww_sda <= \sda~output_o\;
END structure;


