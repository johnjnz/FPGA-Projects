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

-- DATE "08/29/2015 17:13:50"

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

ENTITY 	SPI_Slave_Test IS
    PORT (
	clk : IN std_logic;
	reset_n : IN std_logic;
	sclk : IN std_logic;
	ss_n : IN std_logic;
	mosi : IN std_logic;
	miso : BUFFER std_logic;
	trdy : BUFFER std_logic
	);
END SPI_Slave_Test;

-- Design Ports Information
-- miso	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- trdy	=>  Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- reset_n	=>  Location: PIN_Y17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sclk	=>  Location: PIN_AB22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ss_n	=>  Location: PIN_AC15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mosi	=>  Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SPI_Slave_Test IS
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
SIGNAL ww_reset_n : std_logic;
SIGNAL ww_sclk : std_logic;
SIGNAL ww_ss_n : std_logic;
SIGNAL ww_mosi : std_logic;
SIGNAL ww_miso : std_logic;
SIGNAL ww_trdy : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \spi_slave_0|process_1~5clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \spi_slave_0|trdy~7clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \miso~output_o\ : std_logic;
SIGNAL \trdy~output_o\ : std_logic;
SIGNAL \sclk~input_o\ : std_logic;
SIGNAL \ss_n~input_o\ : std_logic;
SIGNAL \reset_n~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \mosi~input_o\ : std_logic;
SIGNAL \spi_slave_0|bit_cnt[1]~feeder_combout\ : std_logic;
SIGNAL \spi_slave_0|process_0~0_combout\ : std_logic;
SIGNAL \spi_slave_0|wr_add~0_combout\ : std_logic;
SIGNAL \spi_slave_0|wr_add~q\ : std_logic;
SIGNAL \spi_slave_0|bit_cnt[2]~0_combout\ : std_logic;
SIGNAL \spi_slave_0|bit_cnt[4]~feeder_combout\ : std_logic;
SIGNAL \spi_slave_0|bit_cnt[6]~feeder_combout\ : std_logic;
SIGNAL \spi_slave_0|bit_cnt[7]~feeder_combout\ : std_logic;
SIGNAL \spi_slave_0|bit_cnt[8]~feeder_combout\ : std_logic;
SIGNAL \spi_slave_0|rx_buf[24]~0_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \spi_rx_req~q\ : std_logic;
SIGNAL \spi_slave_0|process_1~5_combout\ : std_logic;
SIGNAL \spi_slave_0|process_1~5clkctrl_outclk\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \state.spi_load_tx~q\ : std_logic;
SIGNAL \spi_slave_0|bit_cnt[10]~feeder_combout\ : std_logic;
SIGNAL \spi_slave_0|bit_cnt[15]~feeder_combout\ : std_logic;
SIGNAL \spi_slave_0|bit_cnt[16]~feeder_combout\ : std_logic;
SIGNAL \spi_slave_0|bit_cnt[18]~feeder_combout\ : std_logic;
SIGNAL \spi_slave_0|bit_cnt[19]~feeder_combout\ : std_logic;
SIGNAL \spi_slave_0|bit_cnt[20]~feeder_combout\ : std_logic;
SIGNAL \spi_slave_0|bit_cnt[21]~feeder_combout\ : std_logic;
SIGNAL \spi_slave_0|bit_cnt[25]~feeder_combout\ : std_logic;
SIGNAL \spi_slave_0|bit_cnt[29]~feeder_combout\ : std_logic;
SIGNAL \spi_slave_0|bit_cnt[30]~feeder_combout\ : std_logic;
SIGNAL \spi_slave_0|bit_cnt[31]~feeder_combout\ : std_logic;
SIGNAL \spi_slave_0|bit_cnt[32]~feeder_combout\ : std_logic;
SIGNAL \spi_slave_0|bit_cnt[33]~feeder_combout\ : std_logic;
SIGNAL \spi_slave_0|rrdy~0_combout\ : std_logic;
SIGNAL \spi_slave_0|rrdy~1_combout\ : std_logic;
SIGNAL \spi_slave_0|process_1~3_combout\ : std_logic;
SIGNAL \spi_slave_0|rrdy~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \state.ready~q\ : std_logic;
SIGNAL \state~7_combout\ : std_logic;
SIGNAL \state.spi_rx~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \spi_tx_ena~q\ : std_logic;
SIGNAL \spi_slave_0|trdy~7_combout\ : std_logic;
SIGNAL \spi_slave_0|trdy~1_combout\ : std_logic;
SIGNAL \spi_slave_0|rd_add~0_combout\ : std_logic;
SIGNAL \spi_slave_0|rd_add~q\ : std_logic;
SIGNAL \spi_slave_0|process_1~2_combout\ : std_logic;
SIGNAL \spi_slave_0|trdy~6_combout\ : std_logic;
SIGNAL \spi_slave_0|trdy~3_combout\ : std_logic;
SIGNAL \spi_slave_0|trdy~0_combout\ : std_logic;
SIGNAL \spi_slave_0|trdy~_emulated_q\ : std_logic;
SIGNAL \spi_slave_0|trdy~2_combout\ : std_logic;
SIGNAL \message[24]~feeder_combout\ : std_logic;
SIGNAL \message[24]~0_combout\ : std_logic;
SIGNAL \spi_tx_data[24]~feeder_combout\ : std_logic;
SIGNAL \spi_tx_data[24]~0_combout\ : std_logic;
SIGNAL \spi_slave_0|rx_buf[23]~1_combout\ : std_logic;
SIGNAL \message[23]~feeder_combout\ : std_logic;
SIGNAL \spi_tx_data[23]~feeder_combout\ : std_logic;
SIGNAL \spi_slave_0|trdy~7clkctrl_outclk\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[23]~6_combout\ : std_logic;
SIGNAL \spi_slave_0|rx_buf[22]~2_combout\ : std_logic;
SIGNAL \message[22]~feeder_combout\ : std_logic;
SIGNAL \spi_tx_data[22]~feeder_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[22]~11_combout\ : std_logic;
SIGNAL \spi_slave_0|rx_buf[21]~3_combout\ : std_logic;
SIGNAL \message[21]~feeder_combout\ : std_logic;
SIGNAL \spi_tx_data[21]~feeder_combout\ : std_logic;
SIGNAL \spi_slave_0|rx_buf[20]~4_combout\ : std_logic;
SIGNAL \message[20]~feeder_combout\ : std_logic;
SIGNAL \spi_slave_0|rx_buf[18]~6_combout\ : std_logic;
SIGNAL \message[18]~feeder_combout\ : std_logic;
SIGNAL \spi_tx_data[18]~feeder_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[18]~31_combout\ : std_logic;
SIGNAL \spi_slave_0|rx_buf[17]~7_combout\ : std_logic;
SIGNAL \message[17]~feeder_combout\ : std_logic;
SIGNAL \spi_slave_0|rx_buf[16]~8_combout\ : std_logic;
SIGNAL \message[16]~feeder_combout\ : std_logic;
SIGNAL \spi_slave_0|rx_buf[15]~9_combout\ : std_logic;
SIGNAL \message[15]~feeder_combout\ : std_logic;
SIGNAL \spi_slave_0|rx_buf[14]~10_combout\ : std_logic;
SIGNAL \message[14]~feeder_combout\ : std_logic;
SIGNAL \spi_slave_0|rx_buf[13]~11_combout\ : std_logic;
SIGNAL \message[13]~feeder_combout\ : std_logic;
SIGNAL \spi_tx_data[13]~feeder_combout\ : std_logic;
SIGNAL \spi_slave_0|rx_buf[12]~12_combout\ : std_logic;
SIGNAL \message[12]~feeder_combout\ : std_logic;
SIGNAL \spi_tx_data[12]~feeder_combout\ : std_logic;
SIGNAL \spi_slave_0|rx_buf[11]~13_combout\ : std_logic;
SIGNAL \message[11]~feeder_combout\ : std_logic;
SIGNAL \spi_tx_data[11]~feeder_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[11]~66_combout\ : std_logic;
SIGNAL \spi_slave_0|rx_buf[10]~14_combout\ : std_logic;
SIGNAL \message[10]~feeder_combout\ : std_logic;
SIGNAL \spi_tx_data[10]~feeder_combout\ : std_logic;
SIGNAL \spi_slave_0|rx_buf[9]~15_combout\ : std_logic;
SIGNAL \message[9]~feeder_combout\ : std_logic;
SIGNAL \spi_slave_0|rx_buf[8]~16_combout\ : std_logic;
SIGNAL \message[8]~feeder_combout\ : std_logic;
SIGNAL \spi_slave_0|rx_buf[7]~17_combout\ : std_logic;
SIGNAL \message[7]~feeder_combout\ : std_logic;
SIGNAL \spi_tx_data[7]~feeder_combout\ : std_logic;
SIGNAL \spi_slave_0|rx_buf[6]~18_combout\ : std_logic;
SIGNAL \message[6]~feeder_combout\ : std_logic;
SIGNAL \spi_slave_0|rx_buf[5]~19_combout\ : std_logic;
SIGNAL \message[5]~feeder_combout\ : std_logic;
SIGNAL \spi_slave_0|rx_buf[4]~20_combout\ : std_logic;
SIGNAL \message[4]~feeder_combout\ : std_logic;
SIGNAL \spi_tx_data[4]~feeder_combout\ : std_logic;
SIGNAL \spi_slave_0|rx_buf[3]~21_combout\ : std_logic;
SIGNAL \message[3]~feeder_combout\ : std_logic;
SIGNAL \spi_tx_data[3]~feeder_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[3]~106_combout\ : std_logic;
SIGNAL \spi_slave_0|rx_buf[2]~22_combout\ : std_logic;
SIGNAL \message[2]~feeder_combout\ : std_logic;
SIGNAL \spi_tx_data[2]~feeder_combout\ : std_logic;
SIGNAL \spi_slave_0|rx_buf[1]~23_combout\ : std_logic;
SIGNAL \message[1]~feeder_combout\ : std_logic;
SIGNAL \spi_tx_data[1]~feeder_combout\ : std_logic;
SIGNAL \spi_slave_0|rx_buf[0]~24_combout\ : std_logic;
SIGNAL \message[0]~feeder_combout\ : std_logic;
SIGNAL \spi_tx_data[0]~feeder_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[0]~121_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[0]~124_combout\ : std_logic;
SIGNAL \spi_slave_0|process_1~1_combout\ : std_logic;
SIGNAL \spi_slave_0|process_1~0_combout\ : std_logic;
SIGNAL \spi_slave_0|process_1~4_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[0]~_emulated_q\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[0]~123_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[0]~122_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[1]~116_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[1]~119_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[1]~_emulated_q\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[1]~118_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[1]~117_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[2]~111_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[2]~114_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[2]~_emulated_q\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[2]~113_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[2]~112_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[3]~109_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[3]~_emulated_q\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[3]~108_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[3]~107_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[4]~101_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[4]~104_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[4]~_emulated_q\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[4]~103_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[4]~102_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[5]~96_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[5]~99_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[5]~_emulated_q\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[5]~98_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[5]~97_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[6]~91_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[6]~94_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[6]~_emulated_q\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[6]~93_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[6]~92_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[7]~86_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[7]~89_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[7]~_emulated_q\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[7]~88_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[7]~87_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[8]~81_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[8]~84_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[8]~_emulated_q\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[8]~83_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[8]~82_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[9]~76_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[9]~79_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[9]~_emulated_q\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[9]~78_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[9]~77_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[10]~71_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[10]~74_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[10]~_emulated_q\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[10]~73_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[10]~72_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[11]~69_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[11]~_emulated_q\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[11]~68_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[11]~67_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[12]~61_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[12]~64_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[12]~_emulated_q\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[12]~63_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[12]~62_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[13]~56_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[13]~59_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[13]~_emulated_q\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[13]~58_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[13]~57_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[14]~51_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[14]~54_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[14]~_emulated_q\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[14]~53_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[14]~52_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[15]~46_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[15]~49_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[15]~_emulated_q\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[15]~48_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[15]~47_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[16]~41_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[16]~44_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[16]~_emulated_q\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[16]~43_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[16]~42_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[17]~36_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[17]~39_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[17]~_emulated_q\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[17]~38_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[17]~37_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[18]~34_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[18]~_emulated_q\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[18]~33_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[18]~32_combout\ : std_logic;
SIGNAL \spi_slave_0|rx_buf[19]~5_combout\ : std_logic;
SIGNAL \message[19]~feeder_combout\ : std_logic;
SIGNAL \spi_tx_data[19]~feeder_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[19]~26_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[19]~29_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[19]~_emulated_q\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[19]~28_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[19]~27_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[20]~21_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[20]~24_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[20]~_emulated_q\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[20]~23_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[20]~22_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[21]~16_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[21]~19_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[21]~_emulated_q\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[21]~18_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[21]~17_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[22]~14_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[22]~_emulated_q\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[22]~13_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[22]~12_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[23]~9_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[23]~_emulated_q\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[23]~8_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[23]~7_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[24]~1_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[24]~4_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[24]~_emulated_q\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[24]~3_combout\ : std_logic;
SIGNAL \spi_slave_0|tx_buf[24]~2_combout\ : std_logic;
SIGNAL \spi_slave_0|miso~0_combout\ : std_logic;
SIGNAL \spi_slave_0|roe~0_combout\ : std_logic;
SIGNAL \spi_slave_0|roe~1_combout\ : std_logic;
SIGNAL \spi_slave_0|roe~q\ : std_logic;
SIGNAL \spi_slave_0|miso~1_combout\ : std_logic;
SIGNAL \spi_slave_0|miso~2_combout\ : std_logic;
SIGNAL \spi_slave_0|miso~3_combout\ : std_logic;
SIGNAL \spi_slave_0|miso~4_combout\ : std_logic;
SIGNAL \spi_slave_0|miso~reg0_q\ : std_logic;
SIGNAL \spi_slave_0|miso~enfeeder_combout\ : std_logic;
SIGNAL \spi_slave_0|miso~en_q\ : std_logic;
SIGNAL \spi_slave_0|bit_cnt\ : std_logic_vector(33 DOWNTO 0);
SIGNAL spi_tx_data : std_logic_vector(24 DOWNTO 0);
SIGNAL \spi_slave_0|rx_data\ : std_logic_vector(24 DOWNTO 0);
SIGNAL message : std_logic_vector(24 DOWNTO 0);
SIGNAL \spi_slave_0|rx_buf\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \spi_slave_0|ALT_INV_process_1~3_combout\ : std_logic;
SIGNAL \spi_slave_0|ALT_INV_trdy~0_combout\ : std_logic;
SIGNAL \spi_slave_0|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \ALT_INV_sclk~input_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset_n <= reset_n;
ww_sclk <= sclk;
ww_ss_n <= ss_n;
ww_mosi <= mosi;
miso <= ww_miso;
trdy <= ww_trdy;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\spi_slave_0|process_1~5clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \spi_slave_0|process_1~5_combout\);

\spi_slave_0|trdy~7clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \spi_slave_0|trdy~7_combout\);
\spi_slave_0|ALT_INV_process_1~3_combout\ <= NOT \spi_slave_0|process_1~3_combout\;
\spi_slave_0|ALT_INV_trdy~0_combout\ <= NOT \spi_slave_0|trdy~0_combout\;
\spi_slave_0|ALT_INV_process_0~0_combout\ <= NOT \spi_slave_0|process_0~0_combout\;
\ALT_INV_sclk~input_o\ <= NOT \sclk~input_o\;

-- Location: IOOBUF_X109_Y0_N9
\miso~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spi_slave_0|miso~reg0_q\,
	oe => \spi_slave_0|miso~en_q\,
	devoe => ww_devoe,
	o => \miso~output_o\);

-- Location: IOOBUF_X96_Y0_N16
\trdy~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \spi_slave_0|trdy~2_combout\,
	devoe => ww_devoe,
	o => \trdy~output_o\);

-- Location: IOIBUF_X107_Y0_N1
\sclk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sclk,
	o => \sclk~input_o\);

-- Location: IOIBUF_X60_Y0_N22
\ss_n~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ss_n,
	o => \ss_n~input_o\);

-- Location: IOIBUF_X96_Y0_N22
\reset_n~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_n,
	o => \reset_n~input_o\);

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

-- Location: IOIBUF_X102_Y0_N22
\mosi~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mosi,
	o => \mosi~input_o\);

-- Location: LCCOMB_X101_Y1_N10
\spi_slave_0|bit_cnt[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|bit_cnt[1]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \spi_slave_0|bit_cnt[1]~feeder_combout\);

-- Location: LCCOMB_X100_Y1_N16
\spi_slave_0|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|process_0~0_combout\ = (\ss_n~input_o\) # (!\reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset_n~input_o\,
	datad => \ss_n~input_o\,
	combout => \spi_slave_0|process_0~0_combout\);

-- Location: FF_X101_Y1_N11
\spi_slave_0|bit_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \spi_slave_0|bit_cnt[1]~feeder_combout\,
	clrn => \spi_slave_0|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|bit_cnt\(1));

-- Location: LCCOMB_X102_Y1_N20
\spi_slave_0|wr_add~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|wr_add~0_combout\ = (\spi_slave_0|bit_cnt\(1) & ((\spi_slave_0|wr_add~q\))) # (!\spi_slave_0|bit_cnt\(1) & (\mosi~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mosi~input_o\,
	datac => \spi_slave_0|wr_add~q\,
	datad => \spi_slave_0|bit_cnt\(1),
	combout => \spi_slave_0|wr_add~0_combout\);

-- Location: FF_X102_Y1_N21
\spi_slave_0|wr_add\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \spi_slave_0|wr_add~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|wr_add~q\);

-- Location: LCCOMB_X101_Y1_N8
\spi_slave_0|bit_cnt[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|bit_cnt[2]~0_combout\ = !\spi_slave_0|bit_cnt\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_slave_0|bit_cnt\(1),
	combout => \spi_slave_0|bit_cnt[2]~0_combout\);

-- Location: FF_X101_Y1_N9
\spi_slave_0|bit_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \spi_slave_0|bit_cnt[2]~0_combout\,
	clrn => \spi_slave_0|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|bit_cnt\(2));

-- Location: FF_X101_Y1_N1
\spi_slave_0|bit_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	asdata => \spi_slave_0|bit_cnt\(2),
	clrn => \spi_slave_0|ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|bit_cnt\(3));

-- Location: LCCOMB_X101_Y1_N2
\spi_slave_0|bit_cnt[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|bit_cnt[4]~feeder_combout\ = \spi_slave_0|bit_cnt\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_slave_0|bit_cnt\(3),
	combout => \spi_slave_0|bit_cnt[4]~feeder_combout\);

-- Location: FF_X101_Y1_N3
\spi_slave_0|bit_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \spi_slave_0|bit_cnt[4]~feeder_combout\,
	clrn => \spi_slave_0|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|bit_cnt\(4));

-- Location: FF_X101_Y1_N13
\spi_slave_0|bit_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	asdata => \spi_slave_0|bit_cnt\(4),
	clrn => \spi_slave_0|ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|bit_cnt\(5));

-- Location: LCCOMB_X101_Y1_N24
\spi_slave_0|bit_cnt[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|bit_cnt[6]~feeder_combout\ = \spi_slave_0|bit_cnt\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_slave_0|bit_cnt\(5),
	combout => \spi_slave_0|bit_cnt[6]~feeder_combout\);

-- Location: FF_X101_Y1_N25
\spi_slave_0|bit_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \spi_slave_0|bit_cnt[6]~feeder_combout\,
	clrn => \spi_slave_0|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|bit_cnt\(6));

-- Location: LCCOMB_X101_Y1_N30
\spi_slave_0|bit_cnt[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|bit_cnt[7]~feeder_combout\ = \spi_slave_0|bit_cnt\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_slave_0|bit_cnt\(6),
	combout => \spi_slave_0|bit_cnt[7]~feeder_combout\);

-- Location: FF_X101_Y1_N31
\spi_slave_0|bit_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \spi_slave_0|bit_cnt[7]~feeder_combout\,
	clrn => \spi_slave_0|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|bit_cnt\(7));

-- Location: LCCOMB_X101_Y2_N26
\spi_slave_0|bit_cnt[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|bit_cnt[8]~feeder_combout\ = \spi_slave_0|bit_cnt\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi_slave_0|bit_cnt\(7),
	combout => \spi_slave_0|bit_cnt[8]~feeder_combout\);

-- Location: FF_X101_Y2_N27
\spi_slave_0|bit_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \spi_slave_0|bit_cnt[8]~feeder_combout\,
	clrn => \spi_slave_0|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|bit_cnt\(8));

-- Location: FF_X101_Y2_N29
\spi_slave_0|bit_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	asdata => \spi_slave_0|bit_cnt\(8),
	clrn => \spi_slave_0|ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|bit_cnt\(9));

-- Location: LCCOMB_X103_Y1_N12
\spi_slave_0|rx_buf[24]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|rx_buf[24]~0_combout\ = (\spi_slave_0|wr_add~q\ & (((\spi_slave_0|rx_buf\(24))))) # (!\spi_slave_0|wr_add~q\ & ((\spi_slave_0|bit_cnt\(9) & (\mosi~input_o\)) # (!\spi_slave_0|bit_cnt\(9) & ((\spi_slave_0|rx_buf\(24))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mosi~input_o\,
	datab => \spi_slave_0|wr_add~q\,
	datac => \spi_slave_0|rx_buf\(24),
	datad => \spi_slave_0|bit_cnt\(9),
	combout => \spi_slave_0|rx_buf[24]~0_combout\);

-- Location: FF_X103_Y1_N13
\spi_slave_0|rx_buf[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \spi_slave_0|rx_buf[24]~0_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|rx_buf\(24));

-- Location: LCCOMB_X96_Y1_N14
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\state~7_combout\) # ((\spi_rx_req~q\ & ((\state.spi_load_tx~q\) # (!\state.ready~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.spi_load_tx~q\,
	datab => \state.ready~q\,
	datac => \spi_rx_req~q\,
	datad => \state~7_combout\,
	combout => \Selector1~0_combout\);

-- Location: FF_X96_Y1_N15
spi_rx_req : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector1~0_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_rx_req~q\);

-- Location: LCCOMB_X59_Y1_N30
\spi_slave_0|process_1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|process_1~5_combout\ = (\ss_n~input_o\ & \spi_rx_req~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ss_n~input_o\,
	datad => \spi_rx_req~q\,
	combout => \spi_slave_0|process_1~5_combout\);

-- Location: CLKCTRL_G16
\spi_slave_0|process_1~5clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \spi_slave_0|process_1~5clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \spi_slave_0|process_1~5clkctrl_outclk\);

-- Location: LCCOMB_X98_Y1_N24
\spi_slave_0|rx_data[24]\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|rx_data\(24) = (\reset_n~input_o\ & ((GLOBAL(\spi_slave_0|process_1~5clkctrl_outclk\) & (\spi_slave_0|rx_buf\(24))) # (!GLOBAL(\spi_slave_0|process_1~5clkctrl_outclk\) & ((\spi_slave_0|rx_data\(24))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_slave_0|rx_buf\(24),
	datab => \spi_slave_0|rx_data\(24),
	datac => \spi_slave_0|process_1~5clkctrl_outclk\,
	datad => \reset_n~input_o\,
	combout => \spi_slave_0|rx_data\(24));

-- Location: LCCOMB_X97_Y1_N28
\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\state.spi_rx~q\ & ((\spi_slave_0|rx_data\(24)) # ((!\ss_n~input_o\ & \state.spi_load_tx~q\)))) # (!\state.spi_rx~q\ & (!\ss_n~input_o\ & (\state.spi_load_tx~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.spi_rx~q\,
	datab => \ss_n~input_o\,
	datac => \state.spi_load_tx~q\,
	datad => \spi_slave_0|rx_data\(24),
	combout => \Selector3~0_combout\);

-- Location: FF_X97_Y1_N29
\state.spi_load_tx\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector3~0_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.spi_load_tx~q\);

-- Location: LCCOMB_X101_Y1_N26
\spi_slave_0|bit_cnt[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|bit_cnt[10]~feeder_combout\ = \spi_slave_0|bit_cnt\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_slave_0|bit_cnt\(9),
	combout => \spi_slave_0|bit_cnt[10]~feeder_combout\);

-- Location: FF_X101_Y1_N27
\spi_slave_0|bit_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \spi_slave_0|bit_cnt[10]~feeder_combout\,
	clrn => \spi_slave_0|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|bit_cnt\(10));

-- Location: FF_X101_Y1_N23
\spi_slave_0|bit_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	asdata => \spi_slave_0|bit_cnt\(10),
	clrn => \spi_slave_0|ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|bit_cnt\(11));

-- Location: FF_X101_Y1_N21
\spi_slave_0|bit_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	asdata => \spi_slave_0|bit_cnt\(11),
	clrn => \spi_slave_0|ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|bit_cnt\(12));

-- Location: FF_X101_Y1_N15
\spi_slave_0|bit_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	asdata => \spi_slave_0|bit_cnt\(12),
	clrn => \spi_slave_0|ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|bit_cnt\(13));

-- Location: FF_X101_Y1_N17
\spi_slave_0|bit_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	asdata => \spi_slave_0|bit_cnt\(13),
	clrn => \spi_slave_0|ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|bit_cnt\(14));

-- Location: LCCOMB_X100_Y1_N4
\spi_slave_0|bit_cnt[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|bit_cnt[15]~feeder_combout\ = \spi_slave_0|bit_cnt\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_slave_0|bit_cnt\(14),
	combout => \spi_slave_0|bit_cnt[15]~feeder_combout\);

-- Location: FF_X100_Y1_N5
\spi_slave_0|bit_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \spi_slave_0|bit_cnt[15]~feeder_combout\,
	clrn => \spi_slave_0|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|bit_cnt\(15));

-- Location: LCCOMB_X100_Y1_N0
\spi_slave_0|bit_cnt[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|bit_cnt[16]~feeder_combout\ = \spi_slave_0|bit_cnt\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_slave_0|bit_cnt\(15),
	combout => \spi_slave_0|bit_cnt[16]~feeder_combout\);

-- Location: FF_X100_Y1_N1
\spi_slave_0|bit_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \spi_slave_0|bit_cnt[16]~feeder_combout\,
	clrn => \spi_slave_0|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|bit_cnt\(16));

-- Location: FF_X100_Y1_N29
\spi_slave_0|bit_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	asdata => \spi_slave_0|bit_cnt\(16),
	clrn => \spi_slave_0|ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|bit_cnt\(17));

-- Location: LCCOMB_X100_Y1_N6
\spi_slave_0|bit_cnt[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|bit_cnt[18]~feeder_combout\ = \spi_slave_0|bit_cnt\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_slave_0|bit_cnt\(17),
	combout => \spi_slave_0|bit_cnt[18]~feeder_combout\);

-- Location: FF_X100_Y1_N7
\spi_slave_0|bit_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \spi_slave_0|bit_cnt[18]~feeder_combout\,
	clrn => \spi_slave_0|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|bit_cnt\(18));

-- Location: LCCOMB_X100_Y1_N22
\spi_slave_0|bit_cnt[19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|bit_cnt[19]~feeder_combout\ = \spi_slave_0|bit_cnt\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_slave_0|bit_cnt\(18),
	combout => \spi_slave_0|bit_cnt[19]~feeder_combout\);

-- Location: FF_X100_Y1_N23
\spi_slave_0|bit_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \spi_slave_0|bit_cnt[19]~feeder_combout\,
	clrn => \spi_slave_0|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|bit_cnt\(19));

-- Location: LCCOMB_X100_Y1_N12
\spi_slave_0|bit_cnt[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|bit_cnt[20]~feeder_combout\ = \spi_slave_0|bit_cnt\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_slave_0|bit_cnt\(19),
	combout => \spi_slave_0|bit_cnt[20]~feeder_combout\);

-- Location: FF_X100_Y1_N13
\spi_slave_0|bit_cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \spi_slave_0|bit_cnt[20]~feeder_combout\,
	clrn => \spi_slave_0|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|bit_cnt\(20));

-- Location: LCCOMB_X100_Y1_N30
\spi_slave_0|bit_cnt[21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|bit_cnt[21]~feeder_combout\ = \spi_slave_0|bit_cnt\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_slave_0|bit_cnt\(20),
	combout => \spi_slave_0|bit_cnt[21]~feeder_combout\);

-- Location: FF_X100_Y1_N31
\spi_slave_0|bit_cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \spi_slave_0|bit_cnt[21]~feeder_combout\,
	clrn => \spi_slave_0|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|bit_cnt\(21));

-- Location: FF_X100_Y1_N9
\spi_slave_0|bit_cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	asdata => \spi_slave_0|bit_cnt\(21),
	clrn => \spi_slave_0|ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|bit_cnt\(22));

-- Location: FF_X100_Y1_N25
\spi_slave_0|bit_cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	asdata => \spi_slave_0|bit_cnt\(22),
	clrn => \spi_slave_0|ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|bit_cnt\(23));

-- Location: FF_X100_Y1_N3
\spi_slave_0|bit_cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	asdata => \spi_slave_0|bit_cnt\(23),
	clrn => \spi_slave_0|ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|bit_cnt\(24));

-- Location: LCCOMB_X100_Y1_N14
\spi_slave_0|bit_cnt[25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|bit_cnt[25]~feeder_combout\ = \spi_slave_0|bit_cnt\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_slave_0|bit_cnt\(24),
	combout => \spi_slave_0|bit_cnt[25]~feeder_combout\);

-- Location: FF_X100_Y1_N15
\spi_slave_0|bit_cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \spi_slave_0|bit_cnt[25]~feeder_combout\,
	clrn => \spi_slave_0|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|bit_cnt\(25));

-- Location: FF_X100_Y1_N19
\spi_slave_0|bit_cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	asdata => \spi_slave_0|bit_cnt\(25),
	clrn => \spi_slave_0|ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|bit_cnt\(26));

-- Location: FF_X100_Y1_N11
\spi_slave_0|bit_cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	asdata => \spi_slave_0|bit_cnt\(26),
	clrn => \spi_slave_0|ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|bit_cnt\(27));

-- Location: FF_X100_Y1_N17
\spi_slave_0|bit_cnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	asdata => \spi_slave_0|bit_cnt\(27),
	clrn => \spi_slave_0|ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|bit_cnt\(28));

-- Location: LCCOMB_X100_Y1_N20
\spi_slave_0|bit_cnt[29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|bit_cnt[29]~feeder_combout\ = \spi_slave_0|bit_cnt\(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_slave_0|bit_cnt\(28),
	combout => \spi_slave_0|bit_cnt[29]~feeder_combout\);

-- Location: FF_X100_Y1_N21
\spi_slave_0|bit_cnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \spi_slave_0|bit_cnt[29]~feeder_combout\,
	clrn => \spi_slave_0|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|bit_cnt\(29));

-- Location: LCCOMB_X101_Y1_N6
\spi_slave_0|bit_cnt[30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|bit_cnt[30]~feeder_combout\ = \spi_slave_0|bit_cnt\(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi_slave_0|bit_cnt\(29),
	combout => \spi_slave_0|bit_cnt[30]~feeder_combout\);

-- Location: FF_X101_Y1_N7
\spi_slave_0|bit_cnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \spi_slave_0|bit_cnt[30]~feeder_combout\,
	clrn => \spi_slave_0|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|bit_cnt\(30));

-- Location: LCCOMB_X101_Y1_N28
\spi_slave_0|bit_cnt[31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|bit_cnt[31]~feeder_combout\ = \spi_slave_0|bit_cnt\(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_slave_0|bit_cnt\(30),
	combout => \spi_slave_0|bit_cnt[31]~feeder_combout\);

-- Location: FF_X101_Y1_N29
\spi_slave_0|bit_cnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \spi_slave_0|bit_cnt[31]~feeder_combout\,
	clrn => \spi_slave_0|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|bit_cnt\(31));

-- Location: LCCOMB_X101_Y1_N4
\spi_slave_0|bit_cnt[32]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|bit_cnt[32]~feeder_combout\ = \spi_slave_0|bit_cnt\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_slave_0|bit_cnt\(31),
	combout => \spi_slave_0|bit_cnt[32]~feeder_combout\);

-- Location: FF_X101_Y1_N5
\spi_slave_0|bit_cnt[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \spi_slave_0|bit_cnt[32]~feeder_combout\,
	clrn => \spi_slave_0|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|bit_cnt\(32));

-- Location: LCCOMB_X101_Y2_N30
\spi_slave_0|bit_cnt[33]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|bit_cnt[33]~feeder_combout\ = \spi_slave_0|bit_cnt\(32)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_slave_0|bit_cnt\(32),
	combout => \spi_slave_0|bit_cnt[33]~feeder_combout\);

-- Location: FF_X101_Y2_N31
\spi_slave_0|bit_cnt[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \spi_slave_0|bit_cnt[33]~feeder_combout\,
	clrn => \spi_slave_0|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|bit_cnt\(33));

-- Location: LCCOMB_X101_Y1_N22
\spi_slave_0|rrdy~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|rrdy~0_combout\ = (\spi_slave_0|wr_add~q\ & ((\spi_slave_0|bit_cnt\(10) & ((\mosi~input_o\))) # (!\spi_slave_0|bit_cnt\(10) & (\spi_slave_0|rrdy~q\)))) # (!\spi_slave_0|wr_add~q\ & (\spi_slave_0|rrdy~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_slave_0|rrdy~q\,
	datab => \spi_slave_0|wr_add~q\,
	datac => \spi_slave_0|bit_cnt\(10),
	datad => \mosi~input_o\,
	combout => \spi_slave_0|rrdy~0_combout\);

-- Location: LCCOMB_X97_Y1_N22
\spi_slave_0|rrdy~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|rrdy~1_combout\ = (\spi_slave_0|rrdy~0_combout\) # ((\spi_slave_0|bit_cnt\(33) & !\spi_slave_0|wr_add~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_slave_0|bit_cnt\(33),
	datac => \spi_slave_0|wr_add~q\,
	datad => \spi_slave_0|rrdy~0_combout\,
	combout => \spi_slave_0|rrdy~1_combout\);

-- Location: LCCOMB_X97_Y1_N8
\spi_slave_0|process_1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|process_1~3_combout\ = ((\ss_n~input_o\ & \spi_rx_req~q\)) # (!\reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ss_n~input_o\,
	datab => \reset_n~input_o\,
	datad => \spi_rx_req~q\,
	combout => \spi_slave_0|process_1~3_combout\);

-- Location: FF_X97_Y1_N9
\spi_slave_0|rrdy\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	asdata => \spi_slave_0|rrdy~1_combout\,
	clrn => \spi_slave_0|ALT_INV_process_1~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|rrdy~q\);

-- Location: LCCOMB_X97_Y1_N24
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\state.spi_load_tx~q\ & (((!\ss_n~input_o\)))) # (!\state.spi_load_tx~q\ & (!\state.spi_rx~q\ & (\ss_n~input_o\ & \spi_slave_0|rrdy~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.spi_rx~q\,
	datab => \state.spi_load_tx~q\,
	datac => \ss_n~input_o\,
	datad => \spi_slave_0|rrdy~q\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X97_Y1_N26
\Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (\Selector2~0_combout\) # ((!\state.spi_load_tx~q\ & (\state.spi_rx~q\ & \spi_slave_0|rx_data\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~0_combout\,
	datab => \state.spi_load_tx~q\,
	datac => \state.spi_rx~q\,
	datad => \spi_slave_0|rx_data\(24),
	combout => \Selector2~1_combout\);

-- Location: FF_X97_Y1_N27
\state.ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector2~1_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ready~q\);

-- Location: LCCOMB_X97_Y1_N0
\state~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~7_combout\ = (!\state.ready~q\ & (\spi_slave_0|rrdy~q\ & \ss_n~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ready~q\,
	datac => \spi_slave_0|rrdy~q\,
	datad => \ss_n~input_o\,
	combout => \state~7_combout\);

-- Location: FF_X97_Y1_N11
\state.spi_rx\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \state~7_combout\,
	clrn => \reset_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.spi_rx~q\);

-- Location: LCCOMB_X97_Y2_N6
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\spi_tx_ena~q\ & ((\state.spi_rx~q\) # ((\state.spi_load_tx~q\)))) # (!\spi_tx_ena~q\ & (((\ss_n~input_o\ & \state.spi_load_tx~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.spi_rx~q\,
	datab => \ss_n~input_o\,
	datac => \spi_tx_ena~q\,
	datad => \state.spi_load_tx~q\,
	combout => \Selector0~0_combout\);

-- Location: FF_X97_Y2_N7
spi_tx_ena : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector0~0_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_tx_ena~q\);

-- Location: LCCOMB_X97_Y2_N0
\spi_slave_0|trdy~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|trdy~7_combout\ = (\ss_n~input_o\ & (\reset_n~input_o\ & \spi_tx_ena~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ss_n~input_o\,
	datac => \reset_n~input_o\,
	datad => \spi_tx_ena~q\,
	combout => \spi_slave_0|trdy~7_combout\);

-- Location: LCCOMB_X97_Y2_N12
\spi_slave_0|trdy~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|trdy~1_combout\ = (\reset_n~input_o\ & ((\spi_slave_0|trdy~7_combout\) # (\spi_slave_0|trdy~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datac => \spi_slave_0|trdy~7_combout\,
	datad => \spi_slave_0|trdy~1_combout\,
	combout => \spi_slave_0|trdy~1_combout\);

-- Location: LCCOMB_X99_Y2_N28
\spi_slave_0|rd_add~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|rd_add~0_combout\ = (\spi_slave_0|bit_cnt\(2) & (\mosi~input_o\)) # (!\spi_slave_0|bit_cnt\(2) & ((\spi_slave_0|rd_add~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mosi~input_o\,
	datac => \spi_slave_0|rd_add~q\,
	datad => \spi_slave_0|bit_cnt\(2),
	combout => \spi_slave_0|rd_add~0_combout\);

-- Location: FF_X99_Y2_N29
\spi_slave_0|rd_add\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \spi_slave_0|rd_add~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|rd_add~q\);

-- Location: LCCOMB_X101_Y2_N24
\spi_slave_0|process_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|process_1~2_combout\ = (\spi_slave_0|wr_add~q\ & \spi_slave_0|bit_cnt\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi_slave_0|wr_add~q\,
	datad => \spi_slave_0|bit_cnt\(9),
	combout => \spi_slave_0|process_1~2_combout\);

-- Location: LCCOMB_X101_Y2_N22
\spi_slave_0|trdy~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|trdy~6_combout\ = (!\spi_slave_0|process_1~2_combout\ & (\spi_slave_0|trdy~2_combout\ & ((\spi_slave_0|rd_add~q\) # (!\spi_slave_0|bit_cnt\(33)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_slave_0|rd_add~q\,
	datab => \spi_slave_0|process_1~2_combout\,
	datac => \spi_slave_0|bit_cnt\(33),
	datad => \spi_slave_0|trdy~2_combout\,
	combout => \spi_slave_0|trdy~6_combout\);

-- Location: LCCOMB_X101_Y2_N0
\spi_slave_0|trdy~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|trdy~3_combout\ = \spi_slave_0|trdy~1_combout\ $ (((\spi_slave_0|trdy~6_combout\) # ((\mosi~input_o\ & \spi_slave_0|process_1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_slave_0|trdy~1_combout\,
	datab => \mosi~input_o\,
	datac => \spi_slave_0|trdy~6_combout\,
	datad => \spi_slave_0|process_1~2_combout\,
	combout => \spi_slave_0|trdy~3_combout\);

-- Location: LCCOMB_X97_Y2_N30
\spi_slave_0|trdy~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|trdy~0_combout\ = (\spi_slave_0|trdy~7_combout\) # (!\reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi_slave_0|trdy~7_combout\,
	datad => \reset_n~input_o\,
	combout => \spi_slave_0|trdy~0_combout\);

-- Location: FF_X101_Y2_N1
\spi_slave_0|trdy~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \spi_slave_0|trdy~3_combout\,
	clrn => \spi_slave_0|ALT_INV_trdy~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|trdy~_emulated_q\);

-- Location: LCCOMB_X97_Y2_N14
\spi_slave_0|trdy~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|trdy~2_combout\ = (\reset_n~input_o\ & ((\spi_slave_0|trdy~7_combout\) # (\spi_slave_0|trdy~_emulated_q\ $ (\spi_slave_0|trdy~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_slave_0|trdy~7_combout\,
	datab => \reset_n~input_o\,
	datac => \spi_slave_0|trdy~_emulated_q\,
	datad => \spi_slave_0|trdy~1_combout\,
	combout => \spi_slave_0|trdy~2_combout\);

-- Location: LCCOMB_X99_Y1_N8
\message[24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \message[24]~feeder_combout\ = \spi_slave_0|rx_data\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_slave_0|rx_data\(24),
	combout => \message[24]~feeder_combout\);

-- Location: LCCOMB_X97_Y1_N14
\message[24]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \message[24]~0_combout\ = (\reset_n~input_o\ & \state.spi_rx~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset_n~input_o\,
	datad => \state.spi_rx~q\,
	combout => \message[24]~0_combout\);

-- Location: FF_X99_Y1_N9
\message[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \message[24]~feeder_combout\,
	ena => \message[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => message(24));

-- Location: LCCOMB_X99_Y1_N22
\spi_tx_data[24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_tx_data[24]~feeder_combout\ = message(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => message(24),
	combout => \spi_tx_data[24]~feeder_combout\);

-- Location: LCCOMB_X97_Y1_N16
\spi_tx_data[24]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_tx_data[24]~0_combout\ = (\reset_n~input_o\ & (\ss_n~input_o\ & \state.spi_load_tx~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset_n~input_o\,
	datac => \ss_n~input_o\,
	datad => \state.spi_load_tx~q\,
	combout => \spi_tx_data[24]~0_combout\);

-- Location: FF_X99_Y1_N23
\spi_tx_data[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spi_tx_data[24]~feeder_combout\,
	ena => \spi_tx_data[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => spi_tx_data(24));

-- Location: LCCOMB_X102_Y1_N18
\spi_slave_0|rx_buf[23]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|rx_buf[23]~1_combout\ = (\spi_slave_0|wr_add~q\ & (((\spi_slave_0|rx_buf\(23))))) # (!\spi_slave_0|wr_add~q\ & ((\spi_slave_0|bit_cnt\(10) & (\mosi~input_o\)) # (!\spi_slave_0|bit_cnt\(10) & ((\spi_slave_0|rx_buf\(23))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_slave_0|wr_add~q\,
	datab => \mosi~input_o\,
	datac => \spi_slave_0|rx_buf\(23),
	datad => \spi_slave_0|bit_cnt\(10),
	combout => \spi_slave_0|rx_buf[23]~1_combout\);

-- Location: FF_X102_Y1_N19
\spi_slave_0|rx_buf[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \spi_slave_0|rx_buf[23]~1_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|rx_buf\(23));

-- Location: LCCOMB_X102_Y1_N10
\spi_slave_0|rx_data[23]\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|rx_data\(23) = (\reset_n~input_o\ & ((GLOBAL(\spi_slave_0|process_1~5clkctrl_outclk\) & (\spi_slave_0|rx_buf\(23))) # (!GLOBAL(\spi_slave_0|process_1~5clkctrl_outclk\) & ((\spi_slave_0|rx_data\(23))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \spi_slave_0|rx_buf\(23),
	datac => \spi_slave_0|rx_data\(23),
	datad => \spi_slave_0|process_1~5clkctrl_outclk\,
	combout => \spi_slave_0|rx_data\(23));

-- Location: LCCOMB_X102_Y1_N30
\message[23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \message[23]~feeder_combout\ = \spi_slave_0|rx_data\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_slave_0|rx_data\(23),
	combout => \message[23]~feeder_combout\);

-- Location: FF_X102_Y1_N31
\message[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \message[23]~feeder_combout\,
	ena => \message[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => message(23));

-- Location: LCCOMB_X99_Y1_N12
\spi_tx_data[23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_tx_data[23]~feeder_combout\ = message(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => message(23),
	combout => \spi_tx_data[23]~feeder_combout\);

-- Location: FF_X99_Y1_N13
\spi_tx_data[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spi_tx_data[23]~feeder_combout\,
	ena => \spi_tx_data[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => spi_tx_data(23));

-- Location: CLKCTRL_G18
\spi_slave_0|trdy~7clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \spi_slave_0|trdy~7clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \spi_slave_0|trdy~7clkctrl_outclk\);

-- Location: LCCOMB_X97_Y2_N22
\spi_slave_0|tx_buf[23]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[23]~6_combout\ = (\reset_n~input_o\ & ((GLOBAL(\spi_slave_0|trdy~7clkctrl_outclk\) & (spi_tx_data(23))) # (!GLOBAL(\spi_slave_0|trdy~7clkctrl_outclk\) & ((\spi_slave_0|tx_buf[23]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => spi_tx_data(23),
	datac => \spi_slave_0|tx_buf[23]~6_combout\,
	datad => \spi_slave_0|trdy~7clkctrl_outclk\,
	combout => \spi_slave_0|tx_buf[23]~6_combout\);

-- Location: LCCOMB_X102_Y1_N6
\spi_slave_0|rx_buf[22]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|rx_buf[22]~2_combout\ = (\spi_slave_0|wr_add~q\ & (((\spi_slave_0|rx_buf\(22))))) # (!\spi_slave_0|wr_add~q\ & ((\spi_slave_0|bit_cnt\(11) & (\mosi~input_o\)) # (!\spi_slave_0|bit_cnt\(11) & ((\spi_slave_0|rx_buf\(22))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_slave_0|wr_add~q\,
	datab => \mosi~input_o\,
	datac => \spi_slave_0|rx_buf\(22),
	datad => \spi_slave_0|bit_cnt\(11),
	combout => \spi_slave_0|rx_buf[22]~2_combout\);

-- Location: FF_X102_Y1_N7
\spi_slave_0|rx_buf[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \spi_slave_0|rx_buf[22]~2_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|rx_buf\(22));

-- Location: LCCOMB_X102_Y1_N0
\spi_slave_0|rx_data[22]\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|rx_data\(22) = (\reset_n~input_o\ & ((GLOBAL(\spi_slave_0|process_1~5clkctrl_outclk\) & ((\spi_slave_0|rx_buf\(22)))) # (!GLOBAL(\spi_slave_0|process_1~5clkctrl_outclk\) & (\spi_slave_0|rx_data\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \spi_slave_0|rx_data\(22),
	datac => \spi_slave_0|rx_buf\(22),
	datad => \spi_slave_0|process_1~5clkctrl_outclk\,
	combout => \spi_slave_0|rx_data\(22));

-- Location: LCCOMB_X102_Y1_N4
\message[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \message[22]~feeder_combout\ = \spi_slave_0|rx_data\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_slave_0|rx_data\(22),
	combout => \message[22]~feeder_combout\);

-- Location: FF_X102_Y1_N5
\message[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \message[22]~feeder_combout\,
	ena => \message[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => message(22));

-- Location: LCCOMB_X99_Y1_N2
\spi_tx_data[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_tx_data[22]~feeder_combout\ = message(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => message(22),
	combout => \spi_tx_data[22]~feeder_combout\);

-- Location: FF_X99_Y1_N3
\spi_tx_data[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spi_tx_data[22]~feeder_combout\,
	ena => \spi_tx_data[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => spi_tx_data(22));

-- Location: LCCOMB_X99_Y2_N4
\spi_slave_0|tx_buf[22]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[22]~11_combout\ = (\reset_n~input_o\ & ((GLOBAL(\spi_slave_0|trdy~7clkctrl_outclk\) & ((spi_tx_data(22)))) # (!GLOBAL(\spi_slave_0|trdy~7clkctrl_outclk\) & (\spi_slave_0|tx_buf[22]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \spi_slave_0|tx_buf[22]~11_combout\,
	datac => spi_tx_data(22),
	datad => \spi_slave_0|trdy~7clkctrl_outclk\,
	combout => \spi_slave_0|tx_buf[22]~11_combout\);

-- Location: LCCOMB_X102_Y1_N16
\spi_slave_0|rx_buf[21]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|rx_buf[21]~3_combout\ = (\spi_slave_0|wr_add~q\ & (((\spi_slave_0|rx_buf\(21))))) # (!\spi_slave_0|wr_add~q\ & ((\spi_slave_0|bit_cnt\(12) & (\mosi~input_o\)) # (!\spi_slave_0|bit_cnt\(12) & ((\spi_slave_0|rx_buf\(21))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_slave_0|wr_add~q\,
	datab => \mosi~input_o\,
	datac => \spi_slave_0|rx_buf\(21),
	datad => \spi_slave_0|bit_cnt\(12),
	combout => \spi_slave_0|rx_buf[21]~3_combout\);

-- Location: FF_X102_Y1_N17
\spi_slave_0|rx_buf[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \spi_slave_0|rx_buf[21]~3_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|rx_buf\(21));

-- Location: LCCOMB_X102_Y1_N2
\spi_slave_0|rx_data[21]\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|rx_data\(21) = (\reset_n~input_o\ & ((GLOBAL(\spi_slave_0|process_1~5clkctrl_outclk\) & ((\spi_slave_0|rx_buf\(21)))) # (!GLOBAL(\spi_slave_0|process_1~5clkctrl_outclk\) & (\spi_slave_0|rx_data\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_slave_0|rx_data\(21),
	datab => \spi_slave_0|rx_buf\(21),
	datac => \reset_n~input_o\,
	datad => \spi_slave_0|process_1~5clkctrl_outclk\,
	combout => \spi_slave_0|rx_data\(21));

-- Location: LCCOMB_X102_Y1_N8
\message[21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \message[21]~feeder_combout\ = \spi_slave_0|rx_data\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_slave_0|rx_data\(21),
	combout => \message[21]~feeder_combout\);

-- Location: FF_X102_Y1_N9
\message[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \message[21]~feeder_combout\,
	ena => \message[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => message(21));

-- Location: LCCOMB_X98_Y1_N4
\spi_tx_data[21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_tx_data[21]~feeder_combout\ = message(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => message(21),
	combout => \spi_tx_data[21]~feeder_combout\);

-- Location: FF_X98_Y1_N5
\spi_tx_data[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spi_tx_data[21]~feeder_combout\,
	ena => \spi_tx_data[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => spi_tx_data(21));

-- Location: LCCOMB_X97_Y1_N30
\spi_slave_0|rx_buf[20]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|rx_buf[20]~4_combout\ = (\spi_slave_0|wr_add~q\ & (((\spi_slave_0|rx_buf\(20))))) # (!\spi_slave_0|wr_add~q\ & ((\spi_slave_0|bit_cnt\(13) & (\mosi~input_o\)) # (!\spi_slave_0|bit_cnt\(13) & ((\spi_slave_0|rx_buf\(20))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mosi~input_o\,
	datab => \spi_slave_0|wr_add~q\,
	datac => \spi_slave_0|rx_buf\(20),
	datad => \spi_slave_0|bit_cnt\(13),
	combout => \spi_slave_0|rx_buf[20]~4_combout\);

-- Location: FF_X97_Y1_N31
\spi_slave_0|rx_buf[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \spi_slave_0|rx_buf[20]~4_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|rx_buf\(20));

-- Location: LCCOMB_X96_Y1_N16
\spi_slave_0|rx_data[20]\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|rx_data\(20) = (\reset_n~input_o\ & ((GLOBAL(\spi_slave_0|process_1~5clkctrl_outclk\) & (\spi_slave_0|rx_buf\(20))) # (!GLOBAL(\spi_slave_0|process_1~5clkctrl_outclk\) & ((\spi_slave_0|rx_data\(20))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_slave_0|rx_buf\(20),
	datab => \spi_slave_0|rx_data\(20),
	datac => \reset_n~input_o\,
	datad => \spi_slave_0|process_1~5clkctrl_outclk\,
	combout => \spi_slave_0|rx_data\(20));

-- Location: LCCOMB_X96_Y1_N8
\message[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \message[20]~feeder_combout\ = \spi_slave_0|rx_data\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_slave_0|rx_data\(20),
	combout => \message[20]~feeder_combout\);

-- Location: FF_X96_Y1_N9
\message[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \message[20]~feeder_combout\,
	ena => \message[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => message(20));

-- Location: FF_X98_Y1_N1
\spi_tx_data[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => message(20),
	sload => VCC,
	ena => \spi_tx_data[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => spi_tx_data(20));

-- Location: LCCOMB_X100_Y2_N30
\spi_slave_0|rx_buf[18]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|rx_buf[18]~6_combout\ = (\spi_slave_0|wr_add~q\ & (((\spi_slave_0|rx_buf\(18))))) # (!\spi_slave_0|wr_add~q\ & ((\spi_slave_0|bit_cnt\(15) & ((\mosi~input_o\))) # (!\spi_slave_0|bit_cnt\(15) & (\spi_slave_0|rx_buf\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_slave_0|wr_add~q\,
	datab => \spi_slave_0|bit_cnt\(15),
	datac => \spi_slave_0|rx_buf\(18),
	datad => \mosi~input_o\,
	combout => \spi_slave_0|rx_buf[18]~6_combout\);

-- Location: FF_X100_Y2_N31
\spi_slave_0|rx_buf[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \spi_slave_0|rx_buf[18]~6_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|rx_buf\(18));

-- Location: LCCOMB_X100_Y2_N24
\spi_slave_0|rx_data[18]\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|rx_data\(18) = (\reset_n~input_o\ & ((GLOBAL(\spi_slave_0|process_1~5clkctrl_outclk\) & (\spi_slave_0|rx_buf\(18))) # (!GLOBAL(\spi_slave_0|process_1~5clkctrl_outclk\) & ((\spi_slave_0|rx_data\(18))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_slave_0|rx_buf\(18),
	datab => \spi_slave_0|rx_data\(18),
	datac => \reset_n~input_o\,
	datad => \spi_slave_0|process_1~5clkctrl_outclk\,
	combout => \spi_slave_0|rx_data\(18));

-- Location: LCCOMB_X100_Y2_N14
\message[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \message[18]~feeder_combout\ = \spi_slave_0|rx_data\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_slave_0|rx_data\(18),
	combout => \message[18]~feeder_combout\);

-- Location: FF_X100_Y2_N15
\message[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \message[18]~feeder_combout\,
	ena => \message[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => message(18));

-- Location: LCCOMB_X98_Y3_N30
\spi_tx_data[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_tx_data[18]~feeder_combout\ = message(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => message(18),
	combout => \spi_tx_data[18]~feeder_combout\);

-- Location: FF_X98_Y3_N31
\spi_tx_data[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spi_tx_data[18]~feeder_combout\,
	ena => \spi_tx_data[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => spi_tx_data(18));

-- Location: LCCOMB_X98_Y3_N8
\spi_slave_0|tx_buf[18]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[18]~31_combout\ = (\reset_n~input_o\ & ((GLOBAL(\spi_slave_0|trdy~7clkctrl_outclk\) & (spi_tx_data(18))) # (!GLOBAL(\spi_slave_0|trdy~7clkctrl_outclk\) & ((\spi_slave_0|tx_buf[18]~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => spi_tx_data(18),
	datab => \reset_n~input_o\,
	datac => \spi_slave_0|tx_buf[18]~31_combout\,
	datad => \spi_slave_0|trdy~7clkctrl_outclk\,
	combout => \spi_slave_0|tx_buf[18]~31_combout\);

-- Location: LCCOMB_X100_Y2_N12
\spi_slave_0|rx_buf[17]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|rx_buf[17]~7_combout\ = (\spi_slave_0|wr_add~q\ & (((\spi_slave_0|rx_buf\(17))))) # (!\spi_slave_0|wr_add~q\ & ((\spi_slave_0|bit_cnt\(16) & ((\mosi~input_o\))) # (!\spi_slave_0|bit_cnt\(16) & (\spi_slave_0|rx_buf\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_slave_0|wr_add~q\,
	datab => \spi_slave_0|bit_cnt\(16),
	datac => \spi_slave_0|rx_buf\(17),
	datad => \mosi~input_o\,
	combout => \spi_slave_0|rx_buf[17]~7_combout\);

-- Location: FF_X100_Y2_N13
\spi_slave_0|rx_buf[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \spi_slave_0|rx_buf[17]~7_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|rx_buf\(17));

-- Location: LCCOMB_X100_Y2_N26
\spi_slave_0|rx_data[17]\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|rx_data\(17) = (\reset_n~input_o\ & ((GLOBAL(\spi_slave_0|process_1~5clkctrl_outclk\) & (\spi_slave_0|rx_buf\(17))) # (!GLOBAL(\spi_slave_0|process_1~5clkctrl_outclk\) & ((\spi_slave_0|rx_data\(17))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \spi_slave_0|rx_buf\(17),
	datac => \spi_slave_0|rx_data\(17),
	datad => \spi_slave_0|process_1~5clkctrl_outclk\,
	combout => \spi_slave_0|rx_data\(17));

-- Location: LCCOMB_X99_Y1_N14
\message[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \message[17]~feeder_combout\ = \spi_slave_0|rx_data\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_slave_0|rx_data\(17),
	combout => \message[17]~feeder_combout\);

-- Location: FF_X99_Y1_N15
\message[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \message[17]~feeder_combout\,
	ena => \message[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => message(17));

-- Location: FF_X99_Y1_N27
\spi_tx_data[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => message(17),
	sload => VCC,
	ena => \spi_tx_data[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => spi_tx_data(17));

-- Location: LCCOMB_X103_Y1_N30
\spi_slave_0|rx_buf[16]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|rx_buf[16]~8_combout\ = (\spi_slave_0|wr_add~q\ & (((\spi_slave_0|rx_buf\(16))))) # (!\spi_slave_0|wr_add~q\ & ((\spi_slave_0|bit_cnt\(17) & (\mosi~input_o\)) # (!\spi_slave_0|bit_cnt\(17) & ((\spi_slave_0|rx_buf\(16))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mosi~input_o\,
	datab => \spi_slave_0|wr_add~q\,
	datac => \spi_slave_0|rx_buf\(16),
	datad => \spi_slave_0|bit_cnt\(17),
	combout => \spi_slave_0|rx_buf[16]~8_combout\);

-- Location: FF_X103_Y1_N31
\spi_slave_0|rx_buf[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \spi_slave_0|rx_buf[16]~8_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|rx_buf\(16));

-- Location: LCCOMB_X103_Y1_N6
\spi_slave_0|rx_data[16]\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|rx_data\(16) = (\reset_n~input_o\ & ((GLOBAL(\spi_slave_0|process_1~5clkctrl_outclk\) & ((\spi_slave_0|rx_buf\(16)))) # (!GLOBAL(\spi_slave_0|process_1~5clkctrl_outclk\) & (\spi_slave_0|rx_data\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \spi_slave_0|rx_data\(16),
	datac => \spi_slave_0|rx_buf\(16),
	datad => \spi_slave_0|process_1~5clkctrl_outclk\,
	combout => \spi_slave_0|rx_data\(16));

-- Location: LCCOMB_X103_Y1_N14
\message[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \message[16]~feeder_combout\ = \spi_slave_0|rx_data\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_slave_0|rx_data\(16),
	combout => \message[16]~feeder_combout\);

-- Location: FF_X103_Y1_N15
\message[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \message[16]~feeder_combout\,
	ena => \message[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => message(16));

-- Location: FF_X99_Y1_N29
\spi_tx_data[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => message(16),
	sload => VCC,
	ena => \spi_tx_data[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => spi_tx_data(16));

-- Location: LCCOMB_X103_Y1_N26
\spi_slave_0|rx_buf[15]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|rx_buf[15]~9_combout\ = (\spi_slave_0|wr_add~q\ & (((\spi_slave_0|rx_buf\(15))))) # (!\spi_slave_0|wr_add~q\ & ((\spi_slave_0|bit_cnt\(18) & (\mosi~input_o\)) # (!\spi_slave_0|bit_cnt\(18) & ((\spi_slave_0|rx_buf\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mosi~input_o\,
	datab => \spi_slave_0|wr_add~q\,
	datac => \spi_slave_0|rx_buf\(15),
	datad => \spi_slave_0|bit_cnt\(18),
	combout => \spi_slave_0|rx_buf[15]~9_combout\);

-- Location: FF_X103_Y1_N27
\spi_slave_0|rx_buf[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \spi_slave_0|rx_buf[15]~9_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|rx_buf\(15));

-- Location: LCCOMB_X103_Y1_N20
\spi_slave_0|rx_data[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|rx_data\(15) = (\reset_n~input_o\ & ((GLOBAL(\spi_slave_0|process_1~5clkctrl_outclk\) & ((\spi_slave_0|rx_buf\(15)))) # (!GLOBAL(\spi_slave_0|process_1~5clkctrl_outclk\) & (\spi_slave_0|rx_data\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \spi_slave_0|rx_data\(15),
	datac => \spi_slave_0|rx_buf\(15),
	datad => \spi_slave_0|process_1~5clkctrl_outclk\,
	combout => \spi_slave_0|rx_data\(15));

-- Location: LCCOMB_X103_Y1_N0
\message[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \message[15]~feeder_combout\ = \spi_slave_0|rx_data\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_slave_0|rx_data\(15),
	combout => \message[15]~feeder_combout\);

-- Location: FF_X103_Y1_N1
\message[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \message[15]~feeder_combout\,
	ena => \message[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => message(15));

-- Location: FF_X99_Y1_N31
\spi_tx_data[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => message(15),
	sload => VCC,
	ena => \spi_tx_data[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => spi_tx_data(15));

-- Location: LCCOMB_X103_Y1_N2
\spi_slave_0|rx_buf[14]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|rx_buf[14]~10_combout\ = (\spi_slave_0|wr_add~q\ & (((\spi_slave_0|rx_buf\(14))))) # (!\spi_slave_0|wr_add~q\ & ((\spi_slave_0|bit_cnt\(19) & (\mosi~input_o\)) # (!\spi_slave_0|bit_cnt\(19) & ((\spi_slave_0|rx_buf\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mosi~input_o\,
	datab => \spi_slave_0|wr_add~q\,
	datac => \spi_slave_0|rx_buf\(14),
	datad => \spi_slave_0|bit_cnt\(19),
	combout => \spi_slave_0|rx_buf[14]~10_combout\);

-- Location: FF_X103_Y1_N3
\spi_slave_0|rx_buf[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \spi_slave_0|rx_buf[14]~10_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|rx_buf\(14));

-- Location: LCCOMB_X103_Y1_N18
\spi_slave_0|rx_data[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|rx_data\(14) = (\reset_n~input_o\ & ((GLOBAL(\spi_slave_0|process_1~5clkctrl_outclk\) & (\spi_slave_0|rx_buf\(14))) # (!GLOBAL(\spi_slave_0|process_1~5clkctrl_outclk\) & ((\spi_slave_0|rx_data\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \spi_slave_0|rx_buf\(14),
	datac => \spi_slave_0|rx_data\(14),
	datad => \spi_slave_0|process_1~5clkctrl_outclk\,
	combout => \spi_slave_0|rx_data\(14));

-- Location: LCCOMB_X103_Y1_N8
\message[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \message[14]~feeder_combout\ = \spi_slave_0|rx_data\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_slave_0|rx_data\(14),
	combout => \message[14]~feeder_combout\);

-- Location: FF_X103_Y1_N9
\message[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \message[14]~feeder_combout\,
	ena => \message[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => message(14));

-- Location: FF_X99_Y1_N5
\spi_tx_data[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => message(14),
	sload => VCC,
	ena => \spi_tx_data[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => spi_tx_data(14));

-- Location: LCCOMB_X103_Y1_N16
\spi_slave_0|rx_buf[13]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|rx_buf[13]~11_combout\ = (\spi_slave_0|wr_add~q\ & (((\spi_slave_0|rx_buf\(13))))) # (!\spi_slave_0|wr_add~q\ & ((\spi_slave_0|bit_cnt\(20) & (\mosi~input_o\)) # (!\spi_slave_0|bit_cnt\(20) & ((\spi_slave_0|rx_buf\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mosi~input_o\,
	datab => \spi_slave_0|wr_add~q\,
	datac => \spi_slave_0|rx_buf\(13),
	datad => \spi_slave_0|bit_cnt\(20),
	combout => \spi_slave_0|rx_buf[13]~11_combout\);

-- Location: FF_X103_Y1_N17
\spi_slave_0|rx_buf[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \spi_slave_0|rx_buf[13]~11_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|rx_buf\(13));

-- Location: LCCOMB_X103_Y1_N24
\spi_slave_0|rx_data[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|rx_data\(13) = (\reset_n~input_o\ & ((GLOBAL(\spi_slave_0|process_1~5clkctrl_outclk\) & ((\spi_slave_0|rx_buf\(13)))) # (!GLOBAL(\spi_slave_0|process_1~5clkctrl_outclk\) & (\spi_slave_0|rx_data\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \spi_slave_0|rx_data\(13),
	datac => \spi_slave_0|rx_buf\(13),
	datad => \spi_slave_0|process_1~5clkctrl_outclk\,
	combout => \spi_slave_0|rx_data\(13));

-- Location: LCCOMB_X103_Y1_N4
\message[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \message[13]~feeder_combout\ = \spi_slave_0|rx_data\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_slave_0|rx_data\(13),
	combout => \message[13]~feeder_combout\);

-- Location: FF_X103_Y1_N5
\message[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \message[13]~feeder_combout\,
	ena => \message[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => message(13));

-- Location: LCCOMB_X98_Y3_N28
\spi_tx_data[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_tx_data[13]~feeder_combout\ = message(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => message(13),
	combout => \spi_tx_data[13]~feeder_combout\);

-- Location: FF_X98_Y3_N29
\spi_tx_data[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spi_tx_data[13]~feeder_combout\,
	ena => \spi_tx_data[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => spi_tx_data(13));

-- Location: LCCOMB_X94_Y1_N18
\spi_slave_0|rx_buf[12]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|rx_buf[12]~12_combout\ = (\spi_slave_0|wr_add~q\ & (((\spi_slave_0|rx_buf\(12))))) # (!\spi_slave_0|wr_add~q\ & ((\spi_slave_0|bit_cnt\(21) & (\mosi~input_o\)) # (!\spi_slave_0|bit_cnt\(21) & ((\spi_slave_0|rx_buf\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_slave_0|wr_add~q\,
	datab => \mosi~input_o\,
	datac => \spi_slave_0|rx_buf\(12),
	datad => \spi_slave_0|bit_cnt\(21),
	combout => \spi_slave_0|rx_buf[12]~12_combout\);

-- Location: FF_X94_Y1_N19
\spi_slave_0|rx_buf[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \spi_slave_0|rx_buf[12]~12_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|rx_buf\(12));

-- Location: LCCOMB_X94_Y1_N20
\spi_slave_0|rx_data[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|rx_data\(12) = (\reset_n~input_o\ & ((GLOBAL(\spi_slave_0|process_1~5clkctrl_outclk\) & ((\spi_slave_0|rx_buf\(12)))) # (!GLOBAL(\spi_slave_0|process_1~5clkctrl_outclk\) & (\spi_slave_0|rx_data\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \spi_slave_0|rx_data\(12),
	datac => \spi_slave_0|rx_buf\(12),
	datad => \spi_slave_0|process_1~5clkctrl_outclk\,
	combout => \spi_slave_0|rx_data\(12));

-- Location: LCCOMB_X94_Y1_N24
\message[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \message[12]~feeder_combout\ = \spi_slave_0|rx_data\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_slave_0|rx_data\(12),
	combout => \message[12]~feeder_combout\);

-- Location: FF_X94_Y1_N25
\message[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \message[12]~feeder_combout\,
	ena => \message[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => message(12));

-- Location: LCCOMB_X96_Y3_N0
\spi_tx_data[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_tx_data[12]~feeder_combout\ = message(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => message(12),
	combout => \spi_tx_data[12]~feeder_combout\);

-- Location: FF_X96_Y3_N1
\spi_tx_data[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spi_tx_data[12]~feeder_combout\,
	ena => \spi_tx_data[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => spi_tx_data(12));

-- Location: LCCOMB_X95_Y1_N30
\spi_slave_0|rx_buf[11]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|rx_buf[11]~13_combout\ = (\spi_slave_0|wr_add~q\ & (((\spi_slave_0|rx_buf\(11))))) # (!\spi_slave_0|wr_add~q\ & ((\spi_slave_0|bit_cnt\(22) & (\mosi~input_o\)) # (!\spi_slave_0|bit_cnt\(22) & ((\spi_slave_0|rx_buf\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mosi~input_o\,
	datab => \spi_slave_0|wr_add~q\,
	datac => \spi_slave_0|rx_buf\(11),
	datad => \spi_slave_0|bit_cnt\(22),
	combout => \spi_slave_0|rx_buf[11]~13_combout\);

-- Location: FF_X95_Y1_N31
\spi_slave_0|rx_buf[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \spi_slave_0|rx_buf[11]~13_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|rx_buf\(11));

-- Location: LCCOMB_X96_Y1_N28
\spi_slave_0|rx_data[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|rx_data\(11) = (\reset_n~input_o\ & ((GLOBAL(\spi_slave_0|process_1~5clkctrl_outclk\) & (\spi_slave_0|rx_buf\(11))) # (!GLOBAL(\spi_slave_0|process_1~5clkctrl_outclk\) & ((\spi_slave_0|rx_data\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_slave_0|rx_buf\(11),
	datab => \reset_n~input_o\,
	datac => \spi_slave_0|rx_data\(11),
	datad => \spi_slave_0|process_1~5clkctrl_outclk\,
	combout => \spi_slave_0|rx_data\(11));

-- Location: LCCOMB_X96_Y1_N12
\message[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \message[11]~feeder_combout\ = \spi_slave_0|rx_data\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_slave_0|rx_data\(11),
	combout => \message[11]~feeder_combout\);

-- Location: FF_X96_Y1_N13
\message[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \message[11]~feeder_combout\,
	ena => \message[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => message(11));

-- Location: LCCOMB_X96_Y3_N22
\spi_tx_data[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_tx_data[11]~feeder_combout\ = message(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => message(11),
	combout => \spi_tx_data[11]~feeder_combout\);

-- Location: FF_X96_Y3_N23
\spi_tx_data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spi_tx_data[11]~feeder_combout\,
	ena => \spi_tx_data[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => spi_tx_data(11));

-- Location: LCCOMB_X97_Y3_N16
\spi_slave_0|tx_buf[11]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[11]~66_combout\ = (\reset_n~input_o\ & ((GLOBAL(\spi_slave_0|trdy~7clkctrl_outclk\) & (spi_tx_data(11))) # (!GLOBAL(\spi_slave_0|trdy~7clkctrl_outclk\) & ((\spi_slave_0|tx_buf[11]~66_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => spi_tx_data(11),
	datab => \reset_n~input_o\,
	datac => \spi_slave_0|trdy~7clkctrl_outclk\,
	datad => \spi_slave_0|tx_buf[11]~66_combout\,
	combout => \spi_slave_0|tx_buf[11]~66_combout\);

-- Location: LCCOMB_X95_Y1_N16
\spi_slave_0|rx_buf[10]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|rx_buf[10]~14_combout\ = (\spi_slave_0|wr_add~q\ & (((\spi_slave_0|rx_buf\(10))))) # (!\spi_slave_0|wr_add~q\ & ((\spi_slave_0|bit_cnt\(23) & (\mosi~input_o\)) # (!\spi_slave_0|bit_cnt\(23) & ((\spi_slave_0|rx_buf\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mosi~input_o\,
	datab => \spi_slave_0|wr_add~q\,
	datac => \spi_slave_0|rx_buf\(10),
	datad => \spi_slave_0|bit_cnt\(23),
	combout => \spi_slave_0|rx_buf[10]~14_combout\);

-- Location: FF_X95_Y1_N17
\spi_slave_0|rx_buf[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \spi_slave_0|rx_buf[10]~14_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|rx_buf\(10));

-- Location: LCCOMB_X95_Y1_N24
\spi_slave_0|rx_data[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|rx_data\(10) = (\reset_n~input_o\ & ((GLOBAL(\spi_slave_0|process_1~5clkctrl_outclk\) & ((\spi_slave_0|rx_buf\(10)))) # (!GLOBAL(\spi_slave_0|process_1~5clkctrl_outclk\) & (\spi_slave_0|rx_data\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \spi_slave_0|rx_data\(10),
	datac => \spi_slave_0|rx_buf\(10),
	datad => \spi_slave_0|process_1~5clkctrl_outclk\,
	combout => \spi_slave_0|rx_data\(10));

-- Location: LCCOMB_X95_Y1_N28
\message[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \message[10]~feeder_combout\ = \spi_slave_0|rx_data\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_slave_0|rx_data\(10),
	combout => \message[10]~feeder_combout\);

-- Location: FF_X95_Y1_N29
\message[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \message[10]~feeder_combout\,
	ena => \message[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => message(10));

-- Location: LCCOMB_X98_Y1_N10
\spi_tx_data[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_tx_data[10]~feeder_combout\ = message(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => message(10),
	combout => \spi_tx_data[10]~feeder_combout\);

-- Location: FF_X98_Y1_N11
\spi_tx_data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spi_tx_data[10]~feeder_combout\,
	ena => \spi_tx_data[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => spi_tx_data(10));

-- Location: LCCOMB_X95_Y1_N22
\spi_slave_0|rx_buf[9]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|rx_buf[9]~15_combout\ = (\spi_slave_0|wr_add~q\ & (((\spi_slave_0|rx_buf\(9))))) # (!\spi_slave_0|wr_add~q\ & ((\spi_slave_0|bit_cnt\(24) & (\mosi~input_o\)) # (!\spi_slave_0|bit_cnt\(24) & ((\spi_slave_0|rx_buf\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mosi~input_o\,
	datab => \spi_slave_0|wr_add~q\,
	datac => \spi_slave_0|rx_buf\(9),
	datad => \spi_slave_0|bit_cnt\(24),
	combout => \spi_slave_0|rx_buf[9]~15_combout\);

-- Location: FF_X95_Y1_N23
\spi_slave_0|rx_buf[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \spi_slave_0|rx_buf[9]~15_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|rx_buf\(9));

-- Location: LCCOMB_X96_Y1_N6
\spi_slave_0|rx_data[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|rx_data\(9) = (\reset_n~input_o\ & ((GLOBAL(\spi_slave_0|process_1~5clkctrl_outclk\) & (\spi_slave_0|rx_buf\(9))) # (!GLOBAL(\spi_slave_0|process_1~5clkctrl_outclk\) & ((\spi_slave_0|rx_data\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_slave_0|rx_buf\(9),
	datab => \reset_n~input_o\,
	datac => \spi_slave_0|rx_data\(9),
	datad => \spi_slave_0|process_1~5clkctrl_outclk\,
	combout => \spi_slave_0|rx_data\(9));

-- Location: LCCOMB_X96_Y1_N18
\message[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \message[9]~feeder_combout\ = \spi_slave_0|rx_data\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_slave_0|rx_data\(9),
	combout => \message[9]~feeder_combout\);

-- Location: FF_X96_Y1_N19
\message[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \message[9]~feeder_combout\,
	ena => \message[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => message(9));

-- Location: FF_X98_Y1_N7
\spi_tx_data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => message(9),
	sload => VCC,
	ena => \spi_tx_data[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => spi_tx_data(9));

-- Location: LCCOMB_X95_Y1_N20
\spi_slave_0|rx_buf[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|rx_buf[8]~16_combout\ = (\spi_slave_0|bit_cnt\(25) & ((\spi_slave_0|wr_add~q\ & ((\spi_slave_0|rx_buf\(8)))) # (!\spi_slave_0|wr_add~q\ & (\mosi~input_o\)))) # (!\spi_slave_0|bit_cnt\(25) & (((\spi_slave_0|rx_buf\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mosi~input_o\,
	datab => \spi_slave_0|bit_cnt\(25),
	datac => \spi_slave_0|rx_buf\(8),
	datad => \spi_slave_0|wr_add~q\,
	combout => \spi_slave_0|rx_buf[8]~16_combout\);

-- Location: FF_X95_Y1_N21
\spi_slave_0|rx_buf[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \spi_slave_0|rx_buf[8]~16_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|rx_buf\(8));

-- Location: LCCOMB_X96_Y1_N2
\spi_slave_0|rx_data[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|rx_data\(8) = (\reset_n~input_o\ & ((GLOBAL(\spi_slave_0|process_1~5clkctrl_outclk\) & (\spi_slave_0|rx_buf\(8))) # (!GLOBAL(\spi_slave_0|process_1~5clkctrl_outclk\) & ((\spi_slave_0|rx_data\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_slave_0|rx_buf\(8),
	datab => \reset_n~input_o\,
	datac => \spi_slave_0|rx_data\(8),
	datad => \spi_slave_0|process_1~5clkctrl_outclk\,
	combout => \spi_slave_0|rx_data\(8));

-- Location: LCCOMB_X96_Y1_N24
\message[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \message[8]~feeder_combout\ = \spi_slave_0|rx_data\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_slave_0|rx_data\(8),
	combout => \message[8]~feeder_combout\);

-- Location: FF_X96_Y1_N25
\message[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \message[8]~feeder_combout\,
	ena => \message[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => message(8));

-- Location: FF_X98_Y1_N23
\spi_tx_data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => message(8),
	sload => VCC,
	ena => \spi_tx_data[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => spi_tx_data(8));

-- Location: LCCOMB_X95_Y1_N8
\spi_slave_0|rx_buf[7]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|rx_buf[7]~17_combout\ = (\spi_slave_0|wr_add~q\ & (((\spi_slave_0|rx_buf\(7))))) # (!\spi_slave_0|wr_add~q\ & ((\spi_slave_0|bit_cnt\(26) & (\mosi~input_o\)) # (!\spi_slave_0|bit_cnt\(26) & ((\spi_slave_0|rx_buf\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mosi~input_o\,
	datab => \spi_slave_0|wr_add~q\,
	datac => \spi_slave_0|rx_buf\(7),
	datad => \spi_slave_0|bit_cnt\(26),
	combout => \spi_slave_0|rx_buf[7]~17_combout\);

-- Location: FF_X95_Y1_N9
\spi_slave_0|rx_buf[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \spi_slave_0|rx_buf[7]~17_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|rx_buf\(7));

-- Location: LCCOMB_X96_Y1_N10
\spi_slave_0|rx_data[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|rx_data\(7) = (\reset_n~input_o\ & ((GLOBAL(\spi_slave_0|process_1~5clkctrl_outclk\) & ((\spi_slave_0|rx_buf\(7)))) # (!GLOBAL(\spi_slave_0|process_1~5clkctrl_outclk\) & (\spi_slave_0|rx_data\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_slave_0|rx_data\(7),
	datab => \reset_n~input_o\,
	datac => \spi_slave_0|rx_buf\(7),
	datad => \spi_slave_0|process_1~5clkctrl_outclk\,
	combout => \spi_slave_0|rx_data\(7));

-- Location: LCCOMB_X96_Y1_N30
\message[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \message[7]~feeder_combout\ = \spi_slave_0|rx_data\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_slave_0|rx_data\(7),
	combout => \message[7]~feeder_combout\);

-- Location: FF_X96_Y1_N31
\message[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \message[7]~feeder_combout\,
	ena => \message[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => message(7));

-- Location: LCCOMB_X96_Y3_N30
\spi_tx_data[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_tx_data[7]~feeder_combout\ = message(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => message(7),
	combout => \spi_tx_data[7]~feeder_combout\);

-- Location: FF_X96_Y3_N31
\spi_tx_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spi_tx_data[7]~feeder_combout\,
	ena => \spi_tx_data[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => spi_tx_data(7));

-- Location: LCCOMB_X95_Y1_N4
\spi_slave_0|rx_buf[6]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|rx_buf[6]~18_combout\ = (\spi_slave_0|wr_add~q\ & (((\spi_slave_0|rx_buf\(6))))) # (!\spi_slave_0|wr_add~q\ & ((\spi_slave_0|bit_cnt\(27) & (\mosi~input_o\)) # (!\spi_slave_0|bit_cnt\(27) & ((\spi_slave_0|rx_buf\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mosi~input_o\,
	datab => \spi_slave_0|wr_add~q\,
	datac => \spi_slave_0|rx_buf\(6),
	datad => \spi_slave_0|bit_cnt\(27),
	combout => \spi_slave_0|rx_buf[6]~18_combout\);

-- Location: FF_X95_Y1_N5
\spi_slave_0|rx_buf[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \spi_slave_0|rx_buf[6]~18_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|rx_buf\(6));

-- Location: LCCOMB_X95_Y1_N2
\spi_slave_0|rx_data[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|rx_data\(6) = (\reset_n~input_o\ & ((GLOBAL(\spi_slave_0|process_1~5clkctrl_outclk\) & (\spi_slave_0|rx_buf\(6))) # (!GLOBAL(\spi_slave_0|process_1~5clkctrl_outclk\) & ((\spi_slave_0|rx_data\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \spi_slave_0|rx_buf\(6),
	datac => \spi_slave_0|rx_data\(6),
	datad => \spi_slave_0|process_1~5clkctrl_outclk\,
	combout => \spi_slave_0|rx_data\(6));

-- Location: LCCOMB_X95_Y1_N18
\message[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \message[6]~feeder_combout\ = \spi_slave_0|rx_data\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_slave_0|rx_data\(6),
	combout => \message[6]~feeder_combout\);

-- Location: FF_X95_Y1_N19
\message[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \message[6]~feeder_combout\,
	ena => \message[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => message(6));

-- Location: FF_X96_Y3_N29
\spi_tx_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => message(6),
	sload => VCC,
	ena => \spi_tx_data[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => spi_tx_data(6));

-- Location: LCCOMB_X95_Y1_N26
\spi_slave_0|rx_buf[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|rx_buf[5]~19_combout\ = (\spi_slave_0|wr_add~q\ & (((\spi_slave_0|rx_buf\(5))))) # (!\spi_slave_0|wr_add~q\ & ((\spi_slave_0|bit_cnt\(28) & (\mosi~input_o\)) # (!\spi_slave_0|bit_cnt\(28) & ((\spi_slave_0|rx_buf\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mosi~input_o\,
	datab => \spi_slave_0|wr_add~q\,
	datac => \spi_slave_0|rx_buf\(5),
	datad => \spi_slave_0|bit_cnt\(28),
	combout => \spi_slave_0|rx_buf[5]~19_combout\);

-- Location: FF_X95_Y1_N27
\spi_slave_0|rx_buf[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \spi_slave_0|rx_buf[5]~19_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|rx_buf\(5));

-- Location: LCCOMB_X95_Y1_N0
\spi_slave_0|rx_data[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|rx_data\(5) = (\reset_n~input_o\ & ((GLOBAL(\spi_slave_0|process_1~5clkctrl_outclk\) & ((\spi_slave_0|rx_buf\(5)))) # (!GLOBAL(\spi_slave_0|process_1~5clkctrl_outclk\) & (\spi_slave_0|rx_data\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \spi_slave_0|rx_data\(5),
	datac => \spi_slave_0|rx_buf\(5),
	datad => \spi_slave_0|process_1~5clkctrl_outclk\,
	combout => \spi_slave_0|rx_data\(5));

-- Location: LCCOMB_X95_Y1_N6
\message[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \message[5]~feeder_combout\ = \spi_slave_0|rx_data\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_slave_0|rx_data\(5),
	combout => \message[5]~feeder_combout\);

-- Location: FF_X95_Y1_N7
\message[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \message[5]~feeder_combout\,
	ena => \message[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => message(5));

-- Location: FF_X96_Y3_N5
\spi_tx_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => message(5),
	sload => VCC,
	ena => \spi_tx_data[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => spi_tx_data(5));

-- Location: LCCOMB_X100_Y2_N22
\spi_slave_0|rx_buf[4]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|rx_buf[4]~20_combout\ = (\spi_slave_0|wr_add~q\ & (((\spi_slave_0|rx_buf\(4))))) # (!\spi_slave_0|wr_add~q\ & ((\spi_slave_0|bit_cnt\(29) & ((\mosi~input_o\))) # (!\spi_slave_0|bit_cnt\(29) & (\spi_slave_0|rx_buf\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_slave_0|wr_add~q\,
	datab => \spi_slave_0|bit_cnt\(29),
	datac => \spi_slave_0|rx_buf\(4),
	datad => \mosi~input_o\,
	combout => \spi_slave_0|rx_buf[4]~20_combout\);

-- Location: FF_X100_Y2_N23
\spi_slave_0|rx_buf[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \spi_slave_0|rx_buf[4]~20_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|rx_buf\(4));

-- Location: LCCOMB_X100_Y2_N0
\spi_slave_0|rx_data[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|rx_data\(4) = (\reset_n~input_o\ & ((GLOBAL(\spi_slave_0|process_1~5clkctrl_outclk\) & ((\spi_slave_0|rx_buf\(4)))) # (!GLOBAL(\spi_slave_0|process_1~5clkctrl_outclk\) & (\spi_slave_0|rx_data\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \spi_slave_0|rx_data\(4),
	datac => \spi_slave_0|rx_buf\(4),
	datad => \spi_slave_0|process_1~5clkctrl_outclk\,
	combout => \spi_slave_0|rx_data\(4));

-- Location: LCCOMB_X100_Y2_N6
\message[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \message[4]~feeder_combout\ = \spi_slave_0|rx_data\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_slave_0|rx_data\(4),
	combout => \message[4]~feeder_combout\);

-- Location: FF_X100_Y2_N7
\message[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \message[4]~feeder_combout\,
	ena => \message[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => message(4));

-- Location: LCCOMB_X98_Y2_N2
\spi_tx_data[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_tx_data[4]~feeder_combout\ = message(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => message(4),
	combout => \spi_tx_data[4]~feeder_combout\);

-- Location: FF_X98_Y2_N3
\spi_tx_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spi_tx_data[4]~feeder_combout\,
	ena => \spi_tx_data[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => spi_tx_data(4));

-- Location: LCCOMB_X100_Y2_N8
\spi_slave_0|rx_buf[3]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|rx_buf[3]~21_combout\ = (\spi_slave_0|wr_add~q\ & (((\spi_slave_0|rx_buf\(3))))) # (!\spi_slave_0|wr_add~q\ & ((\spi_slave_0|bit_cnt\(30) & (\mosi~input_o\)) # (!\spi_slave_0|bit_cnt\(30) & ((\spi_slave_0|rx_buf\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_slave_0|wr_add~q\,
	datab => \mosi~input_o\,
	datac => \spi_slave_0|rx_buf\(3),
	datad => \spi_slave_0|bit_cnt\(30),
	combout => \spi_slave_0|rx_buf[3]~21_combout\);

-- Location: FF_X100_Y2_N9
\spi_slave_0|rx_buf[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \spi_slave_0|rx_buf[3]~21_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|rx_buf\(3));

-- Location: LCCOMB_X100_Y2_N2
\spi_slave_0|rx_data[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|rx_data\(3) = (\reset_n~input_o\ & ((GLOBAL(\spi_slave_0|process_1~5clkctrl_outclk\) & ((\spi_slave_0|rx_buf\(3)))) # (!GLOBAL(\spi_slave_0|process_1~5clkctrl_outclk\) & (\spi_slave_0|rx_data\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \spi_slave_0|rx_data\(3),
	datac => \spi_slave_0|rx_buf\(3),
	datad => \spi_slave_0|process_1~5clkctrl_outclk\,
	combout => \spi_slave_0|rx_data\(3));

-- Location: LCCOMB_X100_Y2_N16
\message[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \message[3]~feeder_combout\ = \spi_slave_0|rx_data\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_slave_0|rx_data\(3),
	combout => \message[3]~feeder_combout\);

-- Location: FF_X100_Y2_N17
\message[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \message[3]~feeder_combout\,
	ena => \message[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => message(3));

-- Location: LCCOMB_X98_Y2_N8
\spi_tx_data[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_tx_data[3]~feeder_combout\ = message(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => message(3),
	combout => \spi_tx_data[3]~feeder_combout\);

-- Location: FF_X98_Y2_N9
\spi_tx_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spi_tx_data[3]~feeder_combout\,
	ena => \spi_tx_data[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => spi_tx_data(3));

-- Location: LCCOMB_X98_Y2_N22
\spi_slave_0|tx_buf[3]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[3]~106_combout\ = (\reset_n~input_o\ & ((GLOBAL(\spi_slave_0|trdy~7clkctrl_outclk\) & (spi_tx_data(3))) # (!GLOBAL(\spi_slave_0|trdy~7clkctrl_outclk\) & ((\spi_slave_0|tx_buf[3]~106_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => spi_tx_data(3),
	datab => \reset_n~input_o\,
	datac => \spi_slave_0|tx_buf[3]~106_combout\,
	datad => \spi_slave_0|trdy~7clkctrl_outclk\,
	combout => \spi_slave_0|tx_buf[3]~106_combout\);

-- Location: LCCOMB_X97_Y1_N4
\spi_slave_0|rx_buf[2]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|rx_buf[2]~22_combout\ = (\spi_slave_0|bit_cnt\(31) & ((\spi_slave_0|wr_add~q\ & ((\spi_slave_0|rx_buf\(2)))) # (!\spi_slave_0|wr_add~q\ & (\mosi~input_o\)))) # (!\spi_slave_0|bit_cnt\(31) & (((\spi_slave_0|rx_buf\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_slave_0|bit_cnt\(31),
	datab => \mosi~input_o\,
	datac => \spi_slave_0|rx_buf\(2),
	datad => \spi_slave_0|wr_add~q\,
	combout => \spi_slave_0|rx_buf[2]~22_combout\);

-- Location: FF_X97_Y1_N5
\spi_slave_0|rx_buf[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \spi_slave_0|rx_buf[2]~22_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|rx_buf\(2));

-- Location: LCCOMB_X96_Y1_N0
\spi_slave_0|rx_data[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|rx_data\(2) = (\reset_n~input_o\ & ((GLOBAL(\spi_slave_0|process_1~5clkctrl_outclk\) & ((\spi_slave_0|rx_buf\(2)))) # (!GLOBAL(\spi_slave_0|process_1~5clkctrl_outclk\) & (\spi_slave_0|rx_data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \spi_slave_0|rx_data\(2),
	datac => \spi_slave_0|rx_buf\(2),
	datad => \spi_slave_0|process_1~5clkctrl_outclk\,
	combout => \spi_slave_0|rx_data\(2));

-- Location: LCCOMB_X96_Y1_N26
\message[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \message[2]~feeder_combout\ = \spi_slave_0|rx_data\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_slave_0|rx_data\(2),
	combout => \message[2]~feeder_combout\);

-- Location: FF_X96_Y1_N27
\message[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \message[2]~feeder_combout\,
	ena => \message[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => message(2));

-- Location: LCCOMB_X96_Y2_N6
\spi_tx_data[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_tx_data[2]~feeder_combout\ = message(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => message(2),
	combout => \spi_tx_data[2]~feeder_combout\);

-- Location: FF_X96_Y2_N7
\spi_tx_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spi_tx_data[2]~feeder_combout\,
	ena => \spi_tx_data[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => spi_tx_data(2));

-- Location: LCCOMB_X103_Y1_N28
\spi_slave_0|rx_buf[1]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|rx_buf[1]~23_combout\ = (\spi_slave_0|wr_add~q\ & (((\spi_slave_0|rx_buf\(1))))) # (!\spi_slave_0|wr_add~q\ & ((\spi_slave_0|bit_cnt\(32) & (\mosi~input_o\)) # (!\spi_slave_0|bit_cnt\(32) & ((\spi_slave_0|rx_buf\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mosi~input_o\,
	datab => \spi_slave_0|wr_add~q\,
	datac => \spi_slave_0|rx_buf\(1),
	datad => \spi_slave_0|bit_cnt\(32),
	combout => \spi_slave_0|rx_buf[1]~23_combout\);

-- Location: FF_X103_Y1_N29
\spi_slave_0|rx_buf[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \spi_slave_0|rx_buf[1]~23_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|rx_buf\(1));

-- Location: LCCOMB_X103_Y1_N10
\spi_slave_0|rx_data[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|rx_data\(1) = (\reset_n~input_o\ & ((GLOBAL(\spi_slave_0|process_1~5clkctrl_outclk\) & ((\spi_slave_0|rx_buf\(1)))) # (!GLOBAL(\spi_slave_0|process_1~5clkctrl_outclk\) & (\spi_slave_0|rx_data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \spi_slave_0|rx_data\(1),
	datac => \spi_slave_0|rx_buf\(1),
	datad => \spi_slave_0|process_1~5clkctrl_outclk\,
	combout => \spi_slave_0|rx_data\(1));

-- Location: LCCOMB_X103_Y1_N22
\message[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \message[1]~feeder_combout\ = \spi_slave_0|rx_data\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_slave_0|rx_data\(1),
	combout => \message[1]~feeder_combout\);

-- Location: FF_X103_Y1_N23
\message[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \message[1]~feeder_combout\,
	ena => \message[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => message(1));

-- Location: LCCOMB_X99_Y1_N6
\spi_tx_data[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_tx_data[1]~feeder_combout\ = message(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => message(1),
	combout => \spi_tx_data[1]~feeder_combout\);

-- Location: FF_X99_Y1_N7
\spi_tx_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spi_tx_data[1]~feeder_combout\,
	ena => \spi_tx_data[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => spi_tx_data(1));

-- Location: LCCOMB_X102_Y1_N28
\spi_slave_0|rx_buf[0]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|rx_buf[0]~24_combout\ = (\spi_slave_0|wr_add~q\ & (((\spi_slave_0|rx_buf\(0))))) # (!\spi_slave_0|wr_add~q\ & ((\spi_slave_0|bit_cnt\(33) & (\mosi~input_o\)) # (!\spi_slave_0|bit_cnt\(33) & ((\spi_slave_0|rx_buf\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_slave_0|wr_add~q\,
	datab => \mosi~input_o\,
	datac => \spi_slave_0|rx_buf\(0),
	datad => \spi_slave_0|bit_cnt\(33),
	combout => \spi_slave_0|rx_buf[0]~24_combout\);

-- Location: FF_X102_Y1_N29
\spi_slave_0|rx_buf[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \spi_slave_0|rx_buf[0]~24_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|rx_buf\(0));

-- Location: LCCOMB_X102_Y1_N12
\spi_slave_0|rx_data[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|rx_data\(0) = (\reset_n~input_o\ & ((GLOBAL(\spi_slave_0|process_1~5clkctrl_outclk\) & ((\spi_slave_0|rx_buf\(0)))) # (!GLOBAL(\spi_slave_0|process_1~5clkctrl_outclk\) & (\spi_slave_0|rx_data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_slave_0|rx_data\(0),
	datab => \spi_slave_0|rx_buf\(0),
	datac => \reset_n~input_o\,
	datad => \spi_slave_0|process_1~5clkctrl_outclk\,
	combout => \spi_slave_0|rx_data\(0));

-- Location: LCCOMB_X102_Y1_N14
\message[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \message[0]~feeder_combout\ = \spi_slave_0|rx_data\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_slave_0|rx_data\(0),
	combout => \message[0]~feeder_combout\);

-- Location: FF_X102_Y1_N15
\message[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \message[0]~feeder_combout\,
	ena => \message[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => message(0));

-- Location: LCCOMB_X99_Y1_N24
\spi_tx_data[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_tx_data[0]~feeder_combout\ = message(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => message(0),
	combout => \spi_tx_data[0]~feeder_combout\);

-- Location: FF_X99_Y1_N25
\spi_tx_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spi_tx_data[0]~feeder_combout\,
	ena => \spi_tx_data[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => spi_tx_data(0));

-- Location: LCCOMB_X96_Y2_N2
\spi_slave_0|tx_buf[0]~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[0]~121_combout\ = (\reset_n~input_o\ & ((GLOBAL(\spi_slave_0|trdy~7clkctrl_outclk\) & (spi_tx_data(0))) # (!GLOBAL(\spi_slave_0|trdy~7clkctrl_outclk\) & ((\spi_slave_0|tx_buf[0]~121_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => spi_tx_data(0),
	datac => \spi_slave_0|trdy~7clkctrl_outclk\,
	datad => \spi_slave_0|tx_buf[0]~121_combout\,
	combout => \spi_slave_0|tx_buf[0]~121_combout\);

-- Location: LCCOMB_X96_Y2_N8
\spi_slave_0|tx_buf[0]~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[0]~124_combout\ = \spi_slave_0|tx_buf[0]~121_combout\ $ (\spi_slave_0|tx_buf[24]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi_slave_0|tx_buf[0]~121_combout\,
	datad => \spi_slave_0|tx_buf[24]~2_combout\,
	combout => \spi_slave_0|tx_buf[0]~124_combout\);

-- Location: LCCOMB_X101_Y1_N0
\spi_slave_0|process_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|process_1~1_combout\ = (!\spi_slave_0|bit_cnt\(4) & (!\spi_slave_0|bit_cnt\(2) & (!\spi_slave_0|bit_cnt\(3) & \spi_slave_0|bit_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_slave_0|bit_cnt\(4),
	datab => \spi_slave_0|bit_cnt\(2),
	datac => \spi_slave_0|bit_cnt\(3),
	datad => \spi_slave_0|bit_cnt\(1),
	combout => \spi_slave_0|process_1~1_combout\);

-- Location: LCCOMB_X100_Y2_N20
\spi_slave_0|process_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|process_1~0_combout\ = (!\spi_slave_0|bit_cnt\(33) & (!\spi_slave_0|bit_cnt\(5) & (!\spi_slave_0|bit_cnt\(6) & !\spi_slave_0|bit_cnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_slave_0|bit_cnt\(33),
	datab => \spi_slave_0|bit_cnt\(5),
	datac => \spi_slave_0|bit_cnt\(6),
	datad => \spi_slave_0|bit_cnt\(7),
	combout => \spi_slave_0|process_1~0_combout\);

-- Location: LCCOMB_X99_Y2_N24
\spi_slave_0|process_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|process_1~4_combout\ = (\spi_slave_0|process_1~1_combout\ & (\spi_slave_0|process_1~0_combout\ & !\spi_slave_0|rd_add~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_slave_0|process_1~1_combout\,
	datac => \spi_slave_0|process_1~0_combout\,
	datad => \spi_slave_0|rd_add~q\,
	combout => \spi_slave_0|process_1~4_combout\);

-- Location: FF_X96_Y2_N9
\spi_slave_0|tx_buf[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \spi_slave_0|tx_buf[0]~124_combout\,
	clrn => \spi_slave_0|ALT_INV_trdy~0_combout\,
	ena => \spi_slave_0|process_1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|tx_buf[0]~_emulated_q\);

-- Location: LCCOMB_X96_Y2_N18
\spi_slave_0|tx_buf[0]~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[0]~123_combout\ = \spi_slave_0|tx_buf[0]~_emulated_q\ $ (\spi_slave_0|tx_buf[0]~121_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi_slave_0|tx_buf[0]~_emulated_q\,
	datad => \spi_slave_0|tx_buf[0]~121_combout\,
	combout => \spi_slave_0|tx_buf[0]~123_combout\);

-- Location: LCCOMB_X96_Y2_N20
\spi_slave_0|tx_buf[0]~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[0]~122_combout\ = (\reset_n~input_o\ & ((\spi_slave_0|trdy~7_combout\ & (spi_tx_data(0))) # (!\spi_slave_0|trdy~7_combout\ & ((\spi_slave_0|tx_buf[0]~123_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_slave_0|trdy~7_combout\,
	datab => \reset_n~input_o\,
	datac => spi_tx_data(0),
	datad => \spi_slave_0|tx_buf[0]~123_combout\,
	combout => \spi_slave_0|tx_buf[0]~122_combout\);

-- Location: LCCOMB_X96_Y2_N16
\spi_slave_0|tx_buf[1]~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[1]~116_combout\ = (\reset_n~input_o\ & ((GLOBAL(\spi_slave_0|trdy~7clkctrl_outclk\) & (spi_tx_data(1))) # (!GLOBAL(\spi_slave_0|trdy~7clkctrl_outclk\) & ((\spi_slave_0|tx_buf[1]~116_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => spi_tx_data(1),
	datac => \spi_slave_0|trdy~7clkctrl_outclk\,
	datad => \spi_slave_0|tx_buf[1]~116_combout\,
	combout => \spi_slave_0|tx_buf[1]~116_combout\);

-- Location: LCCOMB_X96_Y2_N26
\spi_slave_0|tx_buf[1]~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[1]~119_combout\ = \spi_slave_0|tx_buf[0]~122_combout\ $ (\spi_slave_0|tx_buf[1]~116_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_slave_0|tx_buf[0]~122_combout\,
	datad => \spi_slave_0|tx_buf[1]~116_combout\,
	combout => \spi_slave_0|tx_buf[1]~119_combout\);

-- Location: FF_X96_Y2_N27
\spi_slave_0|tx_buf[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \spi_slave_0|tx_buf[1]~119_combout\,
	clrn => \spi_slave_0|ALT_INV_trdy~0_combout\,
	ena => \spi_slave_0|process_1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|tx_buf[1]~_emulated_q\);

-- Location: LCCOMB_X96_Y2_N0
\spi_slave_0|tx_buf[1]~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[1]~118_combout\ = \spi_slave_0|tx_buf[1]~_emulated_q\ $ (\spi_slave_0|tx_buf[1]~116_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi_slave_0|tx_buf[1]~_emulated_q\,
	datad => \spi_slave_0|tx_buf[1]~116_combout\,
	combout => \spi_slave_0|tx_buf[1]~118_combout\);

-- Location: LCCOMB_X96_Y2_N14
\spi_slave_0|tx_buf[1]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[1]~117_combout\ = (\reset_n~input_o\ & ((\spi_slave_0|trdy~7_combout\ & (spi_tx_data(1))) # (!\spi_slave_0|trdy~7_combout\ & ((\spi_slave_0|tx_buf[1]~118_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_slave_0|trdy~7_combout\,
	datab => \reset_n~input_o\,
	datac => spi_tx_data(1),
	datad => \spi_slave_0|tx_buf[1]~118_combout\,
	combout => \spi_slave_0|tx_buf[1]~117_combout\);

-- Location: LCCOMB_X96_Y2_N10
\spi_slave_0|tx_buf[2]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[2]~111_combout\ = (\reset_n~input_o\ & ((GLOBAL(\spi_slave_0|trdy~7clkctrl_outclk\) & ((spi_tx_data(2)))) # (!GLOBAL(\spi_slave_0|trdy~7clkctrl_outclk\) & (\spi_slave_0|tx_buf[2]~111_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_slave_0|tx_buf[2]~111_combout\,
	datab => spi_tx_data(2),
	datac => \reset_n~input_o\,
	datad => \spi_slave_0|trdy~7clkctrl_outclk\,
	combout => \spi_slave_0|tx_buf[2]~111_combout\);

-- Location: LCCOMB_X96_Y2_N30
\spi_slave_0|tx_buf[2]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[2]~114_combout\ = \spi_slave_0|tx_buf[1]~117_combout\ $ (\spi_slave_0|tx_buf[2]~111_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi_slave_0|tx_buf[1]~117_combout\,
	datad => \spi_slave_0|tx_buf[2]~111_combout\,
	combout => \spi_slave_0|tx_buf[2]~114_combout\);

-- Location: FF_X96_Y2_N31
\spi_slave_0|tx_buf[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \spi_slave_0|tx_buf[2]~114_combout\,
	clrn => \spi_slave_0|ALT_INV_trdy~0_combout\,
	ena => \spi_slave_0|process_1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|tx_buf[2]~_emulated_q\);

-- Location: LCCOMB_X96_Y2_N24
\spi_slave_0|tx_buf[2]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[2]~113_combout\ = \spi_slave_0|tx_buf[2]~_emulated_q\ $ (\spi_slave_0|tx_buf[2]~111_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi_slave_0|tx_buf[2]~_emulated_q\,
	datad => \spi_slave_0|tx_buf[2]~111_combout\,
	combout => \spi_slave_0|tx_buf[2]~113_combout\);

-- Location: LCCOMB_X96_Y2_N12
\spi_slave_0|tx_buf[2]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[2]~112_combout\ = (\reset_n~input_o\ & ((\spi_slave_0|trdy~7_combout\ & (spi_tx_data(2))) # (!\spi_slave_0|trdy~7_combout\ & ((\spi_slave_0|tx_buf[2]~113_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_slave_0|trdy~7_combout\,
	datab => \reset_n~input_o\,
	datac => spi_tx_data(2),
	datad => \spi_slave_0|tx_buf[2]~113_combout\,
	combout => \spi_slave_0|tx_buf[2]~112_combout\);

-- Location: LCCOMB_X96_Y2_N28
\spi_slave_0|tx_buf[3]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[3]~109_combout\ = \spi_slave_0|tx_buf[2]~112_combout\ $ (\spi_slave_0|tx_buf[3]~106_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi_slave_0|tx_buf[2]~112_combout\,
	datad => \spi_slave_0|tx_buf[3]~106_combout\,
	combout => \spi_slave_0|tx_buf[3]~109_combout\);

-- Location: FF_X96_Y2_N29
\spi_slave_0|tx_buf[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \spi_slave_0|tx_buf[3]~109_combout\,
	clrn => \spi_slave_0|ALT_INV_trdy~0_combout\,
	ena => \spi_slave_0|process_1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|tx_buf[3]~_emulated_q\);

-- Location: LCCOMB_X98_Y2_N10
\spi_slave_0|tx_buf[3]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[3]~108_combout\ = \spi_slave_0|tx_buf[3]~106_combout\ $ (\spi_slave_0|tx_buf[3]~_emulated_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi_slave_0|tx_buf[3]~106_combout\,
	datad => \spi_slave_0|tx_buf[3]~_emulated_q\,
	combout => \spi_slave_0|tx_buf[3]~108_combout\);

-- Location: LCCOMB_X98_Y2_N14
\spi_slave_0|tx_buf[3]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[3]~107_combout\ = (\reset_n~input_o\ & ((\spi_slave_0|trdy~7_combout\ & (spi_tx_data(3))) # (!\spi_slave_0|trdy~7_combout\ & ((\spi_slave_0|tx_buf[3]~108_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \spi_slave_0|trdy~7_combout\,
	datac => spi_tx_data(3),
	datad => \spi_slave_0|tx_buf[3]~108_combout\,
	combout => \spi_slave_0|tx_buf[3]~107_combout\);

-- Location: LCCOMB_X98_Y2_N12
\spi_slave_0|tx_buf[4]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[4]~101_combout\ = (\reset_n~input_o\ & ((GLOBAL(\spi_slave_0|trdy~7clkctrl_outclk\) & (spi_tx_data(4))) # (!GLOBAL(\spi_slave_0|trdy~7clkctrl_outclk\) & ((\spi_slave_0|tx_buf[4]~101_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => spi_tx_data(4),
	datab => \reset_n~input_o\,
	datac => \spi_slave_0|trdy~7clkctrl_outclk\,
	datad => \spi_slave_0|tx_buf[4]~101_combout\,
	combout => \spi_slave_0|tx_buf[4]~101_combout\);

-- Location: LCCOMB_X98_Y2_N26
\spi_slave_0|tx_buf[4]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[4]~104_combout\ = \spi_slave_0|tx_buf[3]~107_combout\ $ (\spi_slave_0|tx_buf[4]~101_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi_slave_0|tx_buf[3]~107_combout\,
	datad => \spi_slave_0|tx_buf[4]~101_combout\,
	combout => \spi_slave_0|tx_buf[4]~104_combout\);

-- Location: FF_X98_Y2_N27
\spi_slave_0|tx_buf[4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \spi_slave_0|tx_buf[4]~104_combout\,
	clrn => \spi_slave_0|ALT_INV_trdy~0_combout\,
	ena => \spi_slave_0|process_1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|tx_buf[4]~_emulated_q\);

-- Location: LCCOMB_X98_Y2_N16
\spi_slave_0|tx_buf[4]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[4]~103_combout\ = \spi_slave_0|tx_buf[4]~_emulated_q\ $ (\spi_slave_0|tx_buf[4]~101_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi_slave_0|tx_buf[4]~_emulated_q\,
	datad => \spi_slave_0|tx_buf[4]~101_combout\,
	combout => \spi_slave_0|tx_buf[4]~103_combout\);

-- Location: LCCOMB_X98_Y2_N24
\spi_slave_0|tx_buf[4]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[4]~102_combout\ = (\reset_n~input_o\ & ((\spi_slave_0|trdy~7_combout\ & (spi_tx_data(4))) # (!\spi_slave_0|trdy~7_combout\ & ((\spi_slave_0|tx_buf[4]~103_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => spi_tx_data(4),
	datab => \spi_slave_0|trdy~7_combout\,
	datac => \reset_n~input_o\,
	datad => \spi_slave_0|tx_buf[4]~103_combout\,
	combout => \spi_slave_0|tx_buf[4]~102_combout\);

-- Location: LCCOMB_X96_Y3_N12
\spi_slave_0|tx_buf[5]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[5]~96_combout\ = (\reset_n~input_o\ & ((GLOBAL(\spi_slave_0|trdy~7clkctrl_outclk\) & ((spi_tx_data(5)))) # (!GLOBAL(\spi_slave_0|trdy~7clkctrl_outclk\) & (\spi_slave_0|tx_buf[5]~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_slave_0|tx_buf[5]~96_combout\,
	datab => spi_tx_data(5),
	datac => \reset_n~input_o\,
	datad => \spi_slave_0|trdy~7clkctrl_outclk\,
	combout => \spi_slave_0|tx_buf[5]~96_combout\);

-- Location: LCCOMB_X98_Y2_N0
\spi_slave_0|tx_buf[5]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[5]~99_combout\ = \spi_slave_0|tx_buf[4]~102_combout\ $ (\spi_slave_0|tx_buf[5]~96_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi_slave_0|tx_buf[4]~102_combout\,
	datad => \spi_slave_0|tx_buf[5]~96_combout\,
	combout => \spi_slave_0|tx_buf[5]~99_combout\);

-- Location: FF_X98_Y2_N1
\spi_slave_0|tx_buf[5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \spi_slave_0|tx_buf[5]~99_combout\,
	clrn => \spi_slave_0|ALT_INV_trdy~0_combout\,
	ena => \spi_slave_0|process_1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|tx_buf[5]~_emulated_q\);

-- Location: LCCOMB_X96_Y3_N4
\spi_slave_0|tx_buf[5]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[5]~98_combout\ = \spi_slave_0|tx_buf[5]~_emulated_q\ $ (\spi_slave_0|tx_buf[5]~96_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi_slave_0|tx_buf[5]~_emulated_q\,
	datad => \spi_slave_0|tx_buf[5]~96_combout\,
	combout => \spi_slave_0|tx_buf[5]~98_combout\);

-- Location: LCCOMB_X96_Y3_N14
\spi_slave_0|tx_buf[5]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[5]~97_combout\ = (\reset_n~input_o\ & ((\spi_slave_0|trdy~7_combout\ & (spi_tx_data(5))) # (!\spi_slave_0|trdy~7_combout\ & ((\spi_slave_0|tx_buf[5]~98_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => spi_tx_data(5),
	datab => \spi_slave_0|trdy~7_combout\,
	datac => \spi_slave_0|tx_buf[5]~98_combout\,
	datad => \reset_n~input_o\,
	combout => \spi_slave_0|tx_buf[5]~97_combout\);

-- Location: LCCOMB_X96_Y3_N18
\spi_slave_0|tx_buf[6]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[6]~91_combout\ = (\reset_n~input_o\ & ((GLOBAL(\spi_slave_0|trdy~7clkctrl_outclk\) & ((spi_tx_data(6)))) # (!GLOBAL(\spi_slave_0|trdy~7clkctrl_outclk\) & (\spi_slave_0|tx_buf[6]~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \spi_slave_0|tx_buf[6]~91_combout\,
	datac => spi_tx_data(6),
	datad => \spi_slave_0|trdy~7clkctrl_outclk\,
	combout => \spi_slave_0|tx_buf[6]~91_combout\);

-- Location: LCCOMB_X96_Y3_N6
\spi_slave_0|tx_buf[6]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[6]~94_combout\ = \spi_slave_0|tx_buf[5]~97_combout\ $ (\spi_slave_0|tx_buf[6]~91_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi_slave_0|tx_buf[5]~97_combout\,
	datad => \spi_slave_0|tx_buf[6]~91_combout\,
	combout => \spi_slave_0|tx_buf[6]~94_combout\);

-- Location: FF_X96_Y3_N7
\spi_slave_0|tx_buf[6]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \spi_slave_0|tx_buf[6]~94_combout\,
	clrn => \spi_slave_0|ALT_INV_trdy~0_combout\,
	ena => \spi_slave_0|process_1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|tx_buf[6]~_emulated_q\);

-- Location: LCCOMB_X96_Y3_N28
\spi_slave_0|tx_buf[6]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[6]~93_combout\ = \spi_slave_0|tx_buf[6]~_emulated_q\ $ (\spi_slave_0|tx_buf[6]~91_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_slave_0|tx_buf[6]~_emulated_q\,
	datad => \spi_slave_0|tx_buf[6]~91_combout\,
	combout => \spi_slave_0|tx_buf[6]~93_combout\);

-- Location: LCCOMB_X96_Y3_N10
\spi_slave_0|tx_buf[6]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[6]~92_combout\ = (\reset_n~input_o\ & ((\spi_slave_0|trdy~7_combout\ & (spi_tx_data(6))) # (!\spi_slave_0|trdy~7_combout\ & ((\spi_slave_0|tx_buf[6]~93_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => spi_tx_data(6),
	datab => \spi_slave_0|tx_buf[6]~93_combout\,
	datac => \spi_slave_0|trdy~7_combout\,
	datad => \reset_n~input_o\,
	combout => \spi_slave_0|tx_buf[6]~92_combout\);

-- Location: LCCOMB_X96_Y3_N24
\spi_slave_0|tx_buf[7]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[7]~86_combout\ = (\reset_n~input_o\ & ((GLOBAL(\spi_slave_0|trdy~7clkctrl_outclk\) & (spi_tx_data(7))) # (!GLOBAL(\spi_slave_0|trdy~7clkctrl_outclk\) & ((\spi_slave_0|tx_buf[7]~86_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => spi_tx_data(7),
	datab => \spi_slave_0|tx_buf[7]~86_combout\,
	datac => \reset_n~input_o\,
	datad => \spi_slave_0|trdy~7clkctrl_outclk\,
	combout => \spi_slave_0|tx_buf[7]~86_combout\);

-- Location: LCCOMB_X96_Y3_N26
\spi_slave_0|tx_buf[7]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[7]~89_combout\ = \spi_slave_0|tx_buf[6]~92_combout\ $ (\spi_slave_0|tx_buf[7]~86_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_slave_0|tx_buf[6]~92_combout\,
	datad => \spi_slave_0|tx_buf[7]~86_combout\,
	combout => \spi_slave_0|tx_buf[7]~89_combout\);

-- Location: FF_X96_Y3_N27
\spi_slave_0|tx_buf[7]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \spi_slave_0|tx_buf[7]~89_combout\,
	clrn => \spi_slave_0|ALT_INV_trdy~0_combout\,
	ena => \spi_slave_0|process_1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|tx_buf[7]~_emulated_q\);

-- Location: LCCOMB_X96_Y3_N8
\spi_slave_0|tx_buf[7]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[7]~88_combout\ = \spi_slave_0|tx_buf[7]~_emulated_q\ $ (\spi_slave_0|tx_buf[7]~86_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi_slave_0|tx_buf[7]~_emulated_q\,
	datad => \spi_slave_0|tx_buf[7]~86_combout\,
	combout => \spi_slave_0|tx_buf[7]~88_combout\);

-- Location: LCCOMB_X96_Y3_N16
\spi_slave_0|tx_buf[7]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[7]~87_combout\ = (\reset_n~input_o\ & ((\spi_slave_0|trdy~7_combout\ & (spi_tx_data(7))) # (!\spi_slave_0|trdy~7_combout\ & ((\spi_slave_0|tx_buf[7]~88_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => spi_tx_data(7),
	datab => \spi_slave_0|trdy~7_combout\,
	datac => \spi_slave_0|tx_buf[7]~88_combout\,
	datad => \reset_n~input_o\,
	combout => \spi_slave_0|tx_buf[7]~87_combout\);

-- Location: LCCOMB_X97_Y1_N18
\spi_slave_0|tx_buf[8]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[8]~81_combout\ = (\reset_n~input_o\ & ((GLOBAL(\spi_slave_0|trdy~7clkctrl_outclk\) & ((spi_tx_data(8)))) # (!GLOBAL(\spi_slave_0|trdy~7clkctrl_outclk\) & (\spi_slave_0|tx_buf[8]~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \spi_slave_0|tx_buf[8]~81_combout\,
	datac => spi_tx_data(8),
	datad => \spi_slave_0|trdy~7clkctrl_outclk\,
	combout => \spi_slave_0|tx_buf[8]~81_combout\);

-- Location: LCCOMB_X96_Y3_N20
\spi_slave_0|tx_buf[8]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[8]~84_combout\ = \spi_slave_0|tx_buf[7]~87_combout\ $ (\spi_slave_0|tx_buf[8]~81_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_slave_0|tx_buf[7]~87_combout\,
	datad => \spi_slave_0|tx_buf[8]~81_combout\,
	combout => \spi_slave_0|tx_buf[8]~84_combout\);

-- Location: FF_X96_Y3_N21
\spi_slave_0|tx_buf[8]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \spi_slave_0|tx_buf[8]~84_combout\,
	clrn => \spi_slave_0|ALT_INV_trdy~0_combout\,
	ena => \spi_slave_0|process_1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|tx_buf[8]~_emulated_q\);

-- Location: LCCOMB_X97_Y1_N10
\spi_slave_0|tx_buf[8]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[8]~83_combout\ = \spi_slave_0|tx_buf[8]~_emulated_q\ $ (\spi_slave_0|tx_buf[8]~81_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi_slave_0|tx_buf[8]~_emulated_q\,
	datad => \spi_slave_0|tx_buf[8]~81_combout\,
	combout => \spi_slave_0|tx_buf[8]~83_combout\);

-- Location: LCCOMB_X98_Y1_N2
\spi_slave_0|tx_buf[8]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[8]~82_combout\ = (\reset_n~input_o\ & ((\spi_slave_0|trdy~7_combout\ & (spi_tx_data(8))) # (!\spi_slave_0|trdy~7_combout\ & ((\spi_slave_0|tx_buf[8]~83_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => spi_tx_data(8),
	datab => \spi_slave_0|trdy~7_combout\,
	datac => \reset_n~input_o\,
	datad => \spi_slave_0|tx_buf[8]~83_combout\,
	combout => \spi_slave_0|tx_buf[8]~82_combout\);

-- Location: LCCOMB_X99_Y1_N10
\spi_slave_0|tx_buf[9]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[9]~76_combout\ = (\reset_n~input_o\ & ((GLOBAL(\spi_slave_0|trdy~7clkctrl_outclk\) & (spi_tx_data(9))) # (!GLOBAL(\spi_slave_0|trdy~7clkctrl_outclk\) & ((\spi_slave_0|tx_buf[9]~76_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => spi_tx_data(9),
	datac => \spi_slave_0|trdy~7clkctrl_outclk\,
	datad => \spi_slave_0|tx_buf[9]~76_combout\,
	combout => \spi_slave_0|tx_buf[9]~76_combout\);

-- Location: LCCOMB_X98_Y1_N28
\spi_slave_0|tx_buf[9]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[9]~79_combout\ = \spi_slave_0|tx_buf[8]~82_combout\ $ (\spi_slave_0|tx_buf[9]~76_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi_slave_0|tx_buf[8]~82_combout\,
	datad => \spi_slave_0|tx_buf[9]~76_combout\,
	combout => \spi_slave_0|tx_buf[9]~79_combout\);

-- Location: FF_X98_Y1_N29
\spi_slave_0|tx_buf[9]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \spi_slave_0|tx_buf[9]~79_combout\,
	clrn => \spi_slave_0|ALT_INV_trdy~0_combout\,
	ena => \spi_slave_0|process_1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|tx_buf[9]~_emulated_q\);

-- Location: LCCOMB_X98_Y1_N6
\spi_slave_0|tx_buf[9]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[9]~78_combout\ = \spi_slave_0|tx_buf[9]~_emulated_q\ $ (\spi_slave_0|tx_buf[9]~76_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi_slave_0|tx_buf[9]~_emulated_q\,
	datad => \spi_slave_0|tx_buf[9]~76_combout\,
	combout => \spi_slave_0|tx_buf[9]~78_combout\);

-- Location: LCCOMB_X98_Y1_N12
\spi_slave_0|tx_buf[9]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[9]~77_combout\ = (\reset_n~input_o\ & ((\spi_slave_0|trdy~7_combout\ & (spi_tx_data(9))) # (!\spi_slave_0|trdy~7_combout\ & ((\spi_slave_0|tx_buf[9]~78_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => spi_tx_data(9),
	datab => \spi_slave_0|trdy~7_combout\,
	datac => \reset_n~input_o\,
	datad => \spi_slave_0|tx_buf[9]~78_combout\,
	combout => \spi_slave_0|tx_buf[9]~77_combout\);

-- Location: LCCOMB_X97_Y3_N6
\spi_slave_0|tx_buf[10]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[10]~71_combout\ = (\reset_n~input_o\ & ((GLOBAL(\spi_slave_0|trdy~7clkctrl_outclk\) & (spi_tx_data(10))) # (!GLOBAL(\spi_slave_0|trdy~7clkctrl_outclk\) & ((\spi_slave_0|tx_buf[10]~71_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => spi_tx_data(10),
	datab => \reset_n~input_o\,
	datac => \spi_slave_0|trdy~7clkctrl_outclk\,
	datad => \spi_slave_0|tx_buf[10]~71_combout\,
	combout => \spi_slave_0|tx_buf[10]~71_combout\);

-- Location: LCCOMB_X98_Y1_N16
\spi_slave_0|tx_buf[10]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[10]~74_combout\ = \spi_slave_0|tx_buf[9]~77_combout\ $ (\spi_slave_0|tx_buf[10]~71_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi_slave_0|tx_buf[9]~77_combout\,
	datad => \spi_slave_0|tx_buf[10]~71_combout\,
	combout => \spi_slave_0|tx_buf[10]~74_combout\);

-- Location: FF_X98_Y1_N17
\spi_slave_0|tx_buf[10]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \spi_slave_0|tx_buf[10]~74_combout\,
	clrn => \spi_slave_0|ALT_INV_trdy~0_combout\,
	ena => \spi_slave_0|process_1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|tx_buf[10]~_emulated_q\);

-- Location: LCCOMB_X97_Y3_N30
\spi_slave_0|tx_buf[10]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[10]~73_combout\ = \spi_slave_0|tx_buf[10]~_emulated_q\ $ (\spi_slave_0|tx_buf[10]~71_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi_slave_0|tx_buf[10]~_emulated_q\,
	datad => \spi_slave_0|tx_buf[10]~71_combout\,
	combout => \spi_slave_0|tx_buf[10]~73_combout\);

-- Location: LCCOMB_X97_Y3_N20
\spi_slave_0|tx_buf[10]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[10]~72_combout\ = (\reset_n~input_o\ & ((\spi_slave_0|trdy~7_combout\ & (spi_tx_data(10))) # (!\spi_slave_0|trdy~7_combout\ & ((\spi_slave_0|tx_buf[10]~73_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_slave_0|trdy~7_combout\,
	datab => spi_tx_data(10),
	datac => \spi_slave_0|tx_buf[10]~73_combout\,
	datad => \reset_n~input_o\,
	combout => \spi_slave_0|tx_buf[10]~72_combout\);

-- Location: LCCOMB_X97_Y3_N8
\spi_slave_0|tx_buf[11]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[11]~69_combout\ = \spi_slave_0|tx_buf[11]~66_combout\ $ (\spi_slave_0|tx_buf[10]~72_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi_slave_0|tx_buf[11]~66_combout\,
	datac => \spi_slave_0|tx_buf[10]~72_combout\,
	combout => \spi_slave_0|tx_buf[11]~69_combout\);

-- Location: FF_X97_Y3_N9
\spi_slave_0|tx_buf[11]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \spi_slave_0|tx_buf[11]~69_combout\,
	clrn => \spi_slave_0|ALT_INV_trdy~0_combout\,
	ena => \spi_slave_0|process_1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|tx_buf[11]~_emulated_q\);

-- Location: LCCOMB_X97_Y3_N14
\spi_slave_0|tx_buf[11]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[11]~68_combout\ = \spi_slave_0|tx_buf[11]~_emulated_q\ $ (\spi_slave_0|tx_buf[11]~66_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi_slave_0|tx_buf[11]~_emulated_q\,
	datad => \spi_slave_0|tx_buf[11]~66_combout\,
	combout => \spi_slave_0|tx_buf[11]~68_combout\);

-- Location: LCCOMB_X97_Y3_N24
\spi_slave_0|tx_buf[11]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[11]~67_combout\ = (\reset_n~input_o\ & ((\spi_slave_0|trdy~7_combout\ & (spi_tx_data(11))) # (!\spi_slave_0|trdy~7_combout\ & ((\spi_slave_0|tx_buf[11]~68_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_slave_0|trdy~7_combout\,
	datab => spi_tx_data(11),
	datac => \spi_slave_0|tx_buf[11]~68_combout\,
	datad => \reset_n~input_o\,
	combout => \spi_slave_0|tx_buf[11]~67_combout\);

-- Location: LCCOMB_X97_Y3_N10
\spi_slave_0|tx_buf[12]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[12]~61_combout\ = (\reset_n~input_o\ & ((GLOBAL(\spi_slave_0|trdy~7clkctrl_outclk\) & (spi_tx_data(12))) # (!GLOBAL(\spi_slave_0|trdy~7clkctrl_outclk\) & ((\spi_slave_0|tx_buf[12]~61_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => spi_tx_data(12),
	datab => \reset_n~input_o\,
	datac => \spi_slave_0|trdy~7clkctrl_outclk\,
	datad => \spi_slave_0|tx_buf[12]~61_combout\,
	combout => \spi_slave_0|tx_buf[12]~61_combout\);

-- Location: LCCOMB_X97_Y3_N22
\spi_slave_0|tx_buf[12]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[12]~64_combout\ = \spi_slave_0|tx_buf[11]~67_combout\ $ (\spi_slave_0|tx_buf[12]~61_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi_slave_0|tx_buf[11]~67_combout\,
	datad => \spi_slave_0|tx_buf[12]~61_combout\,
	combout => \spi_slave_0|tx_buf[12]~64_combout\);

-- Location: FF_X97_Y3_N23
\spi_slave_0|tx_buf[12]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \spi_slave_0|tx_buf[12]~64_combout\,
	clrn => \spi_slave_0|ALT_INV_trdy~0_combout\,
	ena => \spi_slave_0|process_1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|tx_buf[12]~_emulated_q\);

-- Location: LCCOMB_X97_Y3_N4
\spi_slave_0|tx_buf[12]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[12]~63_combout\ = \spi_slave_0|tx_buf[12]~_emulated_q\ $ (\spi_slave_0|tx_buf[12]~61_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi_slave_0|tx_buf[12]~_emulated_q\,
	datad => \spi_slave_0|tx_buf[12]~61_combout\,
	combout => \spi_slave_0|tx_buf[12]~63_combout\);

-- Location: LCCOMB_X97_Y3_N18
\spi_slave_0|tx_buf[12]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[12]~62_combout\ = (\reset_n~input_o\ & ((\spi_slave_0|trdy~7_combout\ & (spi_tx_data(12))) # (!\spi_slave_0|trdy~7_combout\ & ((\spi_slave_0|tx_buf[12]~63_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_slave_0|trdy~7_combout\,
	datab => spi_tx_data(12),
	datac => \spi_slave_0|tx_buf[12]~63_combout\,
	datad => \reset_n~input_o\,
	combout => \spi_slave_0|tx_buf[12]~62_combout\);

-- Location: LCCOMB_X98_Y3_N6
\spi_slave_0|tx_buf[13]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[13]~56_combout\ = (\reset_n~input_o\ & ((GLOBAL(\spi_slave_0|trdy~7clkctrl_outclk\) & (spi_tx_data(13))) # (!GLOBAL(\spi_slave_0|trdy~7clkctrl_outclk\) & ((\spi_slave_0|tx_buf[13]~56_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => spi_tx_data(13),
	datab => \reset_n~input_o\,
	datac => \spi_slave_0|tx_buf[13]~56_combout\,
	datad => \spi_slave_0|trdy~7clkctrl_outclk\,
	combout => \spi_slave_0|tx_buf[13]~56_combout\);

-- Location: LCCOMB_X97_Y3_N28
\spi_slave_0|tx_buf[13]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[13]~59_combout\ = \spi_slave_0|tx_buf[12]~62_combout\ $ (\spi_slave_0|tx_buf[13]~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi_slave_0|tx_buf[12]~62_combout\,
	datad => \spi_slave_0|tx_buf[13]~56_combout\,
	combout => \spi_slave_0|tx_buf[13]~59_combout\);

-- Location: FF_X97_Y3_N29
\spi_slave_0|tx_buf[13]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \spi_slave_0|tx_buf[13]~59_combout\,
	clrn => \spi_slave_0|ALT_INV_trdy~0_combout\,
	ena => \spi_slave_0|process_1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|tx_buf[13]~_emulated_q\);

-- Location: LCCOMB_X98_Y3_N2
\spi_slave_0|tx_buf[13]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[13]~58_combout\ = \spi_slave_0|tx_buf[13]~_emulated_q\ $ (\spi_slave_0|tx_buf[13]~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi_slave_0|tx_buf[13]~_emulated_q\,
	datad => \spi_slave_0|tx_buf[13]~56_combout\,
	combout => \spi_slave_0|tx_buf[13]~58_combout\);

-- Location: LCCOMB_X98_Y3_N14
\spi_slave_0|tx_buf[13]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[13]~57_combout\ = (\reset_n~input_o\ & ((\spi_slave_0|trdy~7_combout\ & (spi_tx_data(13))) # (!\spi_slave_0|trdy~7_combout\ & ((\spi_slave_0|tx_buf[13]~58_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_slave_0|trdy~7_combout\,
	datab => spi_tx_data(13),
	datac => \reset_n~input_o\,
	datad => \spi_slave_0|tx_buf[13]~58_combout\,
	combout => \spi_slave_0|tx_buf[13]~57_combout\);

-- Location: LCCOMB_X99_Y1_N20
\spi_slave_0|tx_buf[14]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[14]~51_combout\ = (\reset_n~input_o\ & ((GLOBAL(\spi_slave_0|trdy~7clkctrl_outclk\) & (spi_tx_data(14))) # (!GLOBAL(\spi_slave_0|trdy~7clkctrl_outclk\) & ((\spi_slave_0|tx_buf[14]~51_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => spi_tx_data(14),
	datac => \spi_slave_0|trdy~7clkctrl_outclk\,
	datad => \spi_slave_0|tx_buf[14]~51_combout\,
	combout => \spi_slave_0|tx_buf[14]~51_combout\);

-- Location: LCCOMB_X98_Y3_N10
\spi_slave_0|tx_buf[14]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[14]~54_combout\ = \spi_slave_0|tx_buf[13]~57_combout\ $ (\spi_slave_0|tx_buf[14]~51_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi_slave_0|tx_buf[13]~57_combout\,
	datad => \spi_slave_0|tx_buf[14]~51_combout\,
	combout => \spi_slave_0|tx_buf[14]~54_combout\);

-- Location: FF_X98_Y3_N11
\spi_slave_0|tx_buf[14]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \spi_slave_0|tx_buf[14]~54_combout\,
	clrn => \spi_slave_0|ALT_INV_trdy~0_combout\,
	ena => \spi_slave_0|process_1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|tx_buf[14]~_emulated_q\);

-- Location: LCCOMB_X99_Y1_N4
\spi_slave_0|tx_buf[14]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[14]~53_combout\ = \spi_slave_0|tx_buf[14]~_emulated_q\ $ (\spi_slave_0|tx_buf[14]~51_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_slave_0|tx_buf[14]~_emulated_q\,
	datad => \spi_slave_0|tx_buf[14]~51_combout\,
	combout => \spi_slave_0|tx_buf[14]~53_combout\);

-- Location: LCCOMB_X98_Y3_N0
\spi_slave_0|tx_buf[14]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[14]~52_combout\ = (\reset_n~input_o\ & ((\spi_slave_0|trdy~7_combout\ & (spi_tx_data(14))) # (!\spi_slave_0|trdy~7_combout\ & ((\spi_slave_0|tx_buf[14]~53_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \spi_slave_0|trdy~7_combout\,
	datac => spi_tx_data(14),
	datad => \spi_slave_0|tx_buf[14]~53_combout\,
	combout => \spi_slave_0|tx_buf[14]~52_combout\);

-- Location: LCCOMB_X99_Y1_N0
\spi_slave_0|tx_buf[15]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[15]~46_combout\ = (\reset_n~input_o\ & ((GLOBAL(\spi_slave_0|trdy~7clkctrl_outclk\) & (spi_tx_data(15))) # (!GLOBAL(\spi_slave_0|trdy~7clkctrl_outclk\) & ((\spi_slave_0|tx_buf[15]~46_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => spi_tx_data(15),
	datab => \reset_n~input_o\,
	datac => \spi_slave_0|trdy~7clkctrl_outclk\,
	datad => \spi_slave_0|tx_buf[15]~46_combout\,
	combout => \spi_slave_0|tx_buf[15]~46_combout\);

-- Location: LCCOMB_X98_Y3_N22
\spi_slave_0|tx_buf[15]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[15]~49_combout\ = \spi_slave_0|tx_buf[14]~52_combout\ $ (\spi_slave_0|tx_buf[15]~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi_slave_0|tx_buf[14]~52_combout\,
	datad => \spi_slave_0|tx_buf[15]~46_combout\,
	combout => \spi_slave_0|tx_buf[15]~49_combout\);

-- Location: FF_X98_Y3_N23
\spi_slave_0|tx_buf[15]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \spi_slave_0|tx_buf[15]~49_combout\,
	clrn => \spi_slave_0|ALT_INV_trdy~0_combout\,
	ena => \spi_slave_0|process_1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|tx_buf[15]~_emulated_q\);

-- Location: LCCOMB_X99_Y1_N30
\spi_slave_0|tx_buf[15]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[15]~48_combout\ = \spi_slave_0|tx_buf[15]~_emulated_q\ $ (\spi_slave_0|tx_buf[15]~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_slave_0|tx_buf[15]~_emulated_q\,
	datad => \spi_slave_0|tx_buf[15]~46_combout\,
	combout => \spi_slave_0|tx_buf[15]~48_combout\);

-- Location: LCCOMB_X98_Y3_N12
\spi_slave_0|tx_buf[15]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[15]~47_combout\ = (\reset_n~input_o\ & ((\spi_slave_0|trdy~7_combout\ & (spi_tx_data(15))) # (!\spi_slave_0|trdy~7_combout\ & ((\spi_slave_0|tx_buf[15]~48_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => spi_tx_data(15),
	datac => \spi_slave_0|trdy~7_combout\,
	datad => \spi_slave_0|tx_buf[15]~48_combout\,
	combout => \spi_slave_0|tx_buf[15]~47_combout\);

-- Location: LCCOMB_X99_Y1_N18
\spi_slave_0|tx_buf[16]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[16]~41_combout\ = (\reset_n~input_o\ & ((GLOBAL(\spi_slave_0|trdy~7clkctrl_outclk\) & (spi_tx_data(16))) # (!GLOBAL(\spi_slave_0|trdy~7clkctrl_outclk\) & ((\spi_slave_0|tx_buf[16]~41_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => spi_tx_data(16),
	datac => \spi_slave_0|tx_buf[16]~41_combout\,
	datad => \spi_slave_0|trdy~7clkctrl_outclk\,
	combout => \spi_slave_0|tx_buf[16]~41_combout\);

-- Location: LCCOMB_X98_Y3_N20
\spi_slave_0|tx_buf[16]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[16]~44_combout\ = \spi_slave_0|tx_buf[15]~47_combout\ $ (\spi_slave_0|tx_buf[16]~41_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi_slave_0|tx_buf[15]~47_combout\,
	datad => \spi_slave_0|tx_buf[16]~41_combout\,
	combout => \spi_slave_0|tx_buf[16]~44_combout\);

-- Location: FF_X98_Y3_N21
\spi_slave_0|tx_buf[16]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \spi_slave_0|tx_buf[16]~44_combout\,
	clrn => \spi_slave_0|ALT_INV_trdy~0_combout\,
	ena => \spi_slave_0|process_1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|tx_buf[16]~_emulated_q\);

-- Location: LCCOMB_X99_Y1_N28
\spi_slave_0|tx_buf[16]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[16]~43_combout\ = \spi_slave_0|tx_buf[16]~_emulated_q\ $ (\spi_slave_0|tx_buf[16]~41_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi_slave_0|tx_buf[16]~_emulated_q\,
	datad => \spi_slave_0|tx_buf[16]~41_combout\,
	combout => \spi_slave_0|tx_buf[16]~43_combout\);

-- Location: LCCOMB_X98_Y1_N30
\spi_slave_0|tx_buf[16]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[16]~42_combout\ = (\reset_n~input_o\ & ((\spi_slave_0|trdy~7_combout\ & (spi_tx_data(16))) # (!\spi_slave_0|trdy~7_combout\ & ((\spi_slave_0|tx_buf[16]~43_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => spi_tx_data(16),
	datac => \spi_slave_0|trdy~7_combout\,
	datad => \spi_slave_0|tx_buf[16]~43_combout\,
	combout => \spi_slave_0|tx_buf[16]~42_combout\);

-- Location: LCCOMB_X99_Y1_N16
\spi_slave_0|tx_buf[17]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[17]~36_combout\ = (\reset_n~input_o\ & ((GLOBAL(\spi_slave_0|trdy~7clkctrl_outclk\) & ((spi_tx_data(17)))) # (!GLOBAL(\spi_slave_0|trdy~7clkctrl_outclk\) & (\spi_slave_0|tx_buf[17]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_slave_0|tx_buf[17]~36_combout\,
	datab => \reset_n~input_o\,
	datac => spi_tx_data(17),
	datad => \spi_slave_0|trdy~7clkctrl_outclk\,
	combout => \spi_slave_0|tx_buf[17]~36_combout\);

-- Location: LCCOMB_X98_Y1_N8
\spi_slave_0|tx_buf[17]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[17]~39_combout\ = \spi_slave_0|tx_buf[16]~42_combout\ $ (\spi_slave_0|tx_buf[17]~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_slave_0|tx_buf[16]~42_combout\,
	datac => \spi_slave_0|tx_buf[17]~36_combout\,
	combout => \spi_slave_0|tx_buf[17]~39_combout\);

-- Location: FF_X98_Y1_N9
\spi_slave_0|tx_buf[17]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \spi_slave_0|tx_buf[17]~39_combout\,
	clrn => \spi_slave_0|ALT_INV_trdy~0_combout\,
	ena => \spi_slave_0|process_1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|tx_buf[17]~_emulated_q\);

-- Location: LCCOMB_X99_Y1_N26
\spi_slave_0|tx_buf[17]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[17]~38_combout\ = \spi_slave_0|tx_buf[17]~_emulated_q\ $ (\spi_slave_0|tx_buf[17]~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_slave_0|tx_buf[17]~_emulated_q\,
	datad => \spi_slave_0|tx_buf[17]~36_combout\,
	combout => \spi_slave_0|tx_buf[17]~38_combout\);

-- Location: LCCOMB_X98_Y3_N26
\spi_slave_0|tx_buf[17]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[17]~37_combout\ = (\reset_n~input_o\ & ((\spi_slave_0|trdy~7_combout\ & (spi_tx_data(17))) # (!\spi_slave_0|trdy~7_combout\ & ((\spi_slave_0|tx_buf[17]~38_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \spi_slave_0|trdy~7_combout\,
	datac => spi_tx_data(17),
	datad => \spi_slave_0|tx_buf[17]~38_combout\,
	combout => \spi_slave_0|tx_buf[17]~37_combout\);

-- Location: LCCOMB_X98_Y3_N18
\spi_slave_0|tx_buf[18]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[18]~34_combout\ = \spi_slave_0|tx_buf[18]~31_combout\ $ (\spi_slave_0|tx_buf[17]~37_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi_slave_0|tx_buf[18]~31_combout\,
	datac => \spi_slave_0|tx_buf[17]~37_combout\,
	combout => \spi_slave_0|tx_buf[18]~34_combout\);

-- Location: FF_X98_Y3_N19
\spi_slave_0|tx_buf[18]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \spi_slave_0|tx_buf[18]~34_combout\,
	clrn => \spi_slave_0|ALT_INV_trdy~0_combout\,
	ena => \spi_slave_0|process_1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|tx_buf[18]~_emulated_q\);

-- Location: LCCOMB_X98_Y3_N16
\spi_slave_0|tx_buf[18]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[18]~33_combout\ = \spi_slave_0|tx_buf[18]~_emulated_q\ $ (\spi_slave_0|tx_buf[18]~31_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi_slave_0|tx_buf[18]~_emulated_q\,
	datac => \spi_slave_0|tx_buf[18]~31_combout\,
	combout => \spi_slave_0|tx_buf[18]~33_combout\);

-- Location: LCCOMB_X98_Y3_N4
\spi_slave_0|tx_buf[18]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[18]~32_combout\ = (\reset_n~input_o\ & ((\spi_slave_0|trdy~7_combout\ & (spi_tx_data(18))) # (!\spi_slave_0|trdy~7_combout\ & ((\spi_slave_0|tx_buf[18]~33_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => spi_tx_data(18),
	datab => \spi_slave_0|trdy~7_combout\,
	datac => \reset_n~input_o\,
	datad => \spi_slave_0|tx_buf[18]~33_combout\,
	combout => \spi_slave_0|tx_buf[18]~32_combout\);

-- Location: LCCOMB_X100_Y2_N4
\spi_slave_0|rx_buf[19]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|rx_buf[19]~5_combout\ = (\spi_slave_0|wr_add~q\ & (((\spi_slave_0|rx_buf\(19))))) # (!\spi_slave_0|wr_add~q\ & ((\spi_slave_0|bit_cnt\(14) & (\mosi~input_o\)) # (!\spi_slave_0|bit_cnt\(14) & ((\spi_slave_0|rx_buf\(19))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_slave_0|wr_add~q\,
	datab => \mosi~input_o\,
	datac => \spi_slave_0|rx_buf\(19),
	datad => \spi_slave_0|bit_cnt\(14),
	combout => \spi_slave_0|rx_buf[19]~5_combout\);

-- Location: FF_X100_Y2_N5
\spi_slave_0|rx_buf[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \spi_slave_0|rx_buf[19]~5_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|rx_buf\(19));

-- Location: LCCOMB_X100_Y2_N18
\spi_slave_0|rx_data[19]\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|rx_data\(19) = (\reset_n~input_o\ & ((GLOBAL(\spi_slave_0|process_1~5clkctrl_outclk\) & ((\spi_slave_0|rx_buf\(19)))) # (!GLOBAL(\spi_slave_0|process_1~5clkctrl_outclk\) & (\spi_slave_0|rx_data\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \spi_slave_0|rx_data\(19),
	datac => \spi_slave_0|rx_buf\(19),
	datad => \spi_slave_0|process_1~5clkctrl_outclk\,
	combout => \spi_slave_0|rx_data\(19));

-- Location: LCCOMB_X100_Y2_N28
\message[19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \message[19]~feeder_combout\ = \spi_slave_0|rx_data\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \spi_slave_0|rx_data\(19),
	combout => \message[19]~feeder_combout\);

-- Location: FF_X100_Y2_N29
\message[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \message[19]~feeder_combout\,
	ena => \message[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => message(19));

-- Location: LCCOMB_X98_Y1_N20
\spi_tx_data[19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_tx_data[19]~feeder_combout\ = message(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => message(19),
	combout => \spi_tx_data[19]~feeder_combout\);

-- Location: FF_X98_Y1_N21
\spi_tx_data[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \spi_tx_data[19]~feeder_combout\,
	ena => \spi_tx_data[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => spi_tx_data(19));

-- Location: LCCOMB_X97_Y1_N12
\spi_slave_0|tx_buf[19]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[19]~26_combout\ = (\reset_n~input_o\ & ((GLOBAL(\spi_slave_0|trdy~7clkctrl_outclk\) & (spi_tx_data(19))) # (!GLOBAL(\spi_slave_0|trdy~7clkctrl_outclk\) & ((\spi_slave_0|tx_buf[19]~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => spi_tx_data(19),
	datac => \spi_slave_0|tx_buf[19]~26_combout\,
	datad => \spi_slave_0|trdy~7clkctrl_outclk\,
	combout => \spi_slave_0|tx_buf[19]~26_combout\);

-- Location: LCCOMB_X98_Y3_N24
\spi_slave_0|tx_buf[19]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[19]~29_combout\ = \spi_slave_0|tx_buf[18]~32_combout\ $ (\spi_slave_0|tx_buf[19]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_slave_0|tx_buf[18]~32_combout\,
	datac => \spi_slave_0|tx_buf[19]~26_combout\,
	combout => \spi_slave_0|tx_buf[19]~29_combout\);

-- Location: FF_X98_Y3_N25
\spi_slave_0|tx_buf[19]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \spi_slave_0|tx_buf[19]~29_combout\,
	clrn => \spi_slave_0|ALT_INV_trdy~0_combout\,
	ena => \spi_slave_0|process_1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|tx_buf[19]~_emulated_q\);

-- Location: LCCOMB_X98_Y1_N22
\spi_slave_0|tx_buf[19]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[19]~28_combout\ = \spi_slave_0|tx_buf[19]~_emulated_q\ $ (\spi_slave_0|tx_buf[19]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi_slave_0|tx_buf[19]~_emulated_q\,
	datad => \spi_slave_0|tx_buf[19]~26_combout\,
	combout => \spi_slave_0|tx_buf[19]~28_combout\);

-- Location: LCCOMB_X98_Y1_N18
\spi_slave_0|tx_buf[19]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[19]~27_combout\ = (\reset_n~input_o\ & ((\spi_slave_0|trdy~7_combout\ & ((spi_tx_data(19)))) # (!\spi_slave_0|trdy~7_combout\ & (\spi_slave_0|tx_buf[19]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \spi_slave_0|trdy~7_combout\,
	datac => \spi_slave_0|tx_buf[19]~28_combout\,
	datad => spi_tx_data(19),
	combout => \spi_slave_0|tx_buf[19]~27_combout\);

-- Location: LCCOMB_X98_Y1_N26
\spi_slave_0|tx_buf[20]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[20]~21_combout\ = (\reset_n~input_o\ & ((GLOBAL(\spi_slave_0|trdy~7clkctrl_outclk\) & (spi_tx_data(20))) # (!GLOBAL(\spi_slave_0|trdy~7clkctrl_outclk\) & ((\spi_slave_0|tx_buf[20]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => spi_tx_data(20),
	datab => \reset_n~input_o\,
	datac => \spi_slave_0|tx_buf[20]~21_combout\,
	datad => \spi_slave_0|trdy~7clkctrl_outclk\,
	combout => \spi_slave_0|tx_buf[20]~21_combout\);

-- Location: LCCOMB_X98_Y1_N14
\spi_slave_0|tx_buf[20]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[20]~24_combout\ = \spi_slave_0|tx_buf[19]~27_combout\ $ (\spi_slave_0|tx_buf[20]~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_slave_0|tx_buf[19]~27_combout\,
	datac => \spi_slave_0|tx_buf[20]~21_combout\,
	combout => \spi_slave_0|tx_buf[20]~24_combout\);

-- Location: FF_X98_Y1_N15
\spi_slave_0|tx_buf[20]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \spi_slave_0|tx_buf[20]~24_combout\,
	clrn => \spi_slave_0|ALT_INV_trdy~0_combout\,
	ena => \spi_slave_0|process_1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|tx_buf[20]~_emulated_q\);

-- Location: LCCOMB_X98_Y1_N0
\spi_slave_0|tx_buf[20]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[20]~23_combout\ = \spi_slave_0|tx_buf[20]~_emulated_q\ $ (\spi_slave_0|tx_buf[20]~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi_slave_0|tx_buf[20]~_emulated_q\,
	datad => \spi_slave_0|tx_buf[20]~21_combout\,
	combout => \spi_slave_0|tx_buf[20]~23_combout\);

-- Location: LCCOMB_X98_Y2_N18
\spi_slave_0|tx_buf[20]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[20]~22_combout\ = (\reset_n~input_o\ & ((\spi_slave_0|trdy~7_combout\ & (spi_tx_data(20))) # (!\spi_slave_0|trdy~7_combout\ & ((\spi_slave_0|tx_buf[20]~23_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => spi_tx_data(20),
	datab => \spi_slave_0|trdy~7_combout\,
	datac => \reset_n~input_o\,
	datad => \spi_slave_0|tx_buf[20]~23_combout\,
	combout => \spi_slave_0|tx_buf[20]~22_combout\);

-- Location: LCCOMB_X97_Y1_N2
\spi_slave_0|tx_buf[21]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[21]~16_combout\ = (\reset_n~input_o\ & ((GLOBAL(\spi_slave_0|trdy~7clkctrl_outclk\) & ((spi_tx_data(21)))) # (!GLOBAL(\spi_slave_0|trdy~7clkctrl_outclk\) & (\spi_slave_0|tx_buf[21]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \spi_slave_0|tx_buf[21]~16_combout\,
	datac => spi_tx_data(21),
	datad => \spi_slave_0|trdy~7clkctrl_outclk\,
	combout => \spi_slave_0|tx_buf[21]~16_combout\);

-- Location: LCCOMB_X98_Y2_N20
\spi_slave_0|tx_buf[21]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[21]~19_combout\ = \spi_slave_0|tx_buf[20]~22_combout\ $ (\spi_slave_0|tx_buf[21]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_slave_0|tx_buf[20]~22_combout\,
	datad => \spi_slave_0|tx_buf[21]~16_combout\,
	combout => \spi_slave_0|tx_buf[21]~19_combout\);

-- Location: FF_X98_Y2_N21
\spi_slave_0|tx_buf[21]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \spi_slave_0|tx_buf[21]~19_combout\,
	clrn => \spi_slave_0|ALT_INV_trdy~0_combout\,
	ena => \spi_slave_0|process_1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|tx_buf[21]~_emulated_q\);

-- Location: LCCOMB_X97_Y1_N6
\spi_slave_0|tx_buf[21]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[21]~18_combout\ = \spi_slave_0|tx_buf[21]~_emulated_q\ $ (\spi_slave_0|tx_buf[21]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_slave_0|tx_buf[21]~_emulated_q\,
	datad => \spi_slave_0|tx_buf[21]~16_combout\,
	combout => \spi_slave_0|tx_buf[21]~18_combout\);

-- Location: LCCOMB_X97_Y1_N20
\spi_slave_0|tx_buf[21]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[21]~17_combout\ = (\reset_n~input_o\ & ((\spi_slave_0|trdy~7_combout\ & (spi_tx_data(21))) # (!\spi_slave_0|trdy~7_combout\ & ((\spi_slave_0|tx_buf[21]~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_slave_0|trdy~7_combout\,
	datab => spi_tx_data(21),
	datac => \reset_n~input_o\,
	datad => \spi_slave_0|tx_buf[21]~18_combout\,
	combout => \spi_slave_0|tx_buf[21]~17_combout\);

-- Location: LCCOMB_X98_Y2_N30
\spi_slave_0|tx_buf[22]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[22]~14_combout\ = \spi_slave_0|tx_buf[22]~11_combout\ $ (\spi_slave_0|tx_buf[21]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi_slave_0|tx_buf[22]~11_combout\,
	datac => \spi_slave_0|tx_buf[21]~17_combout\,
	combout => \spi_slave_0|tx_buf[22]~14_combout\);

-- Location: FF_X98_Y2_N31
\spi_slave_0|tx_buf[22]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \spi_slave_0|tx_buf[22]~14_combout\,
	clrn => \spi_slave_0|ALT_INV_trdy~0_combout\,
	ena => \spi_slave_0|process_1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|tx_buf[22]~_emulated_q\);

-- Location: LCCOMB_X99_Y2_N20
\spi_slave_0|tx_buf[22]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[22]~13_combout\ = \spi_slave_0|tx_buf[22]~11_combout\ $ (\spi_slave_0|tx_buf[22]~_emulated_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi_slave_0|tx_buf[22]~11_combout\,
	datad => \spi_slave_0|tx_buf[22]~_emulated_q\,
	combout => \spi_slave_0|tx_buf[22]~13_combout\);

-- Location: LCCOMB_X99_Y2_N18
\spi_slave_0|tx_buf[22]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[22]~12_combout\ = (\reset_n~input_o\ & ((\spi_slave_0|trdy~7_combout\ & (spi_tx_data(22))) # (!\spi_slave_0|trdy~7_combout\ & ((\spi_slave_0|tx_buf[22]~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => spi_tx_data(22),
	datab => \reset_n~input_o\,
	datac => \spi_slave_0|trdy~7_combout\,
	datad => \spi_slave_0|tx_buf[22]~13_combout\,
	combout => \spi_slave_0|tx_buf[22]~12_combout\);

-- Location: LCCOMB_X99_Y2_N6
\spi_slave_0|tx_buf[23]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[23]~9_combout\ = \spi_slave_0|tx_buf[22]~12_combout\ $ (\spi_slave_0|tx_buf[23]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_slave_0|tx_buf[22]~12_combout\,
	datad => \spi_slave_0|tx_buf[23]~6_combout\,
	combout => \spi_slave_0|tx_buf[23]~9_combout\);

-- Location: FF_X99_Y2_N7
\spi_slave_0|tx_buf[23]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \spi_slave_0|tx_buf[23]~9_combout\,
	clrn => \spi_slave_0|ALT_INV_trdy~0_combout\,
	ena => \spi_slave_0|process_1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|tx_buf[23]~_emulated_q\);

-- Location: LCCOMB_X97_Y2_N16
\spi_slave_0|tx_buf[23]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[23]~8_combout\ = \spi_slave_0|tx_buf[23]~6_combout\ $ (\spi_slave_0|tx_buf[23]~_emulated_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \spi_slave_0|tx_buf[23]~6_combout\,
	datad => \spi_slave_0|tx_buf[23]~_emulated_q\,
	combout => \spi_slave_0|tx_buf[23]~8_combout\);

-- Location: LCCOMB_X97_Y2_N24
\spi_slave_0|tx_buf[23]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[23]~7_combout\ = (\reset_n~input_o\ & ((\spi_slave_0|trdy~7_combout\ & (spi_tx_data(23))) # (!\spi_slave_0|trdy~7_combout\ & ((\spi_slave_0|tx_buf[23]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => spi_tx_data(23),
	datab => \reset_n~input_o\,
	datac => \spi_slave_0|trdy~7_combout\,
	datad => \spi_slave_0|tx_buf[23]~8_combout\,
	combout => \spi_slave_0|tx_buf[23]~7_combout\);

-- Location: LCCOMB_X97_Y2_N28
\spi_slave_0|tx_buf[24]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[24]~1_combout\ = (\reset_n~input_o\ & ((GLOBAL(\spi_slave_0|trdy~7clkctrl_outclk\) & (spi_tx_data(24))) # (!GLOBAL(\spi_slave_0|trdy~7clkctrl_outclk\) & ((\spi_slave_0|tx_buf[24]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => spi_tx_data(24),
	datac => \spi_slave_0|trdy~7clkctrl_outclk\,
	datad => \spi_slave_0|tx_buf[24]~1_combout\,
	combout => \spi_slave_0|tx_buf[24]~1_combout\);

-- Location: LCCOMB_X98_Y2_N28
\spi_slave_0|tx_buf[24]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[24]~4_combout\ = \spi_slave_0|tx_buf[23]~7_combout\ $ (\spi_slave_0|tx_buf[24]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi_slave_0|tx_buf[23]~7_combout\,
	datad => \spi_slave_0|tx_buf[24]~1_combout\,
	combout => \spi_slave_0|tx_buf[24]~4_combout\);

-- Location: FF_X98_Y2_N29
\spi_slave_0|tx_buf[24]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \spi_slave_0|tx_buf[24]~4_combout\,
	clrn => \spi_slave_0|ALT_INV_trdy~0_combout\,
	ena => \spi_slave_0|process_1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|tx_buf[24]~_emulated_q\);

-- Location: LCCOMB_X97_Y2_N20
\spi_slave_0|tx_buf[24]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[24]~3_combout\ = \spi_slave_0|tx_buf[24]~_emulated_q\ $ (\spi_slave_0|tx_buf[24]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi_slave_0|tx_buf[24]~_emulated_q\,
	datad => \spi_slave_0|tx_buf[24]~1_combout\,
	combout => \spi_slave_0|tx_buf[24]~3_combout\);

-- Location: LCCOMB_X97_Y2_N18
\spi_slave_0|tx_buf[24]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|tx_buf[24]~2_combout\ = (\reset_n~input_o\ & ((\spi_slave_0|trdy~7_combout\ & (spi_tx_data(24))) # (!\spi_slave_0|trdy~7_combout\ & ((\spi_slave_0|tx_buf[24]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => spi_tx_data(24),
	datab => \spi_slave_0|trdy~7_combout\,
	datac => \reset_n~input_o\,
	datad => \spi_slave_0|tx_buf[24]~3_combout\,
	combout => \spi_slave_0|tx_buf[24]~2_combout\);

-- Location: LCCOMB_X97_Y2_N4
\spi_slave_0|miso~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|miso~0_combout\ = (\spi_slave_0|rd_add~q\ & (\spi_slave_0|trdy~2_combout\ & ((\spi_slave_0|bit_cnt\(8))))) # (!\spi_slave_0|rd_add~q\ & (((\spi_slave_0|tx_buf[24]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_slave_0|trdy~2_combout\,
	datab => \spi_slave_0|tx_buf[24]~2_combout\,
	datac => \spi_slave_0|bit_cnt\(8),
	datad => \spi_slave_0|rd_add~q\,
	combout => \spi_slave_0|miso~0_combout\);

-- Location: LCCOMB_X101_Y1_N20
\spi_slave_0|roe~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|roe~0_combout\ = (\spi_slave_0|wr_add~q\ & ((\spi_slave_0|bit_cnt\(11) & (\mosi~input_o\)) # (!\spi_slave_0|bit_cnt\(11) & ((\spi_slave_0|roe~q\))))) # (!\spi_slave_0|wr_add~q\ & (((\spi_slave_0|roe~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mosi~input_o\,
	datab => \spi_slave_0|wr_add~q\,
	datac => \spi_slave_0|bit_cnt\(11),
	datad => \spi_slave_0|roe~q\,
	combout => \spi_slave_0|roe~0_combout\);

-- Location: LCCOMB_X101_Y1_N18
\spi_slave_0|roe~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|roe~1_combout\ = (\spi_slave_0|roe~0_combout\) # ((\spi_slave_0|rrdy~q\ & (!\spi_slave_0|wr_add~q\ & \spi_slave_0|bit_cnt\(33))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_slave_0|rrdy~q\,
	datab => \spi_slave_0|wr_add~q\,
	datac => \spi_slave_0|bit_cnt\(33),
	datad => \spi_slave_0|roe~0_combout\,
	combout => \spi_slave_0|roe~1_combout\);

-- Location: FF_X101_Y1_N19
\spi_slave_0|roe\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \spi_slave_0|roe~1_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|roe~q\);

-- Location: LCCOMB_X97_Y2_N10
\spi_slave_0|miso~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|miso~1_combout\ = (!\spi_slave_0|bit_cnt\(8) & ((\spi_slave_0|bit_cnt\(9) & (\spi_slave_0|rrdy~q\)) # (!\spi_slave_0|bit_cnt\(9) & ((\spi_slave_0|roe~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_slave_0|bit_cnt\(8),
	datab => \spi_slave_0|bit_cnt\(9),
	datac => \spi_slave_0|rrdy~q\,
	datad => \spi_slave_0|roe~q\,
	combout => \spi_slave_0|miso~1_combout\);

-- Location: LCCOMB_X97_Y2_N26
\spi_slave_0|miso~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|miso~2_combout\ = (\spi_slave_0|miso~0_combout\) # ((\spi_slave_0|rd_add~q\ & \spi_slave_0|miso~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi_slave_0|miso~0_combout\,
	datac => \spi_slave_0|rd_add~q\,
	datad => \spi_slave_0|miso~1_combout\,
	combout => \spi_slave_0|miso~2_combout\);

-- Location: LCCOMB_X100_Y2_N10
\spi_slave_0|miso~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|miso~3_combout\ = (\spi_slave_0|bit_cnt\(9) & (!\spi_slave_0|bit_cnt\(10) & !\spi_slave_0|bit_cnt\(8))) # (!\spi_slave_0|bit_cnt\(9) & (\spi_slave_0|bit_cnt\(10) $ (\spi_slave_0|bit_cnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi_slave_0|bit_cnt\(9),
	datac => \spi_slave_0|bit_cnt\(10),
	datad => \spi_slave_0|bit_cnt\(8),
	combout => \spi_slave_0|miso~3_combout\);

-- Location: LCCOMB_X99_Y2_N14
\spi_slave_0|miso~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|miso~4_combout\ = (\spi_slave_0|rd_add~q\ & (((\spi_slave_0|miso~3_combout\)))) # (!\spi_slave_0|rd_add~q\ & (\spi_slave_0|process_1~1_combout\ & ((\spi_slave_0|process_1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_slave_0|process_1~1_combout\,
	datab => \spi_slave_0|miso~3_combout\,
	datac => \spi_slave_0|process_1~0_combout\,
	datad => \spi_slave_0|rd_add~q\,
	combout => \spi_slave_0|miso~4_combout\);

-- Location: FF_X97_Y2_N27
\spi_slave_0|miso~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \spi_slave_0|miso~2_combout\,
	ena => \spi_slave_0|miso~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|miso~reg0_q\);

-- Location: LCCOMB_X100_Y1_N26
\spi_slave_0|miso~enfeeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \spi_slave_0|miso~enfeeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \spi_slave_0|miso~enfeeder_combout\);

-- Location: FF_X100_Y1_N27
\spi_slave_0|miso~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \spi_slave_0|miso~enfeeder_combout\,
	clrn => \spi_slave_0|ALT_INV_process_0~0_combout\,
	ena => \spi_slave_0|miso~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spi_slave_0|miso~en_q\);

ww_miso <= \miso~output_o\;

ww_trdy <= \trdy~output_o\;
END structure;


