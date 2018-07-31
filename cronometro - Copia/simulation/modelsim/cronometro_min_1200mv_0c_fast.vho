-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "04/04/2018 11:51:19"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	cont_100 IS
    PORT (
	rst : IN std_logic;
	clk : IN std_logic;
	clr : IN std_logic;
	en : IN std_logic;
	Q1 : OUT IEEE.NUMERIC_STD.unsigned(3 DOWNTO 0);
	Q2 : OUT IEEE.NUMERIC_STD.unsigned(3 DOWNTO 0)
	);
END cont_100;

-- Design Ports Information
-- Q1[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q1[1]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q1[2]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q1[3]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q2[0]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q2[1]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q2[2]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q2[3]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clr	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF cont_100 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_clr : std_logic;
SIGNAL ww_en : std_logic;
SIGNAL ww_Q1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Q2 : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cont1|Add1~1_combout\ : std_logic;
SIGNAL \cont2|Add1~1_combout\ : std_logic;
SIGNAL \Q1[0]~output_o\ : std_logic;
SIGNAL \Q1[1]~output_o\ : std_logic;
SIGNAL \Q1[2]~output_o\ : std_logic;
SIGNAL \Q1[3]~output_o\ : std_logic;
SIGNAL \Q2[0]~output_o\ : std_logic;
SIGNAL \Q2[1]~output_o\ : std_logic;
SIGNAL \Q2[2]~output_o\ : std_logic;
SIGNAL \Q2[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \clr~input_o\ : std_logic;
SIGNAL \cont1|Q_tmp[0]~0_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \en~input_o\ : std_logic;
SIGNAL \cont1|Q_tmp[1]~1_combout\ : std_logic;
SIGNAL \cont1|Q_tmp[3]~5_combout\ : std_logic;
SIGNAL \cont1|Add1~0_combout\ : std_logic;
SIGNAL \cont1|Q_tmp[2]~4_combout\ : std_logic;
SIGNAL \c2clr_s~0_combout\ : std_logic;
SIGNAL \cont1|Q_tmp[0]~2_combout\ : std_logic;
SIGNAL \cont1|Q_tmp[1]~3_combout\ : std_logic;
SIGNAL \c2clr_s~2_combout\ : std_logic;
SIGNAL \cont2|Q_tmp[1]~2_combout\ : std_logic;
SIGNAL \cont2|Add1~0_combout\ : std_logic;
SIGNAL \cont2|Q_tmp[2]~3_combout\ : std_logic;
SIGNAL \c2clr_s~1_combout\ : std_logic;
SIGNAL \c2clr_s~combout\ : std_logic;
SIGNAL \cont2|Q_tmp[0]~5_combout\ : std_logic;
SIGNAL \cont2|Q_tmp[3]~4_combout\ : std_logic;
SIGNAL \cont1|Q_tmp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cont2|Q_tmp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_rst~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_rst <= rst;
ww_clk <= clk;
ww_clr <= clr;
ww_en <= en;
Q1 <= IEEE.NUMERIC_STD.UNSIGNED(ww_Q1);
Q2 <= IEEE.NUMERIC_STD.UNSIGNED(ww_Q2);
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_rst~inputclkctrl_outclk\ <= NOT \rst~inputclkctrl_outclk\;

-- Location: LCCOMB_X32_Y28_N6
\cont1|Add1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cont1|Add1~1_combout\ = \cont1|Q_tmp\(3) $ (((\cont1|Q_tmp\(0) & (\cont1|Q_tmp\(2) & \cont1|Q_tmp\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont1|Q_tmp\(0),
	datab => \cont1|Q_tmp\(2),
	datac => \cont1|Q_tmp\(1),
	datad => \cont1|Q_tmp\(3),
	combout => \cont1|Add1~1_combout\);

-- Location: LCCOMB_X32_Y28_N30
\cont2|Add1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cont2|Add1~1_combout\ = \cont2|Q_tmp\(3) $ (((\cont2|Q_tmp\(0) & (\cont2|Q_tmp\(1) & \cont2|Q_tmp\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont2|Q_tmp\(3),
	datab => \cont2|Q_tmp\(0),
	datac => \cont2|Q_tmp\(1),
	datad => \cont2|Q_tmp\(2),
	combout => \cont2|Add1~1_combout\);

-- Location: IOOBUF_X26_Y31_N2
\Q1[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cont1|Q_tmp\(0),
	devoe => ww_devoe,
	o => \Q1[0]~output_o\);

-- Location: IOOBUF_X31_Y31_N9
\Q1[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cont1|Q_tmp\(1),
	devoe => ww_devoe,
	o => \Q1[1]~output_o\);

-- Location: IOOBUF_X31_Y31_N2
\Q1[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cont1|Q_tmp\(2),
	devoe => ww_devoe,
	o => \Q1[2]~output_o\);

-- Location: IOOBUF_X33_Y27_N9
\Q1[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cont1|Q_tmp\(3),
	devoe => ww_devoe,
	o => \Q1[3]~output_o\);

-- Location: IOOBUF_X33_Y28_N9
\Q2[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cont2|Q_tmp\(0),
	devoe => ww_devoe,
	o => \Q2[0]~output_o\);

-- Location: IOOBUF_X29_Y31_N2
\Q2[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cont2|Q_tmp\(1),
	devoe => ww_devoe,
	o => \Q2[1]~output_o\);

-- Location: IOOBUF_X33_Y28_N2
\Q2[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cont2|Q_tmp\(2),
	devoe => ww_devoe,
	o => \Q2[2]~output_o\);

-- Location: IOOBUF_X29_Y31_N9
\Q2[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cont2|Q_tmp\(3),
	devoe => ww_devoe,
	o => \Q2[3]~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G17
\clk~inputclkctrl\ : cycloneiv_clkctrl
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

-- Location: IOIBUF_X33_Y27_N1
\clr~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clr,
	o => \clr~input_o\);

-- Location: LCCOMB_X32_Y28_N12
\cont1|Q_tmp[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cont1|Q_tmp[0]~0_combout\ = (!\clr~input_o\ & (\en~input_o\ $ (\cont1|Q_tmp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en~input_o\,
	datab => \clr~input_o\,
	datac => \cont1|Q_tmp\(0),
	combout => \cont1|Q_tmp[0]~0_combout\);

-- Location: IOIBUF_X16_Y0_N22
\rst~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: CLKCTRL_G19
\rst~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~inputclkctrl_outclk\);

-- Location: FF_X32_Y28_N13
\cont1|Q_tmp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cont1|Q_tmp[0]~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cont1|Q_tmp\(0));

-- Location: IOIBUF_X33_Y16_N22
\en~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en,
	o => \en~input_o\);

-- Location: LCCOMB_X32_Y27_N0
\cont1|Q_tmp[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cont1|Q_tmp[1]~1_combout\ = (!\en~input_o\ & !\clr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \en~input_o\,
	datad => \clr~input_o\,
	combout => \cont1|Q_tmp[1]~1_combout\);

-- Location: LCCOMB_X32_Y28_N18
\cont1|Q_tmp[3]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cont1|Q_tmp[3]~5_combout\ = (\cont1|Add1~1_combout\ & (((\cont1|Q_tmp[1]~1_combout\ & \cont1|Q_tmp\(3))) # (!\cont1|Q_tmp[0]~2_combout\))) # (!\cont1|Add1~1_combout\ & (\cont1|Q_tmp[1]~1_combout\ & (\cont1|Q_tmp\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont1|Add1~1_combout\,
	datab => \cont1|Q_tmp[1]~1_combout\,
	datac => \cont1|Q_tmp\(3),
	datad => \cont1|Q_tmp[0]~2_combout\,
	combout => \cont1|Q_tmp[3]~5_combout\);

-- Location: FF_X32_Y28_N19
\cont1|Q_tmp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cont1|Q_tmp[3]~5_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cont1|Q_tmp\(3));

-- Location: LCCOMB_X32_Y28_N16
\cont1|Add1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cont1|Add1~0_combout\ = \cont1|Q_tmp\(2) $ (((\cont1|Q_tmp\(1) & \cont1|Q_tmp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cont1|Q_tmp\(2),
	datac => \cont1|Q_tmp\(1),
	datad => \cont1|Q_tmp\(0),
	combout => \cont1|Add1~0_combout\);

-- Location: LCCOMB_X32_Y28_N8
\cont1|Q_tmp[2]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cont1|Q_tmp[2]~4_combout\ = (\cont1|Q_tmp[1]~1_combout\ & ((\cont1|Q_tmp\(2)) # ((\cont1|Add1~0_combout\ & !\cont1|Q_tmp[0]~2_combout\)))) # (!\cont1|Q_tmp[1]~1_combout\ & (\cont1|Add1~0_combout\ & ((!\cont1|Q_tmp[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont1|Q_tmp[1]~1_combout\,
	datab => \cont1|Add1~0_combout\,
	datac => \cont1|Q_tmp\(2),
	datad => \cont1|Q_tmp[0]~2_combout\,
	combout => \cont1|Q_tmp[2]~4_combout\);

-- Location: FF_X32_Y28_N9
\cont1|Q_tmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cont1|Q_tmp[2]~4_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cont1|Q_tmp\(2));

-- Location: LCCOMB_X32_Y28_N28
\c2clr_s~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c2clr_s~0_combout\ = (\en~input_o\ & (\cont1|Q_tmp\(3) & (!\cont1|Q_tmp\(2) & \cont1|Q_tmp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en~input_o\,
	datab => \cont1|Q_tmp\(3),
	datac => \cont1|Q_tmp\(2),
	datad => \cont1|Q_tmp\(0),
	combout => \c2clr_s~0_combout\);

-- Location: LCCOMB_X32_Y28_N2
\cont1|Q_tmp[0]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cont1|Q_tmp[0]~2_combout\ = ((\clr~input_o\) # ((!\cont1|Q_tmp\(1) & \c2clr_s~0_combout\))) # (!\en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en~input_o\,
	datab => \clr~input_o\,
	datac => \cont1|Q_tmp\(1),
	datad => \c2clr_s~0_combout\,
	combout => \cont1|Q_tmp[0]~2_combout\);

-- Location: LCCOMB_X32_Y28_N22
\cont1|Q_tmp[1]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cont1|Q_tmp[1]~3_combout\ = (\cont1|Q_tmp\(1) & ((\cont1|Q_tmp[1]~1_combout\) # ((!\cont1|Q_tmp\(0) & !\cont1|Q_tmp[0]~2_combout\)))) # (!\cont1|Q_tmp\(1) & (\cont1|Q_tmp\(0) & ((!\cont1|Q_tmp[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont1|Q_tmp\(0),
	datab => \cont1|Q_tmp[1]~1_combout\,
	datac => \cont1|Q_tmp\(1),
	datad => \cont1|Q_tmp[0]~2_combout\,
	combout => \cont1|Q_tmp[1]~3_combout\);

-- Location: FF_X32_Y28_N23
\cont1|Q_tmp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cont1|Q_tmp[1]~3_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cont1|Q_tmp\(1));

-- Location: LCCOMB_X32_Y28_N0
\c2clr_s~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c2clr_s~2_combout\ = (!\cont1|Q_tmp\(1) & \c2clr_s~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cont1|Q_tmp\(1),
	datad => \c2clr_s~0_combout\,
	combout => \c2clr_s~2_combout\);

-- Location: LCCOMB_X32_Y28_N14
\cont2|Q_tmp[1]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cont2|Q_tmp[1]~2_combout\ = (!\c2clr_s~combout\ & (\cont2|Q_tmp\(1) $ (((\cont2|Q_tmp\(0) & \c2clr_s~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c2clr_s~combout\,
	datab => \cont2|Q_tmp\(0),
	datac => \cont2|Q_tmp\(1),
	datad => \c2clr_s~2_combout\,
	combout => \cont2|Q_tmp[1]~2_combout\);

-- Location: FF_X32_Y28_N15
\cont2|Q_tmp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cont2|Q_tmp[1]~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cont2|Q_tmp\(1));

-- Location: LCCOMB_X31_Y28_N24
\cont2|Add1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cont2|Add1~0_combout\ = \cont2|Q_tmp\(2) $ (((\cont2|Q_tmp\(1) & \cont2|Q_tmp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cont2|Q_tmp\(1),
	datac => \cont2|Q_tmp\(2),
	datad => \cont2|Q_tmp\(0),
	combout => \cont2|Add1~0_combout\);

-- Location: LCCOMB_X32_Y28_N20
\cont2|Q_tmp[2]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cont2|Q_tmp[2]~3_combout\ = (!\c2clr_s~combout\ & ((\c2clr_s~2_combout\ & ((\cont2|Add1~0_combout\))) # (!\c2clr_s~2_combout\ & (\cont2|Q_tmp\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c2clr_s~combout\,
	datab => \c2clr_s~2_combout\,
	datac => \cont2|Q_tmp\(2),
	datad => \cont2|Add1~0_combout\,
	combout => \cont2|Q_tmp[2]~3_combout\);

-- Location: FF_X32_Y28_N21
\cont2|Q_tmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cont2|Q_tmp[2]~3_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cont2|Q_tmp\(2));

-- Location: LCCOMB_X32_Y28_N4
\c2clr_s~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c2clr_s~1_combout\ = (\cont2|Q_tmp\(3) & (!\cont2|Q_tmp\(2) & (!\cont2|Q_tmp\(1) & \cont2|Q_tmp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont2|Q_tmp\(3),
	datab => \cont2|Q_tmp\(2),
	datac => \cont2|Q_tmp\(1),
	datad => \cont2|Q_tmp\(0),
	combout => \c2clr_s~1_combout\);

-- Location: LCCOMB_X32_Y28_N26
c2clr_s : cycloneiv_lcell_comb
-- Equation(s):
-- \c2clr_s~combout\ = (\clr~input_o\) # ((!\cont1|Q_tmp\(1) & (\c2clr_s~1_combout\ & \c2clr_s~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont1|Q_tmp\(1),
	datab => \clr~input_o\,
	datac => \c2clr_s~1_combout\,
	datad => \c2clr_s~0_combout\,
	combout => \c2clr_s~combout\);

-- Location: LCCOMB_X32_Y28_N24
\cont2|Q_tmp[0]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cont2|Q_tmp[0]~5_combout\ = (!\c2clr_s~combout\ & (\cont2|Q_tmp\(0) $ (((!\cont1|Q_tmp\(1) & \c2clr_s~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont1|Q_tmp\(1),
	datab => \c2clr_s~0_combout\,
	datac => \cont2|Q_tmp\(0),
	datad => \c2clr_s~combout\,
	combout => \cont2|Q_tmp[0]~5_combout\);

-- Location: FF_X32_Y28_N25
\cont2|Q_tmp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cont2|Q_tmp[0]~5_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cont2|Q_tmp\(0));

-- Location: LCCOMB_X32_Y28_N10
\cont2|Q_tmp[3]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cont2|Q_tmp[3]~4_combout\ = (!\c2clr_s~combout\ & ((\c2clr_s~2_combout\ & (\cont2|Add1~1_combout\)) # (!\c2clr_s~2_combout\ & ((\cont2|Q_tmp\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cont2|Add1~1_combout\,
	datab => \c2clr_s~2_combout\,
	datac => \cont2|Q_tmp\(3),
	datad => \c2clr_s~combout\,
	combout => \cont2|Q_tmp[3]~4_combout\);

-- Location: FF_X32_Y28_N11
\cont2|Q_tmp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cont2|Q_tmp[3]~4_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cont2|Q_tmp\(3));

ww_Q1(0) <= \Q1[0]~output_o\;

ww_Q1(1) <= \Q1[1]~output_o\;

ww_Q1(2) <= \Q1[2]~output_o\;

ww_Q1(3) <= \Q1[3]~output_o\;

ww_Q2(0) <= \Q2[0]~output_o\;

ww_Q2(1) <= \Q2[1]~output_o\;

ww_Q2(2) <= \Q2[2]~output_o\;

ww_Q2(3) <= \Q2[3]~output_o\;
END structure;


