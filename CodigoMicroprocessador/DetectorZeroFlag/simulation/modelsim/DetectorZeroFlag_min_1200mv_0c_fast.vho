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

-- DATE "04/09/2014 23:31:51"

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

ENTITY 	DetectorZeroFlag IS
    PORT (
	resultado : IN std_logic_vector(15 DOWNTO 0);
	saida : BUFFER std_logic
	);
END DetectorZeroFlag;

-- Design Ports Information
-- saida	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[0]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[1]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[2]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[3]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[4]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[5]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[6]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[7]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[8]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[9]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[10]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[11]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[12]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[13]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[14]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[15]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DetectorZeroFlag IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_resultado : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_saida : std_logic;
SIGNAL \saida~output_o\ : std_logic;
SIGNAL \resultado[10]~input_o\ : std_logic;
SIGNAL \resultado[11]~input_o\ : std_logic;
SIGNAL \resultado[9]~input_o\ : std_logic;
SIGNAL \resultado[8]~input_o\ : std_logic;
SIGNAL \saida~2_combout\ : std_logic;
SIGNAL \resultado[2]~input_o\ : std_logic;
SIGNAL \resultado[3]~input_o\ : std_logic;
SIGNAL \resultado[0]~input_o\ : std_logic;
SIGNAL \resultado[1]~input_o\ : std_logic;
SIGNAL \saida~0_combout\ : std_logic;
SIGNAL \resultado[4]~input_o\ : std_logic;
SIGNAL \resultado[5]~input_o\ : std_logic;
SIGNAL \resultado[6]~input_o\ : std_logic;
SIGNAL \resultado[7]~input_o\ : std_logic;
SIGNAL \saida~1_combout\ : std_logic;
SIGNAL \resultado[13]~input_o\ : std_logic;
SIGNAL \resultado[14]~input_o\ : std_logic;
SIGNAL \resultado[12]~input_o\ : std_logic;
SIGNAL \resultado[15]~input_o\ : std_logic;
SIGNAL \saida~3_combout\ : std_logic;
SIGNAL \saida~4_combout\ : std_logic;
SIGNAL \ALT_INV_saida~4_combout\ : std_logic;

BEGIN

ww_resultado <= resultado;
saida <= ww_saida;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_saida~4_combout\ <= NOT \saida~4_combout\;

-- Location: IOOBUF_X14_Y31_N9
\saida~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_saida~4_combout\,
	devoe => ww_devoe,
	o => \saida~output_o\);

-- Location: IOIBUF_X12_Y0_N8
\resultado[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_resultado(10),
	o => \resultado[10]~input_o\);

-- Location: IOIBUF_X8_Y0_N8
\resultado[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_resultado(11),
	o => \resultado[11]~input_o\);

-- Location: IOIBUF_X29_Y0_N1
\resultado[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_resultado(9),
	o => \resultado[9]~input_o\);

-- Location: IOIBUF_X31_Y0_N1
\resultado[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_resultado(8),
	o => \resultado[8]~input_o\);

-- Location: LCCOMB_X11_Y1_N12
\saida~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida~2_combout\ = (\resultado[10]~input_o\) # ((\resultado[11]~input_o\) # ((\resultado[9]~input_o\) # (\resultado[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resultado[10]~input_o\,
	datab => \resultado[11]~input_o\,
	datac => \resultado[9]~input_o\,
	datad => \resultado[8]~input_o\,
	combout => \saida~2_combout\);

-- Location: IOIBUF_X10_Y0_N8
\resultado[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_resultado(2),
	o => \resultado[2]~input_o\);

-- Location: IOIBUF_X8_Y0_N1
\resultado[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_resultado(3),
	o => \resultado[3]~input_o\);

-- Location: IOIBUF_X24_Y31_N8
\resultado[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_resultado(0),
	o => \resultado[0]~input_o\);

-- Location: IOIBUF_X14_Y31_N1
\resultado[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_resultado(1),
	o => \resultado[1]~input_o\);

-- Location: LCCOMB_X11_Y1_N0
\saida~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida~0_combout\ = (\resultado[2]~input_o\) # ((\resultado[3]~input_o\) # ((\resultado[0]~input_o\) # (\resultado[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resultado[2]~input_o\,
	datab => \resultado[3]~input_o\,
	datac => \resultado[0]~input_o\,
	datad => \resultado[1]~input_o\,
	combout => \saida~0_combout\);

-- Location: IOIBUF_X20_Y0_N8
\resultado[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_resultado(4),
	o => \resultado[4]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\resultado[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_resultado(5),
	o => \resultado[5]~input_o\);

-- Location: IOIBUF_X29_Y0_N8
\resultado[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_resultado(6),
	o => \resultado[6]~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\resultado[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_resultado(7),
	o => \resultado[7]~input_o\);

-- Location: LCCOMB_X11_Y1_N2
\saida~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida~1_combout\ = (\resultado[4]~input_o\) # ((\resultado[5]~input_o\) # ((\resultado[6]~input_o\) # (\resultado[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resultado[4]~input_o\,
	datab => \resultado[5]~input_o\,
	datac => \resultado[6]~input_o\,
	datad => \resultado[7]~input_o\,
	combout => \saida~1_combout\);

-- Location: IOIBUF_X14_Y0_N8
\resultado[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_resultado(13),
	o => \resultado[13]~input_o\);

-- Location: IOIBUF_X12_Y0_N1
\resultado[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_resultado(14),
	o => \resultado[14]~input_o\);

-- Location: IOIBUF_X20_Y31_N8
\resultado[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_resultado(12),
	o => \resultado[12]~input_o\);

-- Location: IOIBUF_X16_Y31_N1
\resultado[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_resultado(15),
	o => \resultado[15]~input_o\);

-- Location: LCCOMB_X11_Y1_N6
\saida~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida~3_combout\ = (\resultado[13]~input_o\) # ((\resultado[14]~input_o\) # ((\resultado[12]~input_o\) # (\resultado[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resultado[13]~input_o\,
	datab => \resultado[14]~input_o\,
	datac => \resultado[12]~input_o\,
	datad => \resultado[15]~input_o\,
	combout => \saida~3_combout\);

-- Location: LCCOMB_X11_Y1_N24
\saida~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida~4_combout\ = (\saida~2_combout\) # ((\saida~0_combout\) # ((\saida~1_combout\) # (\saida~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saida~2_combout\,
	datab => \saida~0_combout\,
	datac => \saida~1_combout\,
	datad => \saida~3_combout\,
	combout => \saida~4_combout\);

ww_saida <= \saida~output_o\;
END structure;


