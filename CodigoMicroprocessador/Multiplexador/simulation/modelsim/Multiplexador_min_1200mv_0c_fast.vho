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

-- DATE "04/13/2014 23:05:03"

-- 
-- Device: Altera EP3C5F256C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Multiplexador IS
    PORT (
	entrada_01 : IN std_logic_vector(15 DOWNTO 0);
	entrada_02 : IN std_logic_vector(15 DOWNTO 0);
	saida : BUFFER std_logic_vector(15 DOWNTO 0);
	seletor : IN std_logic
	);
END Multiplexador;

-- Design Ports Information
-- saida[0]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[1]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[2]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[3]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[4]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[5]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[6]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[7]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[8]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[9]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[10]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[11]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[12]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[13]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[14]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[15]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_02[0]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_01[0]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seletor	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_02[1]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_01[1]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_02[2]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_01[2]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_02[3]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_01[3]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_02[4]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_01[4]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_02[5]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_01[5]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_02[6]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_01[6]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_02[7]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_01[7]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_02[8]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_01[8]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_02[9]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_01[9]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_02[10]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_01[10]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_02[11]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_01[11]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_02[12]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_01[12]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_02[13]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_01[13]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_02[14]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_01[14]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_02[15]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_01[15]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Multiplexador IS
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
SIGNAL ww_saida : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_seletor : std_logic;
SIGNAL \saida[0]~output_o\ : std_logic;
SIGNAL \saida[1]~output_o\ : std_logic;
SIGNAL \saida[2]~output_o\ : std_logic;
SIGNAL \saida[3]~output_o\ : std_logic;
SIGNAL \saida[4]~output_o\ : std_logic;
SIGNAL \saida[5]~output_o\ : std_logic;
SIGNAL \saida[6]~output_o\ : std_logic;
SIGNAL \saida[7]~output_o\ : std_logic;
SIGNAL \saida[8]~output_o\ : std_logic;
SIGNAL \saida[9]~output_o\ : std_logic;
SIGNAL \saida[10]~output_o\ : std_logic;
SIGNAL \saida[11]~output_o\ : std_logic;
SIGNAL \saida[12]~output_o\ : std_logic;
SIGNAL \saida[13]~output_o\ : std_logic;
SIGNAL \saida[14]~output_o\ : std_logic;
SIGNAL \saida[15]~output_o\ : std_logic;
SIGNAL \seletor~input_o\ : std_logic;
SIGNAL \entrada_02[0]~input_o\ : std_logic;
SIGNAL \entrada_01[0]~input_o\ : std_logic;
SIGNAL \saida~0_combout\ : std_logic;
SIGNAL \entrada_02[1]~input_o\ : std_logic;
SIGNAL \entrada_01[1]~input_o\ : std_logic;
SIGNAL \saida~1_combout\ : std_logic;
SIGNAL \entrada_02[2]~input_o\ : std_logic;
SIGNAL \entrada_01[2]~input_o\ : std_logic;
SIGNAL \saida~2_combout\ : std_logic;
SIGNAL \entrada_01[3]~input_o\ : std_logic;
SIGNAL \entrada_02[3]~input_o\ : std_logic;
SIGNAL \saida~3_combout\ : std_logic;
SIGNAL \entrada_02[4]~input_o\ : std_logic;
SIGNAL \entrada_01[4]~input_o\ : std_logic;
SIGNAL \saida~4_combout\ : std_logic;
SIGNAL \entrada_02[5]~input_o\ : std_logic;
SIGNAL \entrada_01[5]~input_o\ : std_logic;
SIGNAL \saida~5_combout\ : std_logic;
SIGNAL \entrada_02[6]~input_o\ : std_logic;
SIGNAL \entrada_01[6]~input_o\ : std_logic;
SIGNAL \saida~6_combout\ : std_logic;
SIGNAL \entrada_01[7]~input_o\ : std_logic;
SIGNAL \entrada_02[7]~input_o\ : std_logic;
SIGNAL \saida~7_combout\ : std_logic;
SIGNAL \entrada_02[8]~input_o\ : std_logic;
SIGNAL \entrada_01[8]~input_o\ : std_logic;
SIGNAL \saida~8_combout\ : std_logic;
SIGNAL \entrada_01[9]~input_o\ : std_logic;
SIGNAL \entrada_02[9]~input_o\ : std_logic;
SIGNAL \saida~9_combout\ : std_logic;
SIGNAL \entrada_02[10]~input_o\ : std_logic;
SIGNAL \entrada_01[10]~input_o\ : std_logic;
SIGNAL \saida~10_combout\ : std_logic;
SIGNAL \entrada_01[11]~input_o\ : std_logic;
SIGNAL \entrada_02[11]~input_o\ : std_logic;
SIGNAL \saida~11_combout\ : std_logic;
SIGNAL \entrada_02[12]~input_o\ : std_logic;
SIGNAL \entrada_01[12]~input_o\ : std_logic;
SIGNAL \saida~12_combout\ : std_logic;
SIGNAL \entrada_01[13]~input_o\ : std_logic;
SIGNAL \entrada_02[13]~input_o\ : std_logic;
SIGNAL \saida~13_combout\ : std_logic;
SIGNAL \entrada_01[14]~input_o\ : std_logic;
SIGNAL \entrada_02[14]~input_o\ : std_logic;
SIGNAL \saida~14_combout\ : std_logic;
SIGNAL \entrada_01[15]~input_o\ : std_logic;
SIGNAL \entrada_02[15]~input_o\ : std_logic;
SIGNAL \saida~15_combout\ : std_logic;

BEGIN

ww_entrada_01 <= entrada_01;
ww_entrada_02 <= entrada_02;
saida <= ww_saida;
ww_seletor <= seletor;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y4_N16
\saida[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~0_combout\,
	devoe => ww_devoe,
	o => \saida[0]~output_o\);

-- Location: IOOBUF_X0_Y10_N2
\saida[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~1_combout\,
	devoe => ww_devoe,
	o => \saida[1]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\saida[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~2_combout\,
	devoe => ww_devoe,
	o => \saida[2]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\saida[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~3_combout\,
	devoe => ww_devoe,
	o => \saida[3]~output_o\);

-- Location: IOOBUF_X0_Y8_N9
\saida[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~4_combout\,
	devoe => ww_devoe,
	o => \saida[4]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\saida[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~5_combout\,
	devoe => ww_devoe,
	o => \saida[5]~output_o\);

-- Location: IOOBUF_X0_Y5_N23
\saida[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~6_combout\,
	devoe => ww_devoe,
	o => \saida[6]~output_o\);

-- Location: IOOBUF_X0_Y7_N16
\saida[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~7_combout\,
	devoe => ww_devoe,
	o => \saida[7]~output_o\);

-- Location: IOOBUF_X0_Y7_N23
\saida[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~8_combout\,
	devoe => ww_devoe,
	o => \saida[8]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\saida[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~9_combout\,
	devoe => ww_devoe,
	o => \saida[9]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\saida[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~10_combout\,
	devoe => ww_devoe,
	o => \saida[10]~output_o\);

-- Location: IOOBUF_X0_Y9_N2
\saida[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~11_combout\,
	devoe => ww_devoe,
	o => \saida[11]~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\saida[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~12_combout\,
	devoe => ww_devoe,
	o => \saida[12]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\saida[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~13_combout\,
	devoe => ww_devoe,
	o => \saida[13]~output_o\);

-- Location: IOOBUF_X0_Y8_N2
\saida[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~14_combout\,
	devoe => ww_devoe,
	o => \saida[14]~output_o\);

-- Location: IOOBUF_X30_Y24_N2
\saida[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~15_combout\,
	devoe => ww_devoe,
	o => \saida[15]~output_o\);

-- Location: IOIBUF_X0_Y10_N22
\seletor~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_seletor,
	o => \seletor~input_o\);

-- Location: IOIBUF_X34_Y10_N8
\entrada_02[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_02(0),
	o => \entrada_02[0]~input_o\);

-- Location: IOIBUF_X3_Y24_N1
\entrada_01[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_01(0),
	o => \entrada_01[0]~input_o\);

-- Location: LCCOMB_X1_Y5_N8
\saida~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida~0_combout\ = (\seletor~input_o\ & (\entrada_02[0]~input_o\)) # (!\seletor~input_o\ & ((\entrada_01[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor~input_o\,
	datac => \entrada_02[0]~input_o\,
	datad => \entrada_01[0]~input_o\,
	combout => \saida~0_combout\);

-- Location: IOIBUF_X0_Y18_N22
\entrada_02[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_02(1),
	o => \entrada_02[1]~input_o\);

-- Location: IOIBUF_X7_Y0_N15
\entrada_01[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_01(1),
	o => \entrada_01[1]~input_o\);

-- Location: LCCOMB_X1_Y5_N18
\saida~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida~1_combout\ = (\seletor~input_o\ & (\entrada_02[1]~input_o\)) # (!\seletor~input_o\ & ((\entrada_01[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_02[1]~input_o\,
	datac => \entrada_01[1]~input_o\,
	datad => \seletor~input_o\,
	combout => \saida~1_combout\);

-- Location: IOIBUF_X9_Y0_N1
\entrada_02[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_02(2),
	o => \entrada_02[2]~input_o\);

-- Location: IOIBUF_X13_Y0_N1
\entrada_01[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_01(2),
	o => \entrada_01[2]~input_o\);

-- Location: LCCOMB_X1_Y5_N28
\saida~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida~2_combout\ = (\seletor~input_o\ & (\entrada_02[2]~input_o\)) # (!\seletor~input_o\ & ((\entrada_01[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_02[2]~input_o\,
	datac => \seletor~input_o\,
	datad => \entrada_01[2]~input_o\,
	combout => \saida~2_combout\);

-- Location: IOIBUF_X30_Y0_N15
\entrada_01[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_01(3),
	o => \entrada_01[3]~input_o\);

-- Location: IOIBUF_X34_Y16_N8
\entrada_02[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_02(3),
	o => \entrada_02[3]~input_o\);

-- Location: LCCOMB_X1_Y5_N22
\saida~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida~3_combout\ = (\seletor~input_o\ & ((\entrada_02[3]~input_o\))) # (!\seletor~input_o\ & (\entrada_01[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_01[3]~input_o\,
	datab => \entrada_02[3]~input_o\,
	datac => \seletor~input_o\,
	combout => \saida~3_combout\);

-- Location: IOIBUF_X11_Y0_N22
\entrada_02[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_02(4),
	o => \entrada_02[4]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\entrada_01[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_01(4),
	o => \entrada_01[4]~input_o\);

-- Location: LCCOMB_X1_Y5_N16
\saida~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida~4_combout\ = (\seletor~input_o\ & (\entrada_02[4]~input_o\)) # (!\seletor~input_o\ & ((\entrada_01[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor~input_o\,
	datab => \entrada_02[4]~input_o\,
	datac => \entrada_01[4]~input_o\,
	combout => \saida~4_combout\);

-- Location: IOIBUF_X18_Y0_N15
\entrada_02[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_02(5),
	o => \entrada_02[5]~input_o\);

-- Location: IOIBUF_X18_Y0_N22
\entrada_01[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_01(5),
	o => \entrada_01[5]~input_o\);

-- Location: LCCOMB_X1_Y5_N26
\saida~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida~5_combout\ = (\seletor~input_o\ & (\entrada_02[5]~input_o\)) # (!\seletor~input_o\ & ((\entrada_01[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor~input_o\,
	datac => \entrada_02[5]~input_o\,
	datad => \entrada_01[5]~input_o\,
	combout => \saida~5_combout\);

-- Location: IOIBUF_X1_Y0_N1
\entrada_02[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_02(6),
	o => \entrada_02[6]~input_o\);

-- Location: IOIBUF_X34_Y7_N8
\entrada_01[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_01(6),
	o => \entrada_01[6]~input_o\);

-- Location: LCCOMB_X1_Y5_N4
\saida~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida~6_combout\ = (\seletor~input_o\ & (\entrada_02[6]~input_o\)) # (!\seletor~input_o\ & ((\entrada_01[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entrada_02[6]~input_o\,
	datac => \seletor~input_o\,
	datad => \entrada_01[6]~input_o\,
	combout => \saida~6_combout\);

-- Location: IOIBUF_X34_Y4_N22
\entrada_01[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_01(7),
	o => \entrada_01[7]~input_o\);

-- Location: IOIBUF_X32_Y0_N22
\entrada_02[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_02(7),
	o => \entrada_02[7]~input_o\);

-- Location: LCCOMB_X1_Y5_N30
\saida~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida~7_combout\ = (\seletor~input_o\ & ((\entrada_02[7]~input_o\))) # (!\seletor~input_o\ & (\entrada_01[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor~input_o\,
	datac => \entrada_01[7]~input_o\,
	datad => \entrada_02[7]~input_o\,
	combout => \saida~7_combout\);

-- Location: IOIBUF_X9_Y0_N15
\entrada_02[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_02(8),
	o => \entrada_02[8]~input_o\);

-- Location: IOIBUF_X34_Y5_N22
\entrada_01[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_01(8),
	o => \entrada_01[8]~input_o\);

-- Location: LCCOMB_X1_Y5_N24
\saida~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida~8_combout\ = (\seletor~input_o\ & (\entrada_02[8]~input_o\)) # (!\seletor~input_o\ & ((\entrada_01[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_02[8]~input_o\,
	datac => \seletor~input_o\,
	datad => \entrada_01[8]~input_o\,
	combout => \saida~8_combout\);

-- Location: IOIBUF_X32_Y24_N15
\entrada_01[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_01(9),
	o => \entrada_01[9]~input_o\);

-- Location: IOIBUF_X1_Y0_N15
\entrada_02[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_02(9),
	o => \entrada_02[9]~input_o\);

-- Location: LCCOMB_X1_Y5_N2
\saida~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida~9_combout\ = (\seletor~input_o\ & ((\entrada_02[9]~input_o\))) # (!\seletor~input_o\ & (\entrada_01[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_01[9]~input_o\,
	datac => \seletor~input_o\,
	datad => \entrada_02[9]~input_o\,
	combout => \saida~9_combout\);

-- Location: IOIBUF_X34_Y7_N22
\entrada_02[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_02(10),
	o => \entrada_02[10]~input_o\);

-- Location: IOIBUF_X34_Y12_N22
\entrada_01[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_01(10),
	o => \entrada_01[10]~input_o\);

-- Location: LCCOMB_X1_Y5_N12
\saida~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida~10_combout\ = (\seletor~input_o\ & (\entrada_02[10]~input_o\)) # (!\seletor~input_o\ & ((\entrada_01[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entrada_02[10]~input_o\,
	datac => \seletor~input_o\,
	datad => \entrada_01[10]~input_o\,
	combout => \saida~10_combout\);

-- Location: IOIBUF_X9_Y0_N8
\entrada_01[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_01(11),
	o => \entrada_01[11]~input_o\);

-- Location: IOIBUF_X34_Y12_N15
\entrada_02[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_02(11),
	o => \entrada_02[11]~input_o\);

-- Location: LCCOMB_X1_Y5_N14
\saida~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida~11_combout\ = (\seletor~input_o\ & ((\entrada_02[11]~input_o\))) # (!\seletor~input_o\ & (\entrada_01[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entrada_01[11]~input_o\,
	datac => \seletor~input_o\,
	datad => \entrada_02[11]~input_o\,
	combout => \saida~11_combout\);

-- Location: IOIBUF_X34_Y12_N8
\entrada_02[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_02(12),
	o => \entrada_02[12]~input_o\);

-- Location: IOIBUF_X34_Y12_N1
\entrada_01[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_01(12),
	o => \entrada_01[12]~input_o\);

-- Location: LCCOMB_X1_Y5_N0
\saida~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida~12_combout\ = (\seletor~input_o\ & (\entrada_02[12]~input_o\)) # (!\seletor~input_o\ & ((\entrada_01[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_02[12]~input_o\,
	datab => \entrada_01[12]~input_o\,
	datac => \seletor~input_o\,
	combout => \saida~12_combout\);

-- Location: IOIBUF_X34_Y3_N15
\entrada_01[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_01(13),
	o => \entrada_01[13]~input_o\);

-- Location: IOIBUF_X34_Y8_N15
\entrada_02[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_02(13),
	o => \entrada_02[13]~input_o\);

-- Location: LCCOMB_X1_Y5_N10
\saida~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida~13_combout\ = (\seletor~input_o\ & ((\entrada_02[13]~input_o\))) # (!\seletor~input_o\ & (\entrada_01[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor~input_o\,
	datac => \entrada_01[13]~input_o\,
	datad => \entrada_02[13]~input_o\,
	combout => \saida~13_combout\);

-- Location: IOIBUF_X3_Y0_N1
\entrada_01[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_01(14),
	o => \entrada_01[14]~input_o\);

-- Location: IOIBUF_X7_Y0_N22
\entrada_02[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_02(14),
	o => \entrada_02[14]~input_o\);

-- Location: LCCOMB_X1_Y5_N20
\saida~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida~14_combout\ = (\seletor~input_o\ & ((\entrada_02[14]~input_o\))) # (!\seletor~input_o\ & (\entrada_01[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entrada_01[14]~input_o\,
	datac => \seletor~input_o\,
	datad => \entrada_02[14]~input_o\,
	combout => \saida~14_combout\);

-- Location: IOIBUF_X34_Y20_N8
\entrada_01[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_01(15),
	o => \entrada_01[15]~input_o\);

-- Location: IOIBUF_X34_Y16_N1
\entrada_02[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_02(15),
	o => \entrada_02[15]~input_o\);

-- Location: LCCOMB_X32_Y13_N24
\saida~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida~15_combout\ = (\seletor~input_o\ & ((\entrada_02[15]~input_o\))) # (!\seletor~input_o\ & (\entrada_01[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor~input_o\,
	datac => \entrada_01[15]~input_o\,
	datad => \entrada_02[15]~input_o\,
	combout => \saida~15_combout\);

ww_saida(0) <= \saida[0]~output_o\;

ww_saida(1) <= \saida[1]~output_o\;

ww_saida(2) <= \saida[2]~output_o\;

ww_saida(3) <= \saida[3]~output_o\;

ww_saida(4) <= \saida[4]~output_o\;

ww_saida(5) <= \saida[5]~output_o\;

ww_saida(6) <= \saida[6]~output_o\;

ww_saida(7) <= \saida[7]~output_o\;

ww_saida(8) <= \saida[8]~output_o\;

ww_saida(9) <= \saida[9]~output_o\;

ww_saida(10) <= \saida[10]~output_o\;

ww_saida(11) <= \saida[11]~output_o\;

ww_saida(12) <= \saida[12]~output_o\;

ww_saida(13) <= \saida[13]~output_o\;

ww_saida(14) <= \saida[14]~output_o\;

ww_saida(15) <= \saida[15]~output_o\;
END structure;


