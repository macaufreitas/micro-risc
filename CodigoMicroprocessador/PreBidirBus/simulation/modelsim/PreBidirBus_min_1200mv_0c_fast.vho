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

-- DATE "03/19/2014 17:22:25"

-- 
-- Device: Altera EP4CGX22CF19C6 Package FBGA324
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	PreBidirBus IS
    PORT (
	bidir : INOUT std_logic_vector(15 DOWNTO 0);
	oe : IN std_logic;
	clk : IN std_logic;
	inp : IN std_logic_vector(15 DOWNTO 0);
	outp : OUT std_logic_vector(15 DOWNTO 0)
	);
END PreBidirBus;

-- Design Ports Information
-- outp[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outp[1]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outp[2]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outp[3]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outp[4]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outp[5]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outp[6]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outp[7]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outp[8]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outp[9]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outp[10]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outp[11]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outp[12]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outp[13]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outp[14]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outp[15]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bidir[0]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bidir[1]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bidir[2]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bidir[3]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bidir[4]	=>  Location: PIN_M17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bidir[5]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bidir[6]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bidir[7]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bidir[8]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bidir[9]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bidir[10]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bidir[11]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bidir[12]	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bidir[13]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bidir[14]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bidir[15]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oe	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inp[0]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inp[1]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inp[2]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inp[3]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inp[4]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inp[5]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inp[6]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inp[7]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inp[8]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inp[9]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inp[10]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inp[11]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inp[12]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inp[13]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inp[14]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inp[15]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF PreBidirBus IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_oe : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_inp : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_outp : std_logic_vector(15 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \bidir[0]~output_o\ : std_logic;
SIGNAL \bidir[1]~output_o\ : std_logic;
SIGNAL \bidir[2]~output_o\ : std_logic;
SIGNAL \bidir[3]~output_o\ : std_logic;
SIGNAL \bidir[4]~output_o\ : std_logic;
SIGNAL \bidir[5]~output_o\ : std_logic;
SIGNAL \bidir[6]~output_o\ : std_logic;
SIGNAL \bidir[7]~output_o\ : std_logic;
SIGNAL \bidir[8]~output_o\ : std_logic;
SIGNAL \bidir[9]~output_o\ : std_logic;
SIGNAL \bidir[10]~output_o\ : std_logic;
SIGNAL \bidir[11]~output_o\ : std_logic;
SIGNAL \bidir[12]~output_o\ : std_logic;
SIGNAL \bidir[13]~output_o\ : std_logic;
SIGNAL \bidir[14]~output_o\ : std_logic;
SIGNAL \bidir[15]~output_o\ : std_logic;
SIGNAL \outp[0]~output_o\ : std_logic;
SIGNAL \outp[1]~output_o\ : std_logic;
SIGNAL \outp[2]~output_o\ : std_logic;
SIGNAL \outp[3]~output_o\ : std_logic;
SIGNAL \outp[4]~output_o\ : std_logic;
SIGNAL \outp[5]~output_o\ : std_logic;
SIGNAL \outp[6]~output_o\ : std_logic;
SIGNAL \outp[7]~output_o\ : std_logic;
SIGNAL \outp[8]~output_o\ : std_logic;
SIGNAL \outp[9]~output_o\ : std_logic;
SIGNAL \outp[10]~output_o\ : std_logic;
SIGNAL \outp[11]~output_o\ : std_logic;
SIGNAL \outp[12]~output_o\ : std_logic;
SIGNAL \outp[13]~output_o\ : std_logic;
SIGNAL \outp[14]~output_o\ : std_logic;
SIGNAL \outp[15]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \inp[0]~input_o\ : std_logic;
SIGNAL \a[0]~feeder_combout\ : std_logic;
SIGNAL \oe~input_o\ : std_logic;
SIGNAL \inp[1]~input_o\ : std_logic;
SIGNAL \a[1]~feeder_combout\ : std_logic;
SIGNAL \inp[2]~input_o\ : std_logic;
SIGNAL \a[2]~feeder_combout\ : std_logic;
SIGNAL \inp[3]~input_o\ : std_logic;
SIGNAL \a[3]~feeder_combout\ : std_logic;
SIGNAL \inp[4]~input_o\ : std_logic;
SIGNAL \a[4]~feeder_combout\ : std_logic;
SIGNAL \inp[5]~input_o\ : std_logic;
SIGNAL \a[5]~feeder_combout\ : std_logic;
SIGNAL \inp[6]~input_o\ : std_logic;
SIGNAL \a[6]~feeder_combout\ : std_logic;
SIGNAL \inp[7]~input_o\ : std_logic;
SIGNAL \a[7]~feeder_combout\ : std_logic;
SIGNAL \inp[8]~input_o\ : std_logic;
SIGNAL \a[8]~feeder_combout\ : std_logic;
SIGNAL \inp[9]~input_o\ : std_logic;
SIGNAL \a[9]~feeder_combout\ : std_logic;
SIGNAL \inp[10]~input_o\ : std_logic;
SIGNAL \inp[11]~input_o\ : std_logic;
SIGNAL \inp[12]~input_o\ : std_logic;
SIGNAL \a[12]~feeder_combout\ : std_logic;
SIGNAL \inp[13]~input_o\ : std_logic;
SIGNAL \a[13]~feeder_combout\ : std_logic;
SIGNAL \inp[14]~input_o\ : std_logic;
SIGNAL \inp[15]~input_o\ : std_logic;
SIGNAL \a[15]~feeder_combout\ : std_logic;
SIGNAL \bidir[0]~input_o\ : std_logic;
SIGNAL \outp[0]~reg0_q\ : std_logic;
SIGNAL \bidir[1]~input_o\ : std_logic;
SIGNAL \outp[1]~reg0_q\ : std_logic;
SIGNAL \bidir[2]~input_o\ : std_logic;
SIGNAL \outp[2]~reg0feeder_combout\ : std_logic;
SIGNAL \outp[2]~reg0_q\ : std_logic;
SIGNAL \bidir[3]~input_o\ : std_logic;
SIGNAL \outp[3]~reg0feeder_combout\ : std_logic;
SIGNAL \outp[3]~reg0_q\ : std_logic;
SIGNAL \bidir[4]~input_o\ : std_logic;
SIGNAL \outp[4]~reg0feeder_combout\ : std_logic;
SIGNAL \outp[4]~reg0_q\ : std_logic;
SIGNAL \bidir[5]~input_o\ : std_logic;
SIGNAL \outp[5]~reg0_q\ : std_logic;
SIGNAL \bidir[6]~input_o\ : std_logic;
SIGNAL \outp[6]~reg0_q\ : std_logic;
SIGNAL \bidir[7]~input_o\ : std_logic;
SIGNAL \outp[7]~reg0feeder_combout\ : std_logic;
SIGNAL \outp[7]~reg0_q\ : std_logic;
SIGNAL \bidir[8]~input_o\ : std_logic;
SIGNAL \outp[8]~reg0feeder_combout\ : std_logic;
SIGNAL \outp[8]~reg0_q\ : std_logic;
SIGNAL \bidir[9]~input_o\ : std_logic;
SIGNAL \outp[9]~reg0_q\ : std_logic;
SIGNAL \bidir[10]~input_o\ : std_logic;
SIGNAL \outp[10]~reg0feeder_combout\ : std_logic;
SIGNAL \outp[10]~reg0_q\ : std_logic;
SIGNAL \bidir[11]~input_o\ : std_logic;
SIGNAL \outp[11]~reg0_q\ : std_logic;
SIGNAL \bidir[12]~input_o\ : std_logic;
SIGNAL \outp[12]~reg0feeder_combout\ : std_logic;
SIGNAL \outp[12]~reg0_q\ : std_logic;
SIGNAL \bidir[13]~input_o\ : std_logic;
SIGNAL \outp[13]~reg0feeder_combout\ : std_logic;
SIGNAL \outp[13]~reg0_q\ : std_logic;
SIGNAL \bidir[14]~input_o\ : std_logic;
SIGNAL \outp[14]~reg0feeder_combout\ : std_logic;
SIGNAL \outp[14]~reg0_q\ : std_logic;
SIGNAL \bidir[15]~input_o\ : std_logic;
SIGNAL \outp[15]~reg0feeder_combout\ : std_logic;
SIGNAL \outp[15]~reg0_q\ : std_logic;
SIGNAL a : std_logic_vector(15 DOWNTO 0);

BEGIN

ww_oe <= oe;
ww_clk <= clk;
ww_inp <= inp;
outp <= ww_outp;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X52_Y19_N9
\bidir[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => a(0),
	oe => \oe~input_o\,
	devoe => ww_devoe,
	o => \bidir[0]~output_o\);

-- Location: IOOBUF_X48_Y41_N2
\bidir[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => a(1),
	oe => \oe~input_o\,
	devoe => ww_devoe,
	o => \bidir[1]~output_o\);

-- Location: IOOBUF_X52_Y32_N23
\bidir[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => a(2),
	oe => \oe~input_o\,
	devoe => ww_devoe,
	o => \bidir[2]~output_o\);

-- Location: IOOBUF_X41_Y41_N23
\bidir[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => a(3),
	oe => \oe~input_o\,
	devoe => ww_devoe,
	o => \bidir[3]~output_o\);

-- Location: IOOBUF_X52_Y15_N9
\bidir[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => a(4),
	oe => \oe~input_o\,
	devoe => ww_devoe,
	o => \bidir[4]~output_o\);

-- Location: IOOBUF_X31_Y41_N2
\bidir[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => a(5),
	oe => \oe~input_o\,
	devoe => ww_devoe,
	o => \bidir[5]~output_o\);

-- Location: IOOBUF_X52_Y28_N9
\bidir[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => a(6),
	oe => \oe~input_o\,
	devoe => ww_devoe,
	o => \bidir[6]~output_o\);

-- Location: IOOBUF_X52_Y11_N9
\bidir[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => a(7),
	oe => \oe~input_o\,
	devoe => ww_devoe,
	o => \bidir[7]~output_o\);

-- Location: IOOBUF_X38_Y41_N9
\bidir[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => a(8),
	oe => \oe~input_o\,
	devoe => ww_devoe,
	o => \bidir[8]~output_o\);

-- Location: IOOBUF_X50_Y41_N2
\bidir[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => a(9),
	oe => \oe~input_o\,
	devoe => ww_devoe,
	o => \bidir[9]~output_o\);

-- Location: IOOBUF_X43_Y41_N2
\bidir[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => a(10),
	oe => \oe~input_o\,
	devoe => ww_devoe,
	o => \bidir[10]~output_o\);

-- Location: IOOBUF_X31_Y41_N23
\bidir[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => a(11),
	oe => \oe~input_o\,
	devoe => ww_devoe,
	o => \bidir[11]~output_o\);

-- Location: IOOBUF_X52_Y16_N2
\bidir[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => a(12),
	oe => \oe~input_o\,
	devoe => ww_devoe,
	o => \bidir[12]~output_o\);

-- Location: IOOBUF_X52_Y27_N2
\bidir[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => a(13),
	oe => \oe~input_o\,
	devoe => ww_devoe,
	o => \bidir[13]~output_o\);

-- Location: IOOBUF_X52_Y23_N2
\bidir[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => a(14),
	oe => \oe~input_o\,
	devoe => ww_devoe,
	o => \bidir[14]~output_o\);

-- Location: IOOBUF_X36_Y41_N9
\bidir[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => a(15),
	oe => \oe~input_o\,
	devoe => ww_devoe,
	o => \bidir[15]~output_o\);

-- Location: IOOBUF_X52_Y25_N9
\outp[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outp[0]~reg0_q\,
	devoe => ww_devoe,
	o => \outp[0]~output_o\);

-- Location: IOOBUF_X52_Y30_N9
\outp[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outp[1]~reg0_q\,
	devoe => ww_devoe,
	o => \outp[1]~output_o\);

-- Location: IOOBUF_X52_Y32_N16
\outp[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outp[2]~reg0_q\,
	devoe => ww_devoe,
	o => \outp[2]~output_o\);

-- Location: IOOBUF_X46_Y41_N23
\outp[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outp[3]~reg0_q\,
	devoe => ww_devoe,
	o => \outp[3]~output_o\);

-- Location: IOOBUF_X52_Y13_N2
\outp[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outp[4]~reg0_q\,
	devoe => ww_devoe,
	o => \outp[4]~output_o\);

-- Location: IOOBUF_X52_Y32_N9
\outp[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outp[5]~reg0_q\,
	devoe => ww_devoe,
	o => \outp[5]~output_o\);

-- Location: IOOBUF_X52_Y28_N2
\outp[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outp[6]~reg0_q\,
	devoe => ww_devoe,
	o => \outp[6]~output_o\);

-- Location: IOOBUF_X52_Y11_N2
\outp[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outp[7]~reg0_q\,
	devoe => ww_devoe,
	o => \outp[7]~output_o\);

-- Location: IOOBUF_X36_Y41_N2
\outp[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outp[8]~reg0_q\,
	devoe => ww_devoe,
	o => \outp[8]~output_o\);

-- Location: IOOBUF_X52_Y31_N9
\outp[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outp[9]~reg0_q\,
	devoe => ww_devoe,
	o => \outp[9]~output_o\);

-- Location: IOOBUF_X46_Y41_N9
\outp[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outp[10]~reg0_q\,
	devoe => ww_devoe,
	o => \outp[10]~output_o\);

-- Location: IOOBUF_X29_Y41_N9
\outp[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outp[11]~reg0_q\,
	devoe => ww_devoe,
	o => \outp[11]~output_o\);

-- Location: IOOBUF_X52_Y12_N9
\outp[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outp[12]~reg0_q\,
	devoe => ww_devoe,
	o => \outp[12]~output_o\);

-- Location: IOOBUF_X52_Y27_N9
\outp[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outp[13]~reg0_q\,
	devoe => ww_devoe,
	o => \outp[13]~output_o\);

-- Location: IOOBUF_X52_Y18_N9
\outp[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outp[14]~reg0_q\,
	devoe => ww_devoe,
	o => \outp[14]~output_o\);

-- Location: IOOBUF_X34_Y41_N2
\outp[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outp[15]~reg0_q\,
	devoe => ww_devoe,
	o => \outp[15]~output_o\);

-- Location: IOIBUF_X27_Y0_N15
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

-- Location: IOIBUF_X52_Y23_N8
\inp[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp(0),
	o => \inp[0]~input_o\);

-- Location: LCCOMB_X51_Y23_N8
\a[0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \a[0]~feeder_combout\ = \inp[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inp[0]~input_o\,
	combout => \a[0]~feeder_combout\);

-- Location: FF_X51_Y23_N9
\a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a(0));

-- Location: IOIBUF_X52_Y19_N1
\oe~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_oe,
	o => \oe~input_o\);

-- Location: IOIBUF_X34_Y41_N8
\inp[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp(1),
	o => \inp[1]~input_o\);

-- Location: LCCOMB_X37_Y40_N24
\a[1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \a[1]~feeder_combout\ = \inp[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inp[1]~input_o\,
	combout => \a[1]~feeder_combout\);

-- Location: FF_X37_Y40_N25
\a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a(1));

-- Location: IOIBUF_X29_Y41_N1
\inp[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp(2),
	o => \inp[2]~input_o\);

-- Location: LCCOMB_X29_Y40_N8
\a[2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \a[2]~feeder_combout\ = \inp[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inp[2]~input_o\,
	combout => \a[2]~feeder_combout\);

-- Location: FF_X29_Y40_N9
\a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a(2));

-- Location: IOIBUF_X38_Y41_N1
\inp[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp(3),
	o => \inp[3]~input_o\);

-- Location: LCCOMB_X34_Y40_N24
\a[3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \a[3]~feeder_combout\ = \inp[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inp[3]~input_o\,
	combout => \a[3]~feeder_combout\);

-- Location: FF_X34_Y40_N25
\a[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a(3));

-- Location: IOIBUF_X52_Y15_N1
\inp[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp(4),
	o => \inp[4]~input_o\);

-- Location: LCCOMB_X51_Y15_N8
\a[4]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \a[4]~feeder_combout\ = \inp[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inp[4]~input_o\,
	combout => \a[4]~feeder_combout\);

-- Location: FF_X51_Y15_N9
\a[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a(4));

-- Location: IOIBUF_X25_Y41_N1
\inp[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp(5),
	o => \inp[5]~input_o\);

-- Location: LCCOMB_X31_Y40_N0
\a[5]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \a[5]~feeder_combout\ = \inp[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inp[5]~input_o\,
	combout => \a[5]~feeder_combout\);

-- Location: FF_X31_Y40_N1
\a[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a(5));

-- Location: IOIBUF_X43_Y41_N8
\inp[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp(6),
	o => \inp[6]~input_o\);

-- Location: LCCOMB_X43_Y32_N8
\a[6]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \a[6]~feeder_combout\ = \inp[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inp[6]~input_o\,
	combout => \a[6]~feeder_combout\);

-- Location: FF_X43_Y32_N9
\a[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a(6));

-- Location: IOIBUF_X52_Y10_N1
\inp[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp(7),
	o => \inp[7]~input_o\);

-- Location: LCCOMB_X51_Y10_N0
\a[7]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \a[7]~feeder_combout\ = \inp[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inp[7]~input_o\,
	combout => \a[7]~feeder_combout\);

-- Location: FF_X51_Y10_N1
\a[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a(7));

-- Location: IOIBUF_X41_Y41_N15
\inp[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp(8),
	o => \inp[8]~input_o\);

-- Location: LCCOMB_X39_Y40_N0
\a[8]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \a[8]~feeder_combout\ = \inp[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inp[8]~input_o\,
	combout => \a[8]~feeder_combout\);

-- Location: FF_X39_Y40_N1
\a[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a(8));

-- Location: IOIBUF_X50_Y41_N8
\inp[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp(9),
	o => \inp[9]~input_o\);

-- Location: LCCOMB_X50_Y40_N0
\a[9]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \a[9]~feeder_combout\ = \inp[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inp[9]~input_o\,
	combout => \a[9]~feeder_combout\);

-- Location: FF_X50_Y40_N1
\a[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a(9));

-- Location: IOIBUF_X41_Y41_N8
\inp[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp(10),
	o => \inp[10]~input_o\);

-- Location: FF_X43_Y40_N25
\a[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inp[10]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a(10));

-- Location: IOIBUF_X31_Y41_N15
\inp[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp(11),
	o => \inp[11]~input_o\);

-- Location: FF_X32_Y40_N9
\a[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inp[11]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a(11));

-- Location: IOIBUF_X52_Y16_N8
\inp[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp(12),
	o => \inp[12]~input_o\);

-- Location: LCCOMB_X51_Y16_N8
\a[12]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \a[12]~feeder_combout\ = \inp[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inp[12]~input_o\,
	combout => \a[12]~feeder_combout\);

-- Location: FF_X51_Y16_N9
\a[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a(12));

-- Location: IOIBUF_X52_Y25_N1
\inp[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp(13),
	o => \inp[13]~input_o\);

-- Location: LCCOMB_X51_Y25_N24
\a[13]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \a[13]~feeder_combout\ = \inp[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inp[13]~input_o\,
	combout => \a[13]~feeder_combout\);

-- Location: FF_X51_Y25_N25
\a[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a(13));

-- Location: IOIBUF_X46_Y41_N1
\inp[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp(14),
	o => \inp[14]~input_o\);

-- Location: FF_X47_Y40_N25
\a[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inp[14]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a(14));

-- Location: IOIBUF_X41_Y41_N1
\inp[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp(15),
	o => \inp[15]~input_o\);

-- Location: LCCOMB_X41_Y40_N8
\a[15]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \a[15]~feeder_combout\ = \inp[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inp[15]~input_o\,
	combout => \a[15]~feeder_combout\);

-- Location: FF_X41_Y40_N9
\a[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a(15));

-- Location: IOIBUF_X52_Y19_N8
\bidir[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bidir(0),
	o => \bidir[0]~input_o\);

-- Location: FF_X51_Y21_N25
\outp[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bidir[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outp[0]~reg0_q\);

-- Location: IOIBUF_X48_Y41_N1
\bidir[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bidir(1),
	o => \bidir[1]~input_o\);

-- Location: FF_X50_Y32_N25
\outp[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bidir[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outp[1]~reg0_q\);

-- Location: IOIBUF_X52_Y32_N22
\bidir[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bidir(2),
	o => \bidir[2]~input_o\);

-- Location: LCCOMB_X51_Y32_N24
\outp[2]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outp[2]~reg0feeder_combout\ = \bidir[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bidir[2]~input_o\,
	combout => \outp[2]~reg0feeder_combout\);

-- Location: FF_X51_Y32_N25
\outp[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \outp[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outp[2]~reg0_q\);

-- Location: IOIBUF_X41_Y41_N22
\bidir[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bidir(3),
	o => \bidir[3]~input_o\);

-- Location: LCCOMB_X46_Y40_N0
\outp[3]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outp[3]~reg0feeder_combout\ = \bidir[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bidir[3]~input_o\,
	combout => \outp[3]~reg0feeder_combout\);

-- Location: FF_X46_Y40_N1
\outp[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \outp[3]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outp[3]~reg0_q\);

-- Location: IOIBUF_X52_Y15_N8
\bidir[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bidir(4),
	o => \bidir[4]~input_o\);

-- Location: LCCOMB_X51_Y13_N8
\outp[4]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outp[4]~reg0feeder_combout\ = \bidir[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bidir[4]~input_o\,
	combout => \outp[4]~reg0feeder_combout\);

-- Location: FF_X51_Y13_N9
\outp[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \outp[4]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outp[4]~reg0_q\);

-- Location: IOIBUF_X31_Y41_N1
\bidir[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bidir(5),
	o => \bidir[5]~input_o\);

-- Location: FF_X46_Y32_N1
\outp[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bidir[5]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outp[5]~reg0_q\);

-- Location: IOIBUF_X52_Y28_N8
\bidir[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bidir(6),
	o => \bidir[6]~input_o\);

-- Location: FF_X51_Y24_N17
\outp[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bidir[6]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outp[6]~reg0_q\);

-- Location: IOIBUF_X52_Y11_N8
\bidir[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bidir(7),
	o => \bidir[7]~input_o\);

-- Location: LCCOMB_X51_Y11_N8
\outp[7]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outp[7]~reg0feeder_combout\ = \bidir[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bidir[7]~input_o\,
	combout => \outp[7]~reg0feeder_combout\);

-- Location: FF_X51_Y11_N9
\outp[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \outp[7]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outp[7]~reg0_q\);

-- Location: IOIBUF_X38_Y41_N8
\bidir[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bidir(8),
	o => \bidir[8]~input_o\);

-- Location: LCCOMB_X36_Y40_N16
\outp[8]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outp[8]~reg0feeder_combout\ = \bidir[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bidir[8]~input_o\,
	combout => \outp[8]~reg0feeder_combout\);

-- Location: FF_X36_Y40_N17
\outp[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \outp[8]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outp[8]~reg0_q\);

-- Location: IOIBUF_X50_Y41_N1
\bidir[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bidir(9),
	o => \bidir[9]~input_o\);

-- Location: FF_X50_Y34_N25
\outp[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bidir[9]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outp[9]~reg0_q\);

-- Location: IOIBUF_X43_Y41_N1
\bidir[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bidir(10),
	o => \bidir[10]~input_o\);

-- Location: LCCOMB_X44_Y40_N0
\outp[10]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outp[10]~reg0feeder_combout\ = \bidir[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bidir[10]~input_o\,
	combout => \outp[10]~reg0feeder_combout\);

-- Location: FF_X44_Y40_N1
\outp[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \outp[10]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outp[10]~reg0_q\);

-- Location: IOIBUF_X31_Y41_N22
\bidir[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bidir(11),
	o => \bidir[11]~input_o\);

-- Location: FF_X30_Y40_N17
\outp[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bidir[11]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outp[11]~reg0_q\);

-- Location: IOIBUF_X52_Y16_N1
\bidir[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bidir(12),
	o => \bidir[12]~input_o\);

-- Location: LCCOMB_X51_Y12_N8
\outp[12]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outp[12]~reg0feeder_combout\ = \bidir[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bidir[12]~input_o\,
	combout => \outp[12]~reg0feeder_combout\);

-- Location: FF_X51_Y12_N9
\outp[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \outp[12]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outp[12]~reg0_q\);

-- Location: IOIBUF_X52_Y27_N1
\bidir[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bidir(13),
	o => \bidir[13]~input_o\);

-- Location: LCCOMB_X51_Y27_N8
\outp[13]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outp[13]~reg0feeder_combout\ = \bidir[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bidir[13]~input_o\,
	combout => \outp[13]~reg0feeder_combout\);

-- Location: FF_X51_Y27_N9
\outp[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \outp[13]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outp[13]~reg0_q\);

-- Location: IOIBUF_X52_Y23_N1
\bidir[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bidir(14),
	o => \bidir[14]~input_o\);

-- Location: LCCOMB_X51_Y18_N8
\outp[14]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outp[14]~reg0feeder_combout\ = \bidir[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bidir[14]~input_o\,
	combout => \outp[14]~reg0feeder_combout\);

-- Location: FF_X51_Y18_N9
\outp[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \outp[14]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outp[14]~reg0_q\);

-- Location: IOIBUF_X36_Y41_N8
\bidir[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => bidir(15),
	o => \bidir[15]~input_o\);

-- Location: LCCOMB_X35_Y40_N0
\outp[15]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \outp[15]~reg0feeder_combout\ = \bidir[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bidir[15]~input_o\,
	combout => \outp[15]~reg0feeder_combout\);

-- Location: FF_X35_Y40_N1
\outp[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \outp[15]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outp[15]~reg0_q\);

ww_outp(0) <= \outp[0]~output_o\;

ww_outp(1) <= \outp[1]~output_o\;

ww_outp(2) <= \outp[2]~output_o\;

ww_outp(3) <= \outp[3]~output_o\;

ww_outp(4) <= \outp[4]~output_o\;

ww_outp(5) <= \outp[5]~output_o\;

ww_outp(6) <= \outp[6]~output_o\;

ww_outp(7) <= \outp[7]~output_o\;

ww_outp(8) <= \outp[8]~output_o\;

ww_outp(9) <= \outp[9]~output_o\;

ww_outp(10) <= \outp[10]~output_o\;

ww_outp(11) <= \outp[11]~output_o\;

ww_outp(12) <= \outp[12]~output_o\;

ww_outp(13) <= \outp[13]~output_o\;

ww_outp(14) <= \outp[14]~output_o\;

ww_outp(15) <= \outp[15]~output_o\;

bidir(0) <= \bidir[0]~output_o\;

bidir(1) <= \bidir[1]~output_o\;

bidir(2) <= \bidir[2]~output_o\;

bidir(3) <= \bidir[3]~output_o\;

bidir(4) <= \bidir[4]~output_o\;

bidir(5) <= \bidir[5]~output_o\;

bidir(6) <= \bidir[6]~output_o\;

bidir(7) <= \bidir[7]~output_o\;

bidir(8) <= \bidir[8]~output_o\;

bidir(9) <= \bidir[9]~output_o\;

bidir(10) <= \bidir[10]~output_o\;

bidir(11) <= \bidir[11]~output_o\;

bidir(12) <= \bidir[12]~output_o\;

bidir(13) <= \bidir[13]~output_o\;

bidir(14) <= \bidir[14]~output_o\;

bidir(15) <= \bidir[15]~output_o\;
END structure;


