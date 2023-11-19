-- Copyright (C) 2023  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 22.1std.2 Build 922 07/20/2023 SC Lite Edition"

-- DATE "11/17/2023 15:41:28"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	traffiController IS
    PORT (
	clk : IN std_logic;
	button : IN std_logic;
	traffic_light : OUT std_logic_vector(2 DOWNTO 0);
	pedestrian_light : OUT std_logic_vector(1 DOWNTO 0)
	);
END traffiController;

-- Design Ports Information
-- traffic_light[0]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- traffic_light[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- traffic_light[2]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pedestrian_light[0]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pedestrian_light[1]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF traffiController IS
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
SIGNAL ww_button : std_logic;
SIGNAL ww_traffic_light : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_pedestrian_light : std_logic_vector(1 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Add0~121_sumout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \button~input_o\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \LessThan4~4_combout\ : std_logic;
SIGNAL \LessThan4~1_combout\ : std_logic;
SIGNAL \LessThan4~2_combout\ : std_logic;
SIGNAL \LessThan4~0_combout\ : std_logic;
SIGNAL \LessThan4~3_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \state.S0~q\ : std_logic;
SIGNAL \Add0~122\ : std_logic;
SIGNAL \Add0~117_sumout\ : std_logic;
SIGNAL \Add0~118\ : std_logic;
SIGNAL \Add0~113_sumout\ : std_logic;
SIGNAL \Add0~114\ : std_logic;
SIGNAL \Add0~109_sumout\ : std_logic;
SIGNAL \Add0~110\ : std_logic;
SIGNAL \Add0~105_sumout\ : std_logic;
SIGNAL \Add0~106\ : std_logic;
SIGNAL \Add0~101_sumout\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~97_sumout\ : std_logic;
SIGNAL \Add0~98\ : std_logic;
SIGNAL \Add0~89_sumout\ : std_logic;
SIGNAL \Add0~90\ : std_logic;
SIGNAL \Add0~93_sumout\ : std_logic;
SIGNAL \Add0~94\ : std_logic;
SIGNAL \Add0~85_sumout\ : std_logic;
SIGNAL \Add0~86\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~69_sumout\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~65_sumout\ : std_logic;
SIGNAL \Add0~66\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~81_sumout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~77_sumout\ : std_logic;
SIGNAL \Add0~78\ : std_logic;
SIGNAL \Add0~73_sumout\ : std_logic;
SIGNAL \LessThan4~5_combout\ : std_logic;
SIGNAL \LessThan4~6_combout\ : std_logic;
SIGNAL \LessThan3~2_combout\ : std_logic;
SIGNAL \LessThan3~1_combout\ : std_logic;
SIGNAL \LessThan3~5_combout\ : std_logic;
SIGNAL \LessThan3~4_combout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \LessThan3~3_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \LessThan2~2_combout\ : std_logic;
SIGNAL \LessThan2~4_combout\ : std_logic;
SIGNAL \LessThan2~3_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan2~5_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \LessThan1~4_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \state.S1~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \state.S2~q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \state.S3~q\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \state.S4~q\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \state.S5~q\ : std_logic;
SIGNAL \traffic_light~0_combout\ : std_logic;
SIGNAL \traffic_light~1_combout\ : std_logic;
SIGNAL \traffic_light~2_combout\ : std_logic;
SIGNAL timer : std_logic_vector(30 DOWNTO 0);
SIGNAL \ALT_INV_button~input_o\ : std_logic;
SIGNAL \ALT_INV_LessThan3~5_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan3~4_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~4_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~7_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~5_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~4_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~6_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan3~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan3~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan3~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan3~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan4~6_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan4~5_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan4~4_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan4~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan4~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan4~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan4~0_combout\ : std_logic;
SIGNAL \ALT_INV_state.S3~q\ : std_logic;
SIGNAL \ALT_INV_state.S2~q\ : std_logic;
SIGNAL \ALT_INV_state.S4~q\ : std_logic;
SIGNAL \ALT_INV_state.S1~q\ : std_logic;
SIGNAL \ALT_INV_state.S5~q\ : std_logic;
SIGNAL \ALT_INV_state.S0~q\ : std_logic;
SIGNAL ALT_INV_timer : std_logic_vector(30 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_button <= button;
traffic_light <= ww_traffic_light;
pedestrian_light <= ww_pedestrian_light;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_button~input_o\ <= NOT \button~input_o\;
\ALT_INV_LessThan3~5_combout\ <= NOT \LessThan3~5_combout\;
\ALT_INV_LessThan3~4_combout\ <= NOT \LessThan3~4_combout\;
\ALT_INV_LessThan1~4_combout\ <= NOT \LessThan1~4_combout\;
\ALT_INV_LessThan1~3_combout\ <= NOT \LessThan1~3_combout\;
\ALT_INV_LessThan1~2_combout\ <= NOT \LessThan1~2_combout\;
\ALT_INV_LessThan1~1_combout\ <= NOT \LessThan1~1_combout\;
\ALT_INV_LessThan1~0_combout\ <= NOT \LessThan1~0_combout\;
\ALT_INV_LessThan0~7_combout\ <= NOT \LessThan0~7_combout\;
\ALT_INV_LessThan2~5_combout\ <= NOT \LessThan2~5_combout\;
\ALT_INV_LessThan2~4_combout\ <= NOT \LessThan2~4_combout\;
\ALT_INV_LessThan2~3_combout\ <= NOT \LessThan2~3_combout\;
\ALT_INV_LessThan2~2_combout\ <= NOT \LessThan2~2_combout\;
\ALT_INV_LessThan2~1_combout\ <= NOT \LessThan2~1_combout\;
\ALT_INV_LessThan2~0_combout\ <= NOT \LessThan2~0_combout\;
\ALT_INV_LessThan0~6_combout\ <= NOT \LessThan0~6_combout\;
\ALT_INV_LessThan0~5_combout\ <= NOT \LessThan0~5_combout\;
\ALT_INV_LessThan0~4_combout\ <= NOT \LessThan0~4_combout\;
\ALT_INV_LessThan0~3_combout\ <= NOT \LessThan0~3_combout\;
\ALT_INV_LessThan0~2_combout\ <= NOT \LessThan0~2_combout\;
\ALT_INV_LessThan0~1_combout\ <= NOT \LessThan0~1_combout\;
\ALT_INV_LessThan0~0_combout\ <= NOT \LessThan0~0_combout\;
\ALT_INV_LessThan3~3_combout\ <= NOT \LessThan3~3_combout\;
\ALT_INV_LessThan3~2_combout\ <= NOT \LessThan3~2_combout\;
\ALT_INV_LessThan3~1_combout\ <= NOT \LessThan3~1_combout\;
\ALT_INV_LessThan3~0_combout\ <= NOT \LessThan3~0_combout\;
\ALT_INV_LessThan4~6_combout\ <= NOT \LessThan4~6_combout\;
\ALT_INV_LessThan4~5_combout\ <= NOT \LessThan4~5_combout\;
\ALT_INV_LessThan4~4_combout\ <= NOT \LessThan4~4_combout\;
\ALT_INV_LessThan4~3_combout\ <= NOT \LessThan4~3_combout\;
\ALT_INV_LessThan4~2_combout\ <= NOT \LessThan4~2_combout\;
\ALT_INV_LessThan4~1_combout\ <= NOT \LessThan4~1_combout\;
\ALT_INV_LessThan4~0_combout\ <= NOT \LessThan4~0_combout\;
\ALT_INV_state.S3~q\ <= NOT \state.S3~q\;
\ALT_INV_state.S2~q\ <= NOT \state.S2~q\;
\ALT_INV_state.S4~q\ <= NOT \state.S4~q\;
\ALT_INV_state.S1~q\ <= NOT \state.S1~q\;
\ALT_INV_state.S5~q\ <= NOT \state.S5~q\;
\ALT_INV_state.S0~q\ <= NOT \state.S0~q\;
ALT_INV_timer(0) <= NOT timer(0);
ALT_INV_timer(1) <= NOT timer(1);
ALT_INV_timer(2) <= NOT timer(2);
ALT_INV_timer(3) <= NOT timer(3);
ALT_INV_timer(4) <= NOT timer(4);
ALT_INV_timer(5) <= NOT timer(5);
ALT_INV_timer(6) <= NOT timer(6);
ALT_INV_timer(8) <= NOT timer(8);
ALT_INV_timer(7) <= NOT timer(7);
ALT_INV_timer(9) <= NOT timer(9);
ALT_INV_timer(28) <= NOT timer(28);
ALT_INV_timer(29) <= NOT timer(29);
ALT_INV_timer(30) <= NOT timer(30);
ALT_INV_timer(24) <= NOT timer(24);
ALT_INV_timer(25) <= NOT timer(25);
ALT_INV_timer(26) <= NOT timer(26);
ALT_INV_timer(22) <= NOT timer(22);
ALT_INV_timer(23) <= NOT timer(23);
ALT_INV_timer(27) <= NOT timer(27);
ALT_INV_timer(20) <= NOT timer(20);
ALT_INV_timer(21) <= NOT timer(21);
ALT_INV_timer(15) <= NOT timer(15);
ALT_INV_timer(16) <= NOT timer(16);
ALT_INV_timer(13) <= NOT timer(13);
ALT_INV_timer(14) <= NOT timer(14);
ALT_INV_timer(11) <= NOT timer(11);
ALT_INV_timer(10) <= NOT timer(10);
ALT_INV_timer(12) <= NOT timer(12);
ALT_INV_timer(17) <= NOT timer(17);
ALT_INV_timer(18) <= NOT timer(18);
ALT_INV_timer(19) <= NOT timer(19);

-- Location: IOOBUF_X52_Y0_N2
\traffic_light[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \traffic_light~0_combout\,
	devoe => ww_devoe,
	o => ww_traffic_light(0));

-- Location: IOOBUF_X52_Y0_N19
\traffic_light[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \traffic_light~1_combout\,
	devoe => ww_devoe,
	o => ww_traffic_light(1));

-- Location: IOOBUF_X60_Y0_N2
\traffic_light[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \traffic_light~2_combout\,
	devoe => ww_devoe,
	o => ww_traffic_light(2));

-- Location: IOOBUF_X89_Y8_N5
\pedestrian_light[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \state.S3~q\,
	devoe => ww_devoe,
	o => ww_pedestrian_light(0));

-- Location: IOOBUF_X89_Y6_N22
\pedestrian_light[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_state.S3~q\,
	devoe => ww_devoe,
	o => ww_pedestrian_light(1));

-- Location: IOIBUF_X32_Y0_N1
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G6
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: LABCELL_X55_Y4_N0
\Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~121_sumout\ = SUM(( timer(0) ) + ( VCC ) + ( !VCC ))
-- \Add0~122\ = CARRY(( timer(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_timer(0),
	cin => GND,
	sumout => \Add0~121_sumout\,
	cout => \Add0~122\);

-- Location: LABCELL_X55_Y3_N18
\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( timer(26) ) + ( GND ) + ( \Add0~66\ ))
-- \Add0~62\ = CARRY(( timer(26) ) + ( GND ) + ( \Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_timer(26),
	cin => \Add0~66\,
	sumout => \Add0~61_sumout\,
	cout => \Add0~62\);

-- Location: LABCELL_X55_Y3_N21
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( timer(27) ) + ( GND ) + ( \Add0~62\ ))
-- \Add0~50\ = CARRY(( timer(27) ) + ( GND ) + ( \Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_timer(27),
	cin => \Add0~62\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: IOIBUF_X36_Y0_N1
\button~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button,
	o => \button~input_o\);

-- Location: LABCELL_X57_Y4_N6
\Selector0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = ( \state.S0~q\ ) # ( !\state.S0~q\ & ( !\button~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_button~input_o\,
	dataf => \ALT_INV_state.S0~q\,
	combout => \Selector0~1_combout\);

-- Location: FF_X55_Y3_N23
\timer[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~49_sumout\,
	sclr => \ALT_INV_state.S0~q\,
	ena => \Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(27));

-- Location: LABCELL_X56_Y4_N18
\LessThan4~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan4~4_combout\ = ( !timer(22) & ( (!timer(27) & !timer(23)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_timer(27),
	datab => ALT_INV_timer(23),
	dataf => ALT_INV_timer(22),
	combout => \LessThan4~4_combout\);

-- Location: LABCELL_X56_Y4_N0
\LessThan4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan4~1_combout\ = ( timer(16) & ( timer(15) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_timer(15),
	dataf => ALT_INV_timer(16),
	combout => \LessThan4~1_combout\);

-- Location: LABCELL_X56_Y4_N33
\LessThan4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan4~2_combout\ = ( timer(21) & ( timer(20) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_timer(20),
	dataf => ALT_INV_timer(21),
	combout => \LessThan4~2_combout\);

-- Location: LABCELL_X56_Y4_N30
\LessThan4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan4~0_combout\ = ( timer(10) & ( (!timer(12) & (!timer(14) & !timer(13))) ) ) # ( !timer(10) & ( (!timer(14) & (!timer(13) & ((!timer(11)) # (!timer(12))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000000000000111000000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_timer(11),
	datab => ALT_INV_timer(12),
	datac => ALT_INV_timer(14),
	datad => ALT_INV_timer(13),
	dataf => ALT_INV_timer(10),
	combout => \LessThan4~0_combout\);

-- Location: LABCELL_X57_Y4_N18
\LessThan4~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan4~3_combout\ = ( \LessThan4~2_combout\ & ( \LessThan4~0_combout\ & ( ((timer(18) & timer(17))) # (timer(19)) ) ) ) # ( \LessThan4~2_combout\ & ( !\LessThan4~0_combout\ & ( ((timer(18) & ((\LessThan4~1_combout\) # (timer(17))))) # (timer(19)) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001101110111011100000000000000000011011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_timer(18),
	datab => ALT_INV_timer(19),
	datac => ALT_INV_timer(17),
	datad => \ALT_INV_LessThan4~1_combout\,
	datae => \ALT_INV_LessThan4~2_combout\,
	dataf => \ALT_INV_LessThan4~0_combout\,
	combout => \LessThan4~3_combout\);

-- Location: LABCELL_X57_Y4_N24
\Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = ( \state.S0~q\ & ( \state.S5~q\ & ( (!\LessThan4~6_combout\) # ((\LessThan4~4_combout\ & !\LessThan4~3_combout\)) ) ) ) # ( !\state.S0~q\ & ( \state.S5~q\ & ( (!\button~input_o\ & ((!\LessThan4~6_combout\) # ((\LessThan4~4_combout\ 
-- & !\LessThan4~3_combout\)))) ) ) ) # ( \state.S0~q\ & ( !\state.S5~q\ ) ) # ( !\state.S0~q\ & ( !\state.S5~q\ & ( !\button~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111111111111110111010000000001011101010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan4~6_combout\,
	datab => \ALT_INV_LessThan4~4_combout\,
	datac => \ALT_INV_LessThan4~3_combout\,
	datad => \ALT_INV_button~input_o\,
	datae => \ALT_INV_state.S0~q\,
	dataf => \ALT_INV_state.S5~q\,
	combout => \Selector0~0_combout\);

-- Location: FF_X57_Y4_N26
\state.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S0~q\);

-- Location: FF_X55_Y4_N2
\timer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~121_sumout\,
	sclr => \ALT_INV_state.S0~q\,
	ena => \Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(0));

-- Location: LABCELL_X55_Y4_N3
\Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~117_sumout\ = SUM(( timer(1) ) + ( GND ) + ( \Add0~122\ ))
-- \Add0~118\ = CARRY(( timer(1) ) + ( GND ) + ( \Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_timer(1),
	cin => \Add0~122\,
	sumout => \Add0~117_sumout\,
	cout => \Add0~118\);

-- Location: FF_X55_Y4_N5
\timer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~117_sumout\,
	sclr => \ALT_INV_state.S0~q\,
	ena => \Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(1));

-- Location: LABCELL_X55_Y4_N6
\Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~113_sumout\ = SUM(( timer(2) ) + ( GND ) + ( \Add0~118\ ))
-- \Add0~114\ = CARRY(( timer(2) ) + ( GND ) + ( \Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_timer(2),
	cin => \Add0~118\,
	sumout => \Add0~113_sumout\,
	cout => \Add0~114\);

-- Location: FF_X55_Y4_N7
\timer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~113_sumout\,
	sclr => \ALT_INV_state.S0~q\,
	ena => \Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(2));

-- Location: LABCELL_X55_Y4_N9
\Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~109_sumout\ = SUM(( timer(3) ) + ( GND ) + ( \Add0~114\ ))
-- \Add0~110\ = CARRY(( timer(3) ) + ( GND ) + ( \Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_timer(3),
	cin => \Add0~114\,
	sumout => \Add0~109_sumout\,
	cout => \Add0~110\);

-- Location: FF_X55_Y4_N11
\timer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~109_sumout\,
	sclr => \ALT_INV_state.S0~q\,
	ena => \Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(3));

-- Location: LABCELL_X55_Y4_N12
\Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~105_sumout\ = SUM(( timer(4) ) + ( GND ) + ( \Add0~110\ ))
-- \Add0~106\ = CARRY(( timer(4) ) + ( GND ) + ( \Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_timer(4),
	cin => \Add0~110\,
	sumout => \Add0~105_sumout\,
	cout => \Add0~106\);

-- Location: FF_X55_Y4_N14
\timer[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~105_sumout\,
	sclr => \ALT_INV_state.S0~q\,
	ena => \Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(4));

-- Location: LABCELL_X55_Y4_N15
\Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~101_sumout\ = SUM(( timer(5) ) + ( GND ) + ( \Add0~106\ ))
-- \Add0~102\ = CARRY(( timer(5) ) + ( GND ) + ( \Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_timer(5),
	cin => \Add0~106\,
	sumout => \Add0~101_sumout\,
	cout => \Add0~102\);

-- Location: FF_X55_Y4_N17
\timer[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~101_sumout\,
	sclr => \ALT_INV_state.S0~q\,
	ena => \Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(5));

-- Location: LABCELL_X55_Y4_N18
\Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~97_sumout\ = SUM(( timer(6) ) + ( GND ) + ( \Add0~102\ ))
-- \Add0~98\ = CARRY(( timer(6) ) + ( GND ) + ( \Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_timer(6),
	cin => \Add0~102\,
	sumout => \Add0~97_sumout\,
	cout => \Add0~98\);

-- Location: FF_X55_Y4_N20
\timer[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~97_sumout\,
	sclr => \ALT_INV_state.S0~q\,
	ena => \Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(6));

-- Location: LABCELL_X55_Y4_N21
\Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~89_sumout\ = SUM(( timer(7) ) + ( GND ) + ( \Add0~98\ ))
-- \Add0~90\ = CARRY(( timer(7) ) + ( GND ) + ( \Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_timer(7),
	cin => \Add0~98\,
	sumout => \Add0~89_sumout\,
	cout => \Add0~90\);

-- Location: FF_X55_Y4_N23
\timer[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~89_sumout\,
	sclr => \ALT_INV_state.S0~q\,
	ena => \Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(7));

-- Location: LABCELL_X55_Y4_N24
\Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~93_sumout\ = SUM(( timer(8) ) + ( GND ) + ( \Add0~90\ ))
-- \Add0~94\ = CARRY(( timer(8) ) + ( GND ) + ( \Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_timer(8),
	cin => \Add0~90\,
	sumout => \Add0~93_sumout\,
	cout => \Add0~94\);

-- Location: FF_X55_Y4_N26
\timer[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~93_sumout\,
	sclr => \ALT_INV_state.S0~q\,
	ena => \Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(8));

-- Location: LABCELL_X55_Y4_N27
\Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~85_sumout\ = SUM(( timer(9) ) + ( GND ) + ( \Add0~94\ ))
-- \Add0~86\ = CARRY(( timer(9) ) + ( GND ) + ( \Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_timer(9),
	cin => \Add0~94\,
	sumout => \Add0~85_sumout\,
	cout => \Add0~86\);

-- Location: FF_X55_Y4_N29
\timer[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~85_sumout\,
	sclr => \ALT_INV_state.S0~q\,
	ena => \Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(9));

-- Location: LABCELL_X55_Y4_N30
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( timer(10) ) + ( GND ) + ( \Add0~86\ ))
-- \Add0~18\ = CARRY(( timer(10) ) + ( GND ) + ( \Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_timer(10),
	cin => \Add0~86\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: FF_X55_Y4_N32
\timer[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~17_sumout\,
	sclr => \ALT_INV_state.S0~q\,
	ena => \Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(10));

-- Location: LABCELL_X55_Y4_N33
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( timer(11) ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( timer(11) ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_timer(11),
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: FF_X55_Y4_N35
\timer[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~21_sumout\,
	sclr => \ALT_INV_state.S0~q\,
	ena => \Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(11));

-- Location: LABCELL_X55_Y4_N36
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( timer(12) ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~14\ = CARRY(( timer(12) ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_timer(12),
	cin => \Add0~22\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: FF_X55_Y4_N38
\timer[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	sclr => \ALT_INV_state.S0~q\,
	ena => \Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(12));

-- Location: LABCELL_X55_Y4_N39
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( timer(13) ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~30\ = CARRY(( timer(13) ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_timer(13),
	cin => \Add0~14\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: FF_X55_Y4_N41
\timer[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~29_sumout\,
	sclr => \ALT_INV_state.S0~q\,
	ena => \Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(13));

-- Location: LABCELL_X55_Y4_N42
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( timer(14) ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~26\ = CARRY(( timer(14) ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_timer(14),
	cin => \Add0~30\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: FF_X55_Y4_N44
\timer[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	sclr => \ALT_INV_state.S0~q\,
	ena => \Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(14));

-- Location: LABCELL_X55_Y4_N45
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( timer(15) ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~38\ = CARRY(( timer(15) ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_timer(15),
	cin => \Add0~26\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: FF_X55_Y4_N47
\timer[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~37_sumout\,
	sclr => \ALT_INV_state.S0~q\,
	ena => \Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(15));

-- Location: LABCELL_X55_Y4_N48
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( timer(16) ) + ( GND ) + ( \Add0~38\ ))
-- \Add0~34\ = CARRY(( timer(16) ) + ( GND ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_timer(16),
	cin => \Add0~38\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: FF_X55_Y4_N50
\timer[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~33_sumout\,
	sclr => \ALT_INV_state.S0~q\,
	ena => \Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(16));

-- Location: LABCELL_X55_Y4_N51
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( timer(17) ) + ( GND ) + ( \Add0~34\ ))
-- \Add0~10\ = CARRY(( timer(17) ) + ( GND ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_timer(17),
	cin => \Add0~34\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X55_Y4_N53
\timer[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	sclr => \ALT_INV_state.S0~q\,
	ena => \Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(17));

-- Location: LABCELL_X55_Y4_N54
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( timer(18) ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~6\ = CARRY(( timer(18) ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_timer(18),
	cin => \Add0~10\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: FF_X55_Y4_N56
\timer[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	sclr => \ALT_INV_state.S0~q\,
	ena => \Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(18));

-- Location: LABCELL_X55_Y4_N57
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( timer(19) ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~2\ = CARRY(( timer(19) ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_timer(19),
	cin => \Add0~6\,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: FF_X55_Y4_N59
\timer[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~1_sumout\,
	sclr => \ALT_INV_state.S0~q\,
	ena => \Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(19));

-- Location: LABCELL_X55_Y3_N0
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( timer(20) ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~46\ = CARRY(( timer(20) ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_timer(20),
	cin => \Add0~2\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: FF_X55_Y3_N2
\timer[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~45_sumout\,
	sclr => \ALT_INV_state.S0~q\,
	ena => \Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(20));

-- Location: LABCELL_X55_Y3_N3
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( timer(21) ) + ( GND ) + ( \Add0~46\ ))
-- \Add0~42\ = CARRY(( timer(21) ) + ( GND ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_timer(21),
	cin => \Add0~46\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: FF_X55_Y3_N5
\timer[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~41_sumout\,
	sclr => \ALT_INV_state.S0~q\,
	ena => \Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(21));

-- Location: LABCELL_X55_Y3_N6
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( timer(22) ) + ( GND ) + ( \Add0~42\ ))
-- \Add0~58\ = CARRY(( timer(22) ) + ( GND ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_timer(22),
	cin => \Add0~42\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

-- Location: FF_X55_Y3_N8
\timer[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~57_sumout\,
	sclr => \ALT_INV_state.S0~q\,
	ena => \Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(22));

-- Location: LABCELL_X55_Y3_N9
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( timer(23) ) + ( GND ) + ( \Add0~58\ ))
-- \Add0~54\ = CARRY(( timer(23) ) + ( GND ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_timer(23),
	cin => \Add0~58\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

-- Location: FF_X55_Y3_N11
\timer[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~53_sumout\,
	sclr => \ALT_INV_state.S0~q\,
	ena => \Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(23));

-- Location: LABCELL_X55_Y3_N12
\Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~69_sumout\ = SUM(( timer(24) ) + ( GND ) + ( \Add0~54\ ))
-- \Add0~70\ = CARRY(( timer(24) ) + ( GND ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_timer(24),
	cin => \Add0~54\,
	sumout => \Add0~69_sumout\,
	cout => \Add0~70\);

-- Location: FF_X55_Y3_N14
\timer[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~69_sumout\,
	sclr => \ALT_INV_state.S0~q\,
	ena => \Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(24));

-- Location: LABCELL_X55_Y3_N15
\Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~65_sumout\ = SUM(( timer(25) ) + ( GND ) + ( \Add0~70\ ))
-- \Add0~66\ = CARRY(( timer(25) ) + ( GND ) + ( \Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_timer(25),
	cin => \Add0~70\,
	sumout => \Add0~65_sumout\,
	cout => \Add0~66\);

-- Location: FF_X55_Y3_N17
\timer[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~65_sumout\,
	sclr => \ALT_INV_state.S0~q\,
	ena => \Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(25));

-- Location: FF_X55_Y3_N20
\timer[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~61_sumout\,
	sclr => \ALT_INV_state.S0~q\,
	ena => \Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(26));

-- Location: LABCELL_X55_Y3_N24
\Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~81_sumout\ = SUM(( timer(28) ) + ( GND ) + ( \Add0~50\ ))
-- \Add0~82\ = CARRY(( timer(28) ) + ( GND ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_timer(28),
	cin => \Add0~50\,
	sumout => \Add0~81_sumout\,
	cout => \Add0~82\);

-- Location: FF_X55_Y3_N26
\timer[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~81_sumout\,
	sclr => \ALT_INV_state.S0~q\,
	ena => \Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(28));

-- Location: LABCELL_X55_Y3_N27
\Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~77_sumout\ = SUM(( timer(29) ) + ( GND ) + ( \Add0~82\ ))
-- \Add0~78\ = CARRY(( timer(29) ) + ( GND ) + ( \Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_timer(29),
	cin => \Add0~82\,
	sumout => \Add0~77_sumout\,
	cout => \Add0~78\);

-- Location: FF_X55_Y3_N29
\timer[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~77_sumout\,
	sclr => \ALT_INV_state.S0~q\,
	ena => \Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(29));

-- Location: LABCELL_X55_Y3_N30
\Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~73_sumout\ = SUM(( timer(30) ) + ( GND ) + ( \Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_timer(30),
	cin => \Add0~78\,
	sumout => \Add0~73_sumout\);

-- Location: FF_X55_Y3_N32
\timer[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~73_sumout\,
	sclr => \ALT_INV_state.S0~q\,
	ena => \Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(30));

-- Location: LABCELL_X57_Y4_N12
\LessThan4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan4~5_combout\ = ( timer(30) & ( timer(29) & ( timer(28) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_timer(28),
	datae => ALT_INV_timer(30),
	dataf => ALT_INV_timer(29),
	combout => \LessThan4~5_combout\);

-- Location: LABCELL_X57_Y4_N9
\LessThan4~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan4~6_combout\ = ( \LessThan4~5_combout\ & ( ((timer(26) & (timer(24) & timer(25)))) # (timer(27)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001111111110000000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_timer(26),
	datab => ALT_INV_timer(24),
	datac => ALT_INV_timer(25),
	datad => ALT_INV_timer(27),
	dataf => \ALT_INV_LessThan4~5_combout\,
	combout => \LessThan4~6_combout\);

-- Location: LABCELL_X55_Y3_N36
\LessThan3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan3~2_combout\ = ( timer(29) & ( timer(26) & ( timer(30) ) ) ) # ( !timer(29) & ( timer(26) & ( (timer(28) & (timer(30) & ((timer(25)) # (timer(27))))) ) ) ) # ( timer(29) & ( !timer(26) & ( timer(30) ) ) ) # ( !timer(29) & ( !timer(26) & ( 
-- (timer(28) & (timer(30) & timer(27))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001001100110011001100000001000100010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_timer(28),
	datab => ALT_INV_timer(30),
	datac => ALT_INV_timer(27),
	datad => ALT_INV_timer(25),
	datae => ALT_INV_timer(29),
	dataf => ALT_INV_timer(26),
	combout => \LessThan3~2_combout\);

-- Location: LABCELL_X56_Y4_N21
\LessThan3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan3~1_combout\ = ( !timer(29) & ( (!timer(27) & (!timer(23) & !timer(24))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_timer(27),
	datac => ALT_INV_timer(23),
	datad => ALT_INV_timer(24),
	dataf => ALT_INV_timer(29),
	combout => \LessThan3~1_combout\);

-- Location: LABCELL_X56_Y4_N54
\LessThan3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan3~5_combout\ = ( timer(16) & ( (!timer(17) & (!timer(14) & !timer(15))) ) ) # ( !timer(16) & ( !timer(17) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_timer(17),
	datac => ALT_INV_timer(14),
	datad => ALT_INV_timer(15),
	dataf => ALT_INV_timer(16),
	combout => \LessThan3~5_combout\);

-- Location: LABCELL_X56_Y4_N6
\LessThan3~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan3~4_combout\ = ( timer(12) & ( timer(13) & ( (timer(11) & (timer(9) & ((timer(7)) # (timer(8))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_timer(11),
	datab => ALT_INV_timer(8),
	datac => ALT_INV_timer(9),
	datad => ALT_INV_timer(7),
	datae => ALT_INV_timer(12),
	dataf => ALT_INV_timer(13),
	combout => \LessThan3~4_combout\);

-- Location: LABCELL_X56_Y4_N48
\LessThan3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = ( \LessThan3~5_combout\ & ( \LessThan3~4_combout\ & ( (timer(16) & (timer(18) & (timer(10) & timer(19)))) ) ) ) # ( !\LessThan3~5_combout\ & ( \LessThan3~4_combout\ & ( (timer(18) & timer(19)) ) ) ) # ( !\LessThan3~5_combout\ & ( 
-- !\LessThan3~4_combout\ & ( (timer(18) & timer(19)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000000000000000000001100110000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_timer(16),
	datab => ALT_INV_timer(18),
	datac => ALT_INV_timer(10),
	datad => ALT_INV_timer(19),
	datae => \ALT_INV_LessThan3~5_combout\,
	dataf => \ALT_INV_LessThan3~4_combout\,
	combout => \LessThan3~0_combout\);

-- Location: LABCELL_X56_Y4_N42
\LessThan3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan3~3_combout\ = ( \LessThan3~1_combout\ & ( \LessThan3~0_combout\ & ( (timer(21) & (timer(22) & \LessThan3~2_combout\)) ) ) ) # ( !\LessThan3~1_combout\ & ( \LessThan3~0_combout\ & ( \LessThan3~2_combout\ ) ) ) # ( \LessThan3~1_combout\ & ( 
-- !\LessThan3~0_combout\ & ( (timer(21) & (timer(22) & (\LessThan3~2_combout\ & timer(20)))) ) ) ) # ( !\LessThan3~1_combout\ & ( !\LessThan3~0_combout\ & ( \LessThan3~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000100001111000011110000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_timer(21),
	datab => ALT_INV_timer(22),
	datac => \ALT_INV_LessThan3~2_combout\,
	datad => ALT_INV_timer(20),
	datae => \ALT_INV_LessThan3~1_combout\,
	dataf => \ALT_INV_LessThan3~0_combout\,
	combout => \LessThan3~3_combout\);

-- Location: LABCELL_X56_Y4_N24
\LessThan2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = ( timer(15) & ( timer(11) & ( (((timer(12)) # (timer(14))) # (timer(13))) # (timer(10)) ) ) ) # ( timer(15) & ( !timer(11) & ( ((timer(12)) # (timer(14))) # (timer(13)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001111111111111100000000000000000111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_timer(10),
	datab => ALT_INV_timer(13),
	datac => ALT_INV_timer(14),
	datad => ALT_INV_timer(12),
	datae => ALT_INV_timer(15),
	dataf => ALT_INV_timer(11),
	combout => \LessThan2~1_combout\);

-- Location: LABCELL_X56_Y4_N57
\LessThan2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~2_combout\ = ( timer(18) & ( timer(17) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_timer(17),
	dataf => ALT_INV_timer(18),
	combout => \LessThan2~2_combout\);

-- Location: LABCELL_X55_Y3_N57
\LessThan2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~4_combout\ = ( timer(26) & ( (timer(25) & (timer(23) & timer(24))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_timer(25),
	datac => ALT_INV_timer(23),
	datad => ALT_INV_timer(24),
	dataf => ALT_INV_timer(26),
	combout => \LessThan2~4_combout\);

-- Location: LABCELL_X56_Y4_N3
\LessThan2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~3_combout\ = ( !timer(19) & ( (!timer(21) & (!timer(22) & !timer(20))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_timer(21),
	datac => ALT_INV_timer(22),
	datad => ALT_INV_timer(20),
	dataf => ALT_INV_timer(19),
	combout => \LessThan2~3_combout\);

-- Location: LABCELL_X56_Y4_N39
\LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = ( !timer(27) & ( (!timer(28) & !timer(29)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_timer(28),
	datad => ALT_INV_timer(29),
	dataf => ALT_INV_timer(27),
	combout => \LessThan2~0_combout\);

-- Location: LABCELL_X56_Y4_N12
\LessThan2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~5_combout\ = ( \LessThan2~3_combout\ & ( \LessThan2~0_combout\ & ( (!\LessThan2~2_combout\) # ((!\LessThan2~4_combout\) # ((!\LessThan2~1_combout\ & !timer(16)))) ) ) ) # ( !\LessThan2~3_combout\ & ( \LessThan2~0_combout\ & ( 
-- !\LessThan2~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111111101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan2~1_combout\,
	datab => \ALT_INV_LessThan2~2_combout\,
	datac => ALT_INV_timer(16),
	datad => \ALT_INV_LessThan2~4_combout\,
	datae => \ALT_INV_LessThan2~3_combout\,
	dataf => \ALT_INV_LessThan2~0_combout\,
	combout => \LessThan2~5_combout\);

-- Location: LABCELL_X56_Y3_N42
\LessThan0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = ( !timer(30) & ( (!timer(29) & !timer(28)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_timer(29),
	datac => ALT_INV_timer(28),
	dataf => ALT_INV_timer(30),
	combout => \LessThan0~7_combout\);

-- Location: LABCELL_X56_Y3_N24
\LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = ( timer(9) & ( timer(12) & ( timer(13) ) ) ) # ( !timer(9) & ( timer(12) & ( timer(13) ) ) ) # ( timer(9) & ( !timer(12) & ( (timer(13) & (((timer(10)) # (timer(11))) # (timer(8)))) ) ) ) # ( !timer(9) & ( !timer(12) & ( (timer(13) 
-- & ((timer(10)) # (timer(11)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111111000000000111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_timer(8),
	datab => ALT_INV_timer(11),
	datac => ALT_INV_timer(10),
	datad => ALT_INV_timer(13),
	datae => ALT_INV_timer(9),
	dataf => ALT_INV_timer(12),
	combout => \LessThan1~0_combout\);

-- Location: LABCELL_X56_Y3_N30
\LessThan1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = ( !timer(18) & ( (!timer(20) & (!timer(19) & !timer(17))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_timer(20),
	datac => ALT_INV_timer(19),
	datad => ALT_INV_timer(17),
	dataf => ALT_INV_timer(18),
	combout => \LessThan1~1_combout\);

-- Location: LABCELL_X55_Y3_N42
\LessThan1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = ( !timer(29) & ( !timer(25) & ( (!timer(26) & (!timer(30) & !timer(27))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_timer(26),
	datab => ALT_INV_timer(30),
	datac => ALT_INV_timer(27),
	datae => ALT_INV_timer(29),
	dataf => ALT_INV_timer(25),
	combout => \LessThan1~3_combout\);

-- Location: LABCELL_X56_Y3_N45
\LessThan1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = ( timer(24) & ( (timer(23) & (timer(22) & timer(21))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_timer(23),
	datac => ALT_INV_timer(22),
	datad => ALT_INV_timer(21),
	dataf => ALT_INV_timer(24),
	combout => \LessThan1~2_combout\);

-- Location: LABCELL_X56_Y3_N6
\LessThan1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~4_combout\ = ( \LessThan1~2_combout\ & ( \LessThan4~1_combout\ & ( (!\LessThan1~0_combout\ & (\LessThan1~1_combout\ & (!timer(14) & \LessThan1~3_combout\))) ) ) ) # ( !\LessThan1~2_combout\ & ( \LessThan4~1_combout\ & ( \LessThan1~3_combout\ ) 
-- ) ) # ( \LessThan1~2_combout\ & ( !\LessThan4~1_combout\ & ( (\LessThan1~1_combout\ & \LessThan1~3_combout\) ) ) ) # ( !\LessThan1~2_combout\ & ( !\LessThan4~1_combout\ & ( \LessThan1~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000011001100000000111111110000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan1~0_combout\,
	datab => \ALT_INV_LessThan1~1_combout\,
	datac => ALT_INV_timer(14),
	datad => \ALT_INV_LessThan1~3_combout\,
	datae => \ALT_INV_LessThan1~2_combout\,
	dataf => \ALT_INV_LessThan4~1_combout\,
	combout => \LessThan1~4_combout\);

-- Location: LABCELL_X57_Y3_N39
\LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ( !timer(30) & ( !timer(29) & ( (!timer(28) & !timer(27)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_timer(28),
	datac => ALT_INV_timer(27),
	datae => ALT_INV_timer(30),
	dataf => ALT_INV_timer(29),
	combout => \LessThan0~0_combout\);

-- Location: LABCELL_X55_Y3_N54
\LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = ( !timer(17) & ( (!timer(19) & (!timer(18) & !timer(16))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_timer(19),
	datac => ALT_INV_timer(18),
	datad => ALT_INV_timer(16),
	dataf => ALT_INV_timer(17),
	combout => \LessThan0~3_combout\);

-- Location: LABCELL_X56_Y3_N57
\LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = ( timer(14) & ( timer(15) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_timer(15),
	dataf => ALT_INV_timer(14),
	combout => \LessThan0~2_combout\);

-- Location: LABCELL_X56_Y3_N33
\LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = ( timer(22) & ( (timer(23) & (timer(20) & timer(21))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_timer(23),
	datab => ALT_INV_timer(20),
	datad => ALT_INV_timer(21),
	dataf => ALT_INV_timer(22),
	combout => \LessThan0~4_combout\);

-- Location: LABCELL_X55_Y3_N48
\LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = ( !timer(29) & ( !timer(25) & ( (!timer(26) & (!timer(24) & (!timer(28) & !timer(30)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_timer(26),
	datab => ALT_INV_timer(24),
	datac => ALT_INV_timer(28),
	datad => ALT_INV_timer(30),
	datae => ALT_INV_timer(29),
	dataf => ALT_INV_timer(25),
	combout => \LessThan0~5_combout\);

-- Location: LABCELL_X56_Y3_N0
\LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = ( timer(9) & ( timer(12) ) ) # ( !timer(9) & ( timer(12) & ( (((timer(8) & timer(7))) # (timer(11))) # (timer(10)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000011111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_timer(8),
	datab => ALT_INV_timer(7),
	datac => ALT_INV_timer(10),
	datad => ALT_INV_timer(11),
	datae => ALT_INV_timer(9),
	dataf => ALT_INV_timer(12),
	combout => \LessThan0~1_combout\);

-- Location: LABCELL_X56_Y3_N12
\LessThan0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = ( \LessThan0~1_combout\ & ( timer(13) & ( (\LessThan0~5_combout\ & ((!\LessThan0~4_combout\) # ((\LessThan0~3_combout\ & !\LessThan0~2_combout\)))) ) ) ) # ( !\LessThan0~1_combout\ & ( timer(13) & ( (\LessThan0~5_combout\ & 
-- ((!\LessThan0~4_combout\) # ((\LessThan0~3_combout\ & !\LessThan0~2_combout\)))) ) ) ) # ( \LessThan0~1_combout\ & ( !timer(13) & ( (\LessThan0~5_combout\ & ((!\LessThan0~4_combout\) # ((\LessThan0~3_combout\ & !\LessThan0~2_combout\)))) ) ) ) # ( 
-- !\LessThan0~1_combout\ & ( !timer(13) & ( (\LessThan0~5_combout\ & ((!\LessThan0~4_combout\) # (\LessThan0~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110101000000001111010000000000111101000000000011110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~3_combout\,
	datab => \ALT_INV_LessThan0~2_combout\,
	datac => \ALT_INV_LessThan0~4_combout\,
	datad => \ALT_INV_LessThan0~5_combout\,
	datae => \ALT_INV_LessThan0~1_combout\,
	dataf => ALT_INV_timer(13),
	combout => \LessThan0~6_combout\);

-- Location: LABCELL_X56_Y3_N51
\Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = ( \LessThan0~0_combout\ & ( ((!\state.S0~q\ & !\button~input_o\)) # (\state.S1~q\) ) ) # ( !\LessThan0~0_combout\ & ( (!\state.S0~q\ & ((!\button~input_o\) # ((\LessThan0~6_combout\ & \state.S1~q\)))) # (\state.S0~q\ & 
-- (((\LessThan0~6_combout\ & \state.S1~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001111100010001000111110001000111111111000100011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.S0~q\,
	datab => \ALT_INV_button~input_o\,
	datac => \ALT_INV_LessThan0~6_combout\,
	datad => \ALT_INV_state.S1~q\,
	dataf => \ALT_INV_LessThan0~0_combout\,
	combout => \Selector1~0_combout\);

-- Location: FF_X56_Y3_N53
\state.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S1~q\);

-- Location: LABCELL_X56_Y3_N18
\Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = ( \state.S2~q\ & ( \LessThan0~6_combout\ & ( (\LessThan1~4_combout\) # (\LessThan0~7_combout\) ) ) ) # ( \state.S2~q\ & ( !\LessThan0~6_combout\ & ( (((!\LessThan0~0_combout\ & \state.S1~q\)) # (\LessThan1~4_combout\)) # 
-- (\LessThan0~7_combout\) ) ) ) # ( !\state.S2~q\ & ( !\LessThan0~6_combout\ & ( (!\LessThan0~0_combout\ & \state.S1~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010001110111111111100000000000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~0_combout\,
	datab => \ALT_INV_LessThan0~7_combout\,
	datac => \ALT_INV_state.S1~q\,
	datad => \ALT_INV_LessThan1~4_combout\,
	datae => \ALT_INV_state.S2~q\,
	dataf => \ALT_INV_LessThan0~6_combout\,
	combout => \Selector2~0_combout\);

-- Location: FF_X56_Y3_N19
\state.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S2~q\);

-- Location: LABCELL_X56_Y3_N36
\Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = ( \state.S3~q\ & ( \state.S2~q\ & ( (!timer(30)) # (((!\LessThan0~7_combout\ & !\LessThan1~4_combout\)) # (\LessThan2~5_combout\)) ) ) ) # ( !\state.S3~q\ & ( \state.S2~q\ & ( (!\LessThan0~7_combout\ & !\LessThan1~4_combout\) ) ) ) 
-- # ( \state.S3~q\ & ( !\state.S2~q\ & ( (!timer(30)) # (\LessThan2~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111111110001000100010001111100011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~7_combout\,
	datab => \ALT_INV_LessThan1~4_combout\,
	datac => ALT_INV_timer(30),
	datad => \ALT_INV_LessThan2~5_combout\,
	datae => \ALT_INV_state.S3~q\,
	dataf => \ALT_INV_state.S2~q\,
	combout => \Selector3~0_combout\);

-- Location: FF_X56_Y3_N37
\state.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S3~q\);

-- Location: LABCELL_X56_Y4_N36
\Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = ( \LessThan3~3_combout\ & ( (timer(30) & (!\LessThan2~5_combout\ & \state.S3~q\)) ) ) # ( !\LessThan3~3_combout\ & ( ((timer(30) & (!\LessThan2~5_combout\ & \state.S3~q\))) # (\state.S4~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011111111000001001111111100000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_timer(30),
	datab => \ALT_INV_LessThan2~5_combout\,
	datac => \ALT_INV_state.S3~q\,
	datad => \ALT_INV_state.S4~q\,
	dataf => \ALT_INV_LessThan3~3_combout\,
	combout => \Selector4~0_combout\);

-- Location: FF_X56_Y4_N37
\state.S4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S4~q\);

-- Location: LABCELL_X57_Y4_N30
\Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = ( \state.S5~q\ & ( \state.S4~q\ & ( (!\LessThan4~6_combout\) # (((!\LessThan4~3_combout\ & \LessThan4~4_combout\)) # (\LessThan3~3_combout\)) ) ) ) # ( !\state.S5~q\ & ( \state.S4~q\ & ( \LessThan3~3_combout\ ) ) ) # ( \state.S5~q\ 
-- & ( !\state.S4~q\ & ( (!\LessThan4~6_combout\) # ((!\LessThan4~3_combout\ & \LessThan4~4_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101111101000110011001100111011101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan4~6_combout\,
	datab => \ALT_INV_LessThan3~3_combout\,
	datac => \ALT_INV_LessThan4~3_combout\,
	datad => \ALT_INV_LessThan4~4_combout\,
	datae => \ALT_INV_state.S5~q\,
	dataf => \ALT_INV_state.S4~q\,
	combout => \Selector5~0_combout\);

-- Location: FF_X57_Y4_N31
\state.S5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S5~q\);

-- Location: LABCELL_X57_Y4_N51
\traffic_light~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \traffic_light~0_combout\ = ( \state.S0~q\ & ( \state.S5~q\ ) ) # ( !\state.S0~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.S5~q\,
	dataf => \ALT_INV_state.S0~q\,
	combout => \traffic_light~0_combout\);

-- Location: LABCELL_X56_Y3_N48
\traffic_light~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \traffic_light~1_combout\ = ( \state.S4~q\ ) # ( !\state.S4~q\ & ( \state.S1~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_state.S1~q\,
	dataf => \ALT_INV_state.S4~q\,
	combout => \traffic_light~1_combout\);

-- Location: LABCELL_X56_Y3_N54
\traffic_light~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \traffic_light~2_combout\ = (\state.S3~q\) # (\state.S2~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111001100111111111100110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state.S2~q\,
	datad => \ALT_INV_state.S3~q\,
	combout => \traffic_light~2_combout\);

-- Location: LABCELL_X23_Y26_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


