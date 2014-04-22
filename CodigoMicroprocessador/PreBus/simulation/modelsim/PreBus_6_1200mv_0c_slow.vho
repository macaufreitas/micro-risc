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

-- DATE "03/19/2014 17:26:50"

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

ENTITY 	PreBus IS
    PORT (
	my_in : IN std_logic_vector(15 DOWNTO 0);
	sel : IN std_logic;
	my_out : OUT std_logic_vector(15 DOWNTO 0)
	);
END PreBus;

-- Design Ports Information
-- my_out[0]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- my_out[1]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- my_out[2]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- my_out[3]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- my_out[4]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- my_out[5]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- my_out[6]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- my_out[7]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- my_out[8]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- my_out[9]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- my_out[10]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- my_out[11]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- my_out[12]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- my_out[13]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- my_out[14]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- my_out[15]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- my_in[0]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- my_in[1]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- my_in[2]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- my_in[3]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- my_in[4]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- my_in[5]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- my_in[6]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- my_in[7]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- my_in[8]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- my_in[9]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- my_in[10]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- my_in[11]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- my_in[12]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- my_in[13]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- my_in[14]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- my_in[15]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF PreBus IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_my_in : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_sel : std_logic;
SIGNAL ww_my_out : std_logic_vector(15 DOWNTO 0);
SIGNAL \my_out[0]~output_o\ : std_logic;
SIGNAL \my_out[1]~output_o\ : std_logic;
SIGNAL \my_out[2]~output_o\ : std_logic;
SIGNAL \my_out[3]~output_o\ : std_logic;
SIGNAL \my_out[4]~output_o\ : std_logic;
SIGNAL \my_out[5]~output_o\ : std_logic;
SIGNAL \my_out[6]~output_o\ : std_logic;
SIGNAL \my_out[7]~output_o\ : std_logic;
SIGNAL \my_out[8]~output_o\ : std_logic;
SIGNAL \my_out[9]~output_o\ : std_logic;
SIGNAL \my_out[10]~output_o\ : std_logic;
SIGNAL \my_out[11]~output_o\ : std_logic;
SIGNAL \my_out[12]~output_o\ : std_logic;
SIGNAL \my_out[13]~output_o\ : std_logic;
SIGNAL \my_out[14]~output_o\ : std_logic;
SIGNAL \my_out[15]~output_o\ : std_logic;
SIGNAL \my_in[0]~input_o\ : std_logic;
SIGNAL \sel~input_o\ : std_logic;
SIGNAL \my_in[1]~input_o\ : std_logic;
SIGNAL \my_in[2]~input_o\ : std_logic;
SIGNAL \my_in[3]~input_o\ : std_logic;
SIGNAL \my_in[4]~input_o\ : std_logic;
SIGNAL \my_in[5]~input_o\ : std_logic;
SIGNAL \my_in[6]~input_o\ : std_logic;
SIGNAL \my_in[7]~input_o\ : std_logic;
SIGNAL \my_in[8]~input_o\ : std_logic;
SIGNAL \my_in[9]~input_o\ : std_logic;
SIGNAL \my_in[10]~input_o\ : std_logic;
SIGNAL \my_in[11]~input_o\ : std_logic;
SIGNAL \my_in[12]~input_o\ : std_logic;
SIGNAL \my_in[13]~input_o\ : std_logic;
SIGNAL \my_in[14]~input_o\ : std_logic;
SIGNAL \my_in[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_sel~input_o\ : std_logic;

BEGIN

ww_my_in <= my_in;
ww_sel <= sel;
my_out <= ww_my_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_sel~input_o\ <= NOT \sel~input_o\;

-- Location: IOOBUF_X14_Y0_N9
\my_out[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \my_in[0]~input_o\,
	oe => \ALT_INV_sel~input_o\,
	devoe => ww_devoe,
	o => \my_out[0]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\my_out[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \my_in[1]~input_o\,
	oe => \ALT_INV_sel~input_o\,
	devoe => ww_devoe,
	o => \my_out[1]~output_o\);

-- Location: IOOBUF_X33_Y27_N9
\my_out[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \my_in[2]~input_o\,
	oe => \ALT_INV_sel~input_o\,
	devoe => ww_devoe,
	o => \my_out[2]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\my_out[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \my_in[3]~input_o\,
	oe => \ALT_INV_sel~input_o\,
	devoe => ww_devoe,
	o => \my_out[3]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\my_out[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \my_in[4]~input_o\,
	oe => \ALT_INV_sel~input_o\,
	devoe => ww_devoe,
	o => \my_out[4]~output_o\);

-- Location: IOOBUF_X33_Y14_N2
\my_out[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \my_in[5]~input_o\,
	oe => \ALT_INV_sel~input_o\,
	devoe => ww_devoe,
	o => \my_out[5]~output_o\);

-- Location: IOOBUF_X24_Y31_N2
\my_out[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \my_in[6]~input_o\,
	oe => \ALT_INV_sel~input_o\,
	devoe => ww_devoe,
	o => \my_out[6]~output_o\);

-- Location: IOOBUF_X12_Y0_N2
\my_out[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \my_in[7]~input_o\,
	oe => \ALT_INV_sel~input_o\,
	devoe => ww_devoe,
	o => \my_out[7]~output_o\);

-- Location: IOOBUF_X33_Y24_N9
\my_out[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \my_in[8]~input_o\,
	oe => \ALT_INV_sel~input_o\,
	devoe => ww_devoe,
	o => \my_out[8]~output_o\);

-- Location: IOOBUF_X10_Y31_N2
\my_out[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \my_in[9]~input_o\,
	oe => \ALT_INV_sel~input_o\,
	devoe => ww_devoe,
	o => \my_out[9]~output_o\);

-- Location: IOOBUF_X10_Y0_N9
\my_out[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \my_in[10]~input_o\,
	oe => \ALT_INV_sel~input_o\,
	devoe => ww_devoe,
	o => \my_out[10]~output_o\);

-- Location: IOOBUF_X22_Y31_N9
\my_out[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \my_in[11]~input_o\,
	oe => \ALT_INV_sel~input_o\,
	devoe => ww_devoe,
	o => \my_out[11]~output_o\);

-- Location: IOOBUF_X33_Y11_N2
\my_out[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \my_in[12]~input_o\,
	oe => \ALT_INV_sel~input_o\,
	devoe => ww_devoe,
	o => \my_out[12]~output_o\);

-- Location: IOOBUF_X20_Y31_N2
\my_out[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \my_in[13]~input_o\,
	oe => \ALT_INV_sel~input_o\,
	devoe => ww_devoe,
	o => \my_out[13]~output_o\);

-- Location: IOOBUF_X33_Y25_N9
\my_out[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \my_in[14]~input_o\,
	oe => \ALT_INV_sel~input_o\,
	devoe => ww_devoe,
	o => \my_out[14]~output_o\);

-- Location: IOOBUF_X24_Y31_N9
\my_out[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \my_in[15]~input_o\,
	oe => \ALT_INV_sel~input_o\,
	devoe => ww_devoe,
	o => \my_out[15]~output_o\);

-- Location: IOIBUF_X16_Y0_N8
\my_in[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_my_in(0),
	o => \my_in[0]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\sel~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel,
	o => \sel~input_o\);

-- Location: IOIBUF_X29_Y0_N8
\my_in[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_my_in(1),
	o => \my_in[1]~input_o\);

-- Location: IOIBUF_X33_Y27_N1
\my_in[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_my_in(2),
	o => \my_in[2]~input_o\);

-- Location: IOIBUF_X26_Y0_N8
\my_in[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_my_in(3),
	o => \my_in[3]~input_o\);

-- Location: IOIBUF_X20_Y0_N1
\my_in[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_my_in(4),
	o => \my_in[4]~input_o\);

-- Location: IOIBUF_X33_Y14_N8
\my_in[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_my_in(5),
	o => \my_in[5]~input_o\);

-- Location: IOIBUF_X26_Y31_N8
\my_in[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_my_in(6),
	o => \my_in[6]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\my_in[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_my_in(7),
	o => \my_in[7]~input_o\);

-- Location: IOIBUF_X33_Y24_N1
\my_in[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_my_in(8),
	o => \my_in[8]~input_o\);

-- Location: IOIBUF_X12_Y31_N1
\my_in[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_my_in(9),
	o => \my_in[9]~input_o\);

-- Location: IOIBUF_X12_Y0_N8
\my_in[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_my_in(10),
	o => \my_in[10]~input_o\);

-- Location: IOIBUF_X22_Y31_N1
\my_in[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_my_in(11),
	o => \my_in[11]~input_o\);

-- Location: IOIBUF_X33_Y11_N8
\my_in[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_my_in(12),
	o => \my_in[12]~input_o\);

-- Location: IOIBUF_X20_Y31_N8
\my_in[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_my_in(13),
	o => \my_in[13]~input_o\);

-- Location: IOIBUF_X33_Y25_N1
\my_in[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_my_in(14),
	o => \my_in[14]~input_o\);

-- Location: IOIBUF_X26_Y31_N1
\my_in[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_my_in(15),
	o => \my_in[15]~input_o\);

ww_my_out(0) <= \my_out[0]~output_o\;

ww_my_out(1) <= \my_out[1]~output_o\;

ww_my_out(2) <= \my_out[2]~output_o\;

ww_my_out(3) <= \my_out[3]~output_o\;

ww_my_out(4) <= \my_out[4]~output_o\;

ww_my_out(5) <= \my_out[5]~output_o\;

ww_my_out(6) <= \my_out[6]~output_o\;

ww_my_out(7) <= \my_out[7]~output_o\;

ww_my_out(8) <= \my_out[8]~output_o\;

ww_my_out(9) <= \my_out[9]~output_o\;

ww_my_out(10) <= \my_out[10]~output_o\;

ww_my_out(11) <= \my_out[11]~output_o\;

ww_my_out(12) <= \my_out[12]~output_o\;

ww_my_out(13) <= \my_out[13]~output_o\;

ww_my_out(14) <= \my_out[14]~output_o\;

ww_my_out(15) <= \my_out[15]~output_o\;
END structure;


