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
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "04/11/2018 10:12:01"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	rebounce IS
    PORT (
	rst : IN std_logic;
	clk : IN std_logic;
	clr : IN std_logic;
	en : IN std_logic;
	btn : IN std_logic;
	click : OUT std_logic;
	Q : OUT std_logic
	);
END rebounce;

-- Design Ports Information
-- click	=>  Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- en	=>  Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- btn	=>  Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clr	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rst	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF rebounce IS
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
SIGNAL ww_btn : std_logic;
SIGNAL ww_click : std_logic;
SIGNAL ww_Q : std_logic;
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add0~66_combout\ : std_logic;
SIGNAL \Add0~68_combout\ : std_logic;
SIGNAL \Add0~74_combout\ : std_logic;
SIGNAL \Add0~86_combout\ : std_logic;
SIGNAL \Add0~88_combout\ : std_logic;
SIGNAL \Add0~90_combout\ : std_logic;
SIGNAL \Add0~108_combout\ : std_logic;
SIGNAL \Add0~114_combout\ : std_logic;
SIGNAL \Add0~119\ : std_logic;
SIGNAL \Add0~120_combout\ : std_logic;
SIGNAL \Add0~121\ : std_logic;
SIGNAL \Add0~122_combout\ : std_logic;
SIGNAL \Add0~123\ : std_logic;
SIGNAL \Add0~124_combout\ : std_logic;
SIGNAL \Add0~125\ : std_logic;
SIGNAL \Add0~126_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Add0~128_combout\ : std_logic;
SIGNAL \Add0~129_combout\ : std_logic;
SIGNAL \Add0~130_combout\ : std_logic;
SIGNAL \Add0~131_combout\ : std_logic;
SIGNAL \Add0~134_combout\ : std_logic;
SIGNAL \Add0~137_combout\ : std_logic;
SIGNAL \Add0~147_combout\ : std_logic;
SIGNAL \Add0~148_combout\ : std_logic;
SIGNAL \Add0~154_combout\ : std_logic;
SIGNAL \Add0~156_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \clr~combout\ : std_logic;
SIGNAL \en~combout\ : std_logic;
SIGNAL \btn~combout\ : std_logic;
SIGNAL \click_s~0_combout\ : std_logic;
SIGNAL \Add0~64_combout\ : std_logic;
SIGNAL \Add0~157_combout\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \rst~clkctrl_outclk\ : std_logic;
SIGNAL \Add0~65\ : std_logic;
SIGNAL \Add0~67\ : std_logic;
SIGNAL \Add0~69\ : std_logic;
SIGNAL \Add0~70_combout\ : std_logic;
SIGNAL \Add0~158_combout\ : std_logic;
SIGNAL \Add0~71\ : std_logic;
SIGNAL \Add0~72_combout\ : std_logic;
SIGNAL \Add0~155_combout\ : std_logic;
SIGNAL \Add0~73\ : std_logic;
SIGNAL \Add0~75\ : std_logic;
SIGNAL \Add0~76_combout\ : std_logic;
SIGNAL \Add0~153_combout\ : std_logic;
SIGNAL \Add0~77\ : std_logic;
SIGNAL \Add0~78_combout\ : std_logic;
SIGNAL \Add0~152_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Add0~79\ : std_logic;
SIGNAL \Add0~80_combout\ : std_logic;
SIGNAL \Add0~151_combout\ : std_logic;
SIGNAL \Add0~81\ : std_logic;
SIGNAL \Add0~82_combout\ : std_logic;
SIGNAL \Add0~150_combout\ : std_logic;
SIGNAL \Add0~83\ : std_logic;
SIGNAL \Add0~84_combout\ : std_logic;
SIGNAL \Add0~149_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Add0~159_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \click_s~1_combout\ : std_logic;
SIGNAL \click_s~1_wirecell_combout\ : std_logic;
SIGNAL \click_s~regout\ : std_logic;
SIGNAL \Add0~146_combout\ : std_logic;
SIGNAL \Add0~85\ : std_logic;
SIGNAL \Add0~87\ : std_logic;
SIGNAL \Add0~89\ : std_logic;
SIGNAL \Add0~91\ : std_logic;
SIGNAL \Add0~92_combout\ : std_logic;
SIGNAL \Add0~145_combout\ : std_logic;
SIGNAL \Add0~93\ : std_logic;
SIGNAL \Add0~94_combout\ : std_logic;
SIGNAL \Add0~144_combout\ : std_logic;
SIGNAL \Add0~95\ : std_logic;
SIGNAL \Add0~96_combout\ : std_logic;
SIGNAL \Add0~143_combout\ : std_logic;
SIGNAL \Add0~97\ : std_logic;
SIGNAL \Add0~98_combout\ : std_logic;
SIGNAL \Add0~142_combout\ : std_logic;
SIGNAL \Add0~99\ : std_logic;
SIGNAL \Add0~100_combout\ : std_logic;
SIGNAL \Add0~141_combout\ : std_logic;
SIGNAL \Add0~101\ : std_logic;
SIGNAL \Add0~102_combout\ : std_logic;
SIGNAL \Add0~140_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Add0~103\ : std_logic;
SIGNAL \Add0~104_combout\ : std_logic;
SIGNAL \Add0~139_combout\ : std_logic;
SIGNAL \Add0~105\ : std_logic;
SIGNAL \Add0~107\ : std_logic;
SIGNAL \Add0~109\ : std_logic;
SIGNAL \Add0~110_combout\ : std_logic;
SIGNAL \Add0~136_combout\ : std_logic;
SIGNAL \Add0~106_combout\ : std_logic;
SIGNAL \Add0~138_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add0~111\ : std_logic;
SIGNAL \Add0~112_combout\ : std_logic;
SIGNAL \Add0~135_combout\ : std_logic;
SIGNAL \Add0~113\ : std_logic;
SIGNAL \Add0~115\ : std_logic;
SIGNAL \Add0~116_combout\ : std_logic;
SIGNAL \Add0~133_combout\ : std_logic;
SIGNAL \Add0~117\ : std_logic;
SIGNAL \Add0~118_combout\ : std_logic;
SIGNAL \Add0~132_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Q_s~0_combout\ : std_logic;
SIGNAL \Q_s~1_combout\ : std_logic;
SIGNAL \Q_s~regout\ : std_logic;
SIGNAL count : std_logic_vector(31 DOWNTO 0);

BEGIN

ww_rst <= rst;
ww_clk <= clk;
ww_clr <= clr;
ww_en <= en;
ww_btn <= btn;
click <= ww_click;
Q <= ww_Q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

\rst~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \rst~combout\);

-- Location: LCCOMB_X59_Y17_N2
\Add0~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~66_combout\ = (count(1) & (!\Add0~65\)) # (!count(1) & ((\Add0~65\) # (GND)))
-- \Add0~67\ = CARRY((!\Add0~65\) # (!count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(1),
	datad => VCC,
	cin => \Add0~65\,
	combout => \Add0~66_combout\,
	cout => \Add0~67\);

-- Location: LCCOMB_X59_Y17_N4
\Add0~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~68_combout\ = (count(2) & (\Add0~67\ $ (GND))) # (!count(2) & (!\Add0~67\ & VCC))
-- \Add0~69\ = CARRY((count(2) & !\Add0~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datad => VCC,
	cin => \Add0~67\,
	combout => \Add0~68_combout\,
	cout => \Add0~69\);

-- Location: LCCOMB_X59_Y17_N10
\Add0~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~74_combout\ = (count(5) & (!\Add0~73\)) # (!count(5) & ((\Add0~73\) # (GND)))
-- \Add0~75\ = CARRY((!\Add0~73\) # (!count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(5),
	datad => VCC,
	cin => \Add0~73\,
	combout => \Add0~74_combout\,
	cout => \Add0~75\);

-- Location: LCCOMB_X59_Y17_N22
\Add0~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~86_combout\ = (count(11) & (!\Add0~85\)) # (!count(11) & ((\Add0~85\) # (GND)))
-- \Add0~87\ = CARRY((!\Add0~85\) # (!count(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(11),
	datad => VCC,
	cin => \Add0~85\,
	combout => \Add0~86_combout\,
	cout => \Add0~87\);

-- Location: LCCOMB_X59_Y17_N24
\Add0~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~88_combout\ = (count(12) & (\Add0~87\ $ (GND))) # (!count(12) & (!\Add0~87\ & VCC))
-- \Add0~89\ = CARRY((count(12) & !\Add0~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(12),
	datad => VCC,
	cin => \Add0~87\,
	combout => \Add0~88_combout\,
	cout => \Add0~89\);

-- Location: LCCOMB_X59_Y17_N26
\Add0~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~90_combout\ = (count(13) & (!\Add0~89\)) # (!count(13) & ((\Add0~89\) # (GND)))
-- \Add0~91\ = CARRY((!\Add0~89\) # (!count(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(13),
	datad => VCC,
	cin => \Add0~89\,
	combout => \Add0~90_combout\,
	cout => \Add0~91\);

-- Location: LCCOMB_X59_Y16_N12
\Add0~108\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~108_combout\ = (count(22) & (\Add0~107\ $ (GND))) # (!count(22) & (!\Add0~107\ & VCC))
-- \Add0~109\ = CARRY((count(22) & !\Add0~107\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(22),
	datad => VCC,
	cin => \Add0~107\,
	combout => \Add0~108_combout\,
	cout => \Add0~109\);

-- Location: LCCOMB_X59_Y16_N18
\Add0~114\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~114_combout\ = (count(25) & (!\Add0~113\)) # (!count(25) & ((\Add0~113\) # (GND)))
-- \Add0~115\ = CARRY((!\Add0~113\) # (!count(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(25),
	datad => VCC,
	cin => \Add0~113\,
	combout => \Add0~114_combout\,
	cout => \Add0~115\);

-- Location: LCCOMB_X59_Y16_N22
\Add0~118\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~118_combout\ = (count(27) & (!\Add0~117\)) # (!count(27) & ((\Add0~117\) # (GND)))
-- \Add0~119\ = CARRY((!\Add0~117\) # (!count(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(27),
	datad => VCC,
	cin => \Add0~117\,
	combout => \Add0~118_combout\,
	cout => \Add0~119\);

-- Location: LCCOMB_X59_Y16_N24
\Add0~120\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~120_combout\ = (count(28) & (\Add0~119\ $ (GND))) # (!count(28) & (!\Add0~119\ & VCC))
-- \Add0~121\ = CARRY((count(28) & !\Add0~119\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(28),
	datad => VCC,
	cin => \Add0~119\,
	combout => \Add0~120_combout\,
	cout => \Add0~121\);

-- Location: LCCOMB_X59_Y16_N26
\Add0~122\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~122_combout\ = (count(29) & (!\Add0~121\)) # (!count(29) & ((\Add0~121\) # (GND)))
-- \Add0~123\ = CARRY((!\Add0~121\) # (!count(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(29),
	datad => VCC,
	cin => \Add0~121\,
	combout => \Add0~122_combout\,
	cout => \Add0~123\);

-- Location: LCCOMB_X59_Y16_N28
\Add0~124\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~124_combout\ = (count(30) & (\Add0~123\ $ (GND))) # (!count(30) & (!\Add0~123\ & VCC))
-- \Add0~125\ = CARRY((count(30) & !\Add0~123\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(30),
	datad => VCC,
	cin => \Add0~123\,
	combout => \Add0~124_combout\,
	cout => \Add0~125\);

-- Location: LCCOMB_X59_Y16_N30
\Add0~126\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~126_combout\ = \Add0~125\ $ (count(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => count(31),
	cin => \Add0~125\,
	combout => \Add0~126_combout\);

-- Location: LCFF_X58_Y16_N25
\count[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~128_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \click_s~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(31));

-- Location: LCFF_X58_Y16_N11
\count[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~129_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \click_s~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(30));

-- Location: LCFF_X58_Y16_N29
\count[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~130_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \click_s~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(29));

-- Location: LCFF_X58_Y16_N31
\count[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~131_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \click_s~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(28));

-- Location: LCCOMB_X57_Y16_N24
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!count(31) & (!count(29) & (!count(30) & !count(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(31),
	datab => count(29),
	datac => count(30),
	datad => count(28),
	combout => \Equal0~0_combout\);

-- Location: LCFF_X58_Y16_N17
\count[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~134_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \click_s~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(25));

-- Location: LCFF_X58_Y16_N3
\count[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~137_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \click_s~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(22));

-- Location: LCFF_X58_Y17_N9
\count[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~147_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \click_s~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(12));

-- Location: LCCOMB_X58_Y17_N10
\Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!count(13) & (!count(14) & (!count(12) & !count(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(13),
	datab => count(14),
	datac => count(12),
	datad => count(15),
	combout => \Equal0~5_combout\);

-- Location: LCFF_X58_Y17_N13
\count[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~148_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \click_s~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(11));

-- Location: LCFF_X59_Y17_N7
\count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Add0~154_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \click_s~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(5));

-- Location: LCFF_X59_Y17_N17
\count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Add0~156_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \click_s~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(2));

-- Location: LCCOMB_X58_Y16_N24
\Add0~128\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~128_combout\ = (\btn~combout\ & (\en~combout\ & (!\clr~combout\ & \Add0~126_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn~combout\,
	datab => \en~combout\,
	datac => \clr~combout\,
	datad => \Add0~126_combout\,
	combout => \Add0~128_combout\);

-- Location: LCCOMB_X58_Y16_N10
\Add0~129\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~129_combout\ = (\btn~combout\ & (\en~combout\ & (!\clr~combout\ & \Add0~124_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn~combout\,
	datab => \en~combout\,
	datac => \clr~combout\,
	datad => \Add0~124_combout\,
	combout => \Add0~129_combout\);

-- Location: LCCOMB_X58_Y16_N28
\Add0~130\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~130_combout\ = (\btn~combout\ & (!\clr~combout\ & (\Add0~122_combout\ & \en~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn~combout\,
	datab => \clr~combout\,
	datac => \Add0~122_combout\,
	datad => \en~combout\,
	combout => \Add0~130_combout\);

-- Location: LCCOMB_X58_Y16_N30
\Add0~131\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~131_combout\ = (\btn~combout\ & (\en~combout\ & (!\clr~combout\ & \Add0~120_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn~combout\,
	datab => \en~combout\,
	datac => \clr~combout\,
	datad => \Add0~120_combout\,
	combout => \Add0~131_combout\);

-- Location: LCCOMB_X58_Y16_N16
\Add0~134\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~134_combout\ = (\btn~combout\ & (\en~combout\ & (!\clr~combout\ & \Add0~114_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn~combout\,
	datab => \en~combout\,
	datac => \clr~combout\,
	datad => \Add0~114_combout\,
	combout => \Add0~134_combout\);

-- Location: LCCOMB_X58_Y16_N2
\Add0~137\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~137_combout\ = (\btn~combout\ & (!\clr~combout\ & (\Add0~108_combout\ & \en~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn~combout\,
	datab => \clr~combout\,
	datac => \Add0~108_combout\,
	datad => \en~combout\,
	combout => \Add0~137_combout\);

-- Location: LCCOMB_X58_Y17_N8
\Add0~147\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~147_combout\ = (\btn~combout\ & (!\clr~combout\ & (\en~combout\ & \Add0~88_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn~combout\,
	datab => \clr~combout\,
	datac => \en~combout\,
	datad => \Add0~88_combout\,
	combout => \Add0~147_combout\);

-- Location: LCCOMB_X58_Y17_N12
\Add0~148\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~148_combout\ = (\btn~combout\ & (!\clr~combout\ & (\en~combout\ & \Add0~86_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn~combout\,
	datab => \clr~combout\,
	datac => \en~combout\,
	datad => \Add0~86_combout\,
	combout => \Add0~148_combout\);

-- Location: LCCOMB_X60_Y17_N26
\Add0~154\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~154_combout\ = (\en~combout\ & (!\clr~combout\ & (\btn~combout\ & \Add0~74_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en~combout\,
	datab => \clr~combout\,
	datac => \btn~combout\,
	datad => \Add0~74_combout\,
	combout => \Add0~154_combout\);

-- Location: LCCOMB_X60_Y17_N14
\Add0~156\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~156_combout\ = (\en~combout\ & (\btn~combout\ & (\Add0~68_combout\ & !\clr~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en~combout\,
	datab => \btn~combout\,
	datac => \Add0~68_combout\,
	datad => \clr~combout\,
	combout => \Add0~156_combout\);

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G2
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clr~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clr,
	combout => \clr~combout\);

-- Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\en~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_en,
	combout => \en~combout\);

-- Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\btn~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_btn,
	combout => \btn~combout\);

-- Location: LCCOMB_X58_Y17_N4
\click_s~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \click_s~0_combout\ = (\en~combout\ & \btn~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \en~combout\,
	datac => \btn~combout\,
	combout => \click_s~0_combout\);

-- Location: LCCOMB_X59_Y17_N0
\Add0~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~64_combout\ = count(0) $ (VCC)
-- \Add0~65\ = CARRY(count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(0),
	datad => VCC,
	combout => \Add0~64_combout\,
	cout => \Add0~65\);

-- Location: LCCOMB_X58_Y17_N20
\Add0~157\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~157_combout\ = (\btn~combout\ & (\Add0~64_combout\ & (\en~combout\ & !\clr~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn~combout\,
	datab => \Add0~64_combout\,
	datac => \en~combout\,
	datad => \clr~combout\,
	combout => \Add0~157_combout\);

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rst~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_rst,
	combout => \rst~combout\);

-- Location: CLKCTRL_G6
\rst~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~clkctrl_outclk\);

-- Location: LCFF_X59_Y17_N5
\count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Add0~157_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \click_s~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(0));

-- Location: LCCOMB_X59_Y17_N6
\Add0~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~70_combout\ = (count(3) & (!\Add0~69\)) # (!count(3) & ((\Add0~69\) # (GND)))
-- \Add0~71\ = CARRY((!\Add0~69\) # (!count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(3),
	datad => VCC,
	cin => \Add0~69\,
	combout => \Add0~70_combout\,
	cout => \Add0~71\);

-- Location: LCCOMB_X60_Y17_N0
\Add0~158\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~158_combout\ = (\en~combout\ & (\btn~combout\ & (\Add0~70_combout\ & !\clr~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en~combout\,
	datab => \btn~combout\,
	datac => \Add0~70_combout\,
	datad => \clr~combout\,
	combout => \Add0~158_combout\);

-- Location: LCFF_X59_Y17_N29
\count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Add0~158_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \click_s~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(3));

-- Location: LCCOMB_X59_Y17_N8
\Add0~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~72_combout\ = (count(4) & (\Add0~71\ $ (GND))) # (!count(4) & (!\Add0~71\ & VCC))
-- \Add0~73\ = CARRY((count(4) & !\Add0~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(4),
	datad => VCC,
	cin => \Add0~71\,
	combout => \Add0~72_combout\,
	cout => \Add0~73\);

-- Location: LCCOMB_X60_Y17_N16
\Add0~155\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~155_combout\ = (\en~combout\ & (!\clr~combout\ & (\btn~combout\ & \Add0~72_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en~combout\,
	datab => \clr~combout\,
	datac => \btn~combout\,
	datad => \Add0~72_combout\,
	combout => \Add0~155_combout\);

-- Location: LCFF_X59_Y17_N23
\count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Add0~155_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \click_s~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(4));

-- Location: LCCOMB_X59_Y17_N12
\Add0~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~76_combout\ = (count(6) & (\Add0~75\ $ (GND))) # (!count(6) & (!\Add0~75\ & VCC))
-- \Add0~77\ = CARRY((count(6) & !\Add0~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(6),
	datad => VCC,
	cin => \Add0~75\,
	combout => \Add0~76_combout\,
	cout => \Add0~77\);

-- Location: LCCOMB_X60_Y17_N8
\Add0~153\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~153_combout\ = (\en~combout\ & (!\clr~combout\ & (\btn~combout\ & \Add0~76_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en~combout\,
	datab => \clr~combout\,
	datac => \btn~combout\,
	datad => \Add0~76_combout\,
	combout => \Add0~153_combout\);

-- Location: LCFF_X59_Y17_N13
\count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Add0~153_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \click_s~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(6));

-- Location: LCCOMB_X59_Y17_N14
\Add0~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~78_combout\ = (count(7) & (!\Add0~77\)) # (!count(7) & ((\Add0~77\) # (GND)))
-- \Add0~79\ = CARRY((!\Add0~77\) # (!count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(7),
	datad => VCC,
	cin => \Add0~77\,
	combout => \Add0~78_combout\,
	cout => \Add0~79\);

-- Location: LCCOMB_X58_Y17_N30
\Add0~152\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~152_combout\ = (\btn~combout\ & (\en~combout\ & (\Add0~78_combout\ & !\clr~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn~combout\,
	datab => \en~combout\,
	datac => \Add0~78_combout\,
	datad => \clr~combout\,
	combout => \Add0~152_combout\);

-- Location: LCFF_X59_Y17_N19
\count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Add0~152_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \click_s~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(7));

-- Location: LCCOMB_X58_Y17_N2
\Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!count(5) & (!count(6) & (!count(7) & !count(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(5),
	datab => count(6),
	datac => count(7),
	datad => count(4),
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X59_Y17_N16
\Add0~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~80_combout\ = (count(8) & (\Add0~79\ $ (GND))) # (!count(8) & (!\Add0~79\ & VCC))
-- \Add0~81\ = CARRY((count(8) & !\Add0~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(8),
	datad => VCC,
	cin => \Add0~79\,
	combout => \Add0~80_combout\,
	cout => \Add0~81\);

-- Location: LCCOMB_X60_Y17_N10
\Add0~151\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~151_combout\ = (\en~combout\ & (!\clr~combout\ & (\btn~combout\ & \Add0~80_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en~combout\,
	datab => \clr~combout\,
	datac => \btn~combout\,
	datad => \Add0~80_combout\,
	combout => \Add0~151_combout\);

-- Location: LCFF_X59_Y17_N15
\count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Add0~151_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \click_s~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(8));

-- Location: LCCOMB_X59_Y17_N18
\Add0~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~82_combout\ = (count(9) & (!\Add0~81\)) # (!count(9) & ((\Add0~81\) # (GND)))
-- \Add0~83\ = CARRY((!\Add0~81\) # (!count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(9),
	datad => VCC,
	cin => \Add0~81\,
	combout => \Add0~82_combout\,
	cout => \Add0~83\);

-- Location: LCCOMB_X58_Y17_N14
\Add0~150\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~150_combout\ = (\btn~combout\ & (!\clr~combout\ & (\en~combout\ & \Add0~82_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn~combout\,
	datab => \clr~combout\,
	datac => \en~combout\,
	datad => \Add0~82_combout\,
	combout => \Add0~150_combout\);

-- Location: LCFF_X58_Y17_N15
\count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~150_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \click_s~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(9));

-- Location: LCCOMB_X59_Y17_N20
\Add0~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~84_combout\ = (count(10) & (\Add0~83\ $ (GND))) # (!count(10) & (!\Add0~83\ & VCC))
-- \Add0~85\ = CARRY((count(10) & !\Add0~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(10),
	datad => VCC,
	cin => \Add0~83\,
	combout => \Add0~84_combout\,
	cout => \Add0~85\);

-- Location: LCCOMB_X60_Y17_N12
\Add0~149\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~149_combout\ = (\en~combout\ & (\btn~combout\ & (\Add0~84_combout\ & !\clr~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en~combout\,
	datab => \btn~combout\,
	datac => \Add0~84_combout\,
	datad => \clr~combout\,
	combout => \Add0~149_combout\);

-- Location: LCFF_X59_Y17_N9
\count[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Add0~149_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \click_s~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(10));

-- Location: LCCOMB_X58_Y17_N24
\Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!count(11) & (!count(9) & (!count(10) & !count(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(11),
	datab => count(9),
	datac => count(10),
	datad => count(8),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X58_Y17_N6
\Add0~159\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~159_combout\ = (\Add0~66_combout\ & (\btn~combout\ & (\en~combout\ & !\clr~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~66_combout\,
	datab => \btn~combout\,
	datac => \en~combout\,
	datad => \clr~combout\,
	combout => \Add0~159_combout\);

-- Location: LCFF_X59_Y17_N21
\count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Add0~159_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \click_s~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(1));

-- Location: LCCOMB_X58_Y17_N0
\Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (count(2) & (!count(1) & (!count(3) & count(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datab => count(1),
	datac => count(3),
	datad => count(0),
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X58_Y17_N18
\Equal0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (\Equal0~5_combout\ & (\Equal0~7_combout\ & (\Equal0~6_combout\ & \Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => \Equal0~7_combout\,
	datac => \Equal0~6_combout\,
	datad => \Equal0~8_combout\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X58_Y17_N16
\click_s~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \click_s~1_combout\ = ((\clr~combout\) # ((!\Equal0~9_combout\) # (!\click_s~0_combout\))) # (!\Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \clr~combout\,
	datac => \click_s~0_combout\,
	datad => \Equal0~9_combout\,
	combout => \click_s~1_combout\);

-- Location: LCCOMB_X57_Y17_N4
\click_s~1_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \click_s~1_wirecell_combout\ = !\click_s~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \click_s~1_combout\,
	combout => \click_s~1_wirecell_combout\);

-- Location: LCFF_X57_Y17_N5
click_s : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \click_s~1_wirecell_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \click_s~regout\);

-- Location: LCCOMB_X58_Y17_N26
\Add0~146\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~146_combout\ = (\Add0~90_combout\ & (\btn~combout\ & (\en~combout\ & !\clr~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~90_combout\,
	datab => \btn~combout\,
	datac => \en~combout\,
	datad => \clr~combout\,
	combout => \Add0~146_combout\);

-- Location: LCFF_X58_Y17_N27
\count[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~146_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \click_s~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(13));

-- Location: LCCOMB_X59_Y17_N28
\Add0~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~92_combout\ = (count(14) & (\Add0~91\ $ (GND))) # (!count(14) & (!\Add0~91\ & VCC))
-- \Add0~93\ = CARRY((count(14) & !\Add0~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(14),
	datad => VCC,
	cin => \Add0~91\,
	combout => \Add0~92_combout\,
	cout => \Add0~93\);

-- Location: LCCOMB_X58_Y17_N28
\Add0~145\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~145_combout\ = (\btn~combout\ & (!\clr~combout\ & (\en~combout\ & \Add0~92_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn~combout\,
	datab => \clr~combout\,
	datac => \en~combout\,
	datad => \Add0~92_combout\,
	combout => \Add0~145_combout\);

-- Location: LCFF_X58_Y17_N29
\count[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~145_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \click_s~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(14));

-- Location: LCCOMB_X59_Y17_N30
\Add0~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~94_combout\ = (count(15) & (!\Add0~93\)) # (!count(15) & ((\Add0~93\) # (GND)))
-- \Add0~95\ = CARRY((!\Add0~93\) # (!count(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(15),
	datad => VCC,
	cin => \Add0~93\,
	combout => \Add0~94_combout\,
	cout => \Add0~95\);

-- Location: LCCOMB_X58_Y17_N22
\Add0~144\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~144_combout\ = (\btn~combout\ & (!\clr~combout\ & (\en~combout\ & \Add0~94_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn~combout\,
	datab => \clr~combout\,
	datac => \en~combout\,
	datad => \Add0~94_combout\,
	combout => \Add0~144_combout\);

-- Location: LCFF_X58_Y17_N23
\count[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~144_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \click_s~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(15));

-- Location: LCCOMB_X59_Y16_N0
\Add0~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~96_combout\ = (count(16) & (\Add0~95\ $ (GND))) # (!count(16) & (!\Add0~95\ & VCC))
-- \Add0~97\ = CARRY((count(16) & !\Add0~95\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(16),
	datad => VCC,
	cin => \Add0~95\,
	combout => \Add0~96_combout\,
	cout => \Add0~97\);

-- Location: LCCOMB_X58_Y16_N22
\Add0~143\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~143_combout\ = (\btn~combout\ & (!\clr~combout\ & (\Add0~96_combout\ & \en~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn~combout\,
	datab => \clr~combout\,
	datac => \Add0~96_combout\,
	datad => \en~combout\,
	combout => \Add0~143_combout\);

-- Location: LCFF_X58_Y16_N23
\count[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~143_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \click_s~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(16));

-- Location: LCCOMB_X59_Y16_N2
\Add0~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~98_combout\ = (count(17) & (!\Add0~97\)) # (!count(17) & ((\Add0~97\) # (GND)))
-- \Add0~99\ = CARRY((!\Add0~97\) # (!count(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(17),
	datad => VCC,
	cin => \Add0~97\,
	combout => \Add0~98_combout\,
	cout => \Add0~99\);

-- Location: LCCOMB_X58_Y16_N12
\Add0~142\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~142_combout\ = (\btn~combout\ & (\en~combout\ & (!\clr~combout\ & \Add0~98_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn~combout\,
	datab => \en~combout\,
	datac => \clr~combout\,
	datad => \Add0~98_combout\,
	combout => \Add0~142_combout\);

-- Location: LCFF_X58_Y16_N13
\count[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~142_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \click_s~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(17));

-- Location: LCCOMB_X59_Y16_N4
\Add0~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~100_combout\ = (count(18) & (\Add0~99\ $ (GND))) # (!count(18) & (!\Add0~99\ & VCC))
-- \Add0~101\ = CARRY((count(18) & !\Add0~99\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(18),
	datad => VCC,
	cin => \Add0~99\,
	combout => \Add0~100_combout\,
	cout => \Add0~101\);

-- Location: LCCOMB_X58_Y16_N18
\Add0~141\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~141_combout\ = (\btn~combout\ & (\en~combout\ & (!\clr~combout\ & \Add0~100_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn~combout\,
	datab => \en~combout\,
	datac => \clr~combout\,
	datad => \Add0~100_combout\,
	combout => \Add0~141_combout\);

-- Location: LCFF_X58_Y16_N19
\count[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~141_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \click_s~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(18));

-- Location: LCCOMB_X59_Y16_N6
\Add0~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~102_combout\ = (count(19) & (!\Add0~101\)) # (!count(19) & ((\Add0~101\) # (GND)))
-- \Add0~103\ = CARRY((!\Add0~101\) # (!count(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(19),
	datad => VCC,
	cin => \Add0~101\,
	combout => \Add0~102_combout\,
	cout => \Add0~103\);

-- Location: LCCOMB_X58_Y16_N0
\Add0~140\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~140_combout\ = (\btn~combout\ & (\en~combout\ & (!\clr~combout\ & \Add0~102_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn~combout\,
	datab => \en~combout\,
	datac => \clr~combout\,
	datad => \Add0~102_combout\,
	combout => \Add0~140_combout\);

-- Location: LCFF_X58_Y16_N1
\count[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~140_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \click_s~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(19));

-- Location: LCCOMB_X57_Y16_N2
\Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!count(18) & (!count(19) & (!count(17) & !count(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(18),
	datab => count(19),
	datac => count(17),
	datad => count(16),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X59_Y16_N8
\Add0~104\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~104_combout\ = (count(20) & (\Add0~103\ $ (GND))) # (!count(20) & (!\Add0~103\ & VCC))
-- \Add0~105\ = CARRY((count(20) & !\Add0~103\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(20),
	datad => VCC,
	cin => \Add0~103\,
	combout => \Add0~104_combout\,
	cout => \Add0~105\);

-- Location: LCCOMB_X58_Y16_N6
\Add0~139\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~139_combout\ = (\btn~combout\ & (!\clr~combout\ & (\Add0~104_combout\ & \en~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn~combout\,
	datab => \clr~combout\,
	datac => \Add0~104_combout\,
	datad => \en~combout\,
	combout => \Add0~139_combout\);

-- Location: LCFF_X58_Y16_N7
\count[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~139_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \click_s~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(20));

-- Location: LCCOMB_X59_Y16_N10
\Add0~106\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~106_combout\ = (count(21) & (!\Add0~105\)) # (!count(21) & ((\Add0~105\) # (GND)))
-- \Add0~107\ = CARRY((!\Add0~105\) # (!count(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(21),
	datad => VCC,
	cin => \Add0~105\,
	combout => \Add0~106_combout\,
	cout => \Add0~107\);

-- Location: LCCOMB_X59_Y16_N14
\Add0~110\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~110_combout\ = (count(23) & (!\Add0~109\)) # (!count(23) & ((\Add0~109\) # (GND)))
-- \Add0~111\ = CARRY((!\Add0~109\) # (!count(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(23),
	datad => VCC,
	cin => \Add0~109\,
	combout => \Add0~110_combout\,
	cout => \Add0~111\);

-- Location: LCCOMB_X58_Y16_N20
\Add0~136\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~136_combout\ = (\btn~combout\ & (!\clr~combout\ & (\Add0~110_combout\ & \en~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn~combout\,
	datab => \clr~combout\,
	datac => \Add0~110_combout\,
	datad => \en~combout\,
	combout => \Add0~136_combout\);

-- Location: LCFF_X58_Y16_N21
\count[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~136_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \click_s~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(23));

-- Location: LCCOMB_X58_Y16_N8
\Add0~138\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~138_combout\ = (\btn~combout\ & (!\clr~combout\ & (\Add0~106_combout\ & \en~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn~combout\,
	datab => \clr~combout\,
	datac => \Add0~106_combout\,
	datad => \en~combout\,
	combout => \Add0~138_combout\);

-- Location: LCFF_X58_Y16_N9
\count[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~138_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \click_s~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(21));

-- Location: LCCOMB_X57_Y16_N20
\Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!count(22) & (!count(23) & (!count(21) & !count(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(22),
	datab => count(23),
	datac => count(21),
	datad => count(20),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X59_Y16_N16
\Add0~112\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~112_combout\ = (count(24) & (\Add0~111\ $ (GND))) # (!count(24) & (!\Add0~111\ & VCC))
-- \Add0~113\ = CARRY((count(24) & !\Add0~111\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(24),
	datad => VCC,
	cin => \Add0~111\,
	combout => \Add0~112_combout\,
	cout => \Add0~113\);

-- Location: LCCOMB_X58_Y16_N14
\Add0~135\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~135_combout\ = (\btn~combout\ & (!\clr~combout\ & (\Add0~112_combout\ & \en~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn~combout\,
	datab => \clr~combout\,
	datac => \Add0~112_combout\,
	datad => \en~combout\,
	combout => \Add0~135_combout\);

-- Location: LCFF_X58_Y16_N15
\count[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~135_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \click_s~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(24));

-- Location: LCCOMB_X59_Y16_N20
\Add0~116\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~116_combout\ = (count(26) & (\Add0~115\ $ (GND))) # (!count(26) & (!\Add0~115\ & VCC))
-- \Add0~117\ = CARRY((count(26) & !\Add0~115\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(26),
	datad => VCC,
	cin => \Add0~115\,
	combout => \Add0~116_combout\,
	cout => \Add0~117\);

-- Location: LCCOMB_X58_Y16_N26
\Add0~133\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~133_combout\ = (\btn~combout\ & (\en~combout\ & (!\clr~combout\ & \Add0~116_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn~combout\,
	datab => \en~combout\,
	datac => \clr~combout\,
	datad => \Add0~116_combout\,
	combout => \Add0~133_combout\);

-- Location: LCFF_X58_Y16_N27
\count[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~133_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \click_s~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(26));

-- Location: LCCOMB_X58_Y16_N4
\Add0~132\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~132_combout\ = (\btn~combout\ & (\en~combout\ & (!\clr~combout\ & \Add0~118_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn~combout\,
	datab => \en~combout\,
	datac => \clr~combout\,
	datad => \Add0~118_combout\,
	combout => \Add0~132_combout\);

-- Location: LCFF_X58_Y16_N5
\count[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~132_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \click_s~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(27));

-- Location: LCCOMB_X57_Y16_N18
\Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!count(25) & (!count(24) & (!count(26) & !count(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(25),
	datab => count(24),
	datac => count(26),
	datad => count(27),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X57_Y16_N0
\Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~0_combout\ & (\Equal0~3_combout\ & (\Equal0~2_combout\ & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~3_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~1_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X57_Y17_N12
\Q_s~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Q_s~0_combout\ = (\click_s~0_combout\ & (\Equal0~4_combout\ & (!\click_s~regout\ & \Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \click_s~0_combout\,
	datab => \Equal0~4_combout\,
	datac => \click_s~regout\,
	datad => \Equal0~9_combout\,
	combout => \Q_s~0_combout\);

-- Location: LCCOMB_X57_Y17_N10
\Q_s~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Q_s~1_combout\ = (!\clr~combout\ & (\Q_s~regout\ $ (\Q_s~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr~combout\,
	datac => \Q_s~regout\,
	datad => \Q_s~0_combout\,
	combout => \Q_s~1_combout\);

-- Location: LCFF_X57_Y17_N11
Q_s : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Q_s~1_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Q_s~regout\);

-- Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\click~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \click_s~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_click);

-- Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Q_s~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q);
END structure;


