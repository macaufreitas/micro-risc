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
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "04/09/2014 23:40:15"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	DetectorAuxiliarFlag IS
    PORT (
	entrada_01 : IN std_logic_vector(15 DOWNTO 0);
	entrada_02 : IN std_logic_vector(15 DOWNTO 0);
	carry : IN std_logic;
	seletorOperacao : IN std_logic_vector(2 DOWNTO 0);
	estadoFlagAuxiliar : BUFFER std_logic
	);
END DetectorAuxiliarFlag;

-- Design Ports Information
-- entrada_01[4]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_01[5]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_01[6]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_01[7]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_01[8]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_01[9]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_01[10]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_01[11]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_01[12]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_01[13]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_01[14]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_01[15]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_02[4]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_02[5]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_02[6]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_02[7]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_02[8]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_02[9]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_02[10]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_02[11]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_02[12]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_02[13]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_02[14]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_02[15]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estadoFlagAuxiliar	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_02[3]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_01[3]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seletorOperacao[0]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_02[2]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_01[2]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_02[1]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_01[1]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_02[0]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- carry	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_01[0]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seletorOperacao[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seletorOperacao[2]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DetectorAuxiliarFlag IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_entrada_01 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_entrada_02 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_carry : std_logic;
SIGNAL ww_seletorOperacao : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_estadoFlagAuxiliar : std_logic;
SIGNAL \entrada_01[4]~input_o\ : std_logic;
SIGNAL \entrada_01[5]~input_o\ : std_logic;
SIGNAL \entrada_01[6]~input_o\ : std_logic;
SIGNAL \entrada_01[7]~input_o\ : std_logic;
SIGNAL \entrada_01[8]~input_o\ : std_logic;
SIGNAL \entrada_01[9]~input_o\ : std_logic;
SIGNAL \entrada_01[10]~input_o\ : std_logic;
SIGNAL \entrada_01[11]~input_o\ : std_logic;
SIGNAL \entrada_01[12]~input_o\ : std_logic;
SIGNAL \entrada_01[13]~input_o\ : std_logic;
SIGNAL \entrada_01[14]~input_o\ : std_logic;
SIGNAL \entrada_01[15]~input_o\ : std_logic;
SIGNAL \entrada_02[4]~input_o\ : std_logic;
SIGNAL \entrada_02[5]~input_o\ : std_logic;
SIGNAL \entrada_02[6]~input_o\ : std_logic;
SIGNAL \entrada_02[7]~input_o\ : std_logic;
SIGNAL \entrada_02[8]~input_o\ : std_logic;
SIGNAL \entrada_02[9]~input_o\ : std_logic;
SIGNAL \entrada_02[10]~input_o\ : std_logic;
SIGNAL \entrada_02[11]~input_o\ : std_logic;
SIGNAL \entrada_02[12]~input_o\ : std_logic;
SIGNAL \entrada_02[13]~input_o\ : std_logic;
SIGNAL \entrada_02[14]~input_o\ : std_logic;
SIGNAL \entrada_02[15]~input_o\ : std_logic;
SIGNAL \estadoFlagAuxiliar~output_o\ : std_logic;
SIGNAL \entrada_01[2]~input_o\ : std_logic;
SIGNAL \entrada_02[1]~input_o\ : std_logic;
SIGNAL \carry~input_o\ : std_logic;
SIGNAL \entrada_01[0]~input_o\ : std_logic;
SIGNAL \seletorOperacao[0]~input_o\ : std_logic;
SIGNAL \entrada_02[0]~input_o\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \entrada_01[1]~input_o\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \entrada_02[2]~input_o\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \entrada_02[3]~input_o\ : std_logic;
SIGNAL \entrada_01[3]~input_o\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \seletorOperacao[2]~input_o\ : std_logic;
SIGNAL \seletorOperacao[1]~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;

BEGIN

ww_entrada_01 <= entrada_01;
ww_entrada_02 <= entrada_02;
ww_carry <= carry;
ww_seletorOperacao <= seletorOperacao;
estadoFlagAuxiliar <= ww_estadoFlagAuxiliar;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X33_Y27_N9
\estadoFlagAuxiliar~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~3_combout\,
	oe => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => \estadoFlagAuxiliar~output_o\);

-- Location: IOIBUF_X33_Y16_N15
\entrada_01[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_01(2),
	o => \entrada_01[2]~input_o\);

-- Location: IOIBUF_X33_Y12_N8
\entrada_02[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_02(1),
	o => \entrada_02[1]~input_o\);

-- Location: IOIBUF_X33_Y15_N1
\carry~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_carry,
	o => \carry~input_o\);

-- Location: IOIBUF_X33_Y12_N1
\entrada_01[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_01(0),
	o => \entrada_01[0]~input_o\);

-- Location: IOIBUF_X33_Y11_N8
\seletorOperacao[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_seletorOperacao(0),
	o => \seletorOperacao[0]~input_o\);

-- Location: IOIBUF_X33_Y16_N1
\entrada_02[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_02(0),
	o => \entrada_02[0]~input_o\);

-- Location: LCCOMB_X32_Y16_N0
\Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\carry~input_o\ & ((\entrada_02[0]~input_o\) # (\entrada_01[0]~input_o\ $ (\seletorOperacao[0]~input_o\)))) # (!\carry~input_o\ & (\entrada_02[0]~input_o\ & (\entrada_01[0]~input_o\ $ (\seletorOperacao[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \carry~input_o\,
	datab => \entrada_01[0]~input_o\,
	datac => \seletorOperacao[0]~input_o\,
	datad => \entrada_02[0]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: IOIBUF_X33_Y16_N8
\entrada_01[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_01(1),
	o => \entrada_01[1]~input_o\);

-- Location: LCCOMB_X32_Y16_N2
\Mux1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\entrada_02[1]~input_o\ & ((\Mux1~0_combout\) # (\seletorOperacao[0]~input_o\ $ (\entrada_01[1]~input_o\)))) # (!\entrada_02[1]~input_o\ & (\Mux1~0_combout\ & (\seletorOperacao[0]~input_o\ $ (\entrada_01[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_02[1]~input_o\,
	datab => \Mux1~0_combout\,
	datac => \seletorOperacao[0]~input_o\,
	datad => \entrada_01[1]~input_o\,
	combout => \Mux1~1_combout\);

-- Location: IOIBUF_X33_Y16_N22
\entrada_02[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_02(2),
	o => \entrada_02[2]~input_o\);

-- Location: LCCOMB_X32_Y16_N12
\Mux1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\Mux1~1_combout\ & ((\entrada_02[2]~input_o\) # (\entrada_01[2]~input_o\ $ (\seletorOperacao[0]~input_o\)))) # (!\Mux1~1_combout\ & (\entrada_02[2]~input_o\ & (\entrada_01[2]~input_o\ $ (\seletorOperacao[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_01[2]~input_o\,
	datab => \Mux1~1_combout\,
	datac => \seletorOperacao[0]~input_o\,
	datad => \entrada_02[2]~input_o\,
	combout => \Mux1~2_combout\);

-- Location: IOIBUF_X33_Y15_N8
\entrada_02[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_02(3),
	o => \entrada_02[3]~input_o\);

-- Location: IOIBUF_X33_Y14_N1
\entrada_01[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_01(3),
	o => \entrada_01[3]~input_o\);

-- Location: LCCOMB_X32_Y16_N14
\Mux1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (\Mux1~2_combout\ & ((\entrada_02[3]~input_o\) # (\seletorOperacao[0]~input_o\ $ (\entrada_01[3]~input_o\)))) # (!\Mux1~2_combout\ & (\entrada_02[3]~input_o\ & (\seletorOperacao[0]~input_o\ $ (\entrada_01[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~2_combout\,
	datab => \seletorOperacao[0]~input_o\,
	datac => \entrada_02[3]~input_o\,
	datad => \entrada_01[3]~input_o\,
	combout => \Mux1~3_combout\);

-- Location: IOIBUF_X24_Y31_N8
\seletorOperacao[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_seletorOperacao(2),
	o => \seletorOperacao[2]~input_o\);

-- Location: IOIBUF_X26_Y31_N8
\seletorOperacao[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_seletorOperacao(1),
	o => \seletorOperacao[1]~input_o\);

-- Location: LCCOMB_X25_Y30_N8
\Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!\seletorOperacao[2]~input_o\ & !\seletorOperacao[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletorOperacao[2]~input_o\,
	datad => \seletorOperacao[1]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: IOIBUF_X29_Y0_N1
\entrada_01[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_01(4),
	o => \entrada_01[4]~input_o\);

-- Location: IOIBUF_X10_Y0_N8
\entrada_01[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_01(5),
	o => \entrada_01[5]~input_o\);

-- Location: IOIBUF_X33_Y22_N8
\entrada_01[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_01(6),
	o => \entrada_01[6]~input_o\);

-- Location: IOIBUF_X20_Y31_N8
\entrada_01[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_01(7),
	o => \entrada_01[7]~input_o\);

-- Location: IOIBUF_X12_Y31_N1
\entrada_01[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_01(8),
	o => \entrada_01[8]~input_o\);

-- Location: IOIBUF_X31_Y0_N1
\entrada_01[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_01(9),
	o => \entrada_01[9]~input_o\);

-- Location: IOIBUF_X26_Y0_N1
\entrada_01[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_01(10),
	o => \entrada_01[10]~input_o\);

-- Location: IOIBUF_X10_Y31_N1
\entrada_01[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_01(11),
	o => \entrada_01[11]~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\entrada_01[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_01(12),
	o => \entrada_01[12]~input_o\);

-- Location: IOIBUF_X24_Y0_N1
\entrada_01[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_01(13),
	o => \entrada_01[13]~input_o\);

-- Location: IOIBUF_X22_Y31_N1
\entrada_01[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_01(14),
	o => \entrada_01[14]~input_o\);

-- Location: IOIBUF_X33_Y10_N8
\entrada_01[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_01(15),
	o => \entrada_01[15]~input_o\);

-- Location: IOIBUF_X33_Y11_N1
\entrada_02[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_02(4),
	o => \entrada_02[4]~input_o\);

-- Location: IOIBUF_X33_Y24_N8
\entrada_02[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_02(5),
	o => \entrada_02[5]~input_o\);

-- Location: IOIBUF_X12_Y0_N1
\entrada_02[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_02(6),
	o => \entrada_02[6]~input_o\);

-- Location: IOIBUF_X16_Y31_N1
\entrada_02[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_02(7),
	o => \entrada_02[7]~input_o\);

-- Location: IOIBUF_X16_Y31_N8
\entrada_02[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_02(8),
	o => \entrada_02[8]~input_o\);

-- Location: IOIBUF_X8_Y0_N8
\entrada_02[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_02(9),
	o => \entrada_02[9]~input_o\);

-- Location: IOIBUF_X33_Y25_N8
\entrada_02[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_02(10),
	o => \entrada_02[10]~input_o\);

-- Location: IOIBUF_X12_Y31_N8
\entrada_02[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_02(11),
	o => \entrada_02[11]~input_o\);

-- Location: IOIBUF_X33_Y27_N1
\entrada_02[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_02(12),
	o => \entrada_02[12]~input_o\);

-- Location: IOIBUF_X22_Y0_N8
\entrada_02[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_02(13),
	o => \entrada_02[13]~input_o\);

-- Location: IOIBUF_X26_Y0_N8
\entrada_02[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_02(14),
	o => \entrada_02[14]~input_o\);

-- Location: IOIBUF_X29_Y0_N8
\entrada_02[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_02(15),
	o => \entrada_02[15]~input_o\);

ww_estadoFlagAuxiliar <= \estadoFlagAuxiliar~output_o\;
END structure;


