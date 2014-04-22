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

-- DATE "04/15/2014 21:00:34"

-- 
-- Device: Altera EP3C5F256C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
LIBRARY STD;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE STD.STANDARD.ALL;

ENTITY 	memoriaROM IS
    PORT (
	clk : IN std_logic;
	endereco : IN STD.STANDARD.integer range 0 TO 255;
	habilita : IN std_logic;
	saida : OUT std_logic_vector(15 DOWNTO 0)
	);
END memoriaROM;

-- Design Ports Information
-- saida[0]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[1]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[2]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[3]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[4]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[5]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[6]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[7]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[8]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[9]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[10]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[11]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[12]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[13]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[14]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[15]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endereco[1]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endereco[2]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endereco[3]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endereco[4]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endereco[5]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endereco[6]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endereco[7]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endereco[0]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- habilita	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF memoriaROM IS
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
SIGNAL ww_endereco : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_habilita : std_logic;
SIGNAL ww_saida : std_logic_vector(15 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \endereco[0]~input_o\ : std_logic;
SIGNAL \endereco[5]~input_o\ : std_logic;
SIGNAL \endereco[3]~input_o\ : std_logic;
SIGNAL \endereco[4]~input_o\ : std_logic;
SIGNAL \endereco[1]~input_o\ : std_logic;
SIGNAL \endereco[2]~input_o\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \endereco[6]~input_o\ : std_logic;
SIGNAL \endereco[7]~input_o\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \saida[0]~reg0feeder_combout\ : std_logic;
SIGNAL \habilita~input_o\ : std_logic;
SIGNAL \saida[0]~reg0_q\ : std_logic;
SIGNAL \saida[1]~reg0feeder_combout\ : std_logic;
SIGNAL \saida[1]~reg0_q\ : std_logic;
SIGNAL \saida[2]~reg0feeder_combout\ : std_logic;
SIGNAL \saida[2]~reg0_q\ : std_logic;
SIGNAL \saida[3]~reg0feeder_combout\ : std_logic;
SIGNAL \saida[3]~reg0_q\ : std_logic;
SIGNAL \saida[4]~reg0feeder_combout\ : std_logic;
SIGNAL \saida[4]~reg0_q\ : std_logic;
SIGNAL \saida[5]~reg0_q\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \saida[8]~reg0_q\ : std_logic;
SIGNAL \saida[9]~reg0feeder_combout\ : std_logic;
SIGNAL \saida[9]~reg0_q\ : std_logic;
SIGNAL \saida[10]~reg0feeder_combout\ : std_logic;
SIGNAL \saida[10]~reg0_q\ : std_logic;
SIGNAL \saida[11]~reg0feeder_combout\ : std_logic;
SIGNAL \saida[11]~reg0_q\ : std_logic;
SIGNAL \saida[12]~reg0feeder_combout\ : std_logic;
SIGNAL \saida[12]~reg0_q\ : std_logic;
SIGNAL \saida[13]~reg0feeder_combout\ : std_logic;
SIGNAL \saida[13]~reg0_q\ : std_logic;
SIGNAL \saida[14]~reg0_q\ : std_logic;
SIGNAL \saida[15]~reg0_q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_endereco <= IEEE.STD_LOGIC_ARITH.CONV_STD_LOGIC_VECTOR(endereco, 8);
ww_habilita <= habilita;
saida <= ww_saida;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X0_Y5_N23
\saida[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida[0]~reg0_q\,
	devoe => ww_devoe,
	o => \saida[0]~output_o\);

-- Location: IOOBUF_X0_Y4_N16
\saida[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida[1]~reg0_q\,
	devoe => ww_devoe,
	o => \saida[1]~output_o\);

-- Location: IOOBUF_X34_Y17_N23
\saida[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida[2]~reg0_q\,
	devoe => ww_devoe,
	o => \saida[2]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\saida[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida[3]~reg0_q\,
	devoe => ww_devoe,
	o => \saida[3]~output_o\);

-- Location: IOOBUF_X0_Y19_N16
\saida[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida[4]~reg0_q\,
	devoe => ww_devoe,
	o => \saida[4]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\saida[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida[5]~reg0_q\,
	devoe => ww_devoe,
	o => \saida[5]~output_o\);

-- Location: IOOBUF_X0_Y9_N2
\saida[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \saida[6]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\saida[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \saida[7]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\saida[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida[8]~reg0_q\,
	devoe => ww_devoe,
	o => \saida[8]~output_o\);

-- Location: IOOBUF_X0_Y8_N2
\saida[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida[9]~reg0_q\,
	devoe => ww_devoe,
	o => \saida[9]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\saida[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida[10]~reg0_q\,
	devoe => ww_devoe,
	o => \saida[10]~output_o\);

-- Location: IOOBUF_X0_Y10_N16
\saida[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida[11]~reg0_q\,
	devoe => ww_devoe,
	o => \saida[11]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\saida[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida[12]~reg0_q\,
	devoe => ww_devoe,
	o => \saida[12]~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\saida[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida[13]~reg0_q\,
	devoe => ww_devoe,
	o => \saida[13]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\saida[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida[14]~reg0_q\,
	devoe => ww_devoe,
	o => \saida[14]~output_o\);

-- Location: IOOBUF_X0_Y7_N23
\saida[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida[15]~reg0_q\,
	devoe => ww_devoe,
	o => \saida[15]~output_o\);

-- Location: IOIBUF_X0_Y11_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cycloneiii_clkctrl
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

-- Location: IOIBUF_X0_Y6_N15
\endereco[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_endereco(0),
	o => \endereco[0]~input_o\);

-- Location: IOIBUF_X0_Y10_N1
\endereco[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_endereco(5),
	o => \endereco[5]~input_o\);

-- Location: IOIBUF_X0_Y4_N22
\endereco[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_endereco(3),
	o => \endereco[3]~input_o\);

-- Location: IOIBUF_X0_Y8_N8
\endereco[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_endereco(4),
	o => \endereco[4]~input_o\);

-- Location: IOIBUF_X0_Y23_N1
\endereco[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_endereco(1),
	o => \endereco[1]~input_o\);

-- Location: IOIBUF_X0_Y7_N15
\endereco[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_endereco(2),
	o => \endereco[2]~input_o\);

-- Location: LCCOMB_X1_Y4_N20
\Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (!\endereco[3]~input_o\ & (!\endereco[4]~input_o\ & (!\endereco[1]~input_o\ & !\endereco[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \endereco[3]~input_o\,
	datab => \endereco[4]~input_o\,
	datac => \endereco[1]~input_o\,
	datad => \endereco[2]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: IOIBUF_X0_Y10_N22
\endereco[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_endereco(6),
	o => \endereco[6]~input_o\);

-- Location: IOIBUF_X0_Y19_N1
\endereco[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_endereco(7),
	o => \endereco[7]~input_o\);

-- Location: LCCOMB_X1_Y4_N16
\Mux2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\endereco[5]~input_o\) # (((\endereco[6]~input_o\) # (\endereco[7]~input_o\)) # (!\Mux2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \endereco[5]~input_o\,
	datab => \Mux2~0_combout\,
	datac => \endereco[6]~input_o\,
	datad => \endereco[7]~input_o\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X1_Y4_N10
\Mux2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\endereco[0]~input_o\) # (\Mux2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \endereco[0]~input_o\,
	datad => \Mux2~1_combout\,
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X1_Y4_N0
\saida[0]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida[0]~reg0feeder_combout\ = \Mux2~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux2~2_combout\,
	combout => \saida[0]~reg0feeder_combout\);

-- Location: IOIBUF_X0_Y8_N15
\habilita~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_habilita,
	o => \habilita~input_o\);

-- Location: FF_X1_Y4_N1
\saida[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \saida[0]~reg0feeder_combout\,
	ena => \habilita~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida[0]~reg0_q\);

-- Location: LCCOMB_X1_Y4_N2
\saida[1]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida[1]~reg0feeder_combout\ = \Mux2~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux2~2_combout\,
	combout => \saida[1]~reg0feeder_combout\);

-- Location: FF_X1_Y4_N3
\saida[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \saida[1]~reg0feeder_combout\,
	ena => \habilita~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida[1]~reg0_q\);

-- Location: LCCOMB_X1_Y4_N12
\saida[2]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida[2]~reg0feeder_combout\ = \Mux2~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux2~2_combout\,
	combout => \saida[2]~reg0feeder_combout\);

-- Location: FF_X1_Y4_N13
\saida[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \saida[2]~reg0feeder_combout\,
	ena => \habilita~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida[2]~reg0_q\);

-- Location: LCCOMB_X1_Y4_N6
\saida[3]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida[3]~reg0feeder_combout\ = \Mux2~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux2~2_combout\,
	combout => \saida[3]~reg0feeder_combout\);

-- Location: FF_X1_Y4_N7
\saida[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \saida[3]~reg0feeder_combout\,
	ena => \habilita~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida[3]~reg0_q\);

-- Location: LCCOMB_X1_Y4_N8
\saida[4]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida[4]~reg0feeder_combout\ = \Mux2~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux2~2_combout\,
	combout => \saida[4]~reg0feeder_combout\);

-- Location: FF_X1_Y4_N9
\saida[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \saida[4]~reg0feeder_combout\,
	ena => \habilita~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida[4]~reg0_q\);

-- Location: FF_X1_Y4_N11
\saida[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux2~2_combout\,
	ena => \habilita~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida[5]~reg0_q\);

-- Location: LCCOMB_X1_Y4_N26
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\Mux2~1_combout\) # (!\endereco[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \endereco[0]~input_o\,
	datad => \Mux2~1_combout\,
	combout => \Mux0~0_combout\);

-- Location: FF_X1_Y4_N5
\saida[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux0~0_combout\,
	sload => VCC,
	ena => \habilita~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida[8]~reg0_q\);

-- Location: LCCOMB_X1_Y4_N30
\saida[9]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida[9]~reg0feeder_combout\ = \Mux2~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux2~1_combout\,
	combout => \saida[9]~reg0feeder_combout\);

-- Location: FF_X1_Y4_N31
\saida[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \saida[9]~reg0feeder_combout\,
	ena => \habilita~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida[9]~reg0_q\);

-- Location: LCCOMB_X1_Y4_N24
\saida[10]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida[10]~reg0feeder_combout\ = \Mux2~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux2~1_combout\,
	combout => \saida[10]~reg0feeder_combout\);

-- Location: FF_X1_Y4_N25
\saida[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \saida[10]~reg0feeder_combout\,
	ena => \habilita~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida[10]~reg0_q\);

-- Location: LCCOMB_X1_Y4_N18
\saida[11]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida[11]~reg0feeder_combout\ = \Mux2~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux2~1_combout\,
	combout => \saida[11]~reg0feeder_combout\);

-- Location: FF_X1_Y4_N19
\saida[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \saida[11]~reg0feeder_combout\,
	ena => \habilita~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida[11]~reg0_q\);

-- Location: LCCOMB_X1_Y4_N28
\saida[12]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida[12]~reg0feeder_combout\ = \Mux2~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux2~1_combout\,
	combout => \saida[12]~reg0feeder_combout\);

-- Location: FF_X1_Y4_N29
\saida[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \saida[12]~reg0feeder_combout\,
	ena => \habilita~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida[12]~reg0_q\);

-- Location: LCCOMB_X1_Y4_N14
\saida[13]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saida[13]~reg0feeder_combout\ = \Mux2~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux2~1_combout\,
	combout => \saida[13]~reg0feeder_combout\);

-- Location: FF_X1_Y4_N15
\saida[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \saida[13]~reg0feeder_combout\,
	ena => \habilita~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida[13]~reg0_q\);

-- Location: FF_X1_Y4_N17
\saida[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux2~1_combout\,
	ena => \habilita~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida[14]~reg0_q\);

-- Location: FF_X1_Y4_N27
\saida[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux0~0_combout\,
	ena => \habilita~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida[15]~reg0_q\);

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


