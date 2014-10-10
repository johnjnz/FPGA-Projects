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

-- DATE "10/10/2014 22:11:57"

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

ENTITY 	my_first_fpga_top IS
    PORT (
	led : OUT std_logic_vector(3 DOWNTO 0);
	osc_clk : IN std_logic;
	button : IN std_logic_vector(0 DOWNTO 0)
	);
END my_first_fpga_top;

-- Design Ports Information
-- led[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- osc_clk	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF my_first_fpga_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_led : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_osc_clk : std_logic;
SIGNAL ww_button : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst3|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst3|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \button[0]~input_o\ : std_logic;
SIGNAL \osc_clk~input_o\ : std_logic;
SIGNAL \inst3|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \inst|counter_out[0]~72_combout\ : std_logic;
SIGNAL \inst|counter_out[1]~24_combout\ : std_logic;
SIGNAL \inst|counter_out[1]~25\ : std_logic;
SIGNAL \inst|counter_out[2]~26_combout\ : std_logic;
SIGNAL \inst|counter_out[2]~27\ : std_logic;
SIGNAL \inst|counter_out[3]~28_combout\ : std_logic;
SIGNAL \inst|counter_out[3]~29\ : std_logic;
SIGNAL \inst|counter_out[4]~30_combout\ : std_logic;
SIGNAL \inst|counter_out[4]~31\ : std_logic;
SIGNAL \inst|counter_out[5]~32_combout\ : std_logic;
SIGNAL \inst|counter_out[5]~33\ : std_logic;
SIGNAL \inst|counter_out[6]~34_combout\ : std_logic;
SIGNAL \inst|counter_out[6]~35\ : std_logic;
SIGNAL \inst|counter_out[7]~36_combout\ : std_logic;
SIGNAL \inst|counter_out[7]~37\ : std_logic;
SIGNAL \inst|counter_out[8]~38_combout\ : std_logic;
SIGNAL \inst|counter_out[8]~39\ : std_logic;
SIGNAL \inst|counter_out[9]~40_combout\ : std_logic;
SIGNAL \inst|counter_out[9]~41\ : std_logic;
SIGNAL \inst|counter_out[10]~42_combout\ : std_logic;
SIGNAL \inst|counter_out[10]~43\ : std_logic;
SIGNAL \inst|counter_out[11]~44_combout\ : std_logic;
SIGNAL \inst|counter_out[11]~45\ : std_logic;
SIGNAL \inst|counter_out[12]~46_combout\ : std_logic;
SIGNAL \inst|counter_out[12]~47\ : std_logic;
SIGNAL \inst|counter_out[13]~48_combout\ : std_logic;
SIGNAL \inst|counter_out[13]~49\ : std_logic;
SIGNAL \inst|counter_out[14]~50_combout\ : std_logic;
SIGNAL \inst|counter_out[14]~51\ : std_logic;
SIGNAL \inst|counter_out[15]~52_combout\ : std_logic;
SIGNAL \inst|counter_out[15]~53\ : std_logic;
SIGNAL \inst|counter_out[16]~54_combout\ : std_logic;
SIGNAL \inst|counter_out[16]~55\ : std_logic;
SIGNAL \inst|counter_out[17]~56_combout\ : std_logic;
SIGNAL \inst|counter_out[17]~57\ : std_logic;
SIGNAL \inst|counter_out[18]~58_combout\ : std_logic;
SIGNAL \inst|counter_out[18]~59\ : std_logic;
SIGNAL \inst|counter_out[19]~60_combout\ : std_logic;
SIGNAL \inst|counter_out[19]~61\ : std_logic;
SIGNAL \inst|counter_out[20]~62_combout\ : std_logic;
SIGNAL \inst|counter_out[20]~63\ : std_logic;
SIGNAL \inst|counter_out[21]~64_combout\ : std_logic;
SIGNAL \inst|counter_out[21]~65\ : std_logic;
SIGNAL \inst|counter_out[22]~66_combout\ : std_logic;
SIGNAL \inst|counter_out[22]~67\ : std_logic;
SIGNAL \inst|counter_out[23]~68_combout\ : std_logic;
SIGNAL \inst|counter_out[23]~69\ : std_logic;
SIGNAL \inst|counter_out[24]~70_combout\ : std_logic;
SIGNAL \inst|counter_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst3|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);

BEGIN

led <= ww_led;
ww_osc_clk <= osc_clk;
ww_button <= button;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst3|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \osc_clk~input_o\);

\inst3|altpll_component|auto_generated|wire_pll1_clk\(0) <= \inst3|altpll_component|auto_generated|pll1_CLK_bus\(0);
\inst3|altpll_component|auto_generated|wire_pll1_clk\(1) <= \inst3|altpll_component|auto_generated|pll1_CLK_bus\(1);
\inst3|altpll_component|auto_generated|wire_pll1_clk\(2) <= \inst3|altpll_component|auto_generated|pll1_CLK_bus\(2);
\inst3|altpll_component|auto_generated|wire_pll1_clk\(3) <= \inst3|altpll_component|auto_generated|pll1_CLK_bus\(3);
\inst3|altpll_component|auto_generated|wire_pll1_clk\(4) <= \inst3|altpll_component|auto_generated|pll1_CLK_bus\(4);

\inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst3|altpll_component|auto_generated|wire_pll1_clk\(0));

-- Location: IOOBUF_X107_Y73_N16
\led[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|counter_out\(24),
	devoe => ww_devoe,
	o => ww_led(3));

-- Location: IOOBUF_X94_Y73_N9
\led[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|counter_out\(23),
	devoe => ww_devoe,
	o => ww_led(2));

-- Location: IOOBUF_X94_Y73_N2
\led[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|counter_out\(22),
	devoe => ww_devoe,
	o => ww_led(1));

-- Location: IOOBUF_X69_Y73_N16
\led[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|counter_out\(21),
	devoe => ww_devoe,
	o => ww_led(0));

-- Location: IOIBUF_X0_Y36_N15
\osc_clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_osc_clk,
	o => \osc_clk~input_o\);

-- Location: PLL_1
\inst3|altpll_component|auto_generated|pll1\ : cycloneive_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 15,
	c0_initial => 1,
	c0_low => 15,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 5,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 1,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 10000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 27,
	m => 6,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	pll_compensation_delay => 7101,
	self_reset_on_loss_lock => "off",
	simulation_type => "timing",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 208,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	fbin => \inst3|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \inst3|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \inst3|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \inst3|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G3
\inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X95_Y72_N0
\inst|counter_out[0]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter_out[0]~72_combout\ = !\inst|counter_out\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|counter_out\(0),
	combout => \inst|counter_out[0]~72_combout\);

-- Location: FF_X95_Y72_N1
\inst|counter_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|counter_out[0]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter_out\(0));

-- Location: LCCOMB_X95_Y72_N8
\inst|counter_out[1]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter_out[1]~24_combout\ = (\inst|counter_out\(0) & (\inst|counter_out\(1) $ (VCC))) # (!\inst|counter_out\(0) & (\inst|counter_out\(1) & VCC))
-- \inst|counter_out[1]~25\ = CARRY((\inst|counter_out\(0) & \inst|counter_out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter_out\(0),
	datab => \inst|counter_out\(1),
	datad => VCC,
	combout => \inst|counter_out[1]~24_combout\,
	cout => \inst|counter_out[1]~25\);

-- Location: FF_X95_Y72_N9
\inst|counter_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|counter_out[1]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter_out\(1));

-- Location: LCCOMB_X95_Y72_N10
\inst|counter_out[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter_out[2]~26_combout\ = (\inst|counter_out\(2) & (!\inst|counter_out[1]~25\)) # (!\inst|counter_out\(2) & ((\inst|counter_out[1]~25\) # (GND)))
-- \inst|counter_out[2]~27\ = CARRY((!\inst|counter_out[1]~25\) # (!\inst|counter_out\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter_out\(2),
	datad => VCC,
	cin => \inst|counter_out[1]~25\,
	combout => \inst|counter_out[2]~26_combout\,
	cout => \inst|counter_out[2]~27\);

-- Location: FF_X95_Y72_N11
\inst|counter_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|counter_out[2]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter_out\(2));

-- Location: LCCOMB_X95_Y72_N12
\inst|counter_out[3]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter_out[3]~28_combout\ = (\inst|counter_out\(3) & (\inst|counter_out[2]~27\ $ (GND))) # (!\inst|counter_out\(3) & (!\inst|counter_out[2]~27\ & VCC))
-- \inst|counter_out[3]~29\ = CARRY((\inst|counter_out\(3) & !\inst|counter_out[2]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter_out\(3),
	datad => VCC,
	cin => \inst|counter_out[2]~27\,
	combout => \inst|counter_out[3]~28_combout\,
	cout => \inst|counter_out[3]~29\);

-- Location: FF_X95_Y72_N13
\inst|counter_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|counter_out[3]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter_out\(3));

-- Location: LCCOMB_X95_Y72_N14
\inst|counter_out[4]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter_out[4]~30_combout\ = (\inst|counter_out\(4) & (!\inst|counter_out[3]~29\)) # (!\inst|counter_out\(4) & ((\inst|counter_out[3]~29\) # (GND)))
-- \inst|counter_out[4]~31\ = CARRY((!\inst|counter_out[3]~29\) # (!\inst|counter_out\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter_out\(4),
	datad => VCC,
	cin => \inst|counter_out[3]~29\,
	combout => \inst|counter_out[4]~30_combout\,
	cout => \inst|counter_out[4]~31\);

-- Location: FF_X95_Y72_N15
\inst|counter_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|counter_out[4]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter_out\(4));

-- Location: LCCOMB_X95_Y72_N16
\inst|counter_out[5]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter_out[5]~32_combout\ = (\inst|counter_out\(5) & (\inst|counter_out[4]~31\ $ (GND))) # (!\inst|counter_out\(5) & (!\inst|counter_out[4]~31\ & VCC))
-- \inst|counter_out[5]~33\ = CARRY((\inst|counter_out\(5) & !\inst|counter_out[4]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter_out\(5),
	datad => VCC,
	cin => \inst|counter_out[4]~31\,
	combout => \inst|counter_out[5]~32_combout\,
	cout => \inst|counter_out[5]~33\);

-- Location: FF_X95_Y72_N17
\inst|counter_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|counter_out[5]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter_out\(5));

-- Location: LCCOMB_X95_Y72_N18
\inst|counter_out[6]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter_out[6]~34_combout\ = (\inst|counter_out\(6) & (!\inst|counter_out[5]~33\)) # (!\inst|counter_out\(6) & ((\inst|counter_out[5]~33\) # (GND)))
-- \inst|counter_out[6]~35\ = CARRY((!\inst|counter_out[5]~33\) # (!\inst|counter_out\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter_out\(6),
	datad => VCC,
	cin => \inst|counter_out[5]~33\,
	combout => \inst|counter_out[6]~34_combout\,
	cout => \inst|counter_out[6]~35\);

-- Location: FF_X95_Y72_N19
\inst|counter_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|counter_out[6]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter_out\(6));

-- Location: LCCOMB_X95_Y72_N20
\inst|counter_out[7]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter_out[7]~36_combout\ = (\inst|counter_out\(7) & (\inst|counter_out[6]~35\ $ (GND))) # (!\inst|counter_out\(7) & (!\inst|counter_out[6]~35\ & VCC))
-- \inst|counter_out[7]~37\ = CARRY((\inst|counter_out\(7) & !\inst|counter_out[6]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter_out\(7),
	datad => VCC,
	cin => \inst|counter_out[6]~35\,
	combout => \inst|counter_out[7]~36_combout\,
	cout => \inst|counter_out[7]~37\);

-- Location: FF_X95_Y72_N21
\inst|counter_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|counter_out[7]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter_out\(7));

-- Location: LCCOMB_X95_Y72_N22
\inst|counter_out[8]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter_out[8]~38_combout\ = (\inst|counter_out\(8) & (!\inst|counter_out[7]~37\)) # (!\inst|counter_out\(8) & ((\inst|counter_out[7]~37\) # (GND)))
-- \inst|counter_out[8]~39\ = CARRY((!\inst|counter_out[7]~37\) # (!\inst|counter_out\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter_out\(8),
	datad => VCC,
	cin => \inst|counter_out[7]~37\,
	combout => \inst|counter_out[8]~38_combout\,
	cout => \inst|counter_out[8]~39\);

-- Location: FF_X95_Y72_N23
\inst|counter_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|counter_out[8]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter_out\(8));

-- Location: LCCOMB_X95_Y72_N24
\inst|counter_out[9]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter_out[9]~40_combout\ = (\inst|counter_out\(9) & (\inst|counter_out[8]~39\ $ (GND))) # (!\inst|counter_out\(9) & (!\inst|counter_out[8]~39\ & VCC))
-- \inst|counter_out[9]~41\ = CARRY((\inst|counter_out\(9) & !\inst|counter_out[8]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter_out\(9),
	datad => VCC,
	cin => \inst|counter_out[8]~39\,
	combout => \inst|counter_out[9]~40_combout\,
	cout => \inst|counter_out[9]~41\);

-- Location: FF_X95_Y72_N25
\inst|counter_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|counter_out[9]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter_out\(9));

-- Location: LCCOMB_X95_Y72_N26
\inst|counter_out[10]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter_out[10]~42_combout\ = (\inst|counter_out\(10) & (!\inst|counter_out[9]~41\)) # (!\inst|counter_out\(10) & ((\inst|counter_out[9]~41\) # (GND)))
-- \inst|counter_out[10]~43\ = CARRY((!\inst|counter_out[9]~41\) # (!\inst|counter_out\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter_out\(10),
	datad => VCC,
	cin => \inst|counter_out[9]~41\,
	combout => \inst|counter_out[10]~42_combout\,
	cout => \inst|counter_out[10]~43\);

-- Location: FF_X95_Y72_N27
\inst|counter_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|counter_out[10]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter_out\(10));

-- Location: LCCOMB_X95_Y72_N28
\inst|counter_out[11]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter_out[11]~44_combout\ = (\inst|counter_out\(11) & (\inst|counter_out[10]~43\ $ (GND))) # (!\inst|counter_out\(11) & (!\inst|counter_out[10]~43\ & VCC))
-- \inst|counter_out[11]~45\ = CARRY((\inst|counter_out\(11) & !\inst|counter_out[10]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter_out\(11),
	datad => VCC,
	cin => \inst|counter_out[10]~43\,
	combout => \inst|counter_out[11]~44_combout\,
	cout => \inst|counter_out[11]~45\);

-- Location: FF_X95_Y72_N29
\inst|counter_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|counter_out[11]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter_out\(11));

-- Location: LCCOMB_X95_Y72_N30
\inst|counter_out[12]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter_out[12]~46_combout\ = (\inst|counter_out\(12) & (!\inst|counter_out[11]~45\)) # (!\inst|counter_out\(12) & ((\inst|counter_out[11]~45\) # (GND)))
-- \inst|counter_out[12]~47\ = CARRY((!\inst|counter_out[11]~45\) # (!\inst|counter_out\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter_out\(12),
	datad => VCC,
	cin => \inst|counter_out[11]~45\,
	combout => \inst|counter_out[12]~46_combout\,
	cout => \inst|counter_out[12]~47\);

-- Location: FF_X95_Y72_N31
\inst|counter_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|counter_out[12]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter_out\(12));

-- Location: LCCOMB_X95_Y71_N0
\inst|counter_out[13]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter_out[13]~48_combout\ = (\inst|counter_out\(13) & (\inst|counter_out[12]~47\ $ (GND))) # (!\inst|counter_out\(13) & (!\inst|counter_out[12]~47\ & VCC))
-- \inst|counter_out[13]~49\ = CARRY((\inst|counter_out\(13) & !\inst|counter_out[12]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter_out\(13),
	datad => VCC,
	cin => \inst|counter_out[12]~47\,
	combout => \inst|counter_out[13]~48_combout\,
	cout => \inst|counter_out[13]~49\);

-- Location: FF_X95_Y71_N1
\inst|counter_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|counter_out[13]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter_out\(13));

-- Location: LCCOMB_X95_Y71_N2
\inst|counter_out[14]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter_out[14]~50_combout\ = (\inst|counter_out\(14) & (!\inst|counter_out[13]~49\)) # (!\inst|counter_out\(14) & ((\inst|counter_out[13]~49\) # (GND)))
-- \inst|counter_out[14]~51\ = CARRY((!\inst|counter_out[13]~49\) # (!\inst|counter_out\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter_out\(14),
	datad => VCC,
	cin => \inst|counter_out[13]~49\,
	combout => \inst|counter_out[14]~50_combout\,
	cout => \inst|counter_out[14]~51\);

-- Location: FF_X95_Y71_N3
\inst|counter_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|counter_out[14]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter_out\(14));

-- Location: LCCOMB_X95_Y71_N4
\inst|counter_out[15]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter_out[15]~52_combout\ = (\inst|counter_out\(15) & (\inst|counter_out[14]~51\ $ (GND))) # (!\inst|counter_out\(15) & (!\inst|counter_out[14]~51\ & VCC))
-- \inst|counter_out[15]~53\ = CARRY((\inst|counter_out\(15) & !\inst|counter_out[14]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter_out\(15),
	datad => VCC,
	cin => \inst|counter_out[14]~51\,
	combout => \inst|counter_out[15]~52_combout\,
	cout => \inst|counter_out[15]~53\);

-- Location: FF_X95_Y71_N5
\inst|counter_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|counter_out[15]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter_out\(15));

-- Location: LCCOMB_X95_Y71_N6
\inst|counter_out[16]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter_out[16]~54_combout\ = (\inst|counter_out\(16) & (!\inst|counter_out[15]~53\)) # (!\inst|counter_out\(16) & ((\inst|counter_out[15]~53\) # (GND)))
-- \inst|counter_out[16]~55\ = CARRY((!\inst|counter_out[15]~53\) # (!\inst|counter_out\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter_out\(16),
	datad => VCC,
	cin => \inst|counter_out[15]~53\,
	combout => \inst|counter_out[16]~54_combout\,
	cout => \inst|counter_out[16]~55\);

-- Location: FF_X95_Y71_N7
\inst|counter_out[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|counter_out[16]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter_out\(16));

-- Location: LCCOMB_X95_Y71_N8
\inst|counter_out[17]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter_out[17]~56_combout\ = (\inst|counter_out\(17) & (\inst|counter_out[16]~55\ $ (GND))) # (!\inst|counter_out\(17) & (!\inst|counter_out[16]~55\ & VCC))
-- \inst|counter_out[17]~57\ = CARRY((\inst|counter_out\(17) & !\inst|counter_out[16]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter_out\(17),
	datad => VCC,
	cin => \inst|counter_out[16]~55\,
	combout => \inst|counter_out[17]~56_combout\,
	cout => \inst|counter_out[17]~57\);

-- Location: FF_X95_Y71_N9
\inst|counter_out[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|counter_out[17]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter_out\(17));

-- Location: LCCOMB_X95_Y71_N10
\inst|counter_out[18]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter_out[18]~58_combout\ = (\inst|counter_out\(18) & (!\inst|counter_out[17]~57\)) # (!\inst|counter_out\(18) & ((\inst|counter_out[17]~57\) # (GND)))
-- \inst|counter_out[18]~59\ = CARRY((!\inst|counter_out[17]~57\) # (!\inst|counter_out\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter_out\(18),
	datad => VCC,
	cin => \inst|counter_out[17]~57\,
	combout => \inst|counter_out[18]~58_combout\,
	cout => \inst|counter_out[18]~59\);

-- Location: FF_X95_Y71_N11
\inst|counter_out[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|counter_out[18]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter_out\(18));

-- Location: LCCOMB_X95_Y71_N12
\inst|counter_out[19]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter_out[19]~60_combout\ = (\inst|counter_out\(19) & (\inst|counter_out[18]~59\ $ (GND))) # (!\inst|counter_out\(19) & (!\inst|counter_out[18]~59\ & VCC))
-- \inst|counter_out[19]~61\ = CARRY((\inst|counter_out\(19) & !\inst|counter_out[18]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter_out\(19),
	datad => VCC,
	cin => \inst|counter_out[18]~59\,
	combout => \inst|counter_out[19]~60_combout\,
	cout => \inst|counter_out[19]~61\);

-- Location: FF_X95_Y71_N13
\inst|counter_out[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|counter_out[19]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter_out\(19));

-- Location: LCCOMB_X95_Y71_N14
\inst|counter_out[20]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter_out[20]~62_combout\ = (\inst|counter_out\(20) & (!\inst|counter_out[19]~61\)) # (!\inst|counter_out\(20) & ((\inst|counter_out[19]~61\) # (GND)))
-- \inst|counter_out[20]~63\ = CARRY((!\inst|counter_out[19]~61\) # (!\inst|counter_out\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter_out\(20),
	datad => VCC,
	cin => \inst|counter_out[19]~61\,
	combout => \inst|counter_out[20]~62_combout\,
	cout => \inst|counter_out[20]~63\);

-- Location: FF_X95_Y71_N15
\inst|counter_out[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|counter_out[20]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter_out\(20));

-- Location: LCCOMB_X95_Y71_N16
\inst|counter_out[21]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter_out[21]~64_combout\ = (\inst|counter_out\(21) & (\inst|counter_out[20]~63\ $ (GND))) # (!\inst|counter_out\(21) & (!\inst|counter_out[20]~63\ & VCC))
-- \inst|counter_out[21]~65\ = CARRY((\inst|counter_out\(21) & !\inst|counter_out[20]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter_out\(21),
	datad => VCC,
	cin => \inst|counter_out[20]~63\,
	combout => \inst|counter_out[21]~64_combout\,
	cout => \inst|counter_out[21]~65\);

-- Location: FF_X95_Y71_N17
\inst|counter_out[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|counter_out[21]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter_out\(21));

-- Location: LCCOMB_X95_Y71_N18
\inst|counter_out[22]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter_out[22]~66_combout\ = (\inst|counter_out\(22) & (!\inst|counter_out[21]~65\)) # (!\inst|counter_out\(22) & ((\inst|counter_out[21]~65\) # (GND)))
-- \inst|counter_out[22]~67\ = CARRY((!\inst|counter_out[21]~65\) # (!\inst|counter_out\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter_out\(22),
	datad => VCC,
	cin => \inst|counter_out[21]~65\,
	combout => \inst|counter_out[22]~66_combout\,
	cout => \inst|counter_out[22]~67\);

-- Location: FF_X95_Y71_N19
\inst|counter_out[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|counter_out[22]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter_out\(22));

-- Location: LCCOMB_X95_Y71_N20
\inst|counter_out[23]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter_out[23]~68_combout\ = (\inst|counter_out\(23) & (\inst|counter_out[22]~67\ $ (GND))) # (!\inst|counter_out\(23) & (!\inst|counter_out[22]~67\ & VCC))
-- \inst|counter_out[23]~69\ = CARRY((\inst|counter_out\(23) & !\inst|counter_out[22]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter_out\(23),
	datad => VCC,
	cin => \inst|counter_out[22]~67\,
	combout => \inst|counter_out[23]~68_combout\,
	cout => \inst|counter_out[23]~69\);

-- Location: FF_X95_Y71_N21
\inst|counter_out[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|counter_out[23]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter_out\(23));

-- Location: LCCOMB_X95_Y71_N22
\inst|counter_out[24]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter_out[24]~70_combout\ = \inst|counter_out\(24) $ (\inst|counter_out[23]~69\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter_out\(24),
	cin => \inst|counter_out[23]~69\,
	combout => \inst|counter_out[24]~70_combout\);

-- Location: FF_X95_Y71_N23
\inst|counter_out[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|counter_out[24]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter_out\(24));

-- Location: IOIBUF_X115_Y40_N8
\button[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button(0),
	o => \button[0]~input_o\);
END structure;


