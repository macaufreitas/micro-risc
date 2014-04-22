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

-- DATE "02/26/2014 20:54:55"

-- 
-- Device: Altera EP4CGX22CF19C6 Package FBGA324
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Demultiplexador IS
    PORT (
	entrada : IN std_logic_vector(15 DOWNTO 0);
	saida_01 : BUFFER std_logic_vector(15 DOWNTO 0);
	saida_02 : BUFFER std_logic_vector(15 DOWNTO 0);
	seletor : IN std_logic
	);
END Demultiplexador;

-- Design Ports Information
-- saida_01[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_01[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_01[2]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_01[3]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_01[4]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_01[5]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_01[6]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_01[7]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_01[8]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_01[9]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_01[10]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_01[11]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_01[12]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_01[13]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_01[14]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_01[15]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_02[0]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_02[1]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_02[2]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_02[3]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_02[4]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_02[5]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_02[6]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_02[7]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_02[8]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_02[9]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_02[10]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_02[11]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_02[12]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_02[13]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_02[14]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_02[15]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[0]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seletor	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[2]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[3]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[4]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[5]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[6]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[7]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[8]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[9]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[10]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[11]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[12]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[13]	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[14]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[15]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Demultiplexador IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_entrada : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_saida_01 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_saida_02 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_seletor : std_logic;
SIGNAL \seletor~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \saida_01[0]~output_o\ : std_logic;
SIGNAL \saida_01[1]~output_o\ : std_logic;
SIGNAL \saida_01[2]~output_o\ : std_logic;
SIGNAL \saida_01[3]~output_o\ : std_logic;
SIGNAL \saida_01[4]~output_o\ : std_logic;
SIGNAL \saida_01[5]~output_o\ : std_logic;
SIGNAL \saida_01[6]~output_o\ : std_logic;
SIGNAL \saida_01[7]~output_o\ : std_logic;
SIGNAL \saida_01[8]~output_o\ : std_logic;
SIGNAL \saida_01[9]~output_o\ : std_logic;
SIGNAL \saida_01[10]~output_o\ : std_logic;
SIGNAL \saida_01[11]~output_o\ : std_logic;
SIGNAL \saida_01[12]~output_o\ : std_logic;
SIGNAL \saida_01[13]~output_o\ : std_logic;
SIGNAL \saida_01[14]~output_o\ : std_logic;
SIGNAL \saida_01[15]~output_o\ : std_logic;
SIGNAL \saida_02[0]~output_o\ : std_logic;
SIGNAL \saida_02[1]~output_o\ : std_logic;
SIGNAL \saida_02[2]~output_o\ : std_logic;
SIGNAL \saida_02[3]~output_o\ : std_logic;
SIGNAL \saida_02[4]~output_o\ : std_logic;
SIGNAL \saida_02[5]~output_o\ : std_logic;
SIGNAL \saida_02[6]~output_o\ : std_logic;
SIGNAL \saida_02[7]~output_o\ : std_logic;
SIGNAL \saida_02[8]~output_o\ : std_logic;
SIGNAL \saida_02[9]~output_o\ : std_logic;
SIGNAL \saida_02[10]~output_o\ : std_logic;
SIGNAL \saida_02[11]~output_o\ : std_logic;
SIGNAL \saida_02[12]~output_o\ : std_logic;
SIGNAL \saida_02[13]~output_o\ : std_logic;
SIGNAL \saida_02[14]~output_o\ : std_logic;
SIGNAL \saida_02[15]~output_o\ : std_logic;
SIGNAL \entrada[0]~input_o\ : std_logic;
SIGNAL \seletor~input_o\ : std_logic;
SIGNAL \seletor~inputclkctrl_outclk\ : std_logic;
SIGNAL \saida_01[0]$latch~combout\ : std_logic;
SIGNAL \entrada[1]~input_o\ : std_logic;
SIGNAL \saida_01[1]$latch~combout\ : std_logic;
SIGNAL \entrada[2]~input_o\ : std_logic;
SIGNAL \saida_01[2]$latch~combout\ : std_logic;
SIGNAL \entrada[3]~input_o\ : std_logic;
SIGNAL \saida_01[3]$latch~combout\ : std_logic;
SIGNAL \entrada[4]~input_o\ : std_logic;
SIGNAL \saida_01[4]$latch~combout\ : std_logic;
SIGNAL \entrada[5]~input_o\ : std_logic;
SIGNAL \saida_01[5]$latch~combout\ : std_logic;
SIGNAL \entrada[6]~input_o\ : std_logic;
SIGNAL \saida_01[6]$latch~combout\ : std_logic;
SIGNAL \entrada[7]~input_o\ : std_logic;
SIGNAL \saida_01[7]$latch~combout\ : std_logic;
SIGNAL \entrada[8]~input_o\ : std_logic;
SIGNAL \saida_01[8]$latch~combout\ : std_logic;
SIGNAL \entrada[9]~input_o\ : std_logic;
SIGNAL \saida_01[9]$latch~combout\ : std_logic;
SIGNAL \entrada[10]~input_o\ : std_logic;
SIGNAL \saida_01[10]$latch~combout\ : std_logic;
SIGNAL \entrada[11]~input_o\ : std_logic;
SIGNAL \saida_01[11]$latch~combout\ : std_logic;
SIGNAL \entrada[12]~input_o\ : std_logic;
SIGNAL \saida_01[12]$latch~combout\ : std_logic;
SIGNAL \entrada[13]~input_o\ : std_logic;
SIGNAL \saida_01[13]$latch~combout\ : std_logic;
SIGNAL \entrada[14]~input_o\ : std_logic;
SIGNAL \saida_01[14]$latch~combout\ : std_logic;
SIGNAL \entrada[15]~input_o\ : std_logic;
SIGNAL \saida_01[15]$latch~combout\ : std_logic;
SIGNAL \saida_02[0]$latch~combout\ : std_logic;
SIGNAL \saida_02[1]$latch~combout\ : std_logic;
SIGNAL \saida_02[2]$latch~combout\ : std_logic;
SIGNAL \saida_02[3]$latch~combout\ : std_logic;
SIGNAL \saida_02[4]$latch~combout\ : std_logic;
SIGNAL \saida_02[5]$latch~combout\ : std_logic;
SIGNAL \saida_02[6]$latch~combout\ : std_logic;
SIGNAL \saida_02[7]$latch~combout\ : std_logic;
SIGNAL \saida_02[8]$latch~combout\ : std_logic;
SIGNAL \saida_02[9]$latch~combout\ : std_logic;
SIGNAL \saida_02[10]$latch~combout\ : std_logic;
SIGNAL \saida_02[11]$latch~combout\ : std_logic;
SIGNAL \saida_02[12]$latch~combout\ : std_logic;
SIGNAL \saida_02[13]$latch~combout\ : std_logic;
SIGNAL \saida_02[14]$latch~combout\ : std_logic;
SIGNAL \saida_02[15]$latch~combout\ : std_logic;

BEGIN

ww_entrada <= entrada;
saida_01 <= ww_saida_01;
saida_02 <= ww_saida_02;
ww_seletor <= seletor;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\seletor~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \seletor~input_o\);

-- Location: IOOBUF_X25_Y41_N2
\saida_01[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida_01[0]$latch~combout\,
	devoe => ww_devoe,
	o => \saida_01[0]~output_o\);

-- Location: IOOBUF_X52_Y31_N9
\saida_01[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida_01[1]$latch~combout\,
	devoe => ww_devoe,
	o => \saida_01[1]~output_o\);

-- Location: IOOBUF_X52_Y30_N9
\saida_01[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida_01[2]$latch~combout\,
	devoe => ww_devoe,
	o => \saida_01[2]~output_o\);

-- Location: IOOBUF_X46_Y41_N2
\saida_01[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida_01[3]$latch~combout\,
	devoe => ww_devoe,
	o => \saida_01[3]~output_o\);

-- Location: IOOBUF_X52_Y18_N9
\saida_01[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida_01[4]$latch~combout\,
	devoe => ww_devoe,
	o => \saida_01[4]~output_o\);

-- Location: IOOBUF_X31_Y41_N16
\saida_01[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida_01[5]$latch~combout\,
	devoe => ww_devoe,
	o => \saida_01[5]~output_o\);

-- Location: IOOBUF_X31_Y41_N2
\saida_01[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida_01[6]$latch~combout\,
	devoe => ww_devoe,
	o => \saida_01[6]~output_o\);

-- Location: IOOBUF_X52_Y32_N9
\saida_01[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida_01[7]$latch~combout\,
	devoe => ww_devoe,
	o => \saida_01[7]~output_o\);

-- Location: IOOBUF_X21_Y41_N2
\saida_01[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida_01[8]$latch~combout\,
	devoe => ww_devoe,
	o => \saida_01[8]~output_o\);

-- Location: IOOBUF_X52_Y28_N2
\saida_01[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida_01[9]$latch~combout\,
	devoe => ww_devoe,
	o => \saida_01[9]~output_o\);

-- Location: IOOBUF_X34_Y41_N2
\saida_01[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida_01[10]$latch~combout\,
	devoe => ww_devoe,
	o => \saida_01[10]~output_o\);

-- Location: IOOBUF_X36_Y41_N9
\saida_01[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida_01[11]$latch~combout\,
	devoe => ww_devoe,
	o => \saida_01[11]~output_o\);

-- Location: IOOBUF_X48_Y41_N9
\saida_01[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida_01[12]$latch~combout\,
	devoe => ww_devoe,
	o => \saida_01[12]~output_o\);

-- Location: IOOBUF_X52_Y23_N9
\saida_01[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida_01[13]$latch~combout\,
	devoe => ww_devoe,
	o => \saida_01[13]~output_o\);

-- Location: IOOBUF_X36_Y41_N2
\saida_01[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida_01[14]$latch~combout\,
	devoe => ww_devoe,
	o => \saida_01[14]~output_o\);

-- Location: IOOBUF_X52_Y25_N9
\saida_01[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida_01[15]$latch~combout\,
	devoe => ww_devoe,
	o => \saida_01[15]~output_o\);

-- Location: IOOBUF_X25_Y41_N9
\saida_02[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida_02[0]$latch~combout\,
	devoe => ww_devoe,
	o => \saida_02[0]~output_o\);

-- Location: IOOBUF_X52_Y32_N16
\saida_02[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida_02[1]$latch~combout\,
	devoe => ww_devoe,
	o => \saida_02[1]~output_o\);

-- Location: IOOBUF_X52_Y30_N2
\saida_02[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida_02[2]$latch~combout\,
	devoe => ww_devoe,
	o => \saida_02[2]~output_o\);

-- Location: IOOBUF_X46_Y41_N23
\saida_02[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida_02[3]$latch~combout\,
	devoe => ww_devoe,
	o => \saida_02[3]~output_o\);

-- Location: IOOBUF_X52_Y18_N2
\saida_02[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida_02[4]$latch~combout\,
	devoe => ww_devoe,
	o => \saida_02[4]~output_o\);

-- Location: IOOBUF_X31_Y41_N9
\saida_02[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida_02[5]$latch~combout\,
	devoe => ww_devoe,
	o => \saida_02[5]~output_o\);

-- Location: IOOBUF_X31_Y41_N23
\saida_02[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida_02[6]$latch~combout\,
	devoe => ww_devoe,
	o => \saida_02[6]~output_o\);

-- Location: IOOBUF_X50_Y41_N9
\saida_02[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida_02[7]$latch~combout\,
	devoe => ww_devoe,
	o => \saida_02[7]~output_o\);

-- Location: IOOBUF_X23_Y41_N2
\saida_02[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida_02[8]$latch~combout\,
	devoe => ww_devoe,
	o => \saida_02[8]~output_o\);

-- Location: IOOBUF_X52_Y27_N2
\saida_02[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida_02[9]$latch~combout\,
	devoe => ww_devoe,
	o => \saida_02[9]~output_o\);

-- Location: IOOBUF_X34_Y41_N9
\saida_02[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida_02[10]$latch~combout\,
	devoe => ww_devoe,
	o => \saida_02[10]~output_o\);

-- Location: IOOBUF_X38_Y41_N9
\saida_02[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida_02[11]$latch~combout\,
	devoe => ww_devoe,
	o => \saida_02[11]~output_o\);

-- Location: IOOBUF_X52_Y25_N2
\saida_02[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida_02[12]$latch~combout\,
	devoe => ww_devoe,
	o => \saida_02[12]~output_o\);

-- Location: IOOBUF_X52_Y16_N9
\saida_02[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida_02[13]$latch~combout\,
	devoe => ww_devoe,
	o => \saida_02[13]~output_o\);

-- Location: IOOBUF_X41_Y41_N16
\saida_02[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida_02[14]$latch~combout\,
	devoe => ww_devoe,
	o => \saida_02[14]~output_o\);

-- Location: IOOBUF_X52_Y23_N2
\saida_02[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida_02[15]$latch~combout\,
	devoe => ww_devoe,
	o => \saida_02[15]~output_o\);

-- Location: IOIBUF_X29_Y41_N1
\entrada[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(0),
	o => \entrada[0]~input_o\);

-- Location: IOIBUF_X27_Y0_N15
\seletor~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_seletor,
	o => \seletor~input_o\);

-- Location: CLKCTRL_G17
\seletor~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \seletor~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \seletor~inputclkctrl_outclk\);

-- Location: LCCOMB_X29_Y40_N0
\saida_01[0]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida_01[0]$latch~combout\ = (GLOBAL(\seletor~inputclkctrl_outclk\) & ((\saida_01[0]$latch~combout\))) # (!GLOBAL(\seletor~inputclkctrl_outclk\) & (\entrada[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[0]~input_o\,
	datac => \seletor~inputclkctrl_outclk\,
	datad => \saida_01[0]$latch~combout\,
	combout => \saida_01[0]$latch~combout\);

-- Location: IOIBUF_X52_Y32_N1
\entrada[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(1),
	o => \entrada[1]~input_o\);

-- Location: LCCOMB_X50_Y32_N24
\saida_01[1]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida_01[1]$latch~combout\ = (GLOBAL(\seletor~inputclkctrl_outclk\) & ((\saida_01[1]$latch~combout\))) # (!GLOBAL(\seletor~inputclkctrl_outclk\) & (\entrada[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[1]~input_o\,
	datac => \seletor~inputclkctrl_outclk\,
	datad => \saida_01[1]$latch~combout\,
	combout => \saida_01[1]$latch~combout\);

-- Location: IOIBUF_X52_Y27_N8
\entrada[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(2),
	o => \entrada[2]~input_o\);

-- Location: LCCOMB_X51_Y30_N16
\saida_01[2]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida_01[2]$latch~combout\ = (GLOBAL(\seletor~inputclkctrl_outclk\) & ((\saida_01[2]$latch~combout\))) # (!GLOBAL(\seletor~inputclkctrl_outclk\) & (\entrada[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[2]~input_o\,
	datac => \seletor~inputclkctrl_outclk\,
	datad => \saida_01[2]$latch~combout\,
	combout => \saida_01[2]$latch~combout\);

-- Location: IOIBUF_X46_Y41_N8
\entrada[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(3),
	o => \entrada[3]~input_o\);

-- Location: LCCOMB_X47_Y40_N0
\saida_01[3]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida_01[3]$latch~combout\ = (GLOBAL(\seletor~inputclkctrl_outclk\) & (\saida_01[3]$latch~combout\)) # (!GLOBAL(\seletor~inputclkctrl_outclk\) & ((\entrada[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \saida_01[3]$latch~combout\,
	datac => \entrada[3]~input_o\,
	datad => \seletor~inputclkctrl_outclk\,
	combout => \saida_01[3]$latch~combout\);

-- Location: IOIBUF_X52_Y19_N8
\entrada[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(4),
	o => \entrada[4]~input_o\);

-- Location: LCCOMB_X51_Y21_N16
\saida_01[4]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida_01[4]$latch~combout\ = (GLOBAL(\seletor~inputclkctrl_outclk\) & (\saida_01[4]$latch~combout\)) # (!GLOBAL(\seletor~inputclkctrl_outclk\) & ((\entrada[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \saida_01[4]$latch~combout\,
	datac => \entrada[4]~input_o\,
	datad => \seletor~inputclkctrl_outclk\,
	combout => \saida_01[4]$latch~combout\);

-- Location: IOIBUF_X41_Y41_N8
\entrada[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(5),
	o => \entrada[5]~input_o\);

-- Location: LCCOMB_X30_Y40_N16
\saida_01[5]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida_01[5]$latch~combout\ = (GLOBAL(\seletor~inputclkctrl_outclk\) & (\saida_01[5]$latch~combout\)) # (!GLOBAL(\seletor~inputclkctrl_outclk\) & ((\entrada[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \saida_01[5]$latch~combout\,
	datac => \entrada[5]~input_o\,
	datad => \seletor~inputclkctrl_outclk\,
	combout => \saida_01[5]$latch~combout\);

-- Location: IOIBUF_X29_Y41_N8
\entrada[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(6),
	o => \entrada[6]~input_o\);

-- Location: LCCOMB_X31_Y40_N0
\saida_01[6]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida_01[6]$latch~combout\ = (GLOBAL(\seletor~inputclkctrl_outclk\) & (\saida_01[6]$latch~combout\)) # (!GLOBAL(\seletor~inputclkctrl_outclk\) & ((\entrada[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \saida_01[6]$latch~combout\,
	datac => \entrada[6]~input_o\,
	datad => \seletor~inputclkctrl_outclk\,
	combout => \saida_01[6]$latch~combout\);

-- Location: IOIBUF_X52_Y32_N22
\entrada[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(7),
	o => \entrada[7]~input_o\);

-- Location: LCCOMB_X51_Y32_N16
\saida_01[7]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida_01[7]$latch~combout\ = (GLOBAL(\seletor~inputclkctrl_outclk\) & ((\saida_01[7]$latch~combout\))) # (!GLOBAL(\seletor~inputclkctrl_outclk\) & (\entrada[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entrada[7]~input_o\,
	datac => \seletor~inputclkctrl_outclk\,
	datad => \saida_01[7]$latch~combout\,
	combout => \saida_01[7]$latch~combout\);

-- Location: IOIBUF_X21_Y41_N8
\entrada[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(8),
	o => \entrada[8]~input_o\);

-- Location: LCCOMB_X23_Y40_N16
\saida_01[8]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida_01[8]$latch~combout\ = (GLOBAL(\seletor~inputclkctrl_outclk\) & (\saida_01[8]$latch~combout\)) # (!GLOBAL(\seletor~inputclkctrl_outclk\) & ((\entrada[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \saida_01[8]$latch~combout\,
	datac => \entrada[8]~input_o\,
	datad => \seletor~inputclkctrl_outclk\,
	combout => \saida_01[8]$latch~combout\);

-- Location: IOIBUF_X52_Y28_N8
\entrada[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(9),
	o => \entrada[9]~input_o\);

-- Location: LCCOMB_X51_Y28_N16
\saida_01[9]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida_01[9]$latch~combout\ = (GLOBAL(\seletor~inputclkctrl_outclk\) & ((\saida_01[9]$latch~combout\))) # (!GLOBAL(\seletor~inputclkctrl_outclk\) & (\entrada[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[9]~input_o\,
	datac => \seletor~inputclkctrl_outclk\,
	datad => \saida_01[9]$latch~combout\,
	combout => \saida_01[9]$latch~combout\);

-- Location: IOIBUF_X38_Y41_N1
\entrada[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(10),
	o => \entrada[10]~input_o\);

-- Location: LCCOMB_X36_Y40_N0
\saida_01[10]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida_01[10]$latch~combout\ = (GLOBAL(\seletor~inputclkctrl_outclk\) & ((\saida_01[10]$latch~combout\))) # (!GLOBAL(\seletor~inputclkctrl_outclk\) & (\entrada[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[10]~input_o\,
	datac => \seletor~inputclkctrl_outclk\,
	datad => \saida_01[10]$latch~combout\,
	combout => \saida_01[10]$latch~combout\);

-- Location: IOIBUF_X41_Y41_N22
\entrada[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(11),
	o => \entrada[11]~input_o\);

-- Location: LCCOMB_X37_Y40_N16
\saida_01[11]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida_01[11]$latch~combout\ = (GLOBAL(\seletor~inputclkctrl_outclk\) & ((\saida_01[11]$latch~combout\))) # (!GLOBAL(\seletor~inputclkctrl_outclk\) & (\entrada[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[11]~input_o\,
	datac => \seletor~inputclkctrl_outclk\,
	datad => \saida_01[11]$latch~combout\,
	combout => \saida_01[11]$latch~combout\);

-- Location: IOIBUF_X52_Y31_N1
\entrada[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(12),
	o => \entrada[12]~input_o\);

-- Location: LCCOMB_X50_Y30_N16
\saida_01[12]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida_01[12]$latch~combout\ = (GLOBAL(\seletor~inputclkctrl_outclk\) & ((\saida_01[12]$latch~combout\))) # (!GLOBAL(\seletor~inputclkctrl_outclk\) & (\entrada[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entrada[12]~input_o\,
	datac => \seletor~inputclkctrl_outclk\,
	datad => \saida_01[12]$latch~combout\,
	combout => \saida_01[12]$latch~combout\);

-- Location: IOIBUF_X52_Y16_N1
\entrada[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(13),
	o => \entrada[13]~input_o\);

-- Location: LCCOMB_X51_Y22_N0
\saida_01[13]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida_01[13]$latch~combout\ = (GLOBAL(\seletor~inputclkctrl_outclk\) & ((\saida_01[13]$latch~combout\))) # (!GLOBAL(\seletor~inputclkctrl_outclk\) & (\entrada[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[13]~input_o\,
	datac => \seletor~inputclkctrl_outclk\,
	datad => \saida_01[13]$latch~combout\,
	combout => \saida_01[13]$latch~combout\);

-- Location: IOIBUF_X41_Y41_N1
\entrada[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(14),
	o => \entrada[14]~input_o\);

-- Location: LCCOMB_X38_Y40_N0
\saida_01[14]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida_01[14]$latch~combout\ = (GLOBAL(\seletor~inputclkctrl_outclk\) & ((\saida_01[14]$latch~combout\))) # (!GLOBAL(\seletor~inputclkctrl_outclk\) & (\entrada[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[14]~input_o\,
	datac => \seletor~inputclkctrl_outclk\,
	datad => \saida_01[14]$latch~combout\,
	combout => \saida_01[14]$latch~combout\);

-- Location: IOIBUF_X52_Y19_N1
\entrada[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(15),
	o => \entrada[15]~input_o\);

-- Location: LCCOMB_X51_Y23_N16
\saida_01[15]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida_01[15]$latch~combout\ = (GLOBAL(\seletor~inputclkctrl_outclk\) & ((\saida_01[15]$latch~combout\))) # (!GLOBAL(\seletor~inputclkctrl_outclk\) & (\entrada[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[15]~input_o\,
	datac => \seletor~inputclkctrl_outclk\,
	datad => \saida_01[15]$latch~combout\,
	combout => \saida_01[15]$latch~combout\);

-- Location: LCCOMB_X29_Y40_N2
\saida_02[0]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida_02[0]$latch~combout\ = (GLOBAL(\seletor~inputclkctrl_outclk\) & (\entrada[0]~input_o\)) # (!GLOBAL(\seletor~inputclkctrl_outclk\) & ((\saida_02[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[0]~input_o\,
	datac => \seletor~inputclkctrl_outclk\,
	datad => \saida_02[0]$latch~combout\,
	combout => \saida_02[0]$latch~combout\);

-- Location: LCCOMB_X50_Y32_N2
\saida_02[1]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida_02[1]$latch~combout\ = (GLOBAL(\seletor~inputclkctrl_outclk\) & (\entrada[1]~input_o\)) # (!GLOBAL(\seletor~inputclkctrl_outclk\) & ((\saida_02[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[1]~input_o\,
	datac => \seletor~inputclkctrl_outclk\,
	datad => \saida_02[1]$latch~combout\,
	combout => \saida_02[1]$latch~combout\);

-- Location: LCCOMB_X51_Y30_N2
\saida_02[2]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida_02[2]$latch~combout\ = (GLOBAL(\seletor~inputclkctrl_outclk\) & (\entrada[2]~input_o\)) # (!GLOBAL(\seletor~inputclkctrl_outclk\) & ((\saida_02[2]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[2]~input_o\,
	datac => \seletor~inputclkctrl_outclk\,
	datad => \saida_02[2]$latch~combout\,
	combout => \saida_02[2]$latch~combout\);

-- Location: LCCOMB_X47_Y40_N2
\saida_02[3]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida_02[3]$latch~combout\ = (GLOBAL(\seletor~inputclkctrl_outclk\) & ((\entrada[3]~input_o\))) # (!GLOBAL(\seletor~inputclkctrl_outclk\) & (\saida_02[3]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \saida_02[3]$latch~combout\,
	datac => \entrada[3]~input_o\,
	datad => \seletor~inputclkctrl_outclk\,
	combout => \saida_02[3]$latch~combout\);

-- Location: LCCOMB_X51_Y21_N18
\saida_02[4]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida_02[4]$latch~combout\ = (GLOBAL(\seletor~inputclkctrl_outclk\) & ((\entrada[4]~input_o\))) # (!GLOBAL(\seletor~inputclkctrl_outclk\) & (\saida_02[4]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \saida_02[4]$latch~combout\,
	datac => \entrada[4]~input_o\,
	datad => \seletor~inputclkctrl_outclk\,
	combout => \saida_02[4]$latch~combout\);

-- Location: LCCOMB_X30_Y40_N18
\saida_02[5]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida_02[5]$latch~combout\ = (GLOBAL(\seletor~inputclkctrl_outclk\) & ((\entrada[5]~input_o\))) # (!GLOBAL(\seletor~inputclkctrl_outclk\) & (\saida_02[5]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \saida_02[5]$latch~combout\,
	datac => \entrada[5]~input_o\,
	datad => \seletor~inputclkctrl_outclk\,
	combout => \saida_02[5]$latch~combout\);

-- Location: LCCOMB_X31_Y40_N10
\saida_02[6]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida_02[6]$latch~combout\ = (GLOBAL(\seletor~inputclkctrl_outclk\) & ((\entrada[6]~input_o\))) # (!GLOBAL(\seletor~inputclkctrl_outclk\) & (\saida_02[6]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saida_02[6]$latch~combout\,
	datac => \entrada[6]~input_o\,
	datad => \seletor~inputclkctrl_outclk\,
	combout => \saida_02[6]$latch~combout\);

-- Location: LCCOMB_X51_Y32_N2
\saida_02[7]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida_02[7]$latch~combout\ = (GLOBAL(\seletor~inputclkctrl_outclk\) & (\entrada[7]~input_o\)) # (!GLOBAL(\seletor~inputclkctrl_outclk\) & ((\saida_02[7]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entrada[7]~input_o\,
	datac => \seletor~inputclkctrl_outclk\,
	datad => \saida_02[7]$latch~combout\,
	combout => \saida_02[7]$latch~combout\);

-- Location: LCCOMB_X23_Y40_N2
\saida_02[8]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida_02[8]$latch~combout\ = (GLOBAL(\seletor~inputclkctrl_outclk\) & ((\entrada[8]~input_o\))) # (!GLOBAL(\seletor~inputclkctrl_outclk\) & (\saida_02[8]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \saida_02[8]$latch~combout\,
	datac => \entrada[8]~input_o\,
	datad => \seletor~inputclkctrl_outclk\,
	combout => \saida_02[8]$latch~combout\);

-- Location: LCCOMB_X51_Y28_N18
\saida_02[9]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida_02[9]$latch~combout\ = (GLOBAL(\seletor~inputclkctrl_outclk\) & (\entrada[9]~input_o\)) # (!GLOBAL(\seletor~inputclkctrl_outclk\) & ((\saida_02[9]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[9]~input_o\,
	datac => \seletor~inputclkctrl_outclk\,
	datad => \saida_02[9]$latch~combout\,
	combout => \saida_02[9]$latch~combout\);

-- Location: LCCOMB_X36_Y40_N10
\saida_02[10]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida_02[10]$latch~combout\ = (GLOBAL(\seletor~inputclkctrl_outclk\) & (\entrada[10]~input_o\)) # (!GLOBAL(\seletor~inputclkctrl_outclk\) & ((\saida_02[10]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[10]~input_o\,
	datac => \seletor~inputclkctrl_outclk\,
	datad => \saida_02[10]$latch~combout\,
	combout => \saida_02[10]$latch~combout\);

-- Location: LCCOMB_X37_Y40_N2
\saida_02[11]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida_02[11]$latch~combout\ = (GLOBAL(\seletor~inputclkctrl_outclk\) & (\entrada[11]~input_o\)) # (!GLOBAL(\seletor~inputclkctrl_outclk\) & ((\saida_02[11]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[11]~input_o\,
	datac => \seletor~inputclkctrl_outclk\,
	datad => \saida_02[11]$latch~combout\,
	combout => \saida_02[11]$latch~combout\);

-- Location: LCCOMB_X50_Y30_N18
\saida_02[12]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida_02[12]$latch~combout\ = (GLOBAL(\seletor~inputclkctrl_outclk\) & (\entrada[12]~input_o\)) # (!GLOBAL(\seletor~inputclkctrl_outclk\) & ((\saida_02[12]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entrada[12]~input_o\,
	datac => \seletor~inputclkctrl_outclk\,
	datad => \saida_02[12]$latch~combout\,
	combout => \saida_02[12]$latch~combout\);

-- Location: LCCOMB_X51_Y22_N18
\saida_02[13]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida_02[13]$latch~combout\ = (GLOBAL(\seletor~inputclkctrl_outclk\) & (\entrada[13]~input_o\)) # (!GLOBAL(\seletor~inputclkctrl_outclk\) & ((\saida_02[13]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[13]~input_o\,
	datac => \seletor~inputclkctrl_outclk\,
	datad => \saida_02[13]$latch~combout\,
	combout => \saida_02[13]$latch~combout\);

-- Location: LCCOMB_X38_Y40_N18
\saida_02[14]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida_02[14]$latch~combout\ = (GLOBAL(\seletor~inputclkctrl_outclk\) & (\entrada[14]~input_o\)) # (!GLOBAL(\seletor~inputclkctrl_outclk\) & ((\saida_02[14]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[14]~input_o\,
	datac => \seletor~inputclkctrl_outclk\,
	datad => \saida_02[14]$latch~combout\,
	combout => \saida_02[14]$latch~combout\);

-- Location: LCCOMB_X51_Y23_N10
\saida_02[15]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida_02[15]$latch~combout\ = (GLOBAL(\seletor~inputclkctrl_outclk\) & (\entrada[15]~input_o\)) # (!GLOBAL(\seletor~inputclkctrl_outclk\) & ((\saida_02[15]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[15]~input_o\,
	datac => \seletor~inputclkctrl_outclk\,
	datad => \saida_02[15]$latch~combout\,
	combout => \saida_02[15]$latch~combout\);

ww_saida_01(0) <= \saida_01[0]~output_o\;

ww_saida_01(1) <= \saida_01[1]~output_o\;

ww_saida_01(2) <= \saida_01[2]~output_o\;

ww_saida_01(3) <= \saida_01[3]~output_o\;

ww_saida_01(4) <= \saida_01[4]~output_o\;

ww_saida_01(5) <= \saida_01[5]~output_o\;

ww_saida_01(6) <= \saida_01[6]~output_o\;

ww_saida_01(7) <= \saida_01[7]~output_o\;

ww_saida_01(8) <= \saida_01[8]~output_o\;

ww_saida_01(9) <= \saida_01[9]~output_o\;

ww_saida_01(10) <= \saida_01[10]~output_o\;

ww_saida_01(11) <= \saida_01[11]~output_o\;

ww_saida_01(12) <= \saida_01[12]~output_o\;

ww_saida_01(13) <= \saida_01[13]~output_o\;

ww_saida_01(14) <= \saida_01[14]~output_o\;

ww_saida_01(15) <= \saida_01[15]~output_o\;

ww_saida_02(0) <= \saida_02[0]~output_o\;

ww_saida_02(1) <= \saida_02[1]~output_o\;

ww_saida_02(2) <= \saida_02[2]~output_o\;

ww_saida_02(3) <= \saida_02[3]~output_o\;

ww_saida_02(4) <= \saida_02[4]~output_o\;

ww_saida_02(5) <= \saida_02[5]~output_o\;

ww_saida_02(6) <= \saida_02[6]~output_o\;

ww_saida_02(7) <= \saida_02[7]~output_o\;

ww_saida_02(8) <= \saida_02[8]~output_o\;

ww_saida_02(9) <= \saida_02[9]~output_o\;

ww_saida_02(10) <= \saida_02[10]~output_o\;

ww_saida_02(11) <= \saida_02[11]~output_o\;

ww_saida_02(12) <= \saida_02[12]~output_o\;

ww_saida_02(13) <= \saida_02[13]~output_o\;

ww_saida_02(14) <= \saida_02[14]~output_o\;

ww_saida_02(15) <= \saida_02[15]~output_o\;
END structure;


