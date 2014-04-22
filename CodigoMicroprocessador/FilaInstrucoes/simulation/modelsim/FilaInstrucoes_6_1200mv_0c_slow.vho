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

-- DATE "02/25/2014 23:19:05"

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
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	FilaInstrucoes IS
    PORT (
	entradaDados : IN std_logic_vector(15 DOWNTO 0);
	saidaDados : BUFFER std_logic_vector(15 DOWNTO 0);
	clock : IN std_logic;
	reset : IN std_logic;
	leituraEscrita : IN std_logic;
	estaCheio : BUFFER std_logic;
	estaVazio : BUFFER std_logic
	);
END FilaInstrucoes;

-- Design Ports Information
-- saidaDados[0]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDados[1]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDados[2]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDados[3]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDados[4]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDados[5]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDados[6]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDados[7]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDados[8]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDados[9]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDados[10]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDados[11]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDados[12]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDados[13]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDados[14]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDados[15]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estaCheio	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estaVazio	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leituraEscrita	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaDados[0]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaDados[1]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaDados[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaDados[3]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaDados[4]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaDados[5]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaDados[6]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaDados[7]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaDados[8]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaDados[9]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaDados[10]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaDados[11]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaDados[12]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaDados[13]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaDados[14]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaDados[15]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF FilaInstrucoes IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_entradaDados : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_saidaDados : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_clock : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_leituraEscrita : std_logic;
SIGNAL ww_estaCheio : std_logic;
SIGNAL ww_estaVazio : std_logic;
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \saidaDados[0]~output_o\ : std_logic;
SIGNAL \saidaDados[1]~output_o\ : std_logic;
SIGNAL \saidaDados[2]~output_o\ : std_logic;
SIGNAL \saidaDados[3]~output_o\ : std_logic;
SIGNAL \saidaDados[4]~output_o\ : std_logic;
SIGNAL \saidaDados[5]~output_o\ : std_logic;
SIGNAL \saidaDados[6]~output_o\ : std_logic;
SIGNAL \saidaDados[7]~output_o\ : std_logic;
SIGNAL \saidaDados[8]~output_o\ : std_logic;
SIGNAL \saidaDados[9]~output_o\ : std_logic;
SIGNAL \saidaDados[10]~output_o\ : std_logic;
SIGNAL \saidaDados[11]~output_o\ : std_logic;
SIGNAL \saidaDados[12]~output_o\ : std_logic;
SIGNAL \saidaDados[13]~output_o\ : std_logic;
SIGNAL \saidaDados[14]~output_o\ : std_logic;
SIGNAL \saidaDados[15]~output_o\ : std_logic;
SIGNAL \estaCheio~output_o\ : std_logic;
SIGNAL \estaVazio~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \leituraEscrita~input_o\ : std_logic;
SIGNAL \ponteiroLeitura[0]~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \ponteiroLeitura[1]~1_combout\ : std_logic;
SIGNAL \rstProcLeitura~combout\ : std_logic;
SIGNAL \entradaDados[0]~input_o\ : std_logic;
SIGNAL \memoria[3][0]~feeder_combout\ : std_logic;
SIGNAL \ponteiroEscrita[0]~0_combout\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \ponteiroEscrita[1]~1_combout\ : std_logic;
SIGNAL \Decoder1~0_combout\ : std_logic;
SIGNAL \memoria[3][0]~q\ : std_logic;
SIGNAL \memoria[1][0]~feeder_combout\ : std_logic;
SIGNAL \Decoder1~1_combout\ : std_logic;
SIGNAL \memoria[1][0]~q\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \memoria[5][0]~feeder_combout\ : std_logic;
SIGNAL \Decoder1~2_combout\ : std_logic;
SIGNAL \memoria[5][0]~q\ : std_logic;
SIGNAL \saidaDados[1]~0_combout\ : std_logic;
SIGNAL \saidaDados[0]~reg0_q\ : std_logic;
SIGNAL \entradaDados[1]~input_o\ : std_logic;
SIGNAL \memoria[1][1]~feeder_combout\ : std_logic;
SIGNAL \memoria[1][1]~q\ : std_logic;
SIGNAL \memoria[3][1]~feeder_combout\ : std_logic;
SIGNAL \memoria[3][1]~q\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \memoria[5][1]~feeder_combout\ : std_logic;
SIGNAL \memoria[5][1]~q\ : std_logic;
SIGNAL \saidaDados[1]~reg0_q\ : std_logic;
SIGNAL \entradaDados[2]~input_o\ : std_logic;
SIGNAL \memoria[1][2]~feeder_combout\ : std_logic;
SIGNAL \memoria[1][2]~q\ : std_logic;
SIGNAL \memoria[3][2]~feeder_combout\ : std_logic;
SIGNAL \memoria[3][2]~q\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \memoria[5][2]~q\ : std_logic;
SIGNAL \saidaDados[2]~reg0_q\ : std_logic;
SIGNAL \entradaDados[3]~input_o\ : std_logic;
SIGNAL \memoria[1][3]~feeder_combout\ : std_logic;
SIGNAL \memoria[1][3]~q\ : std_logic;
SIGNAL \memoria[3][3]~feeder_combout\ : std_logic;
SIGNAL \memoria[3][3]~q\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \memoria[5][3]~feeder_combout\ : std_logic;
SIGNAL \memoria[5][3]~q\ : std_logic;
SIGNAL \saidaDados[3]~reg0_q\ : std_logic;
SIGNAL \entradaDados[4]~input_o\ : std_logic;
SIGNAL \memoria[3][4]~q\ : std_logic;
SIGNAL \memoria[1][4]~q\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \memoria[5][4]~feeder_combout\ : std_logic;
SIGNAL \memoria[5][4]~q\ : std_logic;
SIGNAL \saidaDados[4]~reg0_q\ : std_logic;
SIGNAL \entradaDados[5]~input_o\ : std_logic;
SIGNAL \memoria[1][5]~feeder_combout\ : std_logic;
SIGNAL \memoria[1][5]~q\ : std_logic;
SIGNAL \memoria[3][5]~feeder_combout\ : std_logic;
SIGNAL \memoria[3][5]~q\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \memoria[5][5]~feeder_combout\ : std_logic;
SIGNAL \memoria[5][5]~q\ : std_logic;
SIGNAL \saidaDados[5]~reg0_q\ : std_logic;
SIGNAL \entradaDados[6]~input_o\ : std_logic;
SIGNAL \memoria[1][6]~q\ : std_logic;
SIGNAL \memoria[3][6]~feeder_combout\ : std_logic;
SIGNAL \memoria[3][6]~q\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \memoria[5][6]~feeder_combout\ : std_logic;
SIGNAL \memoria[5][6]~q\ : std_logic;
SIGNAL \saidaDados[6]~reg0_q\ : std_logic;
SIGNAL \entradaDados[7]~input_o\ : std_logic;
SIGNAL \memoria[1][7]~q\ : std_logic;
SIGNAL \memoria[3][7]~q\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \memoria[5][7]~q\ : std_logic;
SIGNAL \saidaDados[7]~reg0_q\ : std_logic;
SIGNAL \entradaDados[8]~input_o\ : std_logic;
SIGNAL \memoria[2][0]~q\ : std_logic;
SIGNAL \memoria[0][0]~feeder_combout\ : std_logic;
SIGNAL \memoria[0][0]~q\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \memoria[4][0]~q\ : std_logic;
SIGNAL \saidaDados[8]~reg0_q\ : std_logic;
SIGNAL \entradaDados[9]~input_o\ : std_logic;
SIGNAL \memoria[0][1]~q\ : std_logic;
SIGNAL \memoria[2][1]~q\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \memoria[4][1]~q\ : std_logic;
SIGNAL \saidaDados[9]~reg0_q\ : std_logic;
SIGNAL \entradaDados[10]~input_o\ : std_logic;
SIGNAL \memoria[2][2]~feeder_combout\ : std_logic;
SIGNAL \memoria[2][2]~q\ : std_logic;
SIGNAL \memoria[0][2]~feeder_combout\ : std_logic;
SIGNAL \memoria[0][2]~q\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \memoria[4][2]~feeder_combout\ : std_logic;
SIGNAL \memoria[4][2]~q\ : std_logic;
SIGNAL \saidaDados[10]~reg0_q\ : std_logic;
SIGNAL \entradaDados[11]~input_o\ : std_logic;
SIGNAL \memoria[0][3]~feeder_combout\ : std_logic;
SIGNAL \memoria[0][3]~q\ : std_logic;
SIGNAL \memoria[2][3]~q\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \memoria[4][3]~q\ : std_logic;
SIGNAL \saidaDados[11]~reg0_q\ : std_logic;
SIGNAL \entradaDados[12]~input_o\ : std_logic;
SIGNAL \memoria[0][4]~feeder_combout\ : std_logic;
SIGNAL \memoria[0][4]~q\ : std_logic;
SIGNAL \memoria[2][4]~feeder_combout\ : std_logic;
SIGNAL \memoria[2][4]~q\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \memoria[4][4]~feeder_combout\ : std_logic;
SIGNAL \memoria[4][4]~q\ : std_logic;
SIGNAL \saidaDados[12]~reg0_q\ : std_logic;
SIGNAL \entradaDados[13]~input_o\ : std_logic;
SIGNAL \memoria[2][5]~feeder_combout\ : std_logic;
SIGNAL \memoria[2][5]~q\ : std_logic;
SIGNAL \memoria[0][5]~q\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \memoria[4][5]~feeder_combout\ : std_logic;
SIGNAL \memoria[4][5]~q\ : std_logic;
SIGNAL \saidaDados[13]~reg0_q\ : std_logic;
SIGNAL \entradaDados[14]~input_o\ : std_logic;
SIGNAL \memoria[2][6]~q\ : std_logic;
SIGNAL \memoria[0][6]~feeder_combout\ : std_logic;
SIGNAL \memoria[0][6]~q\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \memoria[4][6]~q\ : std_logic;
SIGNAL \saidaDados[14]~reg0_q\ : std_logic;
SIGNAL \entradaDados[15]~input_o\ : std_logic;
SIGNAL \memoria[0][7]~feeder_combout\ : std_logic;
SIGNAL \memoria[0][7]~q\ : std_logic;
SIGNAL \memoria[2][7]~q\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \memoria[4][7]~q\ : std_logic;
SIGNAL \saidaDados[15]~reg0_q\ : std_logic;
SIGNAL \ponteiroEscrita[2]~2_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL ponteiroLeitura : std_logic_vector(2 DOWNTO 0);
SIGNAL ponteiroEscrita : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_rstProcLeitura~combout\ : std_logic;

BEGIN

ww_entradaDados <= entradaDados;
saidaDados <= ww_saidaDados;
ww_clock <= clock;
ww_reset <= reset;
ww_leituraEscrita <= leituraEscrita;
estaCheio <= ww_estaCheio;
estaVazio <= ww_estaVazio;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\ALT_INV_rstProcLeitura~combout\ <= NOT \rstProcLeitura~combout\;

-- Location: IOOBUF_X33_Y12_N9
\saidaDados[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saidaDados[0]~reg0_q\,
	devoe => ww_devoe,
	o => \saidaDados[0]~output_o\);

-- Location: IOOBUF_X31_Y31_N9
\saidaDados[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saidaDados[1]~reg0_q\,
	devoe => ww_devoe,
	o => \saidaDados[1]~output_o\);

-- Location: IOOBUF_X33_Y15_N2
\saidaDados[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saidaDados[2]~reg0_q\,
	devoe => ww_devoe,
	o => \saidaDados[2]~output_o\);

-- Location: IOOBUF_X33_Y15_N9
\saidaDados[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saidaDados[3]~reg0_q\,
	devoe => ww_devoe,
	o => \saidaDados[3]~output_o\);

-- Location: IOOBUF_X20_Y31_N2
\saidaDados[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saidaDados[4]~reg0_q\,
	devoe => ww_devoe,
	o => \saidaDados[4]~output_o\);

-- Location: IOOBUF_X24_Y31_N9
\saidaDados[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saidaDados[5]~reg0_q\,
	devoe => ww_devoe,
	o => \saidaDados[5]~output_o\);

-- Location: IOOBUF_X33_Y25_N2
\saidaDados[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saidaDados[6]~reg0_q\,
	devoe => ww_devoe,
	o => \saidaDados[6]~output_o\);

-- Location: IOOBUF_X33_Y27_N2
\saidaDados[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saidaDados[7]~reg0_q\,
	devoe => ww_devoe,
	o => \saidaDados[7]~output_o\);

-- Location: IOOBUF_X29_Y31_N2
\saidaDados[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saidaDados[8]~reg0_q\,
	devoe => ww_devoe,
	o => \saidaDados[8]~output_o\);

-- Location: IOOBUF_X33_Y12_N2
\saidaDados[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saidaDados[9]~reg0_q\,
	devoe => ww_devoe,
	o => \saidaDados[9]~output_o\);

-- Location: IOOBUF_X33_Y25_N9
\saidaDados[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saidaDados[10]~reg0_q\,
	devoe => ww_devoe,
	o => \saidaDados[10]~output_o\);

-- Location: IOOBUF_X33_Y28_N9
\saidaDados[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saidaDados[11]~reg0_q\,
	devoe => ww_devoe,
	o => \saidaDados[11]~output_o\);

-- Location: IOOBUF_X33_Y11_N9
\saidaDados[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saidaDados[12]~reg0_q\,
	devoe => ww_devoe,
	o => \saidaDados[12]~output_o\);

-- Location: IOOBUF_X33_Y27_N9
\saidaDados[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saidaDados[13]~reg0_q\,
	devoe => ww_devoe,
	o => \saidaDados[13]~output_o\);

-- Location: IOOBUF_X33_Y11_N2
\saidaDados[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saidaDados[14]~reg0_q\,
	devoe => ww_devoe,
	o => \saidaDados[14]~output_o\);

-- Location: IOOBUF_X29_Y31_N9
\saidaDados[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saidaDados[15]~reg0_q\,
	devoe => ww_devoe,
	o => \saidaDados[15]~output_o\);

-- Location: IOOBUF_X33_Y14_N2
\estaCheio~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal2~0_combout\,
	devoe => ww_devoe,
	o => \estaCheio~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\estaVazio~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal1~0_combout\,
	devoe => ww_devoe,
	o => \estaVazio~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\clock~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G17
\clock~inputclkctrl\ : cycloneiv_clkctrl
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

-- Location: IOIBUF_X33_Y22_N8
\leituraEscrita~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_leituraEscrita,
	o => \leituraEscrita~input_o\);

-- Location: LCCOMB_X30_Y23_N18
\ponteiroLeitura[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ponteiroLeitura[0]~0_combout\ = ponteiroLeitura(0) $ (\leituraEscrita~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ponteiroLeitura(0),
	datad => \leituraEscrita~input_o\,
	combout => \ponteiroLeitura[0]~0_combout\);

-- Location: IOIBUF_X16_Y0_N22
\reset~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X30_Y23_N8
\ponteiroLeitura[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ponteiroLeitura[1]~1_combout\ = ponteiroLeitura(1) $ (((ponteiroLeitura(0) & \leituraEscrita~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ponteiroLeitura(0),
	datac => ponteiroLeitura(1),
	datad => \leituraEscrita~input_o\,
	combout => \ponteiroLeitura[1]~1_combout\);

-- Location: FF_X30_Y23_N9
\ponteiroLeitura[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ponteiroLeitura[1]~1_combout\,
	clrn => \ALT_INV_rstProcLeitura~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ponteiroLeitura(1));

-- Location: LCCOMB_X30_Y23_N28
rstProcLeitura : cycloneiv_lcell_comb
-- Equation(s):
-- \rstProcLeitura~combout\ = ((ponteiroLeitura(1) & ponteiroLeitura(0))) # (!\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => ponteiroLeitura(1),
	datad => ponteiroLeitura(0),
	combout => \rstProcLeitura~combout\);

-- Location: FF_X30_Y23_N19
\ponteiroLeitura[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ponteiroLeitura[0]~0_combout\,
	clrn => \ALT_INV_rstProcLeitura~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ponteiroLeitura(0));

-- Location: IOIBUF_X22_Y31_N8
\entradaDados[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaDados(0),
	o => \entradaDados[0]~input_o\);

-- Location: LCCOMB_X25_Y23_N28
\memoria[3][0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \memoria[3][0]~feeder_combout\ = \entradaDados[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaDados[0]~input_o\,
	combout => \memoria[3][0]~feeder_combout\);

-- Location: LCCOMB_X26_Y23_N8
\ponteiroEscrita[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ponteiroEscrita[0]~0_combout\ = \leituraEscrita~input_o\ $ (!ponteiroEscrita(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \leituraEscrita~input_o\,
	datac => ponteiroEscrita(0),
	combout => \ponteiroEscrita[0]~0_combout\);

-- Location: CLKCTRL_G19
\reset~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X26_Y23_N9
\ponteiroEscrita[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ponteiroEscrita[0]~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ponteiroEscrita(0));

-- Location: LCCOMB_X26_Y23_N2
\ponteiroEscrita[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ponteiroEscrita[1]~1_combout\ = ponteiroEscrita(1) $ (((!\leituraEscrita~input_o\ & ponteiroEscrita(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \leituraEscrita~input_o\,
	datac => ponteiroEscrita(1),
	datad => ponteiroEscrita(0),
	combout => \ponteiroEscrita[1]~1_combout\);

-- Location: FF_X26_Y23_N3
\ponteiroEscrita[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ponteiroEscrita[1]~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ponteiroEscrita(1));

-- Location: LCCOMB_X26_Y23_N14
\Decoder1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Decoder1~0_combout\ = (\reset~input_o\ & (!\leituraEscrita~input_o\ & (!ponteiroEscrita(1) & ponteiroEscrita(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \leituraEscrita~input_o\,
	datac => ponteiroEscrita(1),
	datad => ponteiroEscrita(0),
	combout => \Decoder1~0_combout\);

-- Location: FF_X25_Y23_N29
\memoria[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \memoria[3][0]~feeder_combout\,
	ena => \Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoria[3][0]~q\);

-- Location: LCCOMB_X26_Y23_N16
\memoria[1][0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \memoria[1][0]~feeder_combout\ = \entradaDados[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaDados[0]~input_o\,
	combout => \memoria[1][0]~feeder_combout\);

-- Location: LCCOMB_X26_Y23_N0
\Decoder1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Decoder1~1_combout\ = (\reset~input_o\ & (!\leituraEscrita~input_o\ & (!ponteiroEscrita(0) & !ponteiroEscrita(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \leituraEscrita~input_o\,
	datac => ponteiroEscrita(0),
	datad => ponteiroEscrita(1),
	combout => \Decoder1~1_combout\);

-- Location: FF_X26_Y23_N17
\memoria[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \memoria[1][0]~feeder_combout\,
	ena => \Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoria[1][0]~q\);

-- Location: LCCOMB_X29_Y23_N16
\Mux15~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (ponteiroLeitura(0) & (\memoria[3][0]~q\)) # (!ponteiroLeitura(0) & ((\memoria[1][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ponteiroLeitura(0),
	datab => \memoria[3][0]~q\,
	datad => \memoria[1][0]~q\,
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X29_Y23_N22
\memoria[5][0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \memoria[5][0]~feeder_combout\ = \entradaDados[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \entradaDados[0]~input_o\,
	combout => \memoria[5][0]~feeder_combout\);

-- Location: LCCOMB_X26_Y23_N6
\Decoder1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Decoder1~2_combout\ = (\reset~input_o\ & (!\leituraEscrita~input_o\ & (!ponteiroEscrita(0) & ponteiroEscrita(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \leituraEscrita~input_o\,
	datac => ponteiroEscrita(0),
	datad => ponteiroEscrita(1),
	combout => \Decoder1~2_combout\);

-- Location: FF_X29_Y23_N23
\memoria[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \memoria[5][0]~feeder_combout\,
	ena => \Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoria[5][0]~q\);

-- Location: LCCOMB_X30_Y23_N6
\saidaDados[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saidaDados[1]~0_combout\ = (\reset~input_o\ & (\leituraEscrita~input_o\ & ((!ponteiroLeitura(0)) # (!ponteiroLeitura(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \leituraEscrita~input_o\,
	datac => ponteiroLeitura(1),
	datad => ponteiroLeitura(0),
	combout => \saidaDados[1]~0_combout\);

-- Location: FF_X29_Y23_N17
\saidaDados[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Mux15~0_combout\,
	asdata => \memoria[5][0]~q\,
	sload => ponteiroLeitura(1),
	ena => \saidaDados[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saidaDados[0]~reg0_q\);

-- Location: IOIBUF_X24_Y31_N1
\entradaDados[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaDados(1),
	o => \entradaDados[1]~input_o\);

-- Location: LCCOMB_X25_Y23_N8
\memoria[1][1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \memoria[1][1]~feeder_combout\ = \entradaDados[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaDados[1]~input_o\,
	combout => \memoria[1][1]~feeder_combout\);

-- Location: FF_X25_Y23_N9
\memoria[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \memoria[1][1]~feeder_combout\,
	ena => \Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoria[1][1]~q\);

-- Location: LCCOMB_X25_Y23_N6
\memoria[3][1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \memoria[3][1]~feeder_combout\ = \entradaDados[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaDados[1]~input_o\,
	combout => \memoria[3][1]~feeder_combout\);

-- Location: FF_X25_Y23_N7
\memoria[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \memoria[3][1]~feeder_combout\,
	ena => \Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoria[3][1]~q\);

-- Location: LCCOMB_X29_Y23_N26
\Mux14~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (ponteiroLeitura(0) & ((\memoria[3][1]~q\))) # (!ponteiroLeitura(0) & (\memoria[1][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ponteiroLeitura(0),
	datab => \memoria[1][1]~q\,
	datad => \memoria[3][1]~q\,
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X27_Y23_N24
\memoria[5][1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \memoria[5][1]~feeder_combout\ = \entradaDados[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaDados[1]~input_o\,
	combout => \memoria[5][1]~feeder_combout\);

-- Location: FF_X27_Y23_N25
\memoria[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \memoria[5][1]~feeder_combout\,
	ena => \Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoria[5][1]~q\);

-- Location: FF_X29_Y23_N27
\saidaDados[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Mux14~0_combout\,
	asdata => \memoria[5][1]~q\,
	sload => ponteiroLeitura(1),
	ena => \saidaDados[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saidaDados[1]~reg0_q\);

-- Location: IOIBUF_X33_Y14_N8
\entradaDados[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaDados(2),
	o => \entradaDados[2]~input_o\);

-- Location: LCCOMB_X25_Y23_N24
\memoria[1][2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \memoria[1][2]~feeder_combout\ = \entradaDados[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaDados[2]~input_o\,
	combout => \memoria[1][2]~feeder_combout\);

-- Location: FF_X25_Y23_N25
\memoria[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \memoria[1][2]~feeder_combout\,
	ena => \Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoria[1][2]~q\);

-- Location: LCCOMB_X25_Y23_N22
\memoria[3][2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \memoria[3][2]~feeder_combout\ = \entradaDados[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaDados[2]~input_o\,
	combout => \memoria[3][2]~feeder_combout\);

-- Location: FF_X25_Y23_N23
\memoria[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \memoria[3][2]~feeder_combout\,
	ena => \Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoria[3][2]~q\);

-- Location: LCCOMB_X29_Y23_N28
\Mux13~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (ponteiroLeitura(0) & ((\memoria[3][2]~q\))) # (!ponteiroLeitura(0) & (\memoria[1][2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ponteiroLeitura(0),
	datab => \memoria[1][2]~q\,
	datad => \memoria[3][2]~q\,
	combout => \Mux13~0_combout\);

-- Location: FF_X27_Y23_N19
\memoria[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[2]~input_o\,
	sload => VCC,
	ena => \Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoria[5][2]~q\);

-- Location: FF_X29_Y23_N29
\saidaDados[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Mux13~0_combout\,
	asdata => \memoria[5][2]~q\,
	sload => ponteiroLeitura(1),
	ena => \saidaDados[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saidaDados[2]~reg0_q\);

-- Location: IOIBUF_X26_Y31_N1
\entradaDados[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaDados(3),
	o => \entradaDados[3]~input_o\);

-- Location: LCCOMB_X25_Y23_N12
\memoria[1][3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \memoria[1][3]~feeder_combout\ = \entradaDados[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaDados[3]~input_o\,
	combout => \memoria[1][3]~feeder_combout\);

-- Location: FF_X25_Y23_N13
\memoria[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \memoria[1][3]~feeder_combout\,
	ena => \Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoria[1][3]~q\);

-- Location: LCCOMB_X25_Y23_N14
\memoria[3][3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \memoria[3][3]~feeder_combout\ = \entradaDados[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaDados[3]~input_o\,
	combout => \memoria[3][3]~feeder_combout\);

-- Location: FF_X25_Y23_N15
\memoria[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \memoria[3][3]~feeder_combout\,
	ena => \Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoria[3][3]~q\);

-- Location: LCCOMB_X29_Y23_N10
\Mux12~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (ponteiroLeitura(0) & ((\memoria[3][3]~q\))) # (!ponteiroLeitura(0) & (\memoria[1][3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ponteiroLeitura(0),
	datab => \memoria[1][3]~q\,
	datad => \memoria[3][3]~q\,
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X29_Y23_N8
\memoria[5][3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \memoria[5][3]~feeder_combout\ = \entradaDados[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaDados[3]~input_o\,
	combout => \memoria[5][3]~feeder_combout\);

-- Location: FF_X29_Y23_N9
\memoria[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \memoria[5][3]~feeder_combout\,
	ena => \Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoria[5][3]~q\);

-- Location: FF_X29_Y23_N11
\saidaDados[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Mux12~0_combout\,
	asdata => \memoria[5][3]~q\,
	sload => ponteiroLeitura(1),
	ena => \saidaDados[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saidaDados[3]~reg0_q\);

-- Location: IOIBUF_X22_Y31_N1
\entradaDados[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaDados(4),
	o => \entradaDados[4]~input_o\);

-- Location: FF_X25_Y23_N11
\memoria[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[4]~input_o\,
	sload => VCC,
	ena => \Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoria[3][4]~q\);

-- Location: FF_X25_Y23_N17
\memoria[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[4]~input_o\,
	sload => VCC,
	ena => \Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoria[1][4]~q\);

-- Location: LCCOMB_X29_Y23_N12
\Mux11~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (ponteiroLeitura(0) & (\memoria[3][4]~q\)) # (!ponteiroLeitura(0) & ((\memoria[1][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ponteiroLeitura(0),
	datab => \memoria[3][4]~q\,
	datad => \memoria[1][4]~q\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X29_Y23_N14
\memoria[5][4]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \memoria[5][4]~feeder_combout\ = \entradaDados[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \entradaDados[4]~input_o\,
	combout => \memoria[5][4]~feeder_combout\);

-- Location: FF_X29_Y23_N15
\memoria[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \memoria[5][4]~feeder_combout\,
	ena => \Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoria[5][4]~q\);

-- Location: FF_X29_Y23_N13
\saidaDados[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Mux11~0_combout\,
	asdata => \memoria[5][4]~q\,
	sload => ponteiroLeitura(1),
	ena => \saidaDados[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saidaDados[4]~reg0_q\);

-- Location: IOIBUF_X33_Y28_N1
\entradaDados[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaDados(5),
	o => \entradaDados[5]~input_o\);

-- Location: LCCOMB_X25_Y23_N0
\memoria[1][5]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \memoria[1][5]~feeder_combout\ = \entradaDados[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaDados[5]~input_o\,
	combout => \memoria[1][5]~feeder_combout\);

-- Location: FF_X25_Y23_N1
\memoria[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \memoria[1][5]~feeder_combout\,
	ena => \Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoria[1][5]~q\);

-- Location: LCCOMB_X25_Y23_N30
\memoria[3][5]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \memoria[3][5]~feeder_combout\ = \entradaDados[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaDados[5]~input_o\,
	combout => \memoria[3][5]~feeder_combout\);

-- Location: FF_X25_Y23_N31
\memoria[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \memoria[3][5]~feeder_combout\,
	ena => \Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoria[3][5]~q\);

-- Location: LCCOMB_X29_Y23_N18
\Mux10~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (ponteiroLeitura(0) & ((\memoria[3][5]~q\))) # (!ponteiroLeitura(0) & (\memoria[1][5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ponteiroLeitura(0),
	datab => \memoria[1][5]~q\,
	datad => \memoria[3][5]~q\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X29_Y23_N4
\memoria[5][5]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \memoria[5][5]~feeder_combout\ = \entradaDados[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaDados[5]~input_o\,
	combout => \memoria[5][5]~feeder_combout\);

-- Location: FF_X29_Y23_N5
\memoria[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \memoria[5][5]~feeder_combout\,
	ena => \Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoria[5][5]~q\);

-- Location: FF_X29_Y23_N19
\saidaDados[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Mux10~0_combout\,
	asdata => \memoria[5][5]~q\,
	sload => ponteiroLeitura(1),
	ena => \saidaDados[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saidaDados[5]~reg0_q\);

-- Location: IOIBUF_X31_Y31_N1
\entradaDados[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaDados(6),
	o => \entradaDados[6]~input_o\);

-- Location: FF_X26_Y23_N11
\memoria[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[6]~input_o\,
	sload => VCC,
	ena => \Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoria[1][6]~q\);

-- Location: LCCOMB_X25_Y23_N2
\memoria[3][6]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \memoria[3][6]~feeder_combout\ = \entradaDados[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaDados[6]~input_o\,
	combout => \memoria[3][6]~feeder_combout\);

-- Location: FF_X25_Y23_N3
\memoria[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \memoria[3][6]~feeder_combout\,
	ena => \Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoria[3][6]~q\);

-- Location: LCCOMB_X29_Y23_N20
\Mux9~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (ponteiroLeitura(0) & ((\memoria[3][6]~q\))) # (!ponteiroLeitura(0) & (\memoria[1][6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ponteiroLeitura(0),
	datab => \memoria[1][6]~q\,
	datad => \memoria[3][6]~q\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X29_Y23_N30
\memoria[5][6]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \memoria[5][6]~feeder_combout\ = \entradaDados[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \entradaDados[6]~input_o\,
	combout => \memoria[5][6]~feeder_combout\);

-- Location: FF_X29_Y23_N31
\memoria[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \memoria[5][6]~feeder_combout\,
	ena => \Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoria[5][6]~q\);

-- Location: FF_X29_Y23_N21
\saidaDados[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Mux9~0_combout\,
	asdata => \memoria[5][6]~q\,
	sload => ponteiroLeitura(1),
	ena => \saidaDados[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saidaDados[6]~reg0_q\);

-- Location: IOIBUF_X26_Y0_N1
\entradaDados[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaDados(7),
	o => \entradaDados[7]~input_o\);

-- Location: FF_X26_Y23_N5
\memoria[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[7]~input_o\,
	sload => VCC,
	ena => \Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoria[1][7]~q\);

-- Location: FF_X27_Y23_N29
\memoria[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[7]~input_o\,
	sload => VCC,
	ena => \Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoria[3][7]~q\);

-- Location: LCCOMB_X30_Y23_N24
\Mux8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (ponteiroLeitura(0) & ((\memoria[3][7]~q\))) # (!ponteiroLeitura(0) & (\memoria[1][7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoria[1][7]~q\,
	datab => \memoria[3][7]~q\,
	datad => ponteiroLeitura(0),
	combout => \Mux8~0_combout\);

-- Location: FF_X27_Y23_N11
\memoria[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[7]~input_o\,
	sload => VCC,
	ena => \Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoria[5][7]~q\);

-- Location: FF_X30_Y23_N25
\saidaDados[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Mux8~0_combout\,
	asdata => \memoria[5][7]~q\,
	sload => ponteiroLeitura(1),
	ena => \saidaDados[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saidaDados[7]~reg0_q\);

-- Location: IOIBUF_X33_Y10_N8
\entradaDados[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaDados(8),
	o => \entradaDados[8]~input_o\);

-- Location: FF_X27_Y23_N13
\memoria[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[8]~input_o\,
	sload => VCC,
	ena => \Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoria[2][0]~q\);

-- Location: LCCOMB_X26_Y23_N22
\memoria[0][0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \memoria[0][0]~feeder_combout\ = \entradaDados[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaDados[8]~input_o\,
	combout => \memoria[0][0]~feeder_combout\);

-- Location: FF_X26_Y23_N23
\memoria[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \memoria[0][0]~feeder_combout\,
	ena => \Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoria[0][0]~q\);

-- Location: LCCOMB_X30_Y23_N22
\Mux7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (ponteiroLeitura(0) & (\memoria[2][0]~q\)) # (!ponteiroLeitura(0) & ((\memoria[0][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoria[2][0]~q\,
	datab => ponteiroLeitura(0),
	datad => \memoria[0][0]~q\,
	combout => \Mux7~0_combout\);

-- Location: FF_X27_Y23_N15
\memoria[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[8]~input_o\,
	sload => VCC,
	ena => \Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoria[4][0]~q\);

-- Location: FF_X30_Y23_N23
\saidaDados[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Mux7~0_combout\,
	asdata => \memoria[4][0]~q\,
	sload => ponteiroLeitura(1),
	ena => \saidaDados[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saidaDados[8]~reg0_q\);

-- Location: IOIBUF_X26_Y0_N8
\entradaDados[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaDados(9),
	o => \entradaDados[9]~input_o\);

-- Location: FF_X26_Y23_N21
\memoria[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[9]~input_o\,
	sload => VCC,
	ena => \Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoria[0][1]~q\);

-- Location: FF_X27_Y23_N21
\memoria[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[9]~input_o\,
	sload => VCC,
	ena => \Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoria[2][1]~q\);

-- Location: LCCOMB_X30_Y23_N16
\Mux6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (ponteiroLeitura(0) & ((\memoria[2][1]~q\))) # (!ponteiroLeitura(0) & (\memoria[0][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoria[0][1]~q\,
	datab => \memoria[2][1]~q\,
	datad => ponteiroLeitura(0),
	combout => \Mux6~0_combout\);

-- Location: FF_X27_Y23_N7
\memoria[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[9]~input_o\,
	sload => VCC,
	ena => \Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoria[4][1]~q\);

-- Location: FF_X30_Y23_N17
\saidaDados[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Mux6~0_combout\,
	asdata => \memoria[4][1]~q\,
	sload => ponteiroLeitura(1),
	ena => \saidaDados[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saidaDados[9]~reg0_q\);

-- Location: IOIBUF_X16_Y31_N1
\entradaDados[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaDados(10),
	o => \entradaDados[10]~input_o\);

-- Location: LCCOMB_X25_Y23_N4
\memoria[2][2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \memoria[2][2]~feeder_combout\ = \entradaDados[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaDados[10]~input_o\,
	combout => \memoria[2][2]~feeder_combout\);

-- Location: FF_X25_Y23_N5
\memoria[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \memoria[2][2]~feeder_combout\,
	ena => \Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoria[2][2]~q\);

-- Location: LCCOMB_X26_Y23_N18
\memoria[0][2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \memoria[0][2]~feeder_combout\ = \entradaDados[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaDados[10]~input_o\,
	combout => \memoria[0][2]~feeder_combout\);

-- Location: FF_X26_Y23_N19
\memoria[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \memoria[0][2]~feeder_combout\,
	ena => \Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoria[0][2]~q\);

-- Location: LCCOMB_X30_Y23_N30
\Mux5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (ponteiroLeitura(0) & (\memoria[2][2]~q\)) # (!ponteiroLeitura(0) & ((\memoria[0][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoria[2][2]~q\,
	datab => ponteiroLeitura(0),
	datad => \memoria[0][2]~q\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X27_Y23_N4
\memoria[4][2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \memoria[4][2]~feeder_combout\ = \entradaDados[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaDados[10]~input_o\,
	combout => \memoria[4][2]~feeder_combout\);

-- Location: FF_X27_Y23_N5
\memoria[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \memoria[4][2]~feeder_combout\,
	ena => \Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoria[4][2]~q\);

-- Location: FF_X30_Y23_N31
\saidaDados[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Mux5~0_combout\,
	asdata => \memoria[4][2]~q\,
	sload => ponteiroLeitura(1),
	ena => \saidaDados[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saidaDados[10]~reg0_q\);

-- Location: IOIBUF_X16_Y31_N8
\entradaDados[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaDados(11),
	o => \entradaDados[11]~input_o\);

-- Location: LCCOMB_X26_Y23_N12
\memoria[0][3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \memoria[0][3]~feeder_combout\ = \entradaDados[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaDados[11]~input_o\,
	combout => \memoria[0][3]~feeder_combout\);

-- Location: FF_X26_Y23_N13
\memoria[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \memoria[0][3]~feeder_combout\,
	ena => \Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoria[0][3]~q\);

-- Location: FF_X27_Y23_N3
\memoria[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[11]~input_o\,
	sload => VCC,
	ena => \Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoria[2][3]~q\);

-- Location: LCCOMB_X30_Y23_N0
\Mux4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (ponteiroLeitura(0) & ((\memoria[2][3]~q\))) # (!ponteiroLeitura(0) & (\memoria[0][3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ponteiroLeitura(0),
	datab => \memoria[0][3]~q\,
	datad => \memoria[2][3]~q\,
	combout => \Mux4~0_combout\);

-- Location: FF_X27_Y23_N1
\memoria[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[11]~input_o\,
	sload => VCC,
	ena => \Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoria[4][3]~q\);

-- Location: FF_X30_Y23_N1
\saidaDados[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Mux4~0_combout\,
	asdata => \memoria[4][3]~q\,
	sload => ponteiroLeitura(1),
	ena => \saidaDados[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saidaDados[11]~reg0_q\);

-- Location: IOIBUF_X33_Y22_N1
\entradaDados[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaDados(12),
	o => \entradaDados[12]~input_o\);

-- Location: LCCOMB_X26_Y23_N26
\memoria[0][4]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \memoria[0][4]~feeder_combout\ = \entradaDados[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaDados[12]~input_o\,
	combout => \memoria[0][4]~feeder_combout\);

-- Location: FF_X26_Y23_N27
\memoria[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \memoria[0][4]~feeder_combout\,
	ena => \Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoria[0][4]~q\);

-- Location: LCCOMB_X25_Y23_N26
\memoria[2][4]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \memoria[2][4]~feeder_combout\ = \entradaDados[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaDados[12]~input_o\,
	combout => \memoria[2][4]~feeder_combout\);

-- Location: FF_X25_Y23_N27
\memoria[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \memoria[2][4]~feeder_combout\,
	ena => \Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoria[2][4]~q\);

-- Location: LCCOMB_X30_Y23_N14
\Mux3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (ponteiroLeitura(0) & ((\memoria[2][4]~q\))) # (!ponteiroLeitura(0) & (\memoria[0][4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoria[0][4]~q\,
	datab => ponteiroLeitura(0),
	datad => \memoria[2][4]~q\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X27_Y23_N30
\memoria[4][4]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \memoria[4][4]~feeder_combout\ = \entradaDados[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaDados[12]~input_o\,
	combout => \memoria[4][4]~feeder_combout\);

-- Location: FF_X27_Y23_N31
\memoria[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \memoria[4][4]~feeder_combout\,
	ena => \Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoria[4][4]~q\);

-- Location: FF_X30_Y23_N15
\saidaDados[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Mux3~0_combout\,
	asdata => \memoria[4][4]~q\,
	sload => ponteiroLeitura(1),
	ena => \saidaDados[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saidaDados[12]~reg0_q\);

-- Location: IOIBUF_X26_Y31_N8
\entradaDados[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaDados(13),
	o => \entradaDados[13]~input_o\);

-- Location: LCCOMB_X27_Y23_N8
\memoria[2][5]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \memoria[2][5]~feeder_combout\ = \entradaDados[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaDados[13]~input_o\,
	combout => \memoria[2][5]~feeder_combout\);

-- Location: FF_X27_Y23_N9
\memoria[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \memoria[2][5]~feeder_combout\,
	ena => \Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoria[2][5]~q\);

-- Location: FF_X26_Y23_N29
\memoria[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[13]~input_o\,
	sload => VCC,
	ena => \Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoria[0][5]~q\);

-- Location: LCCOMB_X30_Y23_N20
\Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (ponteiroLeitura(0) & (\memoria[2][5]~q\)) # (!ponteiroLeitura(0) & ((\memoria[0][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoria[2][5]~q\,
	datab => \memoria[0][5]~q\,
	datad => ponteiroLeitura(0),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X27_Y23_N26
\memoria[4][5]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \memoria[4][5]~feeder_combout\ = \entradaDados[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaDados[13]~input_o\,
	combout => \memoria[4][5]~feeder_combout\);

-- Location: FF_X27_Y23_N27
\memoria[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \memoria[4][5]~feeder_combout\,
	ena => \Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoria[4][5]~q\);

-- Location: FF_X30_Y23_N21
\saidaDados[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Mux2~0_combout\,
	asdata => \memoria[4][5]~q\,
	sload => ponteiroLeitura(1),
	ena => \saidaDados[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saidaDados[13]~reg0_q\);

-- Location: IOIBUF_X33_Y24_N8
\entradaDados[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaDados(14),
	o => \entradaDados[14]~input_o\);

-- Location: FF_X25_Y23_N21
\memoria[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[14]~input_o\,
	sload => VCC,
	ena => \Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoria[2][6]~q\);

-- Location: LCCOMB_X26_Y23_N30
\memoria[0][6]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \memoria[0][6]~feeder_combout\ = \entradaDados[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaDados[14]~input_o\,
	combout => \memoria[0][6]~feeder_combout\);

-- Location: FF_X26_Y23_N31
\memoria[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \memoria[0][6]~feeder_combout\,
	ena => \Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoria[0][6]~q\);

-- Location: LCCOMB_X30_Y23_N10
\Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (ponteiroLeitura(0) & (\memoria[2][6]~q\)) # (!ponteiroLeitura(0) & ((\memoria[0][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoria[2][6]~q\,
	datab => ponteiroLeitura(0),
	datad => \memoria[0][6]~q\,
	combout => \Mux1~0_combout\);

-- Location: FF_X27_Y23_N17
\memoria[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[14]~input_o\,
	sload => VCC,
	ena => \Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoria[4][6]~q\);

-- Location: FF_X30_Y23_N11
\saidaDados[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Mux1~0_combout\,
	asdata => \memoria[4][6]~q\,
	sload => ponteiroLeitura(1),
	ena => \saidaDados[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saidaDados[14]~reg0_q\);

-- Location: IOIBUF_X33_Y24_N1
\entradaDados[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaDados(15),
	o => \entradaDados[15]~input_o\);

-- Location: LCCOMB_X26_Y23_N24
\memoria[0][7]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \memoria[0][7]~feeder_combout\ = \entradaDados[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaDados[15]~input_o\,
	combout => \memoria[0][7]~feeder_combout\);

-- Location: FF_X26_Y23_N25
\memoria[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \memoria[0][7]~feeder_combout\,
	ena => \Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoria[0][7]~q\);

-- Location: FF_X25_Y23_N19
\memoria[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[15]~input_o\,
	sload => VCC,
	ena => \Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoria[2][7]~q\);

-- Location: LCCOMB_X30_Y23_N12
\Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (ponteiroLeitura(0) & ((\memoria[2][7]~q\))) # (!ponteiroLeitura(0) & (\memoria[0][7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ponteiroLeitura(0),
	datab => \memoria[0][7]~q\,
	datad => \memoria[2][7]~q\,
	combout => \Mux0~0_combout\);

-- Location: FF_X27_Y23_N23
\memoria[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[15]~input_o\,
	sload => VCC,
	ena => \Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoria[4][7]~q\);

-- Location: FF_X30_Y23_N13
\saidaDados[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Mux0~0_combout\,
	asdata => \memoria[4][7]~q\,
	sload => ponteiroLeitura(1),
	ena => \saidaDados[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saidaDados[15]~reg0_q\);

-- Location: LCCOMB_X26_Y22_N0
\ponteiroEscrita[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ponteiroEscrita[2]~2_combout\ = ponteiroEscrita(2) $ (((ponteiroEscrita(1) & (!\leituraEscrita~input_o\ & ponteiroEscrita(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ponteiroEscrita(1),
	datab => \leituraEscrita~input_o\,
	datac => ponteiroEscrita(2),
	datad => ponteiroEscrita(0),
	combout => \ponteiroEscrita[2]~2_combout\);

-- Location: FF_X26_Y22_N1
\ponteiroEscrita[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ponteiroEscrita[2]~2_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ponteiroEscrita(2));

-- Location: LCCOMB_X26_Y22_N14
\Equal2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (ponteiroEscrita(0) & (ponteiroEscrita(1) & !ponteiroEscrita(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ponteiroEscrita(0),
	datac => ponteiroEscrita(1),
	datad => ponteiroEscrita(2),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X26_Y22_N8
\Equal1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!ponteiroEscrita(0) & (!ponteiroEscrita(1) & !ponteiroEscrita(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ponteiroEscrita(0),
	datac => ponteiroEscrita(1),
	datad => ponteiroEscrita(2),
	combout => \Equal1~0_combout\);

ww_saidaDados(0) <= \saidaDados[0]~output_o\;

ww_saidaDados(1) <= \saidaDados[1]~output_o\;

ww_saidaDados(2) <= \saidaDados[2]~output_o\;

ww_saidaDados(3) <= \saidaDados[3]~output_o\;

ww_saidaDados(4) <= \saidaDados[4]~output_o\;

ww_saidaDados(5) <= \saidaDados[5]~output_o\;

ww_saidaDados(6) <= \saidaDados[6]~output_o\;

ww_saidaDados(7) <= \saidaDados[7]~output_o\;

ww_saidaDados(8) <= \saidaDados[8]~output_o\;

ww_saidaDados(9) <= \saidaDados[9]~output_o\;

ww_saidaDados(10) <= \saidaDados[10]~output_o\;

ww_saidaDados(11) <= \saidaDados[11]~output_o\;

ww_saidaDados(12) <= \saidaDados[12]~output_o\;

ww_saidaDados(13) <= \saidaDados[13]~output_o\;

ww_saidaDados(14) <= \saidaDados[14]~output_o\;

ww_saidaDados(15) <= \saidaDados[15]~output_o\;

ww_estaCheio <= \estaCheio~output_o\;

ww_estaVazio <= \estaVazio~output_o\;
END structure;


