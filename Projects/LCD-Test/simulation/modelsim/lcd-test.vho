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

-- DATE "10/11/2014 17:22:35"

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

ENTITY 	LCD IS
    PORT (
	iCLK : IN std_logic;
	iRST_N : IN std_logic;
	LCD_DATA : OUT std_logic_vector(7 DOWNTO 0);
	LCD_RW : OUT std_logic;
	LCD_EN : OUT std_logic;
	LCD_RS : OUT std_logic
	);
END LCD;

-- Design Ports Information
-- LCD_DATA[0]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_DATA[1]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_DATA[2]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_DATA[3]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_DATA[4]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_DATA[5]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_DATA[6]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_DATA[7]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_RW	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_EN	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_RS	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iRST_N	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iCLK	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF LCD IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_iCLK : std_logic;
SIGNAL ww_iRST_N : std_logic;
SIGNAL ww_LCD_DATA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LCD_RW : std_logic;
SIGNAL ww_LCD_EN : std_logic;
SIGNAL ww_LCD_RS : std_logic;
SIGNAL \iCLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LCD_DATA[0]~output_o\ : std_logic;
SIGNAL \LCD_DATA[1]~output_o\ : std_logic;
SIGNAL \LCD_DATA[2]~output_o\ : std_logic;
SIGNAL \LCD_DATA[3]~output_o\ : std_logic;
SIGNAL \LCD_DATA[4]~output_o\ : std_logic;
SIGNAL \LCD_DATA[5]~output_o\ : std_logic;
SIGNAL \LCD_DATA[6]~output_o\ : std_logic;
SIGNAL \LCD_DATA[7]~output_o\ : std_logic;
SIGNAL \LCD_RW~output_o\ : std_logic;
SIGNAL \LCD_EN~output_o\ : std_logic;
SIGNAL \LCD_RS~output_o\ : std_logic;
SIGNAL \iCLK~input_o\ : std_logic;
SIGNAL \iCLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \iRST_N~input_o\ : std_logic;
SIGNAL \LUT_INDEX[0]~6_combout\ : std_logic;
SIGNAL \u0|ST.00~0_combout\ : std_logic;
SIGNAL \mDLY[0]~18_combout\ : std_logic;
SIGNAL \mDLY[0]~22_combout\ : std_logic;
SIGNAL \LUT_INDEX[1]~9\ : std_logic;
SIGNAL \LUT_INDEX[2]~10_combout\ : std_logic;
SIGNAL \LUT_INDEX[2]~11\ : std_logic;
SIGNAL \LUT_INDEX[3]~12_combout\ : std_logic;
SIGNAL \LUT_INDEX[3]~13\ : std_logic;
SIGNAL \LUT_INDEX[4]~14_combout\ : std_logic;
SIGNAL \LUT_INDEX[4]~15\ : std_logic;
SIGNAL \LUT_INDEX[5]~17_combout\ : std_logic;
SIGNAL \LUT_DATA[0]~0_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \mDLY[0]~23_combout\ : std_logic;
SIGNAL \mDLY[0]~19\ : std_logic;
SIGNAL \mDLY[1]~20_combout\ : std_logic;
SIGNAL \mDLY[1]~21\ : std_logic;
SIGNAL \mDLY[2]~24_combout\ : std_logic;
SIGNAL \mDLY[2]~25\ : std_logic;
SIGNAL \mDLY[3]~26_combout\ : std_logic;
SIGNAL \mDLY[3]~27\ : std_logic;
SIGNAL \mDLY[4]~28_combout\ : std_logic;
SIGNAL \mDLY[4]~29\ : std_logic;
SIGNAL \mDLY[5]~30_combout\ : std_logic;
SIGNAL \mDLY[5]~31\ : std_logic;
SIGNAL \mDLY[6]~32_combout\ : std_logic;
SIGNAL \mDLY[6]~33\ : std_logic;
SIGNAL \mDLY[7]~34_combout\ : std_logic;
SIGNAL \mDLY[7]~35\ : std_logic;
SIGNAL \mDLY[8]~36_combout\ : std_logic;
SIGNAL \mDLY[8]~37\ : std_logic;
SIGNAL \mDLY[9]~38_combout\ : std_logic;
SIGNAL \mDLY[9]~39\ : std_logic;
SIGNAL \mDLY[10]~40_combout\ : std_logic;
SIGNAL \mDLY[10]~41\ : std_logic;
SIGNAL \mDLY[11]~42_combout\ : std_logic;
SIGNAL \mDLY[11]~43\ : std_logic;
SIGNAL \mDLY[12]~44_combout\ : std_logic;
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \mDLY[12]~45\ : std_logic;
SIGNAL \mDLY[13]~46_combout\ : std_logic;
SIGNAL \mDLY[13]~47\ : std_logic;
SIGNAL \mDLY[14]~48_combout\ : std_logic;
SIGNAL \mDLY[14]~49\ : std_logic;
SIGNAL \mDLY[15]~50_combout\ : std_logic;
SIGNAL \mDLY[15]~51\ : std_logic;
SIGNAL \mDLY[16]~52_combout\ : std_logic;
SIGNAL \mDLY[16]~53\ : std_logic;
SIGNAL \mDLY[17]~54_combout\ : std_logic;
SIGNAL \LessThan1~4_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \LessThan1~5_combout\ : std_logic;
SIGNAL \mLCD_ST~16_combout\ : std_logic;
SIGNAL \mLCD_ST~17_combout\ : std_logic;
SIGNAL \mLCD_ST~21_combout\ : std_logic;
SIGNAL \mLCD_ST.000001~q\ : std_logic;
SIGNAL \mLCD_ST~20_combout\ : std_logic;
SIGNAL \Selector3~2_combout\ : std_logic;
SIGNAL \mLCD_Start~0_combout\ : std_logic;
SIGNAL \mLCD_Start~q\ : std_logic;
SIGNAL \u0|preStart~q\ : std_logic;
SIGNAL \u0|mStart~0_combout\ : std_logic;
SIGNAL \u0|mStart~q\ : std_logic;
SIGNAL \u0|ST.00~q\ : std_logic;
SIGNAL \u0|ST.01~0_combout\ : std_logic;
SIGNAL \u0|ST.01~q\ : std_logic;
SIGNAL \u0|Selector2~0_combout\ : std_logic;
SIGNAL \u0|ST.10~q\ : std_logic;
SIGNAL \u0|Selector5~0_combout\ : std_logic;
SIGNAL \u0|Selector2~1_combout\ : std_logic;
SIGNAL \u0|Add0~0_combout\ : std_logic;
SIGNAL \u0|Selector8~0_combout\ : std_logic;
SIGNAL \u0|Add0~1\ : std_logic;
SIGNAL \u0|Add0~2_combout\ : std_logic;
SIGNAL \u0|Selector7~0_combout\ : std_logic;
SIGNAL \u0|Add0~3\ : std_logic;
SIGNAL \u0|Add0~4_combout\ : std_logic;
SIGNAL \u0|Selector6~0_combout\ : std_logic;
SIGNAL \u0|Add0~5\ : std_logic;
SIGNAL \u0|Add0~6_combout\ : std_logic;
SIGNAL \u0|Selector5~1_combout\ : std_logic;
SIGNAL \u0|Add0~7\ : std_logic;
SIGNAL \u0|Add0~8_combout\ : std_logic;
SIGNAL \u0|Selector4~0_combout\ : std_logic;
SIGNAL \u0|Selector4~1_combout\ : std_logic;
SIGNAL \u0|ST~14_combout\ : std_logic;
SIGNAL \u0|ST.11~q\ : std_logic;
SIGNAL \u0|oDone~0_combout\ : std_logic;
SIGNAL \u0|oDone~1_combout\ : std_logic;
SIGNAL \u0|oDone~q\ : std_logic;
SIGNAL \Selector3~3_combout\ : std_logic;
SIGNAL \mLCD_ST~19_combout\ : std_logic;
SIGNAL \mLCD_ST.000010~q\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \mLCD_ST.000011~q\ : std_logic;
SIGNAL \LUT_INDEX[2]~16_combout\ : std_logic;
SIGNAL \LUT_INDEX[0]~7\ : std_logic;
SIGNAL \LUT_INDEX[1]~8_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \Selector13~1_combout\ : std_logic;
SIGNAL \LUT_DATA[0]~2_combout\ : std_logic;
SIGNAL \LUT_DATA[0]~1_combout\ : std_logic;
SIGNAL \Selector13~2_combout\ : std_logic;
SIGNAL \LUT_DATA[0]~3_combout\ : std_logic;
SIGNAL \mLCD_DATA~0_combout\ : std_logic;
SIGNAL \mLCD_ST~18_combout\ : std_logic;
SIGNAL \mLCD_ST.000000~q\ : std_logic;
SIGNAL \mLCD_DATA[1]~1_combout\ : std_logic;
SIGNAL \Selector12~2_combout\ : std_logic;
SIGNAL \Selector12~3_combout\ : std_logic;
SIGNAL \mLCD_DATA~2_combout\ : std_logic;
SIGNAL \Selector11~2_combout\ : std_logic;
SIGNAL \Selector11~3_combout\ : std_logic;
SIGNAL \mLCD_DATA~3_combout\ : std_logic;
SIGNAL \Selector10~2_combout\ : std_logic;
SIGNAL \Selector10~3_combout\ : std_logic;
SIGNAL \mLCD_DATA~4_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \mLCD_DATA~5_combout\ : std_logic;
SIGNAL \Selector8~1_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Selector8~2_combout\ : std_logic;
SIGNAL \mLCD_DATA~6_combout\ : std_logic;
SIGNAL \Selector7~4_combout\ : std_logic;
SIGNAL \Selector7~3_combout\ : std_logic;
SIGNAL \Selector7~8_combout\ : std_logic;
SIGNAL \mLCD_DATA~7_combout\ : std_logic;
SIGNAL \Selector6~4_combout\ : std_logic;
SIGNAL \Selector6~9_combout\ : std_logic;
SIGNAL \mLCD_DATA~8_combout\ : std_logic;
SIGNAL \u0|Selector3~0_combout\ : std_logic;
SIGNAL \u0|LCD_EN~q\ : std_logic;
SIGNAL \Selector7~7_combout\ : std_logic;
SIGNAL \Selector5~1_combout\ : std_logic;
SIGNAL \mLCD_RS~0_combout\ : std_logic;
SIGNAL \mLCD_RS~q\ : std_logic;
SIGNAL mLCD_DATA : std_logic_vector(7 DOWNTO 0);
SIGNAL mDLY : std_logic_vector(17 DOWNTO 0);
SIGNAL LUT_INDEX : std_logic_vector(5 DOWNTO 0);
SIGNAL LUT_DATA : std_logic_vector(8 DOWNTO 0);
SIGNAL \u0|Cont\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_iRST_N~input_o\ : std_logic;

BEGIN

ww_iCLK <= iCLK;
ww_iRST_N <= iRST_N;
LCD_DATA <= ww_LCD_DATA;
LCD_RW <= ww_LCD_RW;
LCD_EN <= ww_LCD_EN;
LCD_RS <= ww_LCD_RS;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\iCLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \iCLK~input_o\);
\ALT_INV_iRST_N~input_o\ <= NOT \iRST_N~input_o\;

-- Location: IOOBUF_X0_Y52_N16
\LCD_DATA[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => mLCD_DATA(0),
	devoe => ww_devoe,
	o => \LCD_DATA[0]~output_o\);

-- Location: IOOBUF_X0_Y44_N9
\LCD_DATA[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => mLCD_DATA(1),
	devoe => ww_devoe,
	o => \LCD_DATA[1]~output_o\);

-- Location: IOOBUF_X0_Y44_N2
\LCD_DATA[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => mLCD_DATA(2),
	devoe => ww_devoe,
	o => \LCD_DATA[2]~output_o\);

-- Location: IOOBUF_X0_Y49_N9
\LCD_DATA[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => mLCD_DATA(3),
	devoe => ww_devoe,
	o => \LCD_DATA[3]~output_o\);

-- Location: IOOBUF_X0_Y54_N9
\LCD_DATA[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => mLCD_DATA(4),
	devoe => ww_devoe,
	o => \LCD_DATA[4]~output_o\);

-- Location: IOOBUF_X0_Y55_N23
\LCD_DATA[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => mLCD_DATA(5),
	devoe => ww_devoe,
	o => \LCD_DATA[5]~output_o\);

-- Location: IOOBUF_X0_Y51_N16
\LCD_DATA[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => mLCD_DATA(6),
	devoe => ww_devoe,
	o => \LCD_DATA[6]~output_o\);

-- Location: IOOBUF_X0_Y47_N2
\LCD_DATA[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => mLCD_DATA(7),
	devoe => ww_devoe,
	o => \LCD_DATA[7]~output_o\);

-- Location: IOOBUF_X0_Y44_N23
\LCD_RW~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LCD_RW~output_o\);

-- Location: IOOBUF_X0_Y52_N2
\LCD_EN~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|LCD_EN~q\,
	devoe => ww_devoe,
	o => \LCD_EN~output_o\);

-- Location: IOOBUF_X0_Y44_N16
\LCD_RS~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mLCD_RS~q\,
	devoe => ww_devoe,
	o => \LCD_RS~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\iCLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iCLK,
	o => \iCLK~input_o\);

-- Location: CLKCTRL_G4
\iCLK~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \iCLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \iCLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X115_Y40_N8
\iRST_N~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iRST_N,
	o => \iRST_N~input_o\);

-- Location: LCCOMB_X3_Y44_N6
\LUT_INDEX[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_INDEX[0]~6_combout\ = LUT_INDEX(0) $ (VCC)
-- \LUT_INDEX[0]~7\ = CARRY(LUT_INDEX(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(0),
	datad => VCC,
	combout => \LUT_INDEX[0]~6_combout\,
	cout => \LUT_INDEX[0]~7\);

-- Location: LCCOMB_X3_Y49_N6
\u0|ST.00~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|ST.00~0_combout\ = !\u0|ST.11~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|ST.11~q\,
	combout => \u0|ST.00~0_combout\);

-- Location: LCCOMB_X3_Y46_N14
\mDLY[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \mDLY[0]~18_combout\ = mDLY(0) $ (VCC)
-- \mDLY[0]~19\ = CARRY(mDLY(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mDLY(0),
	datad => VCC,
	combout => \mDLY[0]~18_combout\,
	cout => \mDLY[0]~19\);

-- Location: LCCOMB_X3_Y45_N22
\mDLY[0]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \mDLY[0]~22_combout\ = (!\LessThan1~5_combout\) # (!\iRST_N~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iRST_N~input_o\,
	datad => \LessThan1~5_combout\,
	combout => \mDLY[0]~22_combout\);

-- Location: LCCOMB_X3_Y44_N8
\LUT_INDEX[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_INDEX[1]~8_combout\ = (LUT_INDEX(1) & (!\LUT_INDEX[0]~7\)) # (!LUT_INDEX(1) & ((\LUT_INDEX[0]~7\) # (GND)))
-- \LUT_INDEX[1]~9\ = CARRY((!\LUT_INDEX[0]~7\) # (!LUT_INDEX(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => LUT_INDEX(1),
	datad => VCC,
	cin => \LUT_INDEX[0]~7\,
	combout => \LUT_INDEX[1]~8_combout\,
	cout => \LUT_INDEX[1]~9\);

-- Location: LCCOMB_X3_Y44_N10
\LUT_INDEX[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_INDEX[2]~10_combout\ = (LUT_INDEX(2) & (\LUT_INDEX[1]~9\ $ (GND))) # (!LUT_INDEX(2) & (!\LUT_INDEX[1]~9\ & VCC))
-- \LUT_INDEX[2]~11\ = CARRY((LUT_INDEX(2) & !\LUT_INDEX[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(2),
	datad => VCC,
	cin => \LUT_INDEX[1]~9\,
	combout => \LUT_INDEX[2]~10_combout\,
	cout => \LUT_INDEX[2]~11\);

-- Location: FF_X3_Y44_N11
\LUT_INDEX[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \LUT_INDEX[2]~10_combout\,
	sclr => \ALT_INV_iRST_N~input_o\,
	ena => \LUT_INDEX[2]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_INDEX(2));

-- Location: LCCOMB_X3_Y44_N12
\LUT_INDEX[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_INDEX[3]~12_combout\ = (LUT_INDEX(3) & (!\LUT_INDEX[2]~11\)) # (!LUT_INDEX(3) & ((\LUT_INDEX[2]~11\) # (GND)))
-- \LUT_INDEX[3]~13\ = CARRY((!\LUT_INDEX[2]~11\) # (!LUT_INDEX(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(3),
	datad => VCC,
	cin => \LUT_INDEX[2]~11\,
	combout => \LUT_INDEX[3]~12_combout\,
	cout => \LUT_INDEX[3]~13\);

-- Location: FF_X3_Y44_N13
\LUT_INDEX[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \LUT_INDEX[3]~12_combout\,
	sclr => \ALT_INV_iRST_N~input_o\,
	ena => \LUT_INDEX[2]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_INDEX(3));

-- Location: LCCOMB_X3_Y44_N14
\LUT_INDEX[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_INDEX[4]~14_combout\ = (LUT_INDEX(4) & (\LUT_INDEX[3]~13\ $ (GND))) # (!LUT_INDEX(4) & (!\LUT_INDEX[3]~13\ & VCC))
-- \LUT_INDEX[4]~15\ = CARRY((LUT_INDEX(4) & !\LUT_INDEX[3]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => LUT_INDEX(4),
	datad => VCC,
	cin => \LUT_INDEX[3]~13\,
	combout => \LUT_INDEX[4]~14_combout\,
	cout => \LUT_INDEX[4]~15\);

-- Location: FF_X3_Y44_N15
\LUT_INDEX[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \LUT_INDEX[4]~14_combout\,
	sclr => \ALT_INV_iRST_N~input_o\,
	ena => \LUT_INDEX[2]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_INDEX(4));

-- Location: LCCOMB_X3_Y44_N16
\LUT_INDEX[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_INDEX[5]~17_combout\ = \LUT_INDEX[4]~15\ $ (LUT_INDEX(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => LUT_INDEX(5),
	cin => \LUT_INDEX[4]~15\,
	combout => \LUT_INDEX[5]~17_combout\);

-- Location: FF_X3_Y44_N17
\LUT_INDEX[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \LUT_INDEX[5]~17_combout\,
	sclr => \ALT_INV_iRST_N~input_o\,
	ena => \LUT_INDEX[2]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_INDEX(5));

-- Location: LCCOMB_X3_Y44_N20
\LUT_DATA[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA[0]~0_combout\ = (LUT_INDEX(0) & (LUT_INDEX(1) & LUT_INDEX(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(0),
	datac => LUT_INDEX(1),
	datad => LUT_INDEX(2),
	combout => \LUT_DATA[0]~0_combout\);

-- Location: LCCOMB_X3_Y44_N2
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ((!LUT_INDEX(3) & (!LUT_INDEX(4) & !\LUT_DATA[0]~0_combout\))) # (!LUT_INDEX(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(3),
	datab => LUT_INDEX(5),
	datac => LUT_INDEX(4),
	datad => \LUT_DATA[0]~0_combout\,
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X3_Y44_N0
\mDLY[0]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \mDLY[0]~23_combout\ = ((\mLCD_ST.000010~q\ & \LessThan0~0_combout\)) # (!\iRST_N~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iRST_N~input_o\,
	datac => \mLCD_ST.000010~q\,
	datad => \LessThan0~0_combout\,
	combout => \mDLY[0]~23_combout\);

-- Location: FF_X3_Y46_N15
\mDLY[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mDLY[0]~18_combout\,
	sclr => \mDLY[0]~22_combout\,
	ena => \mDLY[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mDLY(0));

-- Location: LCCOMB_X3_Y46_N16
\mDLY[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \mDLY[1]~20_combout\ = (mDLY(1) & (!\mDLY[0]~19\)) # (!mDLY(1) & ((\mDLY[0]~19\) # (GND)))
-- \mDLY[1]~21\ = CARRY((!\mDLY[0]~19\) # (!mDLY(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => mDLY(1),
	datad => VCC,
	cin => \mDLY[0]~19\,
	combout => \mDLY[1]~20_combout\,
	cout => \mDLY[1]~21\);

-- Location: FF_X3_Y46_N17
\mDLY[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mDLY[1]~20_combout\,
	sclr => \mDLY[0]~22_combout\,
	ena => \mDLY[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mDLY(1));

-- Location: LCCOMB_X3_Y46_N18
\mDLY[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \mDLY[2]~24_combout\ = (mDLY(2) & (\mDLY[1]~21\ $ (GND))) # (!mDLY(2) & (!\mDLY[1]~21\ & VCC))
-- \mDLY[2]~25\ = CARRY((mDLY(2) & !\mDLY[1]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => mDLY(2),
	datad => VCC,
	cin => \mDLY[1]~21\,
	combout => \mDLY[2]~24_combout\,
	cout => \mDLY[2]~25\);

-- Location: FF_X3_Y46_N19
\mDLY[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mDLY[2]~24_combout\,
	sclr => \mDLY[0]~22_combout\,
	ena => \mDLY[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mDLY(2));

-- Location: LCCOMB_X3_Y46_N20
\mDLY[3]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \mDLY[3]~26_combout\ = (mDLY(3) & (!\mDLY[2]~25\)) # (!mDLY(3) & ((\mDLY[2]~25\) # (GND)))
-- \mDLY[3]~27\ = CARRY((!\mDLY[2]~25\) # (!mDLY(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => mDLY(3),
	datad => VCC,
	cin => \mDLY[2]~25\,
	combout => \mDLY[3]~26_combout\,
	cout => \mDLY[3]~27\);

-- Location: FF_X3_Y46_N21
\mDLY[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mDLY[3]~26_combout\,
	sclr => \mDLY[0]~22_combout\,
	ena => \mDLY[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mDLY(3));

-- Location: LCCOMB_X3_Y46_N22
\mDLY[4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \mDLY[4]~28_combout\ = (mDLY(4) & (\mDLY[3]~27\ $ (GND))) # (!mDLY(4) & (!\mDLY[3]~27\ & VCC))
-- \mDLY[4]~29\ = CARRY((mDLY(4) & !\mDLY[3]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => mDLY(4),
	datad => VCC,
	cin => \mDLY[3]~27\,
	combout => \mDLY[4]~28_combout\,
	cout => \mDLY[4]~29\);

-- Location: FF_X3_Y46_N23
\mDLY[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mDLY[4]~28_combout\,
	sclr => \mDLY[0]~22_combout\,
	ena => \mDLY[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mDLY(4));

-- Location: LCCOMB_X3_Y46_N24
\mDLY[5]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \mDLY[5]~30_combout\ = (mDLY(5) & (!\mDLY[4]~29\)) # (!mDLY(5) & ((\mDLY[4]~29\) # (GND)))
-- \mDLY[5]~31\ = CARRY((!\mDLY[4]~29\) # (!mDLY(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => mDLY(5),
	datad => VCC,
	cin => \mDLY[4]~29\,
	combout => \mDLY[5]~30_combout\,
	cout => \mDLY[5]~31\);

-- Location: FF_X3_Y46_N25
\mDLY[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mDLY[5]~30_combout\,
	sclr => \mDLY[0]~22_combout\,
	ena => \mDLY[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mDLY(5));

-- Location: LCCOMB_X3_Y46_N26
\mDLY[6]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \mDLY[6]~32_combout\ = (mDLY(6) & (\mDLY[5]~31\ $ (GND))) # (!mDLY(6) & (!\mDLY[5]~31\ & VCC))
-- \mDLY[6]~33\ = CARRY((mDLY(6) & !\mDLY[5]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => mDLY(6),
	datad => VCC,
	cin => \mDLY[5]~31\,
	combout => \mDLY[6]~32_combout\,
	cout => \mDLY[6]~33\);

-- Location: FF_X3_Y46_N27
\mDLY[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mDLY[6]~32_combout\,
	sclr => \mDLY[0]~22_combout\,
	ena => \mDLY[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mDLY(6));

-- Location: LCCOMB_X3_Y46_N28
\mDLY[7]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \mDLY[7]~34_combout\ = (mDLY(7) & (!\mDLY[6]~33\)) # (!mDLY(7) & ((\mDLY[6]~33\) # (GND)))
-- \mDLY[7]~35\ = CARRY((!\mDLY[6]~33\) # (!mDLY(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => mDLY(7),
	datad => VCC,
	cin => \mDLY[6]~33\,
	combout => \mDLY[7]~34_combout\,
	cout => \mDLY[7]~35\);

-- Location: FF_X3_Y46_N29
\mDLY[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mDLY[7]~34_combout\,
	sclr => \mDLY[0]~22_combout\,
	ena => \mDLY[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mDLY(7));

-- Location: LCCOMB_X3_Y46_N30
\mDLY[8]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \mDLY[8]~36_combout\ = (mDLY(8) & (\mDLY[7]~35\ $ (GND))) # (!mDLY(8) & (!\mDLY[7]~35\ & VCC))
-- \mDLY[8]~37\ = CARRY((mDLY(8) & !\mDLY[7]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => mDLY(8),
	datad => VCC,
	cin => \mDLY[7]~35\,
	combout => \mDLY[8]~36_combout\,
	cout => \mDLY[8]~37\);

-- Location: FF_X3_Y46_N31
\mDLY[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mDLY[8]~36_combout\,
	sclr => \mDLY[0]~22_combout\,
	ena => \mDLY[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mDLY(8));

-- Location: LCCOMB_X3_Y45_N0
\mDLY[9]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \mDLY[9]~38_combout\ = (mDLY(9) & (!\mDLY[8]~37\)) # (!mDLY(9) & ((\mDLY[8]~37\) # (GND)))
-- \mDLY[9]~39\ = CARRY((!\mDLY[8]~37\) # (!mDLY(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => mDLY(9),
	datad => VCC,
	cin => \mDLY[8]~37\,
	combout => \mDLY[9]~38_combout\,
	cout => \mDLY[9]~39\);

-- Location: FF_X3_Y45_N1
\mDLY[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mDLY[9]~38_combout\,
	sclr => \mDLY[0]~22_combout\,
	ena => \mDLY[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mDLY(9));

-- Location: LCCOMB_X3_Y45_N2
\mDLY[10]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \mDLY[10]~40_combout\ = (mDLY(10) & (\mDLY[9]~39\ $ (GND))) # (!mDLY(10) & (!\mDLY[9]~39\ & VCC))
-- \mDLY[10]~41\ = CARRY((mDLY(10) & !\mDLY[9]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => mDLY(10),
	datad => VCC,
	cin => \mDLY[9]~39\,
	combout => \mDLY[10]~40_combout\,
	cout => \mDLY[10]~41\);

-- Location: FF_X3_Y45_N3
\mDLY[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mDLY[10]~40_combout\,
	sclr => \mDLY[0]~22_combout\,
	ena => \mDLY[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mDLY(10));

-- Location: LCCOMB_X3_Y45_N4
\mDLY[11]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \mDLY[11]~42_combout\ = (mDLY(11) & (!\mDLY[10]~41\)) # (!mDLY(11) & ((\mDLY[10]~41\) # (GND)))
-- \mDLY[11]~43\ = CARRY((!\mDLY[10]~41\) # (!mDLY(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => mDLY(11),
	datad => VCC,
	cin => \mDLY[10]~41\,
	combout => \mDLY[11]~42_combout\,
	cout => \mDLY[11]~43\);

-- Location: FF_X3_Y45_N5
\mDLY[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mDLY[11]~42_combout\,
	sclr => \mDLY[0]~22_combout\,
	ena => \mDLY[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mDLY(11));

-- Location: LCCOMB_X3_Y45_N6
\mDLY[12]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \mDLY[12]~44_combout\ = (mDLY(12) & (\mDLY[11]~43\ $ (GND))) # (!mDLY(12) & (!\mDLY[11]~43\ & VCC))
-- \mDLY[12]~45\ = CARRY((mDLY(12) & !\mDLY[11]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => mDLY(12),
	datad => VCC,
	cin => \mDLY[11]~43\,
	combout => \mDLY[12]~44_combout\,
	cout => \mDLY[12]~45\);

-- Location: FF_X3_Y45_N7
\mDLY[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mDLY[12]~44_combout\,
	sclr => \mDLY[0]~22_combout\,
	ena => \mDLY[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mDLY(12));

-- Location: LCCOMB_X3_Y45_N26
\LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = (((!mDLY(9)) # (!mDLY(10))) # (!mDLY(11))) # (!mDLY(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mDLY(12),
	datab => mDLY(11),
	datac => mDLY(10),
	datad => mDLY(9),
	combout => \LessThan1~3_combout\);

-- Location: LCCOMB_X3_Y45_N8
\mDLY[13]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \mDLY[13]~46_combout\ = (mDLY(13) & (!\mDLY[12]~45\)) # (!mDLY(13) & ((\mDLY[12]~45\) # (GND)))
-- \mDLY[13]~47\ = CARRY((!\mDLY[12]~45\) # (!mDLY(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => mDLY(13),
	datad => VCC,
	cin => \mDLY[12]~45\,
	combout => \mDLY[13]~46_combout\,
	cout => \mDLY[13]~47\);

-- Location: FF_X3_Y45_N9
\mDLY[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mDLY[13]~46_combout\,
	sclr => \mDLY[0]~22_combout\,
	ena => \mDLY[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mDLY(13));

-- Location: LCCOMB_X3_Y45_N10
\mDLY[14]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \mDLY[14]~48_combout\ = (mDLY(14) & (\mDLY[13]~47\ $ (GND))) # (!mDLY(14) & (!\mDLY[13]~47\ & VCC))
-- \mDLY[14]~49\ = CARRY((mDLY(14) & !\mDLY[13]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => mDLY(14),
	datad => VCC,
	cin => \mDLY[13]~47\,
	combout => \mDLY[14]~48_combout\,
	cout => \mDLY[14]~49\);

-- Location: FF_X3_Y45_N11
\mDLY[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mDLY[14]~48_combout\,
	sclr => \mDLY[0]~22_combout\,
	ena => \mDLY[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mDLY(14));

-- Location: LCCOMB_X3_Y45_N12
\mDLY[15]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \mDLY[15]~50_combout\ = (mDLY(15) & (!\mDLY[14]~49\)) # (!mDLY(15) & ((\mDLY[14]~49\) # (GND)))
-- \mDLY[15]~51\ = CARRY((!\mDLY[14]~49\) # (!mDLY(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => mDLY(15),
	datad => VCC,
	cin => \mDLY[14]~49\,
	combout => \mDLY[15]~50_combout\,
	cout => \mDLY[15]~51\);

-- Location: FF_X3_Y45_N13
\mDLY[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mDLY[15]~50_combout\,
	sclr => \mDLY[0]~22_combout\,
	ena => \mDLY[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mDLY(15));

-- Location: LCCOMB_X3_Y45_N14
\mDLY[16]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \mDLY[16]~52_combout\ = (mDLY(16) & (\mDLY[15]~51\ $ (GND))) # (!mDLY(16) & (!\mDLY[15]~51\ & VCC))
-- \mDLY[16]~53\ = CARRY((mDLY(16) & !\mDLY[15]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => mDLY(16),
	datad => VCC,
	cin => \mDLY[15]~51\,
	combout => \mDLY[16]~52_combout\,
	cout => \mDLY[16]~53\);

-- Location: FF_X3_Y45_N15
\mDLY[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mDLY[16]~52_combout\,
	sclr => \mDLY[0]~22_combout\,
	ena => \mDLY[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mDLY(16));

-- Location: LCCOMB_X3_Y45_N16
\mDLY[17]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \mDLY[17]~54_combout\ = \mDLY[16]~53\ $ (mDLY(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => mDLY(17),
	cin => \mDLY[16]~53\,
	combout => \mDLY[17]~54_combout\);

-- Location: FF_X3_Y45_N17
\mDLY[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mDLY[17]~54_combout\,
	sclr => \mDLY[0]~22_combout\,
	ena => \mDLY[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mDLY(17));

-- Location: LCCOMB_X3_Y45_N20
\LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~4_combout\ = (((!mDLY(15)) # (!mDLY(16))) # (!mDLY(13))) # (!mDLY(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mDLY(14),
	datab => mDLY(13),
	datac => mDLY(16),
	datad => mDLY(15),
	combout => \LessThan1~4_combout\);

-- Location: LCCOMB_X3_Y46_N10
\LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (!mDLY(7)) # (!mDLY(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mDLY(8),
	datad => mDLY(7),
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X3_Y46_N0
\LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (((!mDLY(1)) # (!mDLY(3))) # (!mDLY(2))) # (!mDLY(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mDLY(4),
	datab => mDLY(2),
	datac => mDLY(3),
	datad => mDLY(1),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X3_Y46_N8
\LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (\LessThan1~1_combout\) # (((\LessThan1~0_combout\) # (!mDLY(6))) # (!mDLY(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~1_combout\,
	datab => mDLY(5),
	datac => mDLY(6),
	datad => \LessThan1~0_combout\,
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X3_Y45_N18
\LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~5_combout\ = (\LessThan1~3_combout\) # (((\LessThan1~4_combout\) # (\LessThan1~2_combout\)) # (!mDLY(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~3_combout\,
	datab => mDLY(17),
	datac => \LessThan1~4_combout\,
	datad => \LessThan1~2_combout\,
	combout => \LessThan1~5_combout\);

-- Location: LCCOMB_X4_Y45_N22
\mLCD_ST~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \mLCD_ST~16_combout\ = (\iRST_N~input_o\ & (((!\u0|oDone~q\ & \mLCD_ST.000001~q\)) # (!\LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|oDone~q\,
	datab => \iRST_N~input_o\,
	datac => \LessThan0~0_combout\,
	datad => \mLCD_ST.000001~q\,
	combout => \mLCD_ST~16_combout\);

-- Location: LCCOMB_X3_Y45_N28
\mLCD_ST~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \mLCD_ST~17_combout\ = (\mLCD_ST~16_combout\) # ((\mLCD_ST.000010~q\ & (\iRST_N~input_o\ & \LessThan1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mLCD_ST.000010~q\,
	datab => \iRST_N~input_o\,
	datac => \LessThan1~5_combout\,
	datad => \mLCD_ST~16_combout\,
	combout => \mLCD_ST~17_combout\);

-- Location: LCCOMB_X3_Y45_N24
\mLCD_ST~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \mLCD_ST~21_combout\ = (\mLCD_ST~17_combout\ & (((\mLCD_ST.000001~q\)))) # (!\mLCD_ST~17_combout\ & (\mLCD_ST~20_combout\ & (\iRST_N~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mLCD_ST~20_combout\,
	datab => \iRST_N~input_o\,
	datac => \mLCD_ST.000001~q\,
	datad => \mLCD_ST~17_combout\,
	combout => \mLCD_ST~21_combout\);

-- Location: FF_X3_Y45_N25
\mLCD_ST.000001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mLCD_ST~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mLCD_ST.000001~q\);

-- Location: LCCOMB_X4_Y45_N26
\mLCD_ST~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \mLCD_ST~20_combout\ = (!\mLCD_ST.000001~q\ & (!\mLCD_ST.000010~q\ & !\mLCD_ST.000011~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mLCD_ST.000001~q\,
	datac => \mLCD_ST.000010~q\,
	datad => \mLCD_ST.000011~q\,
	combout => \mLCD_ST~20_combout\);

-- Location: LCCOMB_X4_Y45_N0
\Selector3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~2_combout\ = (\mLCD_ST.000001~q\ & \u0|oDone~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mLCD_ST.000001~q\,
	datad => \u0|oDone~q\,
	combout => \Selector3~2_combout\);

-- Location: LCCOMB_X4_Y45_N8
\mLCD_Start~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mLCD_Start~0_combout\ = (\LessThan0~0_combout\ & ((\mLCD_ST~20_combout\) # ((\mLCD_Start~q\ & !\Selector3~2_combout\)))) # (!\LessThan0~0_combout\ & (((\mLCD_Start~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mLCD_ST~20_combout\,
	datab => \LessThan0~0_combout\,
	datac => \mLCD_Start~q\,
	datad => \Selector3~2_combout\,
	combout => \mLCD_Start~0_combout\);

-- Location: FF_X4_Y45_N9
mLCD_Start : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mLCD_Start~0_combout\,
	sclr => \ALT_INV_iRST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mLCD_Start~q\);

-- Location: FF_X3_Y49_N29
\u0|preStart\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \mLCD_Start~q\,
	clrn => \iRST_N~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|preStart~q\);

-- Location: LCCOMB_X3_Y49_N4
\u0|mStart~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|mStart~0_combout\ = (\u0|mStart~q\ & (!\u0|ST.11~q\)) # (!\u0|mStart~q\ & (((\mLCD_Start~q\ & !\u0|preStart~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|ST.11~q\,
	datab => \mLCD_Start~q\,
	datac => \u0|mStart~q\,
	datad => \u0|preStart~q\,
	combout => \u0|mStart~0_combout\);

-- Location: FF_X3_Y49_N5
\u0|mStart\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \u0|mStart~0_combout\,
	clrn => \iRST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|mStart~q\);

-- Location: FF_X3_Y49_N7
\u0|ST.00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \u0|ST.00~0_combout\,
	clrn => \iRST_N~input_o\,
	ena => \u0|mStart~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|ST.00~q\);

-- Location: LCCOMB_X4_Y49_N12
\u0|ST.01~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|ST.01~0_combout\ = !\u0|ST.00~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|ST.00~q\,
	combout => \u0|ST.01~0_combout\);

-- Location: FF_X3_Y49_N21
\u0|ST.01\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \u0|ST.01~0_combout\,
	clrn => \iRST_N~input_o\,
	sload => VCC,
	ena => \u0|mStart~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|ST.01~q\);

-- Location: LCCOMB_X4_Y49_N0
\u0|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Selector2~0_combout\ = (\u0|ST.01~q\) # ((!\u0|Cont\(4) & \u0|ST.10~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Cont\(4),
	datac => \u0|ST.01~q\,
	datad => \u0|ST.10~q\,
	combout => \u0|Selector2~0_combout\);

-- Location: FF_X3_Y49_N19
\u0|ST.10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \u0|Selector2~0_combout\,
	clrn => \iRST_N~input_o\,
	sload => VCC,
	ena => \u0|mStart~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|ST.10~q\);

-- Location: LCCOMB_X4_Y49_N2
\u0|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Selector5~0_combout\ = (\u0|ST.01~q\) # (((\u0|ST.10~q\ & \u0|Cont\(4))) # (!\u0|ST.00~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|ST.01~q\,
	datab => \u0|ST.10~q\,
	datac => \u0|ST.00~q\,
	datad => \u0|Cont\(4),
	combout => \u0|Selector5~0_combout\);

-- Location: LCCOMB_X4_Y49_N24
\u0|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Selector2~1_combout\ = (!\u0|Cont\(4) & \u0|ST.10~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Cont\(4),
	datad => \u0|ST.10~q\,
	combout => \u0|Selector2~1_combout\);

-- Location: LCCOMB_X3_Y49_N14
\u0|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Add0~0_combout\ = \u0|Cont\(0) $ (VCC)
-- \u0|Add0~1\ = CARRY(\u0|Cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Cont\(0),
	datad => VCC,
	combout => \u0|Add0~0_combout\,
	cout => \u0|Add0~1\);

-- Location: LCCOMB_X3_Y49_N26
\u0|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Selector8~0_combout\ = (\u0|Selector5~0_combout\ & ((\u0|Cont\(0)) # ((\u0|Add0~0_combout\ & \u0|Selector2~1_combout\)))) # (!\u0|Selector5~0_combout\ & (\u0|Add0~0_combout\ & ((\u0|Selector2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Selector5~0_combout\,
	datab => \u0|Add0~0_combout\,
	datac => \u0|Cont\(0),
	datad => \u0|Selector2~1_combout\,
	combout => \u0|Selector8~0_combout\);

-- Location: FF_X3_Y49_N27
\u0|Cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \u0|Selector8~0_combout\,
	clrn => \iRST_N~input_o\,
	ena => \u0|mStart~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|Cont\(0));

-- Location: LCCOMB_X3_Y49_N16
\u0|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Add0~2_combout\ = (\u0|Cont\(1) & (!\u0|Add0~1\)) # (!\u0|Cont\(1) & ((\u0|Add0~1\) # (GND)))
-- \u0|Add0~3\ = CARRY((!\u0|Add0~1\) # (!\u0|Cont\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Cont\(1),
	datad => VCC,
	cin => \u0|Add0~1\,
	combout => \u0|Add0~2_combout\,
	cout => \u0|Add0~3\);

-- Location: LCCOMB_X3_Y49_N12
\u0|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Selector7~0_combout\ = (\u0|Selector5~0_combout\ & ((\u0|Cont\(1)) # ((\u0|Add0~2_combout\ & \u0|Selector2~1_combout\)))) # (!\u0|Selector5~0_combout\ & (\u0|Add0~2_combout\ & ((\u0|Selector2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Selector5~0_combout\,
	datab => \u0|Add0~2_combout\,
	datac => \u0|Cont\(1),
	datad => \u0|Selector2~1_combout\,
	combout => \u0|Selector7~0_combout\);

-- Location: FF_X3_Y49_N13
\u0|Cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \u0|Selector7~0_combout\,
	clrn => \iRST_N~input_o\,
	ena => \u0|mStart~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|Cont\(1));

-- Location: LCCOMB_X3_Y49_N18
\u0|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Add0~4_combout\ = (\u0|Cont\(2) & (\u0|Add0~3\ $ (GND))) # (!\u0|Cont\(2) & (!\u0|Add0~3\ & VCC))
-- \u0|Add0~5\ = CARRY((\u0|Cont\(2) & !\u0|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Cont\(2),
	datad => VCC,
	cin => \u0|Add0~3\,
	combout => \u0|Add0~4_combout\,
	cout => \u0|Add0~5\);

-- Location: LCCOMB_X3_Y49_N30
\u0|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Selector6~0_combout\ = (\u0|Selector5~0_combout\ & ((\u0|Cont\(2)) # ((\u0|Add0~4_combout\ & \u0|Selector2~1_combout\)))) # (!\u0|Selector5~0_combout\ & (\u0|Add0~4_combout\ & ((\u0|Selector2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Selector5~0_combout\,
	datab => \u0|Add0~4_combout\,
	datac => \u0|Cont\(2),
	datad => \u0|Selector2~1_combout\,
	combout => \u0|Selector6~0_combout\);

-- Location: FF_X3_Y49_N31
\u0|Cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \u0|Selector6~0_combout\,
	clrn => \iRST_N~input_o\,
	ena => \u0|mStart~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|Cont\(2));

-- Location: LCCOMB_X3_Y49_N20
\u0|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Add0~6_combout\ = (\u0|Cont\(3) & (!\u0|Add0~5\)) # (!\u0|Cont\(3) & ((\u0|Add0~5\) # (GND)))
-- \u0|Add0~7\ = CARRY((!\u0|Add0~5\) # (!\u0|Cont\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|Cont\(3),
	datad => VCC,
	cin => \u0|Add0~5\,
	combout => \u0|Add0~6_combout\,
	cout => \u0|Add0~7\);

-- Location: LCCOMB_X3_Y49_N24
\u0|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Selector5~1_combout\ = (\u0|Selector5~0_combout\ & ((\u0|Cont\(3)) # ((\u0|Selector2~1_combout\ & \u0|Add0~6_combout\)))) # (!\u0|Selector5~0_combout\ & (\u0|Selector2~1_combout\ & ((\u0|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Selector5~0_combout\,
	datab => \u0|Selector2~1_combout\,
	datac => \u0|Cont\(3),
	datad => \u0|Add0~6_combout\,
	combout => \u0|Selector5~1_combout\);

-- Location: FF_X3_Y49_N25
\u0|Cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \u0|Selector5~1_combout\,
	clrn => \iRST_N~input_o\,
	ena => \u0|mStart~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|Cont\(3));

-- Location: LCCOMB_X3_Y49_N22
\u0|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Add0~8_combout\ = \u0|Cont\(4) $ (!\u0|Add0~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|Cont\(4),
	cin => \u0|Add0~7\,
	combout => \u0|Add0~8_combout\);

-- Location: LCCOMB_X4_Y49_N6
\u0|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Selector4~0_combout\ = (\u0|Cont\(4) & (((\u0|ST.01~q\) # (\u0|ST.10~q\)) # (!\u0|ST.00~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Cont\(4),
	datab => \u0|ST.00~q\,
	datac => \u0|ST.01~q\,
	datad => \u0|ST.10~q\,
	combout => \u0|Selector4~0_combout\);

-- Location: LCCOMB_X3_Y49_N8
\u0|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Selector4~1_combout\ = (\u0|Selector4~0_combout\) # ((\u0|ST.10~q\ & \u0|Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|ST.10~q\,
	datac => \u0|Add0~8_combout\,
	datad => \u0|Selector4~0_combout\,
	combout => \u0|Selector4~1_combout\);

-- Location: FF_X3_Y49_N9
\u0|Cont[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \u0|Selector4~1_combout\,
	clrn => \iRST_N~input_o\,
	ena => \u0|mStart~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|Cont\(4));

-- Location: LCCOMB_X3_Y49_N10
\u0|ST~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|ST~14_combout\ = (\u0|Cont\(4) & \u0|ST.10~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|Cont\(4),
	datac => \u0|ST.10~q\,
	combout => \u0|ST~14_combout\);

-- Location: FF_X3_Y49_N11
\u0|ST.11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \u0|ST~14_combout\,
	clrn => \iRST_N~input_o\,
	ena => \u0|mStart~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|ST.11~q\);

-- Location: LCCOMB_X3_Y49_N28
\u0|oDone~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|oDone~0_combout\ = (\u0|oDone~q\ & ((\u0|preStart~q\) # (!\mLCD_Start~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mLCD_Start~q\,
	datac => \u0|preStart~q\,
	datad => \u0|oDone~q\,
	combout => \u0|oDone~0_combout\);

-- Location: LCCOMB_X3_Y49_N2
\u0|oDone~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|oDone~1_combout\ = (\u0|oDone~0_combout\) # ((\u0|ST.11~q\ & \u0|mStart~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|ST.11~q\,
	datab => \u0|mStart~q\,
	datad => \u0|oDone~0_combout\,
	combout => \u0|oDone~1_combout\);

-- Location: FF_X3_Y49_N3
\u0|oDone\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \u0|oDone~1_combout\,
	clrn => \iRST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|oDone~q\);

-- Location: LCCOMB_X4_Y45_N30
\Selector3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~3_combout\ = (\u0|oDone~q\ & ((\mLCD_ST.000001~q\) # ((\mLCD_ST.000010~q\ & \LessThan1~5_combout\)))) # (!\u0|oDone~q\ & (((\mLCD_ST.000010~q\ & \LessThan1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|oDone~q\,
	datab => \mLCD_ST.000001~q\,
	datac => \mLCD_ST.000010~q\,
	datad => \LessThan1~5_combout\,
	combout => \Selector3~3_combout\);

-- Location: LCCOMB_X4_Y45_N12
\mLCD_ST~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \mLCD_ST~19_combout\ = (\LessThan0~0_combout\) # (!\iRST_N~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan0~0_combout\,
	datad => \iRST_N~input_o\,
	combout => \mLCD_ST~19_combout\);

-- Location: FF_X4_Y45_N31
\mLCD_ST.000010\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Selector3~3_combout\,
	sclr => \ALT_INV_iRST_N~input_o\,
	ena => \mLCD_ST~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mLCD_ST.000010~q\);

-- Location: LCCOMB_X4_Y45_N28
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\mLCD_ST.000010~q\ & !\LessThan1~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mLCD_ST.000010~q\,
	datad => \LessThan1~5_combout\,
	combout => \Selector4~0_combout\);

-- Location: FF_X4_Y45_N29
\mLCD_ST.000011\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Selector4~0_combout\,
	sclr => \ALT_INV_iRST_N~input_o\,
	ena => \mLCD_ST~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mLCD_ST.000011~q\);

-- Location: LCCOMB_X2_Y44_N16
\LUT_INDEX[2]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_INDEX[2]~16_combout\ = ((\mLCD_ST.000011~q\ & \LessThan0~0_combout\)) # (!\iRST_N~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iRST_N~input_o\,
	datac => \mLCD_ST.000011~q\,
	datad => \LessThan0~0_combout\,
	combout => \LUT_INDEX[2]~16_combout\);

-- Location: FF_X3_Y44_N7
\LUT_INDEX[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \LUT_INDEX[0]~6_combout\,
	sclr => \ALT_INV_iRST_N~input_o\,
	ena => \LUT_INDEX[2]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_INDEX(0));

-- Location: FF_X3_Y44_N9
\LUT_INDEX[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \LUT_INDEX[1]~8_combout\,
	sclr => \ALT_INV_iRST_N~input_o\,
	ena => \LUT_INDEX[2]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_INDEX(1));

-- Location: LCCOMB_X4_Y44_N30
\Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (LUT_INDEX(2) & (LUT_INDEX(0) & (!LUT_INDEX(5) & !LUT_INDEX(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(2),
	datab => LUT_INDEX(0),
	datac => LUT_INDEX(5),
	datad => LUT_INDEX(4),
	combout => \Selector13~0_combout\);

-- Location: LCCOMB_X4_Y44_N16
\Selector13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~1_combout\ = (\Selector13~0_combout\ & (LUT_INDEX(1) $ (LUT_INDEX(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(1),
	datac => \Selector13~0_combout\,
	datad => LUT_INDEX(3),
	combout => \Selector13~1_combout\);

-- Location: LCCOMB_X4_Y44_N10
\LUT_DATA[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA[0]~2_combout\ = (!LUT_INDEX(2) & (!LUT_INDEX(1) & !LUT_INDEX(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(2),
	datac => LUT_INDEX(1),
	datad => LUT_INDEX(3),
	combout => \LUT_DATA[0]~2_combout\);

-- Location: LCCOMB_X3_Y44_N4
\LUT_DATA[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA[0]~1_combout\ = (LUT_INDEX(5) & ((LUT_INDEX(3)) # ((LUT_INDEX(4)) # (\LUT_DATA[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(3),
	datab => LUT_INDEX(5),
	datac => LUT_INDEX(4),
	datad => \LUT_DATA[0]~0_combout\,
	combout => \LUT_DATA[0]~1_combout\);

-- Location: LCCOMB_X4_Y44_N0
\Selector13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~2_combout\ = (!LUT_INDEX(5) & !LUT_INDEX(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => LUT_INDEX(5),
	datad => LUT_INDEX(4),
	combout => \Selector13~2_combout\);

-- Location: LCCOMB_X4_Y44_N24
\LUT_DATA[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA[0]~3_combout\ = (!\LUT_DATA[0]~1_combout\ & (((LUT_INDEX(0)) # (!\Selector13~2_combout\)) # (!\LUT_DATA[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LUT_DATA[0]~2_combout\,
	datab => LUT_INDEX(0),
	datac => \LUT_DATA[0]~1_combout\,
	datad => \Selector13~2_combout\,
	combout => \LUT_DATA[0]~3_combout\);

-- Location: FF_X4_Y44_N17
\LUT_DATA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Selector13~1_combout\,
	ena => \LUT_DATA[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_DATA(0));

-- Location: LCCOMB_X2_Y44_N12
\mLCD_DATA~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mLCD_DATA~0_combout\ = (\iRST_N~input_o\ & LUT_DATA(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iRST_N~input_o\,
	datac => LUT_DATA(0),
	combout => \mLCD_DATA~0_combout\);

-- Location: LCCOMB_X3_Y45_N30
\mLCD_ST~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \mLCD_ST~18_combout\ = (\mLCD_ST~17_combout\ & (((\mLCD_ST.000000~q\)))) # (!\mLCD_ST~17_combout\ & (!\mLCD_ST.000011~q\ & (\iRST_N~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mLCD_ST.000011~q\,
	datab => \iRST_N~input_o\,
	datac => \mLCD_ST.000000~q\,
	datad => \mLCD_ST~17_combout\,
	combout => \mLCD_ST~18_combout\);

-- Location: FF_X3_Y45_N31
\mLCD_ST.000000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mLCD_ST~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mLCD_ST.000000~q\);

-- Location: LCCOMB_X2_Y44_N2
\mLCD_DATA[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mLCD_DATA[1]~1_combout\ = ((!\mLCD_ST.000000~q\ & \LessThan0~0_combout\)) # (!\iRST_N~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iRST_N~input_o\,
	datac => \mLCD_ST.000000~q\,
	datad => \LessThan0~0_combout\,
	combout => \mLCD_DATA[1]~1_combout\);

-- Location: FF_X2_Y44_N13
\mLCD_DATA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mLCD_DATA~0_combout\,
	ena => \mLCD_DATA[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mLCD_DATA(0));

-- Location: LCCOMB_X3_Y44_N18
\Selector12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~2_combout\ = (LUT_INDEX(0) & ((LUT_INDEX(3) & (!LUT_INDEX(1) & !LUT_INDEX(2))) # (!LUT_INDEX(3) & (LUT_INDEX(1))))) # (!LUT_INDEX(0) & (!LUT_INDEX(3) & ((LUT_INDEX(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(0),
	datab => LUT_INDEX(3),
	datac => LUT_INDEX(1),
	datad => LUT_INDEX(2),
	combout => \Selector12~2_combout\);

-- Location: LCCOMB_X3_Y44_N26
\Selector12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~3_combout\ = (\Selector12~2_combout\ & (!LUT_INDEX(4) & !LUT_INDEX(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector12~2_combout\,
	datac => LUT_INDEX(4),
	datad => LUT_INDEX(5),
	combout => \Selector12~3_combout\);

-- Location: FF_X4_Y44_N15
\LUT_DATA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \Selector12~3_combout\,
	sload => VCC,
	ena => \LUT_DATA[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_DATA(1));

-- Location: LCCOMB_X2_Y44_N22
\mLCD_DATA~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mLCD_DATA~2_combout\ = (\iRST_N~input_o\ & LUT_DATA(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iRST_N~input_o\,
	datac => LUT_DATA(1),
	combout => \mLCD_DATA~2_combout\);

-- Location: FF_X2_Y44_N23
\mLCD_DATA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mLCD_DATA~2_combout\,
	ena => \mLCD_DATA[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mLCD_DATA(1));

-- Location: LCCOMB_X3_Y44_N28
\Selector11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~2_combout\ = (LUT_INDEX(0) & ((LUT_INDEX(3) & (!LUT_INDEX(1) & !LUT_INDEX(2))) # (!LUT_INDEX(3) & (LUT_INDEX(1) & LUT_INDEX(2))))) # (!LUT_INDEX(0) & (!LUT_INDEX(3) & (LUT_INDEX(1) $ (LUT_INDEX(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(0),
	datab => LUT_INDEX(3),
	datac => LUT_INDEX(1),
	datad => LUT_INDEX(2),
	combout => \Selector11~2_combout\);

-- Location: LCCOMB_X3_Y44_N24
\Selector11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~3_combout\ = (\Selector11~2_combout\ & (!LUT_INDEX(4) & !LUT_INDEX(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector11~2_combout\,
	datac => LUT_INDEX(4),
	datad => LUT_INDEX(5),
	combout => \Selector11~3_combout\);

-- Location: FF_X3_Y44_N25
\LUT_DATA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Selector11~3_combout\,
	ena => \LUT_DATA[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_DATA(2));

-- Location: LCCOMB_X2_Y44_N8
\mLCD_DATA~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mLCD_DATA~3_combout\ = (LUT_DATA(2) & \iRST_N~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => LUT_DATA(2),
	datac => \iRST_N~input_o\,
	combout => \mLCD_DATA~3_combout\);

-- Location: FF_X2_Y44_N9
\mLCD_DATA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mLCD_DATA~3_combout\,
	ena => \mLCD_DATA[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mLCD_DATA(2));

-- Location: LCCOMB_X3_Y44_N30
\Selector10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~2_combout\ = (LUT_INDEX(1) & ((LUT_INDEX(0) & ((LUT_INDEX(2)))) # (!LUT_INDEX(0) & (!LUT_INDEX(3))))) # (!LUT_INDEX(1) & (((LUT_INDEX(3)) # (!LUT_INDEX(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(0),
	datab => LUT_INDEX(3),
	datac => LUT_INDEX(1),
	datad => LUT_INDEX(2),
	combout => \Selector10~2_combout\);

-- Location: LCCOMB_X3_Y44_N22
\Selector10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~3_combout\ = (\Selector10~2_combout\ & (!LUT_INDEX(4) & !LUT_INDEX(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector10~2_combout\,
	datac => LUT_INDEX(4),
	datad => LUT_INDEX(5),
	combout => \Selector10~3_combout\);

-- Location: FF_X3_Y44_N23
\LUT_DATA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Selector10~3_combout\,
	ena => \LUT_DATA[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_DATA(3));

-- Location: LCCOMB_X2_Y44_N10
\mLCD_DATA~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mLCD_DATA~4_combout\ = (\iRST_N~input_o\ & LUT_DATA(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iRST_N~input_o\,
	datad => LUT_DATA(3),
	combout => \mLCD_DATA~4_combout\);

-- Location: FF_X2_Y44_N11
\mLCD_DATA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mLCD_DATA~4_combout\,
	ena => \mLCD_DATA[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mLCD_DATA(3));

-- Location: LCCOMB_X4_Y43_N0
\Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (LUT_INDEX(2) & LUT_INDEX(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => LUT_INDEX(2),
	datad => LUT_INDEX(1),
	combout => \Selector5~0_combout\);

-- Location: LCCOMB_X4_Y44_N28
\Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\Selector13~2_combout\ & ((\LUT_DATA[0]~2_combout\) # ((LUT_INDEX(3) & \Selector5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LUT_DATA[0]~2_combout\,
	datab => \Selector13~2_combout\,
	datac => LUT_INDEX(3),
	datad => \Selector5~0_combout\,
	combout => \Selector9~0_combout\);

-- Location: FF_X4_Y44_N29
\LUT_DATA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Selector9~0_combout\,
	ena => \LUT_DATA[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_DATA(4));

-- Location: LCCOMB_X2_Y44_N4
\mLCD_DATA~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mLCD_DATA~5_combout\ = (\iRST_N~input_o\ & LUT_DATA(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \iRST_N~input_o\,
	datad => LUT_DATA(4),
	combout => \mLCD_DATA~5_combout\);

-- Location: FF_X2_Y44_N5
\mLCD_DATA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mLCD_DATA~5_combout\,
	ena => \mLCD_DATA[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mLCD_DATA(4));

-- Location: LCCOMB_X4_Y44_N20
\Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~1_combout\ = (LUT_INDEX(1)) # ((LUT_INDEX(4)) # ((LUT_INDEX(2) & LUT_INDEX(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(2),
	datab => LUT_INDEX(0),
	datac => LUT_INDEX(1),
	datad => LUT_INDEX(4),
	combout => \Selector8~1_combout\);

-- Location: LCCOMB_X4_Y44_N22
\Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (LUT_INDEX(4) & (((LUT_INDEX(0))) # (!\Selector5~0_combout\))) # (!LUT_INDEX(4) & (((\LUT_DATA[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(4),
	datab => \Selector5~0_combout\,
	datac => LUT_INDEX(0),
	datad => \LUT_DATA[0]~2_combout\,
	combout => \Selector8~0_combout\);

-- Location: LCCOMB_X4_Y44_N26
\Selector8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~2_combout\ = (LUT_INDEX(5)) # ((\Selector8~0_combout\) # ((\Selector8~1_combout\ & LUT_INDEX(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(5),
	datab => \Selector8~1_combout\,
	datac => \Selector8~0_combout\,
	datad => LUT_INDEX(3),
	combout => \Selector8~2_combout\);

-- Location: FF_X4_Y44_N27
\LUT_DATA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Selector8~2_combout\,
	ena => \LUT_DATA[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_DATA(5));

-- Location: LCCOMB_X2_Y44_N14
\mLCD_DATA~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mLCD_DATA~6_combout\ = (\iRST_N~input_o\ & LUT_DATA(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iRST_N~input_o\,
	datac => LUT_DATA(5),
	combout => \mLCD_DATA~6_combout\);

-- Location: FF_X2_Y44_N15
\mLCD_DATA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mLCD_DATA~6_combout\,
	ena => \mLCD_DATA[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mLCD_DATA(5));

-- Location: LCCOMB_X4_Y44_N2
\Selector7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~4_combout\ = (!LUT_INDEX(4) & ((LUT_INDEX(2) & (LUT_INDEX(1))) # (!LUT_INDEX(2) & (!LUT_INDEX(1) & LUT_INDEX(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(2),
	datab => LUT_INDEX(4),
	datac => LUT_INDEX(1),
	datad => LUT_INDEX(3),
	combout => \Selector7~4_combout\);

-- Location: LCCOMB_X4_Y44_N12
\Selector7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~3_combout\ = (LUT_INDEX(1) & (LUT_INDEX(2) & ((!LUT_INDEX(3))))) # (!LUT_INDEX(1) & (((!LUT_INDEX(4) & LUT_INDEX(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(2),
	datab => LUT_INDEX(4),
	datac => LUT_INDEX(1),
	datad => LUT_INDEX(3),
	combout => \Selector7~3_combout\);

-- Location: LCCOMB_X4_Y44_N4
\Selector7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~8_combout\ = (!LUT_INDEX(5) & ((LUT_INDEX(0) & (\Selector7~4_combout\)) # (!LUT_INDEX(0) & ((\Selector7~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(5),
	datab => \Selector7~4_combout\,
	datac => LUT_INDEX(0),
	datad => \Selector7~3_combout\,
	combout => \Selector7~8_combout\);

-- Location: FF_X4_Y44_N5
\LUT_DATA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Selector7~8_combout\,
	ena => \LUT_DATA[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_DATA(6));

-- Location: LCCOMB_X2_Y44_N28
\mLCD_DATA~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mLCD_DATA~7_combout\ = (\iRST_N~input_o\ & LUT_DATA(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iRST_N~input_o\,
	datac => LUT_DATA(6),
	combout => \mLCD_DATA~7_combout\);

-- Location: FF_X2_Y44_N29
\mLCD_DATA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mLCD_DATA~7_combout\,
	ena => \mLCD_DATA[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mLCD_DATA(6));

-- Location: LCCOMB_X4_Y44_N14
\Selector6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~4_combout\ = (LUT_INDEX(4) & (!LUT_INDEX(0) & LUT_INDEX(1))) # (!LUT_INDEX(4) & (LUT_INDEX(0) & !LUT_INDEX(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(4),
	datab => LUT_INDEX(0),
	datad => LUT_INDEX(1),
	combout => \Selector6~4_combout\);

-- Location: LCCOMB_X4_Y44_N18
\Selector6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~9_combout\ = (LUT_INDEX(2) & (\Selector6~4_combout\ & (!LUT_INDEX(5) & !LUT_INDEX(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(2),
	datab => \Selector6~4_combout\,
	datac => LUT_INDEX(5),
	datad => LUT_INDEX(3),
	combout => \Selector6~9_combout\);

-- Location: FF_X4_Y44_N19
\LUT_DATA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Selector6~9_combout\,
	ena => \LUT_DATA[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_DATA(7));

-- Location: LCCOMB_X2_Y44_N6
\mLCD_DATA~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mLCD_DATA~8_combout\ = (\iRST_N~input_o\ & LUT_DATA(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iRST_N~input_o\,
	datac => LUT_DATA(7),
	combout => \mLCD_DATA~8_combout\);

-- Location: FF_X2_Y44_N7
\mLCD_DATA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mLCD_DATA~8_combout\,
	ena => \mLCD_DATA[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mLCD_DATA(7));

-- Location: LCCOMB_X3_Y49_N0
\u0|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Selector3~0_combout\ = (\u0|ST.01~q\) # ((\u0|LCD_EN~q\ & ((\u0|ST.10~q\) # (!\u0|ST.00~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|ST.10~q\,
	datab => \u0|ST.01~q\,
	datac => \u0|LCD_EN~q\,
	datad => \u0|ST.00~q\,
	combout => \u0|Selector3~0_combout\);

-- Location: FF_X3_Y49_N1
\u0|LCD_EN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \u0|Selector3~0_combout\,
	clrn => \iRST_N~input_o\,
	ena => \u0|mStart~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|LCD_EN~q\);

-- Location: LCCOMB_X4_Y44_N6
\Selector7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~7_combout\ = (!LUT_INDEX(5) & !LUT_INDEX(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => LUT_INDEX(5),
	datad => LUT_INDEX(3),
	combout => \Selector7~7_combout\);

-- Location: LCCOMB_X4_Y44_N8
\Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~1_combout\ = ((LUT_INDEX(4) & ((LUT_INDEX(0)) # (!\Selector5~0_combout\))) # (!LUT_INDEX(4) & (\Selector5~0_combout\))) # (!\Selector7~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(4),
	datab => \Selector5~0_combout\,
	datac => LUT_INDEX(0),
	datad => \Selector7~7_combout\,
	combout => \Selector5~1_combout\);

-- Location: FF_X4_Y44_N9
\LUT_DATA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Selector5~1_combout\,
	ena => \LUT_DATA[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_DATA(8));

-- Location: LCCOMB_X2_Y44_N24
\mLCD_RS~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mLCD_RS~0_combout\ = (\iRST_N~input_o\ & LUT_DATA(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iRST_N~input_o\,
	datac => LUT_DATA(8),
	combout => \mLCD_RS~0_combout\);

-- Location: FF_X2_Y44_N25
mLCD_RS : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mLCD_RS~0_combout\,
	ena => \mLCD_DATA[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mLCD_RS~q\);

ww_LCD_DATA(0) <= \LCD_DATA[0]~output_o\;

ww_LCD_DATA(1) <= \LCD_DATA[1]~output_o\;

ww_LCD_DATA(2) <= \LCD_DATA[2]~output_o\;

ww_LCD_DATA(3) <= \LCD_DATA[3]~output_o\;

ww_LCD_DATA(4) <= \LCD_DATA[4]~output_o\;

ww_LCD_DATA(5) <= \LCD_DATA[5]~output_o\;

ww_LCD_DATA(6) <= \LCD_DATA[6]~output_o\;

ww_LCD_DATA(7) <= \LCD_DATA[7]~output_o\;

ww_LCD_RW <= \LCD_RW~output_o\;

ww_LCD_EN <= \LCD_EN~output_o\;

ww_LCD_RS <= \LCD_RS~output_o\;
END structure;


