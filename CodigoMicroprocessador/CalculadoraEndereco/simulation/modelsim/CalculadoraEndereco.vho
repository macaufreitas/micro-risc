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

-- DATE "03/25/2014 16:28:31"

-- 
-- Device: Altera EP3C5F256C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	CalculadoraEndereco IS
    PORT (
	clock : IN std_logic;
	habilita : IN std_logic;
	habResultado : IN std_logic;
	entradaIndice : IN std_logic_vector(15 DOWNTO 0);
	entradaSegmen : IN std_logic_vector(15 DOWNTO 0);
	resultado : BUFFER std_logic_vector(19 DOWNTO 0)
	);
END CalculadoraEndereco;

-- Design Ports Information
-- resultado[0]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[1]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[2]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[3]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[4]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[5]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[6]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[7]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[8]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[9]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[10]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[11]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[12]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[13]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[14]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[15]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[16]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[17]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[18]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[19]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- habResultado	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- habilita	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaIndice[0]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaIndice[1]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaIndice[2]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaIndice[3]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaIndice[4]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaSegmen[0]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaIndice[5]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaSegmen[1]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaIndice[6]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaSegmen[2]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaIndice[7]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaSegmen[3]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaIndice[8]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaSegmen[4]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaIndice[9]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaSegmen[5]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaIndice[10]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaSegmen[6]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaIndice[11]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaSegmen[7]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaIndice[12]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaSegmen[8]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaIndice[13]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaSegmen[9]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaIndice[14]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaSegmen[10]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaIndice[15]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaSegmen[11]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaSegmen[12]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaSegmen[13]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaSegmen[14]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaSegmen[15]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CalculadoraEndereco IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_habilita : std_logic;
SIGNAL ww_habResultado : std_logic;
SIGNAL ww_entradaIndice : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_entradaSegmen : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_resultado : std_logic_vector(19 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \habResultado~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \resultado[0]~output_o\ : std_logic;
SIGNAL \resultado[1]~output_o\ : std_logic;
SIGNAL \resultado[2]~output_o\ : std_logic;
SIGNAL \resultado[3]~output_o\ : std_logic;
SIGNAL \resultado[4]~output_o\ : std_logic;
SIGNAL \resultado[5]~output_o\ : std_logic;
SIGNAL \resultado[6]~output_o\ : std_logic;
SIGNAL \resultado[7]~output_o\ : std_logic;
SIGNAL \resultado[8]~output_o\ : std_logic;
SIGNAL \resultado[9]~output_o\ : std_logic;
SIGNAL \resultado[10]~output_o\ : std_logic;
SIGNAL \resultado[11]~output_o\ : std_logic;
SIGNAL \resultado[12]~output_o\ : std_logic;
SIGNAL \resultado[13]~output_o\ : std_logic;
SIGNAL \resultado[14]~output_o\ : std_logic;
SIGNAL \resultado[15]~output_o\ : std_logic;
SIGNAL \resultado[16]~output_o\ : std_logic;
SIGNAL \resultado[17]~output_o\ : std_logic;
SIGNAL \resultado[18]~output_o\ : std_logic;
SIGNAL \resultado[19]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \entradaIndice[0]~input_o\ : std_logic;
SIGNAL \habilita~input_o\ : std_logic;
SIGNAL \habResultado~input_o\ : std_logic;
SIGNAL \habResultado~inputclkctrl_outclk\ : std_logic;
SIGNAL \resultado[0]$latch~combout\ : std_logic;
SIGNAL \entradaIndice[1]~input_o\ : std_logic;
SIGNAL \regI[1]~feeder_combout\ : std_logic;
SIGNAL \resultado[1]$latch~combout\ : std_logic;
SIGNAL \entradaIndice[2]~input_o\ : std_logic;
SIGNAL \regI[2]~feeder_combout\ : std_logic;
SIGNAL \resultado[2]$latch~combout\ : std_logic;
SIGNAL \entradaIndice[3]~input_o\ : std_logic;
SIGNAL \resultado[3]$latch~combout\ : std_logic;
SIGNAL \entradaSegmen[0]~input_o\ : std_logic;
SIGNAL \regS[4]~feeder_combout\ : std_logic;
SIGNAL \entradaIndice[4]~input_o\ : std_logic;
SIGNAL \regReult[4]~16_combout\ : std_logic;
SIGNAL \resultado[4]$latch~combout\ : std_logic;
SIGNAL \entradaSegmen[1]~input_o\ : std_logic;
SIGNAL \regS[5]~feeder_combout\ : std_logic;
SIGNAL \entradaIndice[5]~input_o\ : std_logic;
SIGNAL \regReult[4]~17\ : std_logic;
SIGNAL \regReult[5]~18_combout\ : std_logic;
SIGNAL \resultado[5]$latch~combout\ : std_logic;
SIGNAL \entradaSegmen[2]~input_o\ : std_logic;
SIGNAL \regS[6]~feeder_combout\ : std_logic;
SIGNAL \entradaIndice[6]~input_o\ : std_logic;
SIGNAL \regI[6]~feeder_combout\ : std_logic;
SIGNAL \regReult[5]~19\ : std_logic;
SIGNAL \regReult[6]~20_combout\ : std_logic;
SIGNAL \resultado[6]$latch~combout\ : std_logic;
SIGNAL \entradaSegmen[3]~input_o\ : std_logic;
SIGNAL \regS[7]~feeder_combout\ : std_logic;
SIGNAL \entradaIndice[7]~input_o\ : std_logic;
SIGNAL \regReult[6]~21\ : std_logic;
SIGNAL \regReult[7]~22_combout\ : std_logic;
SIGNAL \resultado[7]$latch~combout\ : std_logic;
SIGNAL \entradaIndice[8]~input_o\ : std_logic;
SIGNAL \entradaSegmen[4]~input_o\ : std_logic;
SIGNAL \regS[8]~feeder_combout\ : std_logic;
SIGNAL \regReult[7]~23\ : std_logic;
SIGNAL \regReult[8]~24_combout\ : std_logic;
SIGNAL \resultado[8]$latch~combout\ : std_logic;
SIGNAL \entradaIndice[9]~input_o\ : std_logic;
SIGNAL \regI[9]~feeder_combout\ : std_logic;
SIGNAL \entradaSegmen[5]~input_o\ : std_logic;
SIGNAL \regReult[8]~25\ : std_logic;
SIGNAL \regReult[9]~26_combout\ : std_logic;
SIGNAL \resultado[9]$latch~combout\ : std_logic;
SIGNAL \entradaSegmen[6]~input_o\ : std_logic;
SIGNAL \entradaIndice[10]~input_o\ : std_logic;
SIGNAL \regI[10]~feeder_combout\ : std_logic;
SIGNAL \regReult[9]~27\ : std_logic;
SIGNAL \regReult[10]~28_combout\ : std_logic;
SIGNAL \resultado[10]$latch~combout\ : std_logic;
SIGNAL \entradaSegmen[7]~input_o\ : std_logic;
SIGNAL \entradaIndice[11]~input_o\ : std_logic;
SIGNAL \regI[11]~feeder_combout\ : std_logic;
SIGNAL \regReult[10]~29\ : std_logic;
SIGNAL \regReult[11]~30_combout\ : std_logic;
SIGNAL \resultado[11]$latch~combout\ : std_logic;
SIGNAL \entradaIndice[12]~input_o\ : std_logic;
SIGNAL \entradaSegmen[8]~input_o\ : std_logic;
SIGNAL \regReult[11]~31\ : std_logic;
SIGNAL \regReult[12]~32_combout\ : std_logic;
SIGNAL \resultado[12]$latch~combout\ : std_logic;
SIGNAL \entradaIndice[13]~input_o\ : std_logic;
SIGNAL \entradaSegmen[9]~input_o\ : std_logic;
SIGNAL \regReult[12]~33\ : std_logic;
SIGNAL \regReult[13]~34_combout\ : std_logic;
SIGNAL \resultado[13]$latch~combout\ : std_logic;
SIGNAL \entradaSegmen[10]~input_o\ : std_logic;
SIGNAL \entradaIndice[14]~input_o\ : std_logic;
SIGNAL \regReult[13]~35\ : std_logic;
SIGNAL \regReult[14]~36_combout\ : std_logic;
SIGNAL \resultado[14]$latch~combout\ : std_logic;
SIGNAL \entradaIndice[15]~input_o\ : std_logic;
SIGNAL \regI[15]~feeder_combout\ : std_logic;
SIGNAL \entradaSegmen[11]~input_o\ : std_logic;
SIGNAL \regReult[14]~37\ : std_logic;
SIGNAL \regReult[15]~38_combout\ : std_logic;
SIGNAL \resultado[15]$latch~combout\ : std_logic;
SIGNAL \entradaSegmen[12]~input_o\ : std_logic;
SIGNAL \regS[16]~feeder_combout\ : std_logic;
SIGNAL \regReult[15]~39\ : std_logic;
SIGNAL \regReult[16]~40_combout\ : std_logic;
SIGNAL \resultado[16]$latch~combout\ : std_logic;
SIGNAL \entradaSegmen[13]~input_o\ : std_logic;
SIGNAL \regS[17]~feeder_combout\ : std_logic;
SIGNAL \regReult[16]~41\ : std_logic;
SIGNAL \regReult[17]~42_combout\ : std_logic;
SIGNAL \resultado[17]$latch~combout\ : std_logic;
SIGNAL \entradaSegmen[14]~input_o\ : std_logic;
SIGNAL \regReult[17]~43\ : std_logic;
SIGNAL \regReult[18]~44_combout\ : std_logic;
SIGNAL \resultado[18]$latch~combout\ : std_logic;
SIGNAL \entradaSegmen[15]~input_o\ : std_logic;
SIGNAL \regReult[18]~45\ : std_logic;
SIGNAL \regReult[19]~46_combout\ : std_logic;
SIGNAL \resultado[19]$latch~combout\ : std_logic;
SIGNAL regS : std_logic_vector(19 DOWNTO 0);
SIGNAL regReult : std_logic_vector(19 DOWNTO 0);
SIGNAL regI : std_logic_vector(19 DOWNTO 0);

BEGIN

ww_clock <= clock;
ww_habilita <= habilita;
ww_habResultado <= habResultado;
ww_entradaIndice <= entradaIndice;
ww_entradaSegmen <= entradaSegmen;
resultado <= ww_resultado;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);

\habResultado~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \habResultado~input_o\);

-- Location: IOOBUF_X21_Y24_N2
\resultado[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \resultado[0]$latch~combout\,
	devoe => ww_devoe,
	o => \resultado[0]~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\resultado[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \resultado[1]$latch~combout\,
	devoe => ww_devoe,
	o => \resultado[1]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\resultado[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \resultado[2]$latch~combout\,
	devoe => ww_devoe,
	o => \resultado[2]~output_o\);

-- Location: IOOBUF_X28_Y24_N9
\resultado[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \resultado[3]$latch~combout\,
	devoe => ww_devoe,
	o => \resultado[3]~output_o\);

-- Location: IOOBUF_X23_Y24_N9
\resultado[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \resultado[4]$latch~combout\,
	devoe => ww_devoe,
	o => \resultado[4]~output_o\);

-- Location: IOOBUF_X34_Y20_N16
\resultado[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \resultado[5]$latch~combout\,
	devoe => ww_devoe,
	o => \resultado[5]~output_o\);

-- Location: IOOBUF_X32_Y24_N23
\resultado[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \resultado[6]$latch~combout\,
	devoe => ww_devoe,
	o => \resultado[6]~output_o\);

-- Location: IOOBUF_X34_Y17_N16
\resultado[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \resultado[7]$latch~combout\,
	devoe => ww_devoe,
	o => \resultado[7]~output_o\);

-- Location: IOOBUF_X34_Y11_N2
\resultado[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \resultado[8]$latch~combout\,
	devoe => ww_devoe,
	o => \resultado[8]~output_o\);

-- Location: IOOBUF_X13_Y24_N9
\resultado[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \resultado[9]$latch~combout\,
	devoe => ww_devoe,
	o => \resultado[9]~output_o\);

-- Location: IOOBUF_X25_Y24_N2
\resultado[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \resultado[10]$latch~combout\,
	devoe => ww_devoe,
	o => \resultado[10]~output_o\);

-- Location: IOOBUF_X34_Y19_N9
\resultado[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \resultado[11]$latch~combout\,
	devoe => ww_devoe,
	o => \resultado[11]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\resultado[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \resultado[12]$latch~combout\,
	devoe => ww_devoe,
	o => \resultado[12]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\resultado[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \resultado[13]$latch~combout\,
	devoe => ww_devoe,
	o => \resultado[13]~output_o\);

-- Location: IOOBUF_X28_Y24_N2
\resultado[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \resultado[14]$latch~combout\,
	devoe => ww_devoe,
	o => \resultado[14]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\resultado[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \resultado[15]$latch~combout\,
	devoe => ww_devoe,
	o => \resultado[15]~output_o\);

-- Location: IOOBUF_X34_Y16_N2
\resultado[16]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \resultado[16]$latch~combout\,
	devoe => ww_devoe,
	o => \resultado[16]~output_o\);

-- Location: IOOBUF_X13_Y24_N2
\resultado[17]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \resultado[17]$latch~combout\,
	devoe => ww_devoe,
	o => \resultado[17]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\resultado[18]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \resultado[18]$latch~combout\,
	devoe => ww_devoe,
	o => \resultado[18]~output_o\);

-- Location: IOOBUF_X25_Y24_N9
\resultado[19]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \resultado[19]$latch~combout\,
	devoe => ww_devoe,
	o => \resultado[19]~output_o\);

-- Location: IOIBUF_X0_Y11_N1
\clock~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G4
\clock~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: IOIBUF_X13_Y24_N15
\entradaIndice[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaIndice(0),
	o => \entradaIndice[0]~input_o\);

-- Location: IOIBUF_X34_Y19_N15
\habilita~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_habilita,
	o => \habilita~input_o\);

-- Location: FF_X29_Y20_N9
\regI[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaIndice[0]~input_o\,
	sload => VCC,
	ena => \habilita~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regI(0));

-- Location: FF_X29_Y20_N19
\regReult[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => regI(0),
	sload => VCC,
	ena => \habilita~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regReult(0));

-- Location: IOIBUF_X0_Y11_N8
\habResultado~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_habResultado,
	o => \habResultado~input_o\);

-- Location: CLKCTRL_G2
\habResultado~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \habResultado~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \habResultado~inputclkctrl_outclk\);

-- Location: LCCOMB_X29_Y20_N18
\resultado[0]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \resultado[0]$latch~combout\ = (GLOBAL(\habResultado~inputclkctrl_outclk\) & ((regReult(0)))) # (!GLOBAL(\habResultado~inputclkctrl_outclk\) & (\resultado[0]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \resultado[0]$latch~combout\,
	datac => regReult(0),
	datad => \habResultado~inputclkctrl_outclk\,
	combout => \resultado[0]$latch~combout\);

-- Location: IOIBUF_X21_Y24_N15
\entradaIndice[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaIndice(1),
	o => \entradaIndice[1]~input_o\);

-- Location: LCCOMB_X29_Y20_N26
\regI[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regI[1]~feeder_combout\ = \entradaIndice[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaIndice[1]~input_o\,
	combout => \regI[1]~feeder_combout\);

-- Location: FF_X29_Y20_N27
\regI[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regI[1]~feeder_combout\,
	ena => \habilita~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regI(1));

-- Location: FF_X29_Y20_N29
\regReult[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => regI(1),
	sload => VCC,
	ena => \habilita~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regReult(1));

-- Location: LCCOMB_X29_Y20_N28
\resultado[1]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \resultado[1]$latch~combout\ = (GLOBAL(\habResultado~inputclkctrl_outclk\) & ((regReult(1)))) # (!GLOBAL(\habResultado~inputclkctrl_outclk\) & (\resultado[1]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \resultado[1]$latch~combout\,
	datac => regReult(1),
	datad => \habResultado~inputclkctrl_outclk\,
	combout => \resultado[1]$latch~combout\);

-- Location: IOIBUF_X34_Y10_N8
\entradaIndice[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaIndice(2),
	o => \entradaIndice[2]~input_o\);

-- Location: LCCOMB_X29_Y20_N22
\regI[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regI[2]~feeder_combout\ = \entradaIndice[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaIndice[2]~input_o\,
	combout => \regI[2]~feeder_combout\);

-- Location: FF_X29_Y20_N23
\regI[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regI[2]~feeder_combout\,
	ena => \habilita~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regI(2));

-- Location: FF_X29_Y20_N7
\regReult[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => regI(2),
	sload => VCC,
	ena => \habilita~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regReult(2));

-- Location: LCCOMB_X29_Y20_N6
\resultado[2]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \resultado[2]$latch~combout\ = (GLOBAL(\habResultado~inputclkctrl_outclk\) & ((regReult(2)))) # (!GLOBAL(\habResultado~inputclkctrl_outclk\) & (\resultado[2]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resultado[2]$latch~combout\,
	datac => regReult(2),
	datad => \habResultado~inputclkctrl_outclk\,
	combout => \resultado[2]$latch~combout\);

-- Location: IOIBUF_X34_Y9_N1
\entradaIndice[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaIndice(3),
	o => \entradaIndice[3]~input_o\);

-- Location: FF_X29_Y20_N15
\regI[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaIndice[3]~input_o\,
	sload => VCC,
	ena => \habilita~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regI(3));

-- Location: FF_X29_Y20_N31
\regReult[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => regI(3),
	sload => VCC,
	ena => \habilita~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regReult(3));

-- Location: LCCOMB_X29_Y20_N30
\resultado[3]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \resultado[3]$latch~combout\ = (GLOBAL(\habResultado~inputclkctrl_outclk\) & ((regReult(3)))) # (!GLOBAL(\habResultado~inputclkctrl_outclk\) & (\resultado[3]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resultado[3]$latch~combout\,
	datac => regReult(3),
	datad => \habResultado~inputclkctrl_outclk\,
	combout => \resultado[3]$latch~combout\);

-- Location: IOIBUF_X34_Y20_N1
\entradaSegmen[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaSegmen(0),
	o => \entradaSegmen[0]~input_o\);

-- Location: LCCOMB_X31_Y20_N20
\regS[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regS[4]~feeder_combout\ = \entradaSegmen[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaSegmen[0]~input_o\,
	combout => \regS[4]~feeder_combout\);

-- Location: FF_X31_Y20_N21
\regS[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regS[4]~feeder_combout\,
	ena => \habilita~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regS(4));

-- Location: IOIBUF_X23_Y24_N1
\entradaIndice[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaIndice(4),
	o => \entradaIndice[4]~input_o\);

-- Location: FF_X30_Y20_N1
\regI[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaIndice[4]~input_o\,
	sload => VCC,
	ena => \habilita~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regI(4));

-- Location: LCCOMB_X30_Y20_N0
\regReult[4]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regReult[4]~16_combout\ = (regS(4) & (regI(4) $ (VCC))) # (!regS(4) & (regI(4) & VCC))
-- \regReult[4]~17\ = CARRY((regS(4) & regI(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regS(4),
	datab => regI(4),
	datad => VCC,
	combout => \regReult[4]~16_combout\,
	cout => \regReult[4]~17\);

-- Location: FF_X29_Y20_N3
\regReult[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \regReult[4]~16_combout\,
	sload => VCC,
	ena => \habilita~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regReult(4));

-- Location: LCCOMB_X29_Y20_N2
\resultado[4]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \resultado[4]$latch~combout\ = (GLOBAL(\habResultado~inputclkctrl_outclk\) & ((regReult(4)))) # (!GLOBAL(\habResultado~inputclkctrl_outclk\) & (\resultado[4]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \resultado[4]$latch~combout\,
	datac => regReult(4),
	datad => \habResultado~inputclkctrl_outclk\,
	combout => \resultado[4]$latch~combout\);

-- Location: IOIBUF_X34_Y18_N1
\entradaSegmen[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaSegmen(1),
	o => \entradaSegmen[1]~input_o\);

-- Location: LCCOMB_X31_Y20_N30
\regS[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regS[5]~feeder_combout\ = \entradaSegmen[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaSegmen[1]~input_o\,
	combout => \regS[5]~feeder_combout\);

-- Location: FF_X31_Y20_N31
\regS[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regS[5]~feeder_combout\,
	ena => \habilita~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regS(5));

-- Location: IOIBUF_X25_Y24_N22
\entradaIndice[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaIndice(5),
	o => \entradaIndice[5]~input_o\);

-- Location: FF_X30_Y20_N3
\regI[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaIndice[5]~input_o\,
	sload => VCC,
	ena => \habilita~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regI(5));

-- Location: LCCOMB_X30_Y20_N2
\regReult[5]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regReult[5]~18_combout\ = (regS(5) & ((regI(5) & (\regReult[4]~17\ & VCC)) # (!regI(5) & (!\regReult[4]~17\)))) # (!regS(5) & ((regI(5) & (!\regReult[4]~17\)) # (!regI(5) & ((\regReult[4]~17\) # (GND)))))
-- \regReult[5]~19\ = CARRY((regS(5) & (!regI(5) & !\regReult[4]~17\)) # (!regS(5) & ((!\regReult[4]~17\) # (!regI(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => regS(5),
	datab => regI(5),
	datad => VCC,
	cin => \regReult[4]~17\,
	combout => \regReult[5]~18_combout\,
	cout => \regReult[5]~19\);

-- Location: FF_X31_Y20_N1
\regReult[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \regReult[5]~18_combout\,
	sload => VCC,
	ena => \habilita~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regReult(5));

-- Location: LCCOMB_X31_Y20_N0
\resultado[5]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \resultado[5]$latch~combout\ = (GLOBAL(\habResultado~inputclkctrl_outclk\) & ((regReult(5)))) # (!GLOBAL(\habResultado~inputclkctrl_outclk\) & (\resultado[5]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \resultado[5]$latch~combout\,
	datac => regReult(5),
	datad => \habResultado~inputclkctrl_outclk\,
	combout => \resultado[5]$latch~combout\);

-- Location: IOIBUF_X34_Y17_N1
\entradaSegmen[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaSegmen(2),
	o => \entradaSegmen[2]~input_o\);

-- Location: LCCOMB_X31_Y20_N6
\regS[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regS[6]~feeder_combout\ = \entradaSegmen[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaSegmen[2]~input_o\,
	combout => \regS[6]~feeder_combout\);

-- Location: FF_X31_Y20_N7
\regS[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regS[6]~feeder_combout\,
	ena => \habilita~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regS(6));

-- Location: IOIBUF_X32_Y24_N8
\entradaIndice[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaIndice(6),
	o => \entradaIndice[6]~input_o\);

-- Location: LCCOMB_X31_Y20_N28
\regI[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regI[6]~feeder_combout\ = \entradaIndice[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaIndice[6]~input_o\,
	combout => \regI[6]~feeder_combout\);

-- Location: FF_X31_Y20_N29
\regI[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regI[6]~feeder_combout\,
	ena => \habilita~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regI(6));

-- Location: LCCOMB_X30_Y20_N4
\regReult[6]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regReult[6]~20_combout\ = ((regS(6) $ (regI(6) $ (!\regReult[5]~19\)))) # (GND)
-- \regReult[6]~21\ = CARRY((regS(6) & ((regI(6)) # (!\regReult[5]~19\))) # (!regS(6) & (regI(6) & !\regReult[5]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => regS(6),
	datab => regI(6),
	datad => VCC,
	cin => \regReult[5]~19\,
	combout => \regReult[6]~20_combout\,
	cout => \regReult[6]~21\);

-- Location: FF_X31_Y20_N3
\regReult[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \regReult[6]~20_combout\,
	sload => VCC,
	ena => \habilita~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regReult(6));

-- Location: LCCOMB_X31_Y20_N2
\resultado[6]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \resultado[6]$latch~combout\ = (GLOBAL(\habResultado~inputclkctrl_outclk\) & ((regReult(6)))) # (!GLOBAL(\habResultado~inputclkctrl_outclk\) & (\resultado[6]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \resultado[6]$latch~combout\,
	datac => regReult(6),
	datad => \habResultado~inputclkctrl_outclk\,
	combout => \resultado[6]$latch~combout\);

-- Location: IOIBUF_X32_Y24_N15
\entradaSegmen[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaSegmen(3),
	o => \entradaSegmen[3]~input_o\);

-- Location: LCCOMB_X31_Y20_N4
\regS[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regS[7]~feeder_combout\ = \entradaSegmen[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaSegmen[3]~input_o\,
	combout => \regS[7]~feeder_combout\);

-- Location: FF_X31_Y20_N5
\regS[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regS[7]~feeder_combout\,
	ena => \habilita~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regS(7));

-- Location: IOIBUF_X34_Y20_N8
\entradaIndice[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaIndice(7),
	o => \entradaIndice[7]~input_o\);

-- Location: FF_X30_Y20_N5
\regI[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaIndice[7]~input_o\,
	sload => VCC,
	ena => \habilita~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regI(7));

-- Location: LCCOMB_X30_Y20_N6
\regReult[7]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regReult[7]~22_combout\ = (regS(7) & ((regI(7) & (\regReult[6]~21\ & VCC)) # (!regI(7) & (!\regReult[6]~21\)))) # (!regS(7) & ((regI(7) & (!\regReult[6]~21\)) # (!regI(7) & ((\regReult[6]~21\) # (GND)))))
-- \regReult[7]~23\ = CARRY((regS(7) & (!regI(7) & !\regReult[6]~21\)) # (!regS(7) & ((!\regReult[6]~21\) # (!regI(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => regS(7),
	datab => regI(7),
	datad => VCC,
	cin => \regReult[6]~21\,
	combout => \regReult[7]~22_combout\,
	cout => \regReult[7]~23\);

-- Location: FF_X31_Y20_N25
\regReult[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \regReult[7]~22_combout\,
	sload => VCC,
	ena => \habilita~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regReult(7));

-- Location: LCCOMB_X31_Y20_N24
\resultado[7]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \resultado[7]$latch~combout\ = (GLOBAL(\habResultado~inputclkctrl_outclk\) & ((regReult(7)))) # (!GLOBAL(\habResultado~inputclkctrl_outclk\) & (\resultado[7]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \resultado[7]$latch~combout\,
	datac => regReult(7),
	datad => \habResultado~inputclkctrl_outclk\,
	combout => \resultado[7]$latch~combout\);

-- Location: IOIBUF_X30_Y24_N8
\entradaIndice[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaIndice(8),
	o => \entradaIndice[8]~input_o\);

-- Location: FF_X30_Y20_N7
\regI[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaIndice[8]~input_o\,
	sload => VCC,
	ena => \habilita~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regI(8));

-- Location: IOIBUF_X34_Y18_N15
\entradaSegmen[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaSegmen(4),
	o => \entradaSegmen[4]~input_o\);

-- Location: LCCOMB_X31_Y20_N26
\regS[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regS[8]~feeder_combout\ = \entradaSegmen[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaSegmen[4]~input_o\,
	combout => \regS[8]~feeder_combout\);

-- Location: FF_X31_Y20_N27
\regS[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regS[8]~feeder_combout\,
	ena => \habilita~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regS(8));

-- Location: LCCOMB_X30_Y20_N8
\regReult[8]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regReult[8]~24_combout\ = ((regI(8) $ (regS(8) $ (!\regReult[7]~23\)))) # (GND)
-- \regReult[8]~25\ = CARRY((regI(8) & ((regS(8)) # (!\regReult[7]~23\))) # (!regI(8) & (regS(8) & !\regReult[7]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => regI(8),
	datab => regS(8),
	datad => VCC,
	cin => \regReult[7]~23\,
	combout => \regReult[8]~24_combout\,
	cout => \regReult[8]~25\);

-- Location: FF_X31_Y20_N11
\regReult[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \regReult[8]~24_combout\,
	sload => VCC,
	ena => \habilita~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regReult(8));

-- Location: LCCOMB_X31_Y20_N10
\resultado[8]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \resultado[8]$latch~combout\ = (GLOBAL(\habResultado~inputclkctrl_outclk\) & ((regReult(8)))) # (!GLOBAL(\habResultado~inputclkctrl_outclk\) & (\resultado[8]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resultado[8]$latch~combout\,
	datac => regReult(8),
	datad => \habResultado~inputclkctrl_outclk\,
	combout => \resultado[8]$latch~combout\);

-- Location: IOIBUF_X34_Y16_N8
\entradaIndice[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaIndice(9),
	o => \entradaIndice[9]~input_o\);

-- Location: LCCOMB_X31_Y20_N8
\regI[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regI[9]~feeder_combout\ = \entradaIndice[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaIndice[9]~input_o\,
	combout => \regI[9]~feeder_combout\);

-- Location: FF_X31_Y20_N9
\regI[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regI[9]~feeder_combout\,
	ena => \habilita~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regI(9));

-- Location: IOIBUF_X30_Y24_N22
\entradaSegmen[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaSegmen(5),
	o => \entradaSegmen[5]~input_o\);

-- Location: FF_X30_Y20_N9
\regS[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaSegmen[5]~input_o\,
	sload => VCC,
	ena => \habilita~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regS(9));

-- Location: LCCOMB_X30_Y20_N10
\regReult[9]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regReult[9]~26_combout\ = (regI(9) & ((regS(9) & (\regReult[8]~25\ & VCC)) # (!regS(9) & (!\regReult[8]~25\)))) # (!regI(9) & ((regS(9) & (!\regReult[8]~25\)) # (!regS(9) & ((\regReult[8]~25\) # (GND)))))
-- \regReult[9]~27\ = CARRY((regI(9) & (!regS(9) & !\regReult[8]~25\)) # (!regI(9) & ((!\regReult[8]~25\) # (!regS(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => regI(9),
	datab => regS(9),
	datad => VCC,
	cin => \regReult[8]~25\,
	combout => \regReult[9]~26_combout\,
	cout => \regReult[9]~27\);

-- Location: FF_X30_Y20_N11
\regReult[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regReult[9]~26_combout\,
	ena => \habilita~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regReult(9));

-- Location: LCCOMB_X29_Y20_N12
\resultado[9]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \resultado[9]$latch~combout\ = (GLOBAL(\habResultado~inputclkctrl_outclk\) & ((regReult(9)))) # (!GLOBAL(\habResultado~inputclkctrl_outclk\) & (\resultado[9]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resultado[9]$latch~combout\,
	datab => regReult(9),
	datad => \habResultado~inputclkctrl_outclk\,
	combout => \resultado[9]$latch~combout\);

-- Location: IOIBUF_X30_Y24_N1
\entradaSegmen[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaSegmen(6),
	o => \entradaSegmen[6]~input_o\);

-- Location: FF_X29_Y20_N13
\regS[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaSegmen[6]~input_o\,
	sload => VCC,
	ena => \habilita~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regS(10));

-- Location: IOIBUF_X34_Y19_N1
\entradaIndice[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaIndice(10),
	o => \entradaIndice[10]~input_o\);

-- Location: LCCOMB_X31_Y20_N14
\regI[10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regI[10]~feeder_combout\ = \entradaIndice[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaIndice[10]~input_o\,
	combout => \regI[10]~feeder_combout\);

-- Location: FF_X31_Y20_N15
\regI[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regI[10]~feeder_combout\,
	ena => \habilita~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regI(10));

-- Location: LCCOMB_X30_Y20_N12
\regReult[10]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regReult[10]~28_combout\ = ((regS(10) $ (regI(10) $ (!\regReult[9]~27\)))) # (GND)
-- \regReult[10]~29\ = CARRY((regS(10) & ((regI(10)) # (!\regReult[9]~27\))) # (!regS(10) & (regI(10) & !\regReult[9]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => regS(10),
	datab => regI(10),
	datad => VCC,
	cin => \regReult[9]~27\,
	combout => \regReult[10]~28_combout\,
	cout => \regReult[10]~29\);

-- Location: FF_X30_Y20_N13
\regReult[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regReult[10]~28_combout\,
	ena => \habilita~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regReult(10));

-- Location: LCCOMB_X29_Y20_N0
\resultado[10]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \resultado[10]$latch~combout\ = (GLOBAL(\habResultado~inputclkctrl_outclk\) & ((regReult(10)))) # (!GLOBAL(\habResultado~inputclkctrl_outclk\) & (\resultado[10]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \habResultado~inputclkctrl_outclk\,
	datab => \resultado[10]$latch~combout\,
	datad => regReult(10),
	combout => \resultado[10]$latch~combout\);

-- Location: IOIBUF_X25_Y24_N15
\entradaSegmen[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaSegmen(7),
	o => \entradaSegmen[7]~input_o\);

-- Location: FF_X29_Y20_N17
\regS[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaSegmen[7]~input_o\,
	sload => VCC,
	ena => \habilita~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regS(11));

-- Location: IOIBUF_X34_Y17_N22
\entradaIndice[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaIndice(11),
	o => \entradaIndice[11]~input_o\);

-- Location: LCCOMB_X31_Y20_N12
\regI[11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regI[11]~feeder_combout\ = \entradaIndice[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaIndice[11]~input_o\,
	combout => \regI[11]~feeder_combout\);

-- Location: FF_X31_Y20_N13
\regI[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regI[11]~feeder_combout\,
	ena => \habilita~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regI(11));

-- Location: LCCOMB_X30_Y20_N14
\regReult[11]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regReult[11]~30_combout\ = (regS(11) & ((regI(11) & (\regReult[10]~29\ & VCC)) # (!regI(11) & (!\regReult[10]~29\)))) # (!regS(11) & ((regI(11) & (!\regReult[10]~29\)) # (!regI(11) & ((\regReult[10]~29\) # (GND)))))
-- \regReult[11]~31\ = CARRY((regS(11) & (!regI(11) & !\regReult[10]~29\)) # (!regS(11) & ((!\regReult[10]~29\) # (!regI(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => regS(11),
	datab => regI(11),
	datad => VCC,
	cin => \regReult[10]~29\,
	combout => \regReult[11]~30_combout\,
	cout => \regReult[11]~31\);

-- Location: FF_X30_Y20_N15
\regReult[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regReult[11]~30_combout\,
	ena => \habilita~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regReult(11));

-- Location: LCCOMB_X31_Y20_N22
\resultado[11]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \resultado[11]$latch~combout\ = (GLOBAL(\habResultado~inputclkctrl_outclk\) & ((regReult(11)))) # (!GLOBAL(\habResultado~inputclkctrl_outclk\) & (\resultado[11]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \habResultado~inputclkctrl_outclk\,
	datab => \resultado[11]$latch~combout\,
	datad => regReult(11),
	combout => \resultado[11]$latch~combout\);

-- Location: IOIBUF_X18_Y24_N15
\entradaIndice[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaIndice(12),
	o => \entradaIndice[12]~input_o\);

-- Location: FF_X29_Y20_N25
\regI[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaIndice[12]~input_o\,
	sload => VCC,
	ena => \habilita~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regI(12));

-- Location: IOIBUF_X34_Y12_N22
\entradaSegmen[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaSegmen(8),
	o => \entradaSegmen[8]~input_o\);

-- Location: FF_X31_Y20_N19
\regS[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaSegmen[8]~input_o\,
	sload => VCC,
	ena => \habilita~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regS(12));

-- Location: LCCOMB_X30_Y20_N16
\regReult[12]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regReult[12]~32_combout\ = ((regI(12) $ (regS(12) $ (!\regReult[11]~31\)))) # (GND)
-- \regReult[12]~33\ = CARRY((regI(12) & ((regS(12)) # (!\regReult[11]~31\))) # (!regI(12) & (regS(12) & !\regReult[11]~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => regI(12),
	datab => regS(12),
	datad => VCC,
	cin => \regReult[11]~31\,
	combout => \regReult[12]~32_combout\,
	cout => \regReult[12]~33\);

-- Location: FF_X30_Y20_N17
\regReult[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regReult[12]~32_combout\,
	ena => \habilita~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regReult(12));

-- Location: LCCOMB_X29_Y20_N8
\resultado[12]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \resultado[12]$latch~combout\ = (GLOBAL(\habResultado~inputclkctrl_outclk\) & ((regReult(12)))) # (!GLOBAL(\habResultado~inputclkctrl_outclk\) & (\resultado[12]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \habResultado~inputclkctrl_outclk\,
	datab => \resultado[12]$latch~combout\,
	datad => regReult(12),
	combout => \resultado[12]$latch~combout\);

-- Location: IOIBUF_X34_Y12_N15
\entradaIndice[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaIndice(13),
	o => \entradaIndice[13]~input_o\);

-- Location: FF_X29_Y20_N1
\regI[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaIndice[13]~input_o\,
	sload => VCC,
	ena => \habilita~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regI(13));

-- Location: IOIBUF_X23_Y24_N22
\entradaSegmen[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaSegmen(9),
	o => \entradaSegmen[9]~input_o\);

-- Location: FF_X31_Y20_N17
\regS[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaSegmen[9]~input_o\,
	sload => VCC,
	ena => \habilita~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regS(13));

-- Location: LCCOMB_X30_Y20_N18
\regReult[13]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regReult[13]~34_combout\ = (regI(13) & ((regS(13) & (\regReult[12]~33\ & VCC)) # (!regS(13) & (!\regReult[12]~33\)))) # (!regI(13) & ((regS(13) & (!\regReult[12]~33\)) # (!regS(13) & ((\regReult[12]~33\) # (GND)))))
-- \regReult[13]~35\ = CARRY((regI(13) & (!regS(13) & !\regReult[12]~33\)) # (!regI(13) & ((!\regReult[12]~33\) # (!regS(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => regI(13),
	datab => regS(13),
	datad => VCC,
	cin => \regReult[12]~33\,
	combout => \regReult[13]~34_combout\,
	cout => \regReult[13]~35\);

-- Location: FF_X30_Y20_N19
\regReult[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regReult[13]~34_combout\,
	ena => \habilita~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regReult(13));

-- Location: LCCOMB_X29_Y20_N10
\resultado[13]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \resultado[13]$latch~combout\ = (GLOBAL(\habResultado~inputclkctrl_outclk\) & ((regReult(13)))) # (!GLOBAL(\habResultado~inputclkctrl_outclk\) & (\resultado[13]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \habResultado~inputclkctrl_outclk\,
	datab => \resultado[13]$latch~combout\,
	datad => regReult(13),
	combout => \resultado[13]$latch~combout\);

-- Location: IOIBUF_X34_Y12_N1
\entradaSegmen[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaSegmen(10),
	o => \entradaSegmen[10]~input_o\);

-- Location: FF_X29_Y20_N11
\regS[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaSegmen[10]~input_o\,
	sload => VCC,
	ena => \habilita~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regS(14));

-- Location: IOIBUF_X34_Y12_N8
\entradaIndice[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaIndice(14),
	o => \entradaIndice[14]~input_o\);

-- Location: FF_X31_Y20_N23
\regI[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaIndice[14]~input_o\,
	sload => VCC,
	ena => \habilita~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regI(14));

-- Location: LCCOMB_X30_Y20_N20
\regReult[14]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regReult[14]~36_combout\ = ((regS(14) $ (regI(14) $ (!\regReult[13]~35\)))) # (GND)
-- \regReult[14]~37\ = CARRY((regS(14) & ((regI(14)) # (!\regReult[13]~35\))) # (!regS(14) & (regI(14) & !\regReult[13]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => regS(14),
	datab => regI(14),
	datad => VCC,
	cin => \regReult[13]~35\,
	combout => \regReult[14]~36_combout\,
	cout => \regReult[14]~37\);

-- Location: FF_X30_Y20_N21
\regReult[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regReult[14]~36_combout\,
	ena => \habilita~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regReult(14));

-- Location: LCCOMB_X29_Y20_N24
\resultado[14]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \resultado[14]$latch~combout\ = (GLOBAL(\habResultado~inputclkctrl_outclk\) & (regReult(14))) # (!GLOBAL(\habResultado~inputclkctrl_outclk\) & ((\resultado[14]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regReult(14),
	datab => \resultado[14]$latch~combout\,
	datad => \habResultado~inputclkctrl_outclk\,
	combout => \resultado[14]$latch~combout\);

-- Location: IOIBUF_X34_Y7_N15
\entradaIndice[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaIndice(15),
	o => \entradaIndice[15]~input_o\);

-- Location: LCCOMB_X28_Y20_N12
\regI[15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regI[15]~feeder_combout\ = \entradaIndice[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaIndice[15]~input_o\,
	combout => \regI[15]~feeder_combout\);

-- Location: FF_X28_Y20_N13
\regI[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regI[15]~feeder_combout\,
	ena => \habilita~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regI(15));

-- Location: IOIBUF_X21_Y24_N8
\entradaSegmen[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaSegmen(11),
	o => \entradaSegmen[11]~input_o\);

-- Location: FF_X29_Y20_N5
\regS[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaSegmen[11]~input_o\,
	sload => VCC,
	ena => \habilita~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regS(15));

-- Location: LCCOMB_X30_Y20_N22
\regReult[15]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regReult[15]~38_combout\ = (regI(15) & ((regS(15) & (\regReult[14]~37\ & VCC)) # (!regS(15) & (!\regReult[14]~37\)))) # (!regI(15) & ((regS(15) & (!\regReult[14]~37\)) # (!regS(15) & ((\regReult[14]~37\) # (GND)))))
-- \regReult[15]~39\ = CARRY((regI(15) & (!regS(15) & !\regReult[14]~37\)) # (!regI(15) & ((!\regReult[14]~37\) # (!regS(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => regI(15),
	datab => regS(15),
	datad => VCC,
	cin => \regReult[14]~37\,
	combout => \regReult[15]~38_combout\,
	cout => \regReult[15]~39\);

-- Location: FF_X30_Y20_N23
\regReult[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regReult[15]~38_combout\,
	ena => \habilita~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regReult(15));

-- Location: LCCOMB_X29_Y20_N16
\resultado[15]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \resultado[15]$latch~combout\ = (GLOBAL(\habResultado~inputclkctrl_outclk\) & ((regReult(15)))) # (!GLOBAL(\habResultado~inputclkctrl_outclk\) & (\resultado[15]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \habResultado~inputclkctrl_outclk\,
	datab => \resultado[15]$latch~combout\,
	datad => regReult(15),
	combout => \resultado[15]$latch~combout\);

-- Location: IOIBUF_X16_Y24_N15
\entradaSegmen[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaSegmen(12),
	o => \entradaSegmen[12]~input_o\);

-- Location: LCCOMB_X26_Y20_N16
\regS[16]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regS[16]~feeder_combout\ = \entradaSegmen[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaSegmen[12]~input_o\,
	combout => \regS[16]~feeder_combout\);

-- Location: FF_X26_Y20_N17
\regS[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regS[16]~feeder_combout\,
	ena => \habilita~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regS(16));

-- Location: LCCOMB_X30_Y20_N24
\regReult[16]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regReult[16]~40_combout\ = (regS(16) & (\regReult[15]~39\ $ (GND))) # (!regS(16) & (!\regReult[15]~39\ & VCC))
-- \regReult[16]~41\ = CARRY((regS(16) & !\regReult[15]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => regS(16),
	datad => VCC,
	cin => \regReult[15]~39\,
	combout => \regReult[16]~40_combout\,
	cout => \regReult[16]~41\);

-- Location: FF_X30_Y20_N25
\regReult[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regReult[16]~40_combout\,
	ena => \habilita~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regReult(16));

-- Location: LCCOMB_X31_Y20_N16
\resultado[16]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \resultado[16]$latch~combout\ = (GLOBAL(\habResultado~inputclkctrl_outclk\) & ((regReult(16)))) # (!GLOBAL(\habResultado~inputclkctrl_outclk\) & (\resultado[16]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \habResultado~inputclkctrl_outclk\,
	datab => \resultado[16]$latch~combout\,
	datad => regReult(16),
	combout => \resultado[16]$latch~combout\);

-- Location: IOIBUF_X18_Y24_N8
\entradaSegmen[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaSegmen(13),
	o => \entradaSegmen[13]~input_o\);

-- Location: LCCOMB_X26_Y20_N30
\regS[17]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regS[17]~feeder_combout\ = \entradaSegmen[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaSegmen[13]~input_o\,
	combout => \regS[17]~feeder_combout\);

-- Location: FF_X26_Y20_N31
\regS[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regS[17]~feeder_combout\,
	ena => \habilita~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regS(17));

-- Location: LCCOMB_X30_Y20_N26
\regReult[17]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regReult[17]~42_combout\ = (regS(17) & (!\regReult[16]~41\)) # (!regS(17) & ((\regReult[16]~41\) # (GND)))
-- \regReult[17]~43\ = CARRY((!\regReult[16]~41\) # (!regS(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => regS(17),
	datad => VCC,
	cin => \regReult[16]~41\,
	combout => \regReult[17]~42_combout\,
	cout => \regReult[17]~43\);

-- Location: FF_X30_Y20_N27
\regReult[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regReult[17]~42_combout\,
	ena => \habilita~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regReult(17));

-- Location: LCCOMB_X29_Y20_N14
\resultado[17]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \resultado[17]$latch~combout\ = (GLOBAL(\habResultado~inputclkctrl_outclk\) & ((regReult(17)))) # (!GLOBAL(\habResultado~inputclkctrl_outclk\) & (\resultado[17]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \habResultado~inputclkctrl_outclk\,
	datab => \resultado[17]$latch~combout\,
	datad => regReult(17),
	combout => \resultado[17]$latch~combout\);

-- Location: IOIBUF_X28_Y24_N22
\entradaSegmen[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaSegmen(14),
	o => \entradaSegmen[14]~input_o\);

-- Location: FF_X29_Y20_N21
\regS[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaSegmen[14]~input_o\,
	sload => VCC,
	ena => \habilita~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regS(18));

-- Location: LCCOMB_X30_Y20_N28
\regReult[18]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regReult[18]~44_combout\ = (regS(18) & (\regReult[17]~43\ $ (GND))) # (!regS(18) & (!\regReult[17]~43\ & VCC))
-- \regReult[18]~45\ = CARRY((regS(18) & !\regReult[17]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => regS(18),
	datad => VCC,
	cin => \regReult[17]~43\,
	combout => \regReult[18]~44_combout\,
	cout => \regReult[18]~45\);

-- Location: FF_X30_Y20_N29
\regReult[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regReult[18]~44_combout\,
	ena => \habilita~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regReult(18));

-- Location: LCCOMB_X29_Y20_N4
\resultado[18]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \resultado[18]$latch~combout\ = (GLOBAL(\habResultado~inputclkctrl_outclk\) & ((regReult(18)))) # (!GLOBAL(\habResultado~inputclkctrl_outclk\) & (\resultado[18]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \habResultado~inputclkctrl_outclk\,
	datab => \resultado[18]$latch~combout\,
	datad => regReult(18),
	combout => \resultado[18]$latch~combout\);

-- Location: IOIBUF_X16_Y24_N22
\entradaSegmen[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaSegmen(15),
	o => \entradaSegmen[15]~input_o\);

-- Location: FF_X26_Y20_N1
\regS[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaSegmen[15]~input_o\,
	sload => VCC,
	ena => \habilita~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regS(19));

-- Location: LCCOMB_X30_Y20_N30
\regReult[19]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regReult[19]~46_combout\ = regS(19) $ (\regReult[18]~45\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => regS(19),
	cin => \regReult[18]~45\,
	combout => \regReult[19]~46_combout\);

-- Location: FF_X30_Y20_N31
\regReult[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regReult[19]~46_combout\,
	ena => \habilita~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regReult(19));

-- Location: LCCOMB_X29_Y20_N20
\resultado[19]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \resultado[19]$latch~combout\ = (GLOBAL(\habResultado~inputclkctrl_outclk\) & (regReult(19))) # (!GLOBAL(\habResultado~inputclkctrl_outclk\) & ((\resultado[19]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regReult(19),
	datab => \resultado[19]$latch~combout\,
	datad => \habResultado~inputclkctrl_outclk\,
	combout => \resultado[19]$latch~combout\);

ww_resultado(0) <= \resultado[0]~output_o\;

ww_resultado(1) <= \resultado[1]~output_o\;

ww_resultado(2) <= \resultado[2]~output_o\;

ww_resultado(3) <= \resultado[3]~output_o\;

ww_resultado(4) <= \resultado[4]~output_o\;

ww_resultado(5) <= \resultado[5]~output_o\;

ww_resultado(6) <= \resultado[6]~output_o\;

ww_resultado(7) <= \resultado[7]~output_o\;

ww_resultado(8) <= \resultado[8]~output_o\;

ww_resultado(9) <= \resultado[9]~output_o\;

ww_resultado(10) <= \resultado[10]~output_o\;

ww_resultado(11) <= \resultado[11]~output_o\;

ww_resultado(12) <= \resultado[12]~output_o\;

ww_resultado(13) <= \resultado[13]~output_o\;

ww_resultado(14) <= \resultado[14]~output_o\;

ww_resultado(15) <= \resultado[15]~output_o\;

ww_resultado(16) <= \resultado[16]~output_o\;

ww_resultado(17) <= \resultado[17]~output_o\;

ww_resultado(18) <= \resultado[18]~output_o\;

ww_resultado(19) <= \resultado[19]~output_o\;
END structure;


