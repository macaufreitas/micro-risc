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

-- DATE "03/10/2014 18:31:26"

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

ENTITY 	RegistroPropositoGeral IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	habilita : IN std_logic;
	leitura_Escrita : IN std_logic;
	seletor : IN std_logic_vector(2 DOWNTO 0);
	entradaDados : IN std_logic_vector(15 DOWNTO 0);
	saidaDados : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END RegistroPropositoGeral;

-- Design Ports Information
-- saidaDados[0]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDados[1]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDados[2]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDados[3]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDados[4]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDados[5]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDados[6]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDados[7]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDados[8]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDados[9]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDados[10]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDados[11]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDados[12]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDados[13]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDados[14]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDados[15]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seletor[0]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seletor[1]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seletor[2]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- habilita	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leitura_Escrita	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaDados[0]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaDados[1]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaDados[2]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaDados[3]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaDados[4]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaDados[5]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaDados[6]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaDados[7]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaDados[8]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaDados[9]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaDados[10]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaDados[11]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaDados[12]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaDados[13]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaDados[14]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaDados[15]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF RegistroPropositoGeral IS
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
SIGNAL ww_reset : std_logic;
SIGNAL ww_habilita : std_logic;
SIGNAL ww_leitura_Escrita : std_logic;
SIGNAL ww_seletor : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_entradaDados : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_saidaDados : std_logic_vector(15 DOWNTO 0);
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
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \seletor[2]~input_o\ : std_logic;
SIGNAL \seletor[1]~input_o\ : std_logic;
SIGNAL \entradaDados[0]~input_o\ : std_logic;
SIGNAL \BX[0]~feeder_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \seletor[0]~input_o\ : std_logic;
SIGNAL \habilita~input_o\ : std_logic;
SIGNAL \leitura_Escrita~input_o\ : std_logic;
SIGNAL \ProcessoResetEscrita~0_combout\ : std_logic;
SIGNAL \Mux15~7_combout\ : std_logic;
SIGNAL \Mux15~4_combout\ : std_logic;
SIGNAL \Mux15~6_combout\ : std_logic;
SIGNAL \Mux15~5_combout\ : std_logic;
SIGNAL \Mux143~2_combout\ : std_logic;
SIGNAL \Mux143~3_combout\ : std_logic;
SIGNAL \Mux15~3_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux15~2_combout\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \Mux143~0_combout\ : std_logic;
SIGNAL \Mux143~1_combout\ : std_logic;
SIGNAL \Mux143~4_combout\ : std_logic;
SIGNAL \ProcessoLeitura~0_combout\ : std_logic;
SIGNAL \saidaDados[0]~reg0_q\ : std_logic;
SIGNAL \entradaDados[1]~input_o\ : std_logic;
SIGNAL \BX[1]~feeder_combout\ : std_logic;
SIGNAL \Mux142~2_combout\ : std_logic;
SIGNAL \Mux142~3_combout\ : std_logic;
SIGNAL \DI[1]~feeder_combout\ : std_logic;
SIGNAL \SI[1]~feeder_combout\ : std_logic;
SIGNAL \Mux142~0_combout\ : std_logic;
SIGNAL \Mux142~1_combout\ : std_logic;
SIGNAL \Mux142~4_combout\ : std_logic;
SIGNAL \saidaDados[1]~reg0_q\ : std_logic;
SIGNAL \entradaDados[2]~input_o\ : std_logic;
SIGNAL \CX[2]~feeder_combout\ : std_logic;
SIGNAL \Mux141~2_combout\ : std_logic;
SIGNAL \Mux141~3_combout\ : std_logic;
SIGNAL \Mux141~0_combout\ : std_logic;
SIGNAL \Mux141~1_combout\ : std_logic;
SIGNAL \Mux141~4_combout\ : std_logic;
SIGNAL \saidaDados[2]~reg0_q\ : std_logic;
SIGNAL \entradaDados[3]~input_o\ : std_logic;
SIGNAL \CX[3]~feeder_combout\ : std_logic;
SIGNAL \Mux140~2_combout\ : std_logic;
SIGNAL \BX[3]~feeder_combout\ : std_logic;
SIGNAL \Mux140~3_combout\ : std_logic;
SIGNAL \DI[3]~feeder_combout\ : std_logic;
SIGNAL \SI[3]~feeder_combout\ : std_logic;
SIGNAL \Mux140~0_combout\ : std_logic;
SIGNAL \Mux140~1_combout\ : std_logic;
SIGNAL \Mux140~4_combout\ : std_logic;
SIGNAL \saidaDados[3]~reg0_q\ : std_logic;
SIGNAL \entradaDados[4]~input_o\ : std_logic;
SIGNAL \CX[4]~feeder_combout\ : std_logic;
SIGNAL \Mux139~2_combout\ : std_logic;
SIGNAL \Mux139~3_combout\ : std_logic;
SIGNAL \DI[4]~feeder_combout\ : std_logic;
SIGNAL \SI[4]~feeder_combout\ : std_logic;
SIGNAL \Mux139~0_combout\ : std_logic;
SIGNAL \Mux139~1_combout\ : std_logic;
SIGNAL \Mux139~4_combout\ : std_logic;
SIGNAL \saidaDados[4]~reg0_q\ : std_logic;
SIGNAL \entradaDados[5]~input_o\ : std_logic;
SIGNAL \DI[5]~feeder_combout\ : std_logic;
SIGNAL \SI[5]~feeder_combout\ : std_logic;
SIGNAL \Mux138~0_combout\ : std_logic;
SIGNAL \Mux138~1_combout\ : std_logic;
SIGNAL \BX[5]~feeder_combout\ : std_logic;
SIGNAL \CX[5]~feeder_combout\ : std_logic;
SIGNAL \Mux138~2_combout\ : std_logic;
SIGNAL \Mux138~3_combout\ : std_logic;
SIGNAL \Mux138~4_combout\ : std_logic;
SIGNAL \saidaDados[5]~reg0_q\ : std_logic;
SIGNAL \entradaDados[6]~input_o\ : std_logic;
SIGNAL \BX[6]~feeder_combout\ : std_logic;
SIGNAL \Mux137~2_combout\ : std_logic;
SIGNAL \Mux137~3_combout\ : std_logic;
SIGNAL \SI[6]~feeder_combout\ : std_logic;
SIGNAL \Mux137~0_combout\ : std_logic;
SIGNAL \DI[6]~feeder_combout\ : std_logic;
SIGNAL \Mux137~1_combout\ : std_logic;
SIGNAL \Mux137~4_combout\ : std_logic;
SIGNAL \saidaDados[6]~reg0_q\ : std_logic;
SIGNAL \entradaDados[7]~input_o\ : std_logic;
SIGNAL \Mux136~2_combout\ : std_logic;
SIGNAL \BX[7]~feeder_combout\ : std_logic;
SIGNAL \Mux136~3_combout\ : std_logic;
SIGNAL \DI[7]~feeder_combout\ : std_logic;
SIGNAL \SI[7]~feeder_combout\ : std_logic;
SIGNAL \Mux136~0_combout\ : std_logic;
SIGNAL \Mux136~1_combout\ : std_logic;
SIGNAL \Mux136~4_combout\ : std_logic;
SIGNAL \saidaDados[7]~reg0_q\ : std_logic;
SIGNAL \entradaDados[8]~input_o\ : std_logic;
SIGNAL \DI[8]~feeder_combout\ : std_logic;
SIGNAL \SI[8]~feeder_combout\ : std_logic;
SIGNAL \Mux135~0_combout\ : std_logic;
SIGNAL \Mux135~1_combout\ : std_logic;
SIGNAL \BX[8]~feeder_combout\ : std_logic;
SIGNAL \Mux135~2_combout\ : std_logic;
SIGNAL \Mux135~3_combout\ : std_logic;
SIGNAL \Mux135~4_combout\ : std_logic;
SIGNAL \saidaDados[8]~reg0_q\ : std_logic;
SIGNAL \entradaDados[9]~input_o\ : std_logic;
SIGNAL \Mux134~2_combout\ : std_logic;
SIGNAL \BX[9]~feeder_combout\ : std_logic;
SIGNAL \Mux134~3_combout\ : std_logic;
SIGNAL \DI[9]~feeder_combout\ : std_logic;
SIGNAL \SI[9]~feeder_combout\ : std_logic;
SIGNAL \Mux134~0_combout\ : std_logic;
SIGNAL \Mux134~1_combout\ : std_logic;
SIGNAL \Mux134~4_combout\ : std_logic;
SIGNAL \saidaDados[9]~reg0_q\ : std_logic;
SIGNAL \entradaDados[10]~input_o\ : std_logic;
SIGNAL \Mux133~2_combout\ : std_logic;
SIGNAL \Mux133~3_combout\ : std_logic;
SIGNAL \Mux133~0_combout\ : std_logic;
SIGNAL \Mux133~1_combout\ : std_logic;
SIGNAL \Mux133~4_combout\ : std_logic;
SIGNAL \saidaDados[10]~reg0_q\ : std_logic;
SIGNAL \entradaDados[11]~input_o\ : std_logic;
SIGNAL \BX[11]~feeder_combout\ : std_logic;
SIGNAL \Mux132~2_combout\ : std_logic;
SIGNAL \Mux132~3_combout\ : std_logic;
SIGNAL \SI[11]~feeder_combout\ : std_logic;
SIGNAL \Mux132~0_combout\ : std_logic;
SIGNAL \Mux132~1_combout\ : std_logic;
SIGNAL \Mux132~4_combout\ : std_logic;
SIGNAL \saidaDados[11]~reg0_q\ : std_logic;
SIGNAL \entradaDados[12]~input_o\ : std_logic;
SIGNAL \DI[12]~feeder_combout\ : std_logic;
SIGNAL \SI[12]~feeder_combout\ : std_logic;
SIGNAL \Mux131~0_combout\ : std_logic;
SIGNAL \Mux131~1_combout\ : std_logic;
SIGNAL \Mux131~2_combout\ : std_logic;
SIGNAL \BX[12]~feeder_combout\ : std_logic;
SIGNAL \Mux131~3_combout\ : std_logic;
SIGNAL \Mux131~4_combout\ : std_logic;
SIGNAL \saidaDados[12]~reg0_q\ : std_logic;
SIGNAL \entradaDados[13]~input_o\ : std_logic;
SIGNAL \CX[13]~feeder_combout\ : std_logic;
SIGNAL \Mux130~2_combout\ : std_logic;
SIGNAL \Mux130~3_combout\ : std_logic;
SIGNAL \DI[13]~feeder_combout\ : std_logic;
SIGNAL \SI[13]~feeder_combout\ : std_logic;
SIGNAL \Mux130~0_combout\ : std_logic;
SIGNAL \Mux130~1_combout\ : std_logic;
SIGNAL \Mux130~4_combout\ : std_logic;
SIGNAL \saidaDados[13]~reg0_q\ : std_logic;
SIGNAL \entradaDados[14]~input_o\ : std_logic;
SIGNAL \DI[14]~feeder_combout\ : std_logic;
SIGNAL \SI[14]~feeder_combout\ : std_logic;
SIGNAL \Mux129~0_combout\ : std_logic;
SIGNAL \Mux129~1_combout\ : std_logic;
SIGNAL \BX[14]~feeder_combout\ : std_logic;
SIGNAL \Mux129~2_combout\ : std_logic;
SIGNAL \Mux129~3_combout\ : std_logic;
SIGNAL \Mux129~4_combout\ : std_logic;
SIGNAL \saidaDados[14]~reg0_q\ : std_logic;
SIGNAL \entradaDados[15]~input_o\ : std_logic;
SIGNAL \Mux128~2_combout\ : std_logic;
SIGNAL \Mux128~3_combout\ : std_logic;
SIGNAL \SI[15]~feeder_combout\ : std_logic;
SIGNAL \Mux128~0_combout\ : std_logic;
SIGNAL \DI[15]~feeder_combout\ : std_logic;
SIGNAL \Mux128~1_combout\ : std_logic;
SIGNAL \Mux128~4_combout\ : std_logic;
SIGNAL \saidaDados[15]~reg0_q\ : std_logic;
SIGNAL SP : std_logic_vector(15 DOWNTO 0);
SIGNAL SI : std_logic_vector(15 DOWNTO 0);
SIGNAL DX : std_logic_vector(15 DOWNTO 0);
SIGNAL DI : std_logic_vector(15 DOWNTO 0);
SIGNAL CX : std_logic_vector(15 DOWNTO 0);
SIGNAL BX : std_logic_vector(15 DOWNTO 0);
SIGNAL BP : std_logic_vector(15 DOWNTO 0);
SIGNAL AX : std_logic_vector(15 DOWNTO 0);

BEGIN

ww_clock <= clock;
ww_reset <= reset;
ww_habilita <= habilita;
ww_leitura_Escrita <= leitura_Escrita;
ww_seletor <= seletor;
ww_entradaDados <= entradaDados;
saidaDados <= ww_saidaDados;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);

-- Location: IOOBUF_X33_Y15_N2
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

-- Location: IOOBUF_X20_Y31_N9
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

-- Location: IOOBUF_X12_Y31_N9
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

-- Location: IOOBUF_X33_Y24_N2
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

-- Location: IOOBUF_X33_Y15_N9
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

-- Location: IOOBUF_X33_Y10_N2
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

-- Location: IOOBUF_X33_Y14_N9
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

-- Location: IOOBUF_X33_Y24_N9
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

-- Location: IOOBUF_X33_Y12_N9
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

-- Location: IOOBUF_X10_Y31_N2
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

-- Location: IOOBUF_X33_Y14_N2
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

-- Location: IOOBUF_X33_Y22_N9
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

-- Location: IOOBUF_X14_Y31_N2
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

-- Location: IOOBUF_X12_Y31_N2
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

-- Location: IOOBUF_X20_Y31_N2
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

-- Location: IOOBUF_X14_Y31_N9
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

-- Location: IOIBUF_X26_Y31_N8
\seletor[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_seletor(2),
	o => \seletor[2]~input_o\);

-- Location: IOIBUF_X24_Y31_N8
\seletor[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_seletor(1),
	o => \seletor[1]~input_o\);

-- Location: IOIBUF_X33_Y25_N1
\entradaDados[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaDados(0),
	o => \entradaDados[0]~input_o\);

-- Location: LCCOMB_X24_Y29_N20
\BX[0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BX[0]~feeder_combout\ = \entradaDados[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaDados[0]~input_o\,
	combout => \BX[0]~feeder_combout\);

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

-- Location: IOIBUF_X33_Y28_N1
\seletor[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_seletor(0),
	o => \seletor[0]~input_o\);

-- Location: IOIBUF_X33_Y22_N1
\habilita~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_habilita,
	o => \habilita~input_o\);

-- Location: IOIBUF_X33_Y25_N8
\leitura_Escrita~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_leitura_Escrita,
	o => \leitura_Escrita~input_o\);

-- Location: LCCOMB_X25_Y29_N2
\ProcessoResetEscrita~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ProcessoResetEscrita~0_combout\ = (\habilita~input_o\ & !\leitura_Escrita~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \habilita~input_o\,
	datad => \leitura_Escrita~input_o\,
	combout => \ProcessoResetEscrita~0_combout\);

-- Location: LCCOMB_X25_Y29_N26
\Mux15~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~7_combout\ = (\seletor[0]~input_o\ & (!\seletor[2]~input_o\ & (\seletor[1]~input_o\ & \ProcessoResetEscrita~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[0]~input_o\,
	datab => \seletor[2]~input_o\,
	datac => \seletor[1]~input_o\,
	datad => \ProcessoResetEscrita~0_combout\,
	combout => \Mux15~7_combout\);

-- Location: FF_X24_Y29_N21
\BX[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BX[0]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Mux15~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BX(0));

-- Location: LCCOMB_X25_Y29_N20
\Mux15~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~4_combout\ = (!\seletor[0]~input_o\ & (!\seletor[2]~input_o\ & (\seletor[1]~input_o\ & \ProcessoResetEscrita~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[0]~input_o\,
	datab => \seletor[2]~input_o\,
	datac => \seletor[1]~input_o\,
	datad => \ProcessoResetEscrita~0_combout\,
	combout => \Mux15~4_combout\);

-- Location: FF_X25_Y29_N9
\DX[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[0]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux15~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DX(0));

-- Location: LCCOMB_X25_Y29_N0
\Mux15~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~6_combout\ = (!\seletor[0]~input_o\ & (!\seletor[2]~input_o\ & (!\seletor[1]~input_o\ & \ProcessoResetEscrita~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[0]~input_o\,
	datab => \seletor[2]~input_o\,
	datac => \seletor[1]~input_o\,
	datad => \ProcessoResetEscrita~0_combout\,
	combout => \Mux15~6_combout\);

-- Location: FF_X24_Y28_N27
\AX[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[0]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux15~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AX(0));

-- Location: LCCOMB_X25_Y29_N6
\Mux15~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~5_combout\ = (\seletor[0]~input_o\ & (!\seletor[2]~input_o\ & (!\seletor[1]~input_o\ & \ProcessoResetEscrita~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[0]~input_o\,
	datab => \seletor[2]~input_o\,
	datac => \seletor[1]~input_o\,
	datad => \ProcessoResetEscrita~0_combout\,
	combout => \Mux15~5_combout\);

-- Location: FF_X24_Y28_N5
\CX[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[0]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux15~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CX(0));

-- Location: LCCOMB_X24_Y28_N26
\Mux143~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux143~2_combout\ = (\seletor[1]~input_o\ & (\seletor[0]~input_o\)) # (!\seletor[1]~input_o\ & ((\seletor[0]~input_o\ & ((CX(0)))) # (!\seletor[0]~input_o\ & (AX(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[1]~input_o\,
	datab => \seletor[0]~input_o\,
	datac => AX(0),
	datad => CX(0),
	combout => \Mux143~2_combout\);

-- Location: LCCOMB_X25_Y29_N8
\Mux143~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux143~3_combout\ = (\seletor[1]~input_o\ & ((\Mux143~2_combout\ & (BX(0))) # (!\Mux143~2_combout\ & ((DX(0)))))) # (!\seletor[1]~input_o\ & (((\Mux143~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[1]~input_o\,
	datab => BX(0),
	datac => DX(0),
	datad => \Mux143~2_combout\,
	combout => \Mux143~3_combout\);

-- Location: LCCOMB_X25_Y29_N22
\Mux15~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~3_combout\ = (\seletor[0]~input_o\ & (\seletor[2]~input_o\ & (\seletor[1]~input_o\ & \ProcessoResetEscrita~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[0]~input_o\,
	datab => \seletor[2]~input_o\,
	datac => \seletor[1]~input_o\,
	datad => \ProcessoResetEscrita~0_combout\,
	combout => \Mux15~3_combout\);

-- Location: FF_X27_Y28_N11
\DI[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[0]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux15~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DI(0));

-- Location: LCCOMB_X25_Y29_N12
\Mux15~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\seletor[0]~input_o\ & (\seletor[2]~input_o\ & (!\seletor[1]~input_o\ & \ProcessoResetEscrita~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[0]~input_o\,
	datab => \seletor[2]~input_o\,
	datac => \seletor[1]~input_o\,
	datad => \ProcessoResetEscrita~0_combout\,
	combout => \Mux15~0_combout\);

-- Location: FF_X26_Y28_N1
\BP[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[0]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BP(0));

-- Location: LCCOMB_X25_Y29_N16
\Mux15~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~2_combout\ = (!\seletor[0]~input_o\ & (\seletor[2]~input_o\ & (!\seletor[1]~input_o\ & \ProcessoResetEscrita~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[0]~input_o\,
	datab => \seletor[2]~input_o\,
	datac => \seletor[1]~input_o\,
	datad => \ProcessoResetEscrita~0_combout\,
	combout => \Mux15~2_combout\);

-- Location: FF_X26_Y28_N19
\SP[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[0]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux15~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SP(0));

-- Location: LCCOMB_X25_Y29_N10
\Mux15~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = (!\seletor[0]~input_o\ & (\seletor[2]~input_o\ & (\seletor[1]~input_o\ & \ProcessoResetEscrita~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[0]~input_o\,
	datab => \seletor[2]~input_o\,
	datac => \seletor[1]~input_o\,
	datad => \ProcessoResetEscrita~0_combout\,
	combout => \Mux15~1_combout\);

-- Location: FF_X27_Y28_N29
\SI[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[0]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SI(0));

-- Location: LCCOMB_X26_Y28_N18
\Mux143~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux143~0_combout\ = (\seletor[1]~input_o\ & ((\seletor[0]~input_o\) # ((SI(0))))) # (!\seletor[1]~input_o\ & (!\seletor[0]~input_o\ & (SP(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[1]~input_o\,
	datab => \seletor[0]~input_o\,
	datac => SP(0),
	datad => SI(0),
	combout => \Mux143~0_combout\);

-- Location: LCCOMB_X26_Y28_N0
\Mux143~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux143~1_combout\ = (\seletor[0]~input_o\ & ((\Mux143~0_combout\ & (DI(0))) # (!\Mux143~0_combout\ & ((BP(0)))))) # (!\seletor[0]~input_o\ & (((\Mux143~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[0]~input_o\,
	datab => DI(0),
	datac => BP(0),
	datad => \Mux143~0_combout\,
	combout => \Mux143~1_combout\);

-- Location: LCCOMB_X25_Y29_N24
\Mux143~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux143~4_combout\ = (\seletor[2]~input_o\ & ((\Mux143~1_combout\))) # (!\seletor[2]~input_o\ & (\Mux143~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seletor[2]~input_o\,
	datac => \Mux143~3_combout\,
	datad => \Mux143~1_combout\,
	combout => \Mux143~4_combout\);

-- Location: LCCOMB_X25_Y29_N30
\ProcessoLeitura~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ProcessoLeitura~0_combout\ = (\habilita~input_o\ & \leitura_Escrita~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \habilita~input_o\,
	datad => \leitura_Escrita~input_o\,
	combout => \ProcessoLeitura~0_combout\);

-- Location: FF_X25_Y29_N25
\saidaDados[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Mux143~4_combout\,
	ena => \ProcessoLeitura~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saidaDados[0]~reg0_q\);

-- Location: IOIBUF_X33_Y28_N8
\entradaDados[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaDados(1),
	o => \entradaDados[1]~input_o\);

-- Location: LCCOMB_X26_Y29_N28
\BX[1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BX[1]~feeder_combout\ = \entradaDados[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaDados[1]~input_o\,
	combout => \BX[1]~feeder_combout\);

-- Location: FF_X26_Y29_N29
\BX[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BX[1]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Mux15~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BX(1));

-- Location: FF_X25_Y29_N5
\DX[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[1]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux15~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DX(1));

-- Location: FF_X24_Y28_N23
\AX[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[1]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux15~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AX(1));

-- Location: FF_X24_Y28_N13
\CX[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[1]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux15~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CX(1));

-- Location: LCCOMB_X24_Y28_N22
\Mux142~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux142~2_combout\ = (\seletor[1]~input_o\ & (\seletor[0]~input_o\)) # (!\seletor[1]~input_o\ & ((\seletor[0]~input_o\ & ((CX(1)))) # (!\seletor[0]~input_o\ & (AX(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[1]~input_o\,
	datab => \seletor[0]~input_o\,
	datac => AX(1),
	datad => CX(1),
	combout => \Mux142~2_combout\);

-- Location: LCCOMB_X25_Y29_N4
\Mux142~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux142~3_combout\ = (\seletor[1]~input_o\ & ((\Mux142~2_combout\ & (BX(1))) # (!\Mux142~2_combout\ & ((DX(1)))))) # (!\seletor[1]~input_o\ & (((\Mux142~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[1]~input_o\,
	datab => BX(1),
	datac => DX(1),
	datad => \Mux142~2_combout\,
	combout => \Mux142~3_combout\);

-- Location: LCCOMB_X27_Y28_N14
\DI[1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DI[1]~feeder_combout\ = \entradaDados[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaDados[1]~input_o\,
	combout => \DI[1]~feeder_combout\);

-- Location: FF_X27_Y28_N15
\DI[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \DI[1]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Mux15~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DI(1));

-- Location: FF_X26_Y28_N13
\BP[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[1]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BP(1));

-- Location: FF_X26_Y28_N7
\SP[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[1]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux15~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SP(1));

-- Location: LCCOMB_X27_Y28_N4
\SI[1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SI[1]~feeder_combout\ = \entradaDados[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaDados[1]~input_o\,
	combout => \SI[1]~feeder_combout\);

-- Location: FF_X27_Y28_N5
\SI[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \SI[1]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Mux15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SI(1));

-- Location: LCCOMB_X26_Y28_N6
\Mux142~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux142~0_combout\ = (\seletor[1]~input_o\ & ((\seletor[0]~input_o\) # ((SI(1))))) # (!\seletor[1]~input_o\ & (!\seletor[0]~input_o\ & (SP(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[1]~input_o\,
	datab => \seletor[0]~input_o\,
	datac => SP(1),
	datad => SI(1),
	combout => \Mux142~0_combout\);

-- Location: LCCOMB_X26_Y28_N12
\Mux142~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux142~1_combout\ = (\seletor[0]~input_o\ & ((\Mux142~0_combout\ & (DI(1))) # (!\Mux142~0_combout\ & ((BP(1)))))) # (!\seletor[0]~input_o\ & (((\Mux142~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[0]~input_o\,
	datab => DI(1),
	datac => BP(1),
	datad => \Mux142~0_combout\,
	combout => \Mux142~1_combout\);

-- Location: LCCOMB_X25_Y29_N18
\Mux142~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux142~4_combout\ = (\seletor[2]~input_o\ & ((\Mux142~1_combout\))) # (!\seletor[2]~input_o\ & (\Mux142~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seletor[2]~input_o\,
	datac => \Mux142~3_combout\,
	datad => \Mux142~1_combout\,
	combout => \Mux142~4_combout\);

-- Location: FF_X25_Y29_N19
\saidaDados[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Mux142~4_combout\,
	ena => \ProcessoLeitura~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saidaDados[1]~reg0_q\);

-- Location: IOIBUF_X29_Y31_N8
\entradaDados[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaDados(2),
	o => \entradaDados[2]~input_o\);

-- Location: FF_X23_Y30_N1
\BX[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[2]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux15~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BX(2));

-- Location: FF_X25_Y30_N27
\DX[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[2]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux15~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DX(2));

-- Location: FF_X24_Y28_N31
\AX[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[2]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux15~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AX(2));

-- Location: LCCOMB_X24_Y28_N24
\CX[2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CX[2]~feeder_combout\ = \entradaDados[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaDados[2]~input_o\,
	combout => \CX[2]~feeder_combout\);

-- Location: FF_X24_Y28_N25
\CX[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \CX[2]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Mux15~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CX(2));

-- Location: LCCOMB_X24_Y28_N30
\Mux141~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux141~2_combout\ = (\seletor[1]~input_o\ & (\seletor[0]~input_o\)) # (!\seletor[1]~input_o\ & ((\seletor[0]~input_o\ & ((CX(2)))) # (!\seletor[0]~input_o\ & (AX(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[1]~input_o\,
	datab => \seletor[0]~input_o\,
	datac => AX(2),
	datad => CX(2),
	combout => \Mux141~2_combout\);

-- Location: LCCOMB_X25_Y30_N26
\Mux141~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux141~3_combout\ = (\seletor[1]~input_o\ & ((\Mux141~2_combout\ & (BX(2))) # (!\Mux141~2_combout\ & ((DX(2)))))) # (!\seletor[1]~input_o\ & (((\Mux141~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[1]~input_o\,
	datab => BX(2),
	datac => DX(2),
	datad => \Mux141~2_combout\,
	combout => \Mux141~3_combout\);

-- Location: FF_X27_Y28_N19
\DI[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[2]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux15~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DI(2));

-- Location: FF_X26_Y28_N21
\BP[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[2]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BP(2));

-- Location: FF_X26_Y28_N3
\SP[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[2]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux15~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SP(2));

-- Location: FF_X27_Y28_N25
\SI[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[2]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SI(2));

-- Location: LCCOMB_X26_Y28_N2
\Mux141~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux141~0_combout\ = (\seletor[1]~input_o\ & ((\seletor[0]~input_o\) # ((SI(2))))) # (!\seletor[1]~input_o\ & (!\seletor[0]~input_o\ & (SP(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[1]~input_o\,
	datab => \seletor[0]~input_o\,
	datac => SP(2),
	datad => SI(2),
	combout => \Mux141~0_combout\);

-- Location: LCCOMB_X26_Y28_N20
\Mux141~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux141~1_combout\ = (\seletor[0]~input_o\ & ((\Mux141~0_combout\ & (DI(2))) # (!\Mux141~0_combout\ & ((BP(2)))))) # (!\seletor[0]~input_o\ & (((\Mux141~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[0]~input_o\,
	datab => DI(2),
	datac => BP(2),
	datad => \Mux141~0_combout\,
	combout => \Mux141~1_combout\);

-- Location: LCCOMB_X25_Y30_N28
\Mux141~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux141~4_combout\ = (\seletor[2]~input_o\ & ((\Mux141~1_combout\))) # (!\seletor[2]~input_o\ & (\Mux141~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[2]~input_o\,
	datac => \Mux141~3_combout\,
	datad => \Mux141~1_combout\,
	combout => \Mux141~4_combout\);

-- Location: FF_X25_Y30_N29
\saidaDados[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Mux141~4_combout\,
	ena => \ProcessoLeitura~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saidaDados[2]~reg0_q\);

-- Location: IOIBUF_X33_Y27_N1
\entradaDados[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaDados(3),
	o => \entradaDados[3]~input_o\);

-- Location: FF_X24_Y28_N7
\AX[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[3]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux15~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AX(3));

-- Location: LCCOMB_X24_Y28_N28
\CX[3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CX[3]~feeder_combout\ = \entradaDados[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaDados[3]~input_o\,
	combout => \CX[3]~feeder_combout\);

-- Location: FF_X24_Y28_N29
\CX[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \CX[3]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Mux15~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CX(3));

-- Location: LCCOMB_X24_Y28_N6
\Mux140~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux140~2_combout\ = (\seletor[1]~input_o\ & (\seletor[0]~input_o\)) # (!\seletor[1]~input_o\ & ((\seletor[0]~input_o\ & ((CX(3)))) # (!\seletor[0]~input_o\ & (AX(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[1]~input_o\,
	datab => \seletor[0]~input_o\,
	datac => AX(3),
	datad => CX(3),
	combout => \Mux140~2_combout\);

-- Location: FF_X25_Y28_N27
\DX[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[3]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux15~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DX(3));

-- Location: LCCOMB_X26_Y29_N6
\BX[3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BX[3]~feeder_combout\ = \entradaDados[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaDados[3]~input_o\,
	combout => \BX[3]~feeder_combout\);

-- Location: FF_X26_Y29_N7
\BX[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BX[3]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Mux15~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BX(3));

-- Location: LCCOMB_X25_Y28_N26
\Mux140~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux140~3_combout\ = (\seletor[1]~input_o\ & ((\Mux140~2_combout\ & ((BX(3)))) # (!\Mux140~2_combout\ & (DX(3))))) # (!\seletor[1]~input_o\ & (\Mux140~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[1]~input_o\,
	datab => \Mux140~2_combout\,
	datac => DX(3),
	datad => BX(3),
	combout => \Mux140~3_combout\);

-- Location: LCCOMB_X27_Y28_N6
\DI[3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DI[3]~feeder_combout\ = \entradaDados[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaDados[3]~input_o\,
	combout => \DI[3]~feeder_combout\);

-- Location: FF_X27_Y28_N7
\DI[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \DI[3]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Mux15~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DI(3));

-- Location: FF_X26_Y28_N17
\BP[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[3]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BP(3));

-- Location: FF_X26_Y28_N23
\SP[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[3]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux15~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SP(3));

-- Location: LCCOMB_X27_Y28_N20
\SI[3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SI[3]~feeder_combout\ = \entradaDados[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaDados[3]~input_o\,
	combout => \SI[3]~feeder_combout\);

-- Location: FF_X27_Y28_N21
\SI[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \SI[3]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Mux15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SI(3));

-- Location: LCCOMB_X26_Y28_N22
\Mux140~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux140~0_combout\ = (\seletor[1]~input_o\ & ((\seletor[0]~input_o\) # ((SI(3))))) # (!\seletor[1]~input_o\ & (!\seletor[0]~input_o\ & (SP(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[1]~input_o\,
	datab => \seletor[0]~input_o\,
	datac => SP(3),
	datad => SI(3),
	combout => \Mux140~0_combout\);

-- Location: LCCOMB_X26_Y28_N16
\Mux140~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux140~1_combout\ = (\seletor[0]~input_o\ & ((\Mux140~0_combout\ & (DI(3))) # (!\Mux140~0_combout\ & ((BP(3)))))) # (!\seletor[0]~input_o\ & (((\Mux140~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DI(3),
	datab => \seletor[0]~input_o\,
	datac => BP(3),
	datad => \Mux140~0_combout\,
	combout => \Mux140~1_combout\);

-- Location: LCCOMB_X25_Y28_N12
\Mux140~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux140~4_combout\ = (\seletor[2]~input_o\ & ((\Mux140~1_combout\))) # (!\seletor[2]~input_o\ & (\Mux140~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seletor[2]~input_o\,
	datac => \Mux140~3_combout\,
	datad => \Mux140~1_combout\,
	combout => \Mux140~4_combout\);

-- Location: FF_X25_Y28_N13
\saidaDados[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Mux140~4_combout\,
	ena => \ProcessoLeitura~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saidaDados[3]~reg0_q\);

-- Location: IOIBUF_X33_Y16_N22
\entradaDados[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaDados(4),
	o => \entradaDados[4]~input_o\);

-- Location: FF_X26_Y29_N25
\BX[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[4]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux15~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BX(4));

-- Location: FF_X25_Y28_N9
\DX[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[4]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux15~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DX(4));

-- Location: FF_X24_Y28_N3
\AX[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[4]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux15~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AX(4));

-- Location: LCCOMB_X24_Y28_N16
\CX[4]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CX[4]~feeder_combout\ = \entradaDados[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaDados[4]~input_o\,
	combout => \CX[4]~feeder_combout\);

-- Location: FF_X24_Y28_N17
\CX[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \CX[4]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Mux15~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CX(4));

-- Location: LCCOMB_X24_Y28_N2
\Mux139~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux139~2_combout\ = (\seletor[1]~input_o\ & (\seletor[0]~input_o\)) # (!\seletor[1]~input_o\ & ((\seletor[0]~input_o\ & ((CX(4)))) # (!\seletor[0]~input_o\ & (AX(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[1]~input_o\,
	datab => \seletor[0]~input_o\,
	datac => AX(4),
	datad => CX(4),
	combout => \Mux139~2_combout\);

-- Location: LCCOMB_X25_Y28_N8
\Mux139~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux139~3_combout\ = (\seletor[1]~input_o\ & ((\Mux139~2_combout\ & (BX(4))) # (!\Mux139~2_combout\ & ((DX(4)))))) # (!\seletor[1]~input_o\ & (((\Mux139~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => BX(4),
	datab => \seletor[1]~input_o\,
	datac => DX(4),
	datad => \Mux139~2_combout\,
	combout => \Mux139~3_combout\);

-- Location: LCCOMB_X27_Y28_N30
\DI[4]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DI[4]~feeder_combout\ = \entradaDados[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaDados[4]~input_o\,
	combout => \DI[4]~feeder_combout\);

-- Location: FF_X27_Y28_N31
\DI[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \DI[4]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Mux15~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DI(4));

-- Location: FF_X26_Y28_N29
\BP[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[4]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BP(4));

-- Location: FF_X26_Y28_N31
\SP[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[4]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux15~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SP(4));

-- Location: LCCOMB_X27_Y28_N12
\SI[4]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SI[4]~feeder_combout\ = \entradaDados[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaDados[4]~input_o\,
	combout => \SI[4]~feeder_combout\);

-- Location: FF_X27_Y28_N13
\SI[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \SI[4]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Mux15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SI(4));

-- Location: LCCOMB_X26_Y28_N30
\Mux139~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux139~0_combout\ = (\seletor[1]~input_o\ & ((\seletor[0]~input_o\) # ((SI(4))))) # (!\seletor[1]~input_o\ & (!\seletor[0]~input_o\ & (SP(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[1]~input_o\,
	datab => \seletor[0]~input_o\,
	datac => SP(4),
	datad => SI(4),
	combout => \Mux139~0_combout\);

-- Location: LCCOMB_X26_Y28_N28
\Mux139~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux139~1_combout\ = (\seletor[0]~input_o\ & ((\Mux139~0_combout\ & (DI(4))) # (!\Mux139~0_combout\ & ((BP(4)))))) # (!\seletor[0]~input_o\ & (((\Mux139~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DI(4),
	datab => \seletor[0]~input_o\,
	datac => BP(4),
	datad => \Mux139~0_combout\,
	combout => \Mux139~1_combout\);

-- Location: LCCOMB_X25_Y28_N10
\Mux139~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux139~4_combout\ = (\seletor[2]~input_o\ & ((\Mux139~1_combout\))) # (!\seletor[2]~input_o\ & (\Mux139~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seletor[2]~input_o\,
	datac => \Mux139~3_combout\,
	datad => \Mux139~1_combout\,
	combout => \Mux139~4_combout\);

-- Location: FF_X25_Y28_N11
\saidaDados[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Mux139~4_combout\,
	ena => \ProcessoLeitura~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saidaDados[4]~reg0_q\);

-- Location: IOIBUF_X33_Y16_N15
\entradaDados[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaDados(5),
	o => \entradaDados[5]~input_o\);

-- Location: LCCOMB_X27_Y28_N2
\DI[5]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DI[5]~feeder_combout\ = \entradaDados[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaDados[5]~input_o\,
	combout => \DI[5]~feeder_combout\);

-- Location: FF_X27_Y28_N3
\DI[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \DI[5]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Mux15~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DI(5));

-- Location: FF_X26_Y28_N9
\BP[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[5]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BP(5));

-- Location: FF_X26_Y28_N15
\SP[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[5]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux15~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SP(5));

-- Location: LCCOMB_X27_Y28_N16
\SI[5]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SI[5]~feeder_combout\ = \entradaDados[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaDados[5]~input_o\,
	combout => \SI[5]~feeder_combout\);

-- Location: FF_X27_Y28_N17
\SI[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \SI[5]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Mux15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SI(5));

-- Location: LCCOMB_X26_Y28_N14
\Mux138~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux138~0_combout\ = (\seletor[1]~input_o\ & ((\seletor[0]~input_o\) # ((SI(5))))) # (!\seletor[1]~input_o\ & (!\seletor[0]~input_o\ & (SP(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[1]~input_o\,
	datab => \seletor[0]~input_o\,
	datac => SP(5),
	datad => SI(5),
	combout => \Mux138~0_combout\);

-- Location: LCCOMB_X26_Y28_N8
\Mux138~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux138~1_combout\ = (\seletor[0]~input_o\ & ((\Mux138~0_combout\ & (DI(5))) # (!\Mux138~0_combout\ & ((BP(5)))))) # (!\seletor[0]~input_o\ & (((\Mux138~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DI(5),
	datab => \seletor[0]~input_o\,
	datac => BP(5),
	datad => \Mux138~0_combout\,
	combout => \Mux138~1_combout\);

-- Location: LCCOMB_X26_Y29_N26
\BX[5]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BX[5]~feeder_combout\ = \entradaDados[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaDados[5]~input_o\,
	combout => \BX[5]~feeder_combout\);

-- Location: FF_X26_Y29_N27
\BX[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BX[5]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Mux15~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BX(5));

-- Location: FF_X25_Y28_N7
\DX[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[5]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux15~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DX(5));

-- Location: FF_X24_Y28_N19
\AX[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[5]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux15~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AX(5));

-- Location: LCCOMB_X24_Y28_N20
\CX[5]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CX[5]~feeder_combout\ = \entradaDados[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaDados[5]~input_o\,
	combout => \CX[5]~feeder_combout\);

-- Location: FF_X24_Y28_N21
\CX[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \CX[5]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Mux15~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CX(5));

-- Location: LCCOMB_X24_Y28_N18
\Mux138~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux138~2_combout\ = (\seletor[1]~input_o\ & (\seletor[0]~input_o\)) # (!\seletor[1]~input_o\ & ((\seletor[0]~input_o\ & ((CX(5)))) # (!\seletor[0]~input_o\ & (AX(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[1]~input_o\,
	datab => \seletor[0]~input_o\,
	datac => AX(5),
	datad => CX(5),
	combout => \Mux138~2_combout\);

-- Location: LCCOMB_X25_Y28_N6
\Mux138~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux138~3_combout\ = (\seletor[1]~input_o\ & ((\Mux138~2_combout\ & (BX(5))) # (!\Mux138~2_combout\ & ((DX(5)))))) # (!\seletor[1]~input_o\ & (((\Mux138~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[1]~input_o\,
	datab => BX(5),
	datac => DX(5),
	datad => \Mux138~2_combout\,
	combout => \Mux138~3_combout\);

-- Location: LCCOMB_X25_Y28_N28
\Mux138~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux138~4_combout\ = (\seletor[2]~input_o\ & (\Mux138~1_combout\)) # (!\seletor[2]~input_o\ & ((\Mux138~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seletor[2]~input_o\,
	datac => \Mux138~1_combout\,
	datad => \Mux138~3_combout\,
	combout => \Mux138~4_combout\);

-- Location: FF_X25_Y28_N29
\saidaDados[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Mux138~4_combout\,
	ena => \ProcessoLeitura~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saidaDados[5]~reg0_q\);

-- Location: IOIBUF_X33_Y27_N8
\entradaDados[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaDados(6),
	o => \entradaDados[6]~input_o\);

-- Location: LCCOMB_X26_Y29_N20
\BX[6]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BX[6]~feeder_combout\ = \entradaDados[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaDados[6]~input_o\,
	combout => \BX[6]~feeder_combout\);

-- Location: FF_X26_Y29_N21
\BX[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BX[6]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Mux15~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BX(6));

-- Location: FF_X25_Y28_N5
\DX[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[6]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux15~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DX(6));

-- Location: FF_X24_Y28_N11
\AX[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[6]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux15~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AX(6));

-- Location: FF_X24_Y28_N9
\CX[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[6]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux15~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CX(6));

-- Location: LCCOMB_X24_Y28_N10
\Mux137~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux137~2_combout\ = (\seletor[1]~input_o\ & (\seletor[0]~input_o\)) # (!\seletor[1]~input_o\ & ((\seletor[0]~input_o\ & ((CX(6)))) # (!\seletor[0]~input_o\ & (AX(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[1]~input_o\,
	datab => \seletor[0]~input_o\,
	datac => AX(6),
	datad => CX(6),
	combout => \Mux137~2_combout\);

-- Location: LCCOMB_X25_Y28_N4
\Mux137~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux137~3_combout\ = (\seletor[1]~input_o\ & ((\Mux137~2_combout\ & (BX(6))) # (!\Mux137~2_combout\ & ((DX(6)))))) # (!\seletor[1]~input_o\ & (((\Mux137~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[1]~input_o\,
	datab => BX(6),
	datac => DX(6),
	datad => \Mux137~2_combout\,
	combout => \Mux137~3_combout\);

-- Location: FF_X26_Y28_N27
\SP[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[6]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux15~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SP(6));

-- Location: LCCOMB_X27_Y28_N8
\SI[6]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SI[6]~feeder_combout\ = \entradaDados[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaDados[6]~input_o\,
	combout => \SI[6]~feeder_combout\);

-- Location: FF_X27_Y28_N9
\SI[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \SI[6]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Mux15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SI(6));

-- Location: LCCOMB_X26_Y28_N26
\Mux137~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux137~0_combout\ = (\seletor[1]~input_o\ & ((\seletor[0]~input_o\) # ((SI(6))))) # (!\seletor[1]~input_o\ & (!\seletor[0]~input_o\ & (SP(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[1]~input_o\,
	datab => \seletor[0]~input_o\,
	datac => SP(6),
	datad => SI(6),
	combout => \Mux137~0_combout\);

-- Location: LCCOMB_X27_Y28_N22
\DI[6]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DI[6]~feeder_combout\ = \entradaDados[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaDados[6]~input_o\,
	combout => \DI[6]~feeder_combout\);

-- Location: FF_X27_Y28_N23
\DI[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \DI[6]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Mux15~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DI(6));

-- Location: FF_X26_Y28_N5
\BP[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[6]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BP(6));

-- Location: LCCOMB_X26_Y28_N4
\Mux137~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux137~1_combout\ = (\Mux137~0_combout\ & ((DI(6)) # ((!\seletor[0]~input_o\)))) # (!\Mux137~0_combout\ & (((BP(6) & \seletor[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux137~0_combout\,
	datab => DI(6),
	datac => BP(6),
	datad => \seletor[0]~input_o\,
	combout => \Mux137~1_combout\);

-- Location: LCCOMB_X25_Y28_N22
\Mux137~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux137~4_combout\ = (\seletor[2]~input_o\ & ((\Mux137~1_combout\))) # (!\seletor[2]~input_o\ & (\Mux137~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seletor[2]~input_o\,
	datac => \Mux137~3_combout\,
	datad => \Mux137~1_combout\,
	combout => \Mux137~4_combout\);

-- Location: FF_X25_Y28_N23
\saidaDados[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Mux137~4_combout\,
	ena => \ProcessoLeitura~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saidaDados[6]~reg0_q\);

-- Location: IOIBUF_X33_Y16_N8
\entradaDados[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaDados(7),
	o => \entradaDados[7]~input_o\);

-- Location: FF_X24_Y30_N3
\AX[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[7]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux15~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AX(7));

-- Location: FF_X24_Y30_N29
\CX[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[7]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux15~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CX(7));

-- Location: LCCOMB_X24_Y30_N2
\Mux136~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux136~2_combout\ = (\seletor[1]~input_o\ & (\seletor[0]~input_o\)) # (!\seletor[1]~input_o\ & ((\seletor[0]~input_o\ & ((CX(7)))) # (!\seletor[0]~input_o\ & (AX(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[1]~input_o\,
	datab => \seletor[0]~input_o\,
	datac => AX(7),
	datad => CX(7),
	combout => \Mux136~2_combout\);

-- Location: FF_X25_Y28_N15
\DX[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[7]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux15~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DX(7));

-- Location: LCCOMB_X26_Y29_N12
\BX[7]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BX[7]~feeder_combout\ = \entradaDados[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaDados[7]~input_o\,
	combout => \BX[7]~feeder_combout\);

-- Location: FF_X26_Y29_N13
\BX[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BX[7]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Mux15~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BX(7));

-- Location: LCCOMB_X25_Y28_N14
\Mux136~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux136~3_combout\ = (\seletor[1]~input_o\ & ((\Mux136~2_combout\ & ((BX(7)))) # (!\Mux136~2_combout\ & (DX(7))))) # (!\seletor[1]~input_o\ & (\Mux136~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[1]~input_o\,
	datab => \Mux136~2_combout\,
	datac => DX(7),
	datad => BX(7),
	combout => \Mux136~3_combout\);

-- Location: LCCOMB_X27_Y28_N0
\DI[7]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DI[7]~feeder_combout\ = \entradaDados[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaDados[7]~input_o\,
	combout => \DI[7]~feeder_combout\);

-- Location: FF_X27_Y28_N1
\DI[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \DI[7]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Mux15~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DI(7));

-- Location: FF_X26_Y28_N25
\BP[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[7]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BP(7));

-- Location: LCCOMB_X26_Y29_N30
\SI[7]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SI[7]~feeder_combout\ = \entradaDados[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaDados[7]~input_o\,
	combout => \SI[7]~feeder_combout\);

-- Location: FF_X26_Y29_N31
\SI[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \SI[7]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Mux15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SI(7));

-- Location: FF_X26_Y28_N11
\SP[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[7]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux15~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SP(7));

-- Location: LCCOMB_X26_Y28_N10
\Mux136~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux136~0_combout\ = (\seletor[0]~input_o\ & (((\seletor[1]~input_o\)))) # (!\seletor[0]~input_o\ & ((\seletor[1]~input_o\ & (SI(7))) # (!\seletor[1]~input_o\ & ((SP(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SI(7),
	datab => \seletor[0]~input_o\,
	datac => SP(7),
	datad => \seletor[1]~input_o\,
	combout => \Mux136~0_combout\);

-- Location: LCCOMB_X26_Y28_N24
\Mux136~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux136~1_combout\ = (\seletor[0]~input_o\ & ((\Mux136~0_combout\ & (DI(7))) # (!\Mux136~0_combout\ & ((BP(7)))))) # (!\seletor[0]~input_o\ & (((\Mux136~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[0]~input_o\,
	datab => DI(7),
	datac => BP(7),
	datad => \Mux136~0_combout\,
	combout => \Mux136~1_combout\);

-- Location: LCCOMB_X25_Y28_N20
\Mux136~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux136~4_combout\ = (\seletor[2]~input_o\ & ((\Mux136~1_combout\))) # (!\seletor[2]~input_o\ & (\Mux136~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seletor[2]~input_o\,
	datac => \Mux136~3_combout\,
	datad => \Mux136~1_combout\,
	combout => \Mux136~4_combout\);

-- Location: FF_X25_Y28_N21
\saidaDados[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Mux136~4_combout\,
	ena => \ProcessoLeitura~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saidaDados[7]~reg0_q\);

-- Location: IOIBUF_X33_Y16_N1
\entradaDados[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaDados(8),
	o => \entradaDados[8]~input_o\);

-- Location: LCCOMB_X27_Y30_N10
\DI[8]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DI[8]~feeder_combout\ = \entradaDados[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaDados[8]~input_o\,
	combout => \DI[8]~feeder_combout\);

-- Location: FF_X27_Y30_N11
\DI[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \DI[8]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Mux15~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DI(8));

-- Location: FF_X26_Y30_N21
\BP[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[8]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BP(8));

-- Location: FF_X26_Y30_N19
\SP[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[8]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux15~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SP(8));

-- Location: LCCOMB_X27_Y30_N24
\SI[8]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SI[8]~feeder_combout\ = \entradaDados[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaDados[8]~input_o\,
	combout => \SI[8]~feeder_combout\);

-- Location: FF_X27_Y30_N25
\SI[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \SI[8]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Mux15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SI(8));

-- Location: LCCOMB_X26_Y30_N18
\Mux135~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux135~0_combout\ = (\seletor[0]~input_o\ & (\seletor[1]~input_o\)) # (!\seletor[0]~input_o\ & ((\seletor[1]~input_o\ & ((SI(8)))) # (!\seletor[1]~input_o\ & (SP(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[0]~input_o\,
	datab => \seletor[1]~input_o\,
	datac => SP(8),
	datad => SI(8),
	combout => \Mux135~0_combout\);

-- Location: LCCOMB_X26_Y30_N20
\Mux135~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux135~1_combout\ = (\seletor[0]~input_o\ & ((\Mux135~0_combout\ & (DI(8))) # (!\Mux135~0_combout\ & ((BP(8)))))) # (!\seletor[0]~input_o\ & (((\Mux135~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[0]~input_o\,
	datab => DI(8),
	datac => BP(8),
	datad => \Mux135~0_combout\,
	combout => \Mux135~1_combout\);

-- Location: LCCOMB_X26_Y29_N2
\BX[8]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BX[8]~feeder_combout\ = \entradaDados[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaDados[8]~input_o\,
	combout => \BX[8]~feeder_combout\);

-- Location: FF_X26_Y29_N3
\BX[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BX[8]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Mux15~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BX(8));

-- Location: FF_X25_Y28_N17
\DX[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[8]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux15~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DX(8));

-- Location: FF_X24_Y28_N15
\AX[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[8]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux15~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AX(8));

-- Location: FF_X24_Y28_N1
\CX[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[8]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux15~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CX(8));

-- Location: LCCOMB_X24_Y28_N14
\Mux135~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux135~2_combout\ = (\seletor[1]~input_o\ & (\seletor[0]~input_o\)) # (!\seletor[1]~input_o\ & ((\seletor[0]~input_o\ & ((CX(8)))) # (!\seletor[0]~input_o\ & (AX(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[1]~input_o\,
	datab => \seletor[0]~input_o\,
	datac => AX(8),
	datad => CX(8),
	combout => \Mux135~2_combout\);

-- Location: LCCOMB_X25_Y28_N16
\Mux135~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux135~3_combout\ = (\seletor[1]~input_o\ & ((\Mux135~2_combout\ & (BX(8))) # (!\Mux135~2_combout\ & ((DX(8)))))) # (!\seletor[1]~input_o\ & (((\Mux135~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => BX(8),
	datab => \seletor[1]~input_o\,
	datac => DX(8),
	datad => \Mux135~2_combout\,
	combout => \Mux135~3_combout\);

-- Location: LCCOMB_X25_Y28_N18
\Mux135~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux135~4_combout\ = (\seletor[2]~input_o\ & (\Mux135~1_combout\)) # (!\seletor[2]~input_o\ & ((\Mux135~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[2]~input_o\,
	datac => \Mux135~1_combout\,
	datad => \Mux135~3_combout\,
	combout => \Mux135~4_combout\);

-- Location: FF_X25_Y28_N19
\saidaDados[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Mux135~4_combout\,
	ena => \ProcessoLeitura~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saidaDados[8]~reg0_q\);

-- Location: IOIBUF_X31_Y31_N1
\entradaDados[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaDados(9),
	o => \entradaDados[9]~input_o\);

-- Location: FF_X24_Y30_N7
\AX[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[9]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux15~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AX(9));

-- Location: FF_X24_Y30_N13
\CX[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[9]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux15~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CX(9));

-- Location: LCCOMB_X24_Y30_N6
\Mux134~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux134~2_combout\ = (\seletor[1]~input_o\ & (\seletor[0]~input_o\)) # (!\seletor[1]~input_o\ & ((\seletor[0]~input_o\ & ((CX(9)))) # (!\seletor[0]~input_o\ & (AX(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[1]~input_o\,
	datab => \seletor[0]~input_o\,
	datac => AX(9),
	datad => CX(9),
	combout => \Mux134~2_combout\);

-- Location: LCCOMB_X26_Y29_N16
\BX[9]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BX[9]~feeder_combout\ = \entradaDados[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaDados[9]~input_o\,
	combout => \BX[9]~feeder_combout\);

-- Location: FF_X26_Y29_N17
\BX[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BX[9]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Mux15~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BX(9));

-- Location: FF_X25_Y28_N31
\DX[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[9]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux15~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DX(9));

-- Location: LCCOMB_X25_Y28_N30
\Mux134~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux134~3_combout\ = (\Mux134~2_combout\ & ((BX(9)) # ((!\seletor[1]~input_o\)))) # (!\Mux134~2_combout\ & (((DX(9) & \seletor[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux134~2_combout\,
	datab => BX(9),
	datac => DX(9),
	datad => \seletor[1]~input_o\,
	combout => \Mux134~3_combout\);

-- Location: LCCOMB_X27_Y30_N14
\DI[9]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DI[9]~feeder_combout\ = \entradaDados[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaDados[9]~input_o\,
	combout => \DI[9]~feeder_combout\);

-- Location: FF_X27_Y30_N15
\DI[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \DI[9]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Mux15~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DI(9));

-- Location: FF_X26_Y30_N9
\BP[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[9]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BP(9));

-- Location: FF_X26_Y30_N3
\SP[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[9]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux15~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SP(9));

-- Location: LCCOMB_X27_Y30_N16
\SI[9]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SI[9]~feeder_combout\ = \entradaDados[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaDados[9]~input_o\,
	combout => \SI[9]~feeder_combout\);

-- Location: FF_X27_Y30_N17
\SI[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \SI[9]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Mux15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SI(9));

-- Location: LCCOMB_X26_Y30_N2
\Mux134~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux134~0_combout\ = (\seletor[0]~input_o\ & (\seletor[1]~input_o\)) # (!\seletor[0]~input_o\ & ((\seletor[1]~input_o\ & ((SI(9)))) # (!\seletor[1]~input_o\ & (SP(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[0]~input_o\,
	datab => \seletor[1]~input_o\,
	datac => SP(9),
	datad => SI(9),
	combout => \Mux134~0_combout\);

-- Location: LCCOMB_X26_Y30_N8
\Mux134~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux134~1_combout\ = (\seletor[0]~input_o\ & ((\Mux134~0_combout\ & (DI(9))) # (!\Mux134~0_combout\ & ((BP(9)))))) # (!\seletor[0]~input_o\ & (((\Mux134~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[0]~input_o\,
	datab => DI(9),
	datac => BP(9),
	datad => \Mux134~0_combout\,
	combout => \Mux134~1_combout\);

-- Location: LCCOMB_X25_Y28_N0
\Mux134~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux134~4_combout\ = (\seletor[2]~input_o\ & ((\Mux134~1_combout\))) # (!\seletor[2]~input_o\ & (\Mux134~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seletor[2]~input_o\,
	datac => \Mux134~3_combout\,
	datad => \Mux134~1_combout\,
	combout => \Mux134~4_combout\);

-- Location: FF_X25_Y28_N1
\saidaDados[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Mux134~4_combout\,
	ena => \ProcessoLeitura~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saidaDados[9]~reg0_q\);

-- Location: IOIBUF_X22_Y31_N1
\entradaDados[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaDados(10),
	o => \entradaDados[10]~input_o\);

-- Location: FF_X23_Y30_N15
\BX[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[10]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux15~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BX(10));

-- Location: FF_X25_Y30_N9
\DX[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[10]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux15~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DX(10));

-- Location: FF_X24_Y30_N11
\AX[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[10]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux15~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AX(10));

-- Location: FF_X24_Y30_N9
\CX[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[10]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux15~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CX(10));

-- Location: LCCOMB_X24_Y30_N10
\Mux133~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux133~2_combout\ = (\seletor[1]~input_o\ & (\seletor[0]~input_o\)) # (!\seletor[1]~input_o\ & ((\seletor[0]~input_o\ & ((CX(10)))) # (!\seletor[0]~input_o\ & (AX(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[1]~input_o\,
	datab => \seletor[0]~input_o\,
	datac => AX(10),
	datad => CX(10),
	combout => \Mux133~2_combout\);

-- Location: LCCOMB_X25_Y30_N8
\Mux133~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux133~3_combout\ = (\seletor[1]~input_o\ & ((\Mux133~2_combout\ & (BX(10))) # (!\Mux133~2_combout\ & ((DX(10)))))) # (!\seletor[1]~input_o\ & (((\Mux133~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[1]~input_o\,
	datab => BX(10),
	datac => DX(10),
	datad => \Mux133~2_combout\,
	combout => \Mux133~3_combout\);

-- Location: FF_X27_Y30_N31
\DI[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[10]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux15~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DI(10));

-- Location: FF_X26_Y30_N5
\BP[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[10]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BP(10));

-- Location: FF_X26_Y30_N23
\SP[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[10]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux15~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SP(10));

-- Location: FF_X27_Y30_N5
\SI[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[10]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SI(10));

-- Location: LCCOMB_X26_Y30_N22
\Mux133~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux133~0_combout\ = (\seletor[0]~input_o\ & (\seletor[1]~input_o\)) # (!\seletor[0]~input_o\ & ((\seletor[1]~input_o\ & ((SI(10)))) # (!\seletor[1]~input_o\ & (SP(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[0]~input_o\,
	datab => \seletor[1]~input_o\,
	datac => SP(10),
	datad => SI(10),
	combout => \Mux133~0_combout\);

-- Location: LCCOMB_X26_Y30_N4
\Mux133~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux133~1_combout\ = (\seletor[0]~input_o\ & ((\Mux133~0_combout\ & (DI(10))) # (!\Mux133~0_combout\ & ((BP(10)))))) # (!\seletor[0]~input_o\ & (((\Mux133~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DI(10),
	datab => \seletor[0]~input_o\,
	datac => BP(10),
	datad => \Mux133~0_combout\,
	combout => \Mux133~1_combout\);

-- Location: LCCOMB_X25_Y30_N18
\Mux133~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux133~4_combout\ = (\seletor[2]~input_o\ & ((\Mux133~1_combout\))) # (!\seletor[2]~input_o\ & (\Mux133~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[2]~input_o\,
	datac => \Mux133~3_combout\,
	datad => \Mux133~1_combout\,
	combout => \Mux133~4_combout\);

-- Location: FF_X25_Y30_N19
\saidaDados[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Mux133~4_combout\,
	ena => \ProcessoLeitura~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saidaDados[10]~reg0_q\);

-- Location: IOIBUF_X26_Y31_N1
\entradaDados[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaDados(11),
	o => \entradaDados[11]~input_o\);

-- Location: LCCOMB_X23_Y30_N10
\BX[11]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BX[11]~feeder_combout\ = \entradaDados[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaDados[11]~input_o\,
	combout => \BX[11]~feeder_combout\);

-- Location: FF_X23_Y30_N11
\BX[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BX[11]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Mux15~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BX(11));

-- Location: FF_X25_Y30_N15
\DX[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[11]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux15~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DX(11));

-- Location: FF_X24_Y30_N15
\AX[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[11]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux15~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AX(11));

-- Location: FF_X24_Y30_N1
\CX[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[11]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux15~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CX(11));

-- Location: LCCOMB_X24_Y30_N14
\Mux132~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux132~2_combout\ = (\seletor[1]~input_o\ & (\seletor[0]~input_o\)) # (!\seletor[1]~input_o\ & ((\seletor[0]~input_o\ & ((CX(11)))) # (!\seletor[0]~input_o\ & (AX(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[1]~input_o\,
	datab => \seletor[0]~input_o\,
	datac => AX(11),
	datad => CX(11),
	combout => \Mux132~2_combout\);

-- Location: LCCOMB_X25_Y30_N14
\Mux132~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux132~3_combout\ = (\seletor[1]~input_o\ & ((\Mux132~2_combout\ & (BX(11))) # (!\Mux132~2_combout\ & ((DX(11)))))) # (!\seletor[1]~input_o\ & (((\Mux132~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[1]~input_o\,
	datab => BX(11),
	datac => DX(11),
	datad => \Mux132~2_combout\,
	combout => \Mux132~3_combout\);

-- Location: FF_X27_Y30_N21
\DI[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[11]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux15~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DI(11));

-- Location: FF_X26_Y30_N25
\BP[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[11]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BP(11));

-- Location: FF_X26_Y30_N7
\SP[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[11]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux15~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SP(11));

-- Location: LCCOMB_X23_Y30_N28
\SI[11]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SI[11]~feeder_combout\ = \entradaDados[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaDados[11]~input_o\,
	combout => \SI[11]~feeder_combout\);

-- Location: FF_X23_Y30_N29
\SI[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \SI[11]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Mux15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SI(11));

-- Location: LCCOMB_X26_Y30_N6
\Mux132~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux132~0_combout\ = (\seletor[0]~input_o\ & (\seletor[1]~input_o\)) # (!\seletor[0]~input_o\ & ((\seletor[1]~input_o\ & ((SI(11)))) # (!\seletor[1]~input_o\ & (SP(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[0]~input_o\,
	datab => \seletor[1]~input_o\,
	datac => SP(11),
	datad => SI(11),
	combout => \Mux132~0_combout\);

-- Location: LCCOMB_X26_Y30_N24
\Mux132~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux132~1_combout\ = (\seletor[0]~input_o\ & ((\Mux132~0_combout\ & (DI(11))) # (!\Mux132~0_combout\ & ((BP(11)))))) # (!\seletor[0]~input_o\ & (((\Mux132~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DI(11),
	datab => \seletor[0]~input_o\,
	datac => BP(11),
	datad => \Mux132~0_combout\,
	combout => \Mux132~1_combout\);

-- Location: LCCOMB_X25_Y30_N20
\Mux132~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux132~4_combout\ = (\seletor[2]~input_o\ & ((\Mux132~1_combout\))) # (!\seletor[2]~input_o\ & (\Mux132~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[2]~input_o\,
	datac => \Mux132~3_combout\,
	datad => \Mux132~1_combout\,
	combout => \Mux132~4_combout\);

-- Location: FF_X25_Y30_N21
\saidaDados[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Mux132~4_combout\,
	ena => \ProcessoLeitura~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saidaDados[11]~reg0_q\);

-- Location: IOIBUF_X24_Y31_N1
\entradaDados[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaDados(12),
	o => \entradaDados[12]~input_o\);

-- Location: LCCOMB_X27_Y30_N8
\DI[12]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DI[12]~feeder_combout\ = \entradaDados[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaDados[12]~input_o\,
	combout => \DI[12]~feeder_combout\);

-- Location: FF_X27_Y30_N9
\DI[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \DI[12]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Mux15~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DI(12));

-- Location: FF_X26_Y30_N1
\BP[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[12]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BP(12));

-- Location: FF_X26_Y30_N31
\SP[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[12]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux15~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SP(12));

-- Location: LCCOMB_X27_Y30_N2
\SI[12]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SI[12]~feeder_combout\ = \entradaDados[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaDados[12]~input_o\,
	combout => \SI[12]~feeder_combout\);

-- Location: FF_X27_Y30_N3
\SI[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \SI[12]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Mux15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SI(12));

-- Location: LCCOMB_X26_Y30_N30
\Mux131~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux131~0_combout\ = (\seletor[0]~input_o\ & (\seletor[1]~input_o\)) # (!\seletor[0]~input_o\ & ((\seletor[1]~input_o\ & ((SI(12)))) # (!\seletor[1]~input_o\ & (SP(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[0]~input_o\,
	datab => \seletor[1]~input_o\,
	datac => SP(12),
	datad => SI(12),
	combout => \Mux131~0_combout\);

-- Location: LCCOMB_X26_Y30_N0
\Mux131~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux131~1_combout\ = (\seletor[0]~input_o\ & ((\Mux131~0_combout\ & (DI(12))) # (!\Mux131~0_combout\ & ((BP(12)))))) # (!\seletor[0]~input_o\ & (((\Mux131~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[0]~input_o\,
	datab => DI(12),
	datac => BP(12),
	datad => \Mux131~0_combout\,
	combout => \Mux131~1_combout\);

-- Location: FF_X24_Y30_N27
\AX[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[12]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux15~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AX(12));

-- Location: FF_X24_Y30_N17
\CX[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[12]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux15~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CX(12));

-- Location: LCCOMB_X24_Y30_N26
\Mux131~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux131~2_combout\ = (\seletor[1]~input_o\ & (\seletor[0]~input_o\)) # (!\seletor[1]~input_o\ & ((\seletor[0]~input_o\ & ((CX(12)))) # (!\seletor[0]~input_o\ & (AX(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[1]~input_o\,
	datab => \seletor[0]~input_o\,
	datac => AX(12),
	datad => CX(12),
	combout => \Mux131~2_combout\);

-- Location: LCCOMB_X23_Y30_N20
\BX[12]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BX[12]~feeder_combout\ = \entradaDados[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaDados[12]~input_o\,
	combout => \BX[12]~feeder_combout\);

-- Location: FF_X23_Y30_N21
\BX[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BX[12]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Mux15~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BX(12));

-- Location: FF_X25_Y30_N25
\DX[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[12]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux15~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DX(12));

-- Location: LCCOMB_X25_Y30_N24
\Mux131~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux131~3_combout\ = (\Mux131~2_combout\ & ((BX(12)) # ((!\seletor[1]~input_o\)))) # (!\Mux131~2_combout\ & (((DX(12) & \seletor[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux131~2_combout\,
	datab => BX(12),
	datac => DX(12),
	datad => \seletor[1]~input_o\,
	combout => \Mux131~3_combout\);

-- Location: LCCOMB_X25_Y30_N2
\Mux131~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux131~4_combout\ = (\seletor[2]~input_o\ & (\Mux131~1_combout\)) # (!\seletor[2]~input_o\ & ((\Mux131~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[2]~input_o\,
	datac => \Mux131~1_combout\,
	datad => \Mux131~3_combout\,
	combout => \Mux131~4_combout\);

-- Location: FF_X25_Y30_N3
\saidaDados[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Mux131~4_combout\,
	ena => \ProcessoLeitura~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saidaDados[12]~reg0_q\);

-- Location: IOIBUF_X31_Y31_N8
\entradaDados[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaDados(13),
	o => \entradaDados[13]~input_o\);

-- Location: FF_X23_Y30_N23
\BX[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[13]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux15~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BX(13));

-- Location: FF_X25_Y30_N31
\DX[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[13]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux15~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DX(13));

-- Location: FF_X24_Y30_N19
\AX[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[13]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux15~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AX(13));

-- Location: LCCOMB_X24_Y30_N20
\CX[13]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CX[13]~feeder_combout\ = \entradaDados[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaDados[13]~input_o\,
	combout => \CX[13]~feeder_combout\);

-- Location: FF_X24_Y30_N21
\CX[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \CX[13]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Mux15~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CX(13));

-- Location: LCCOMB_X24_Y30_N18
\Mux130~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux130~2_combout\ = (\seletor[1]~input_o\ & (\seletor[0]~input_o\)) # (!\seletor[1]~input_o\ & ((\seletor[0]~input_o\ & ((CX(13)))) # (!\seletor[0]~input_o\ & (AX(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[1]~input_o\,
	datab => \seletor[0]~input_o\,
	datac => AX(13),
	datad => CX(13),
	combout => \Mux130~2_combout\);

-- Location: LCCOMB_X25_Y30_N30
\Mux130~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux130~3_combout\ = (\seletor[1]~input_o\ & ((\Mux130~2_combout\ & (BX(13))) # (!\Mux130~2_combout\ & ((DX(13)))))) # (!\seletor[1]~input_o\ & (((\Mux130~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[1]~input_o\,
	datab => BX(13),
	datac => DX(13),
	datad => \Mux130~2_combout\,
	combout => \Mux130~3_combout\);

-- Location: LCCOMB_X27_Y30_N12
\DI[13]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DI[13]~feeder_combout\ = \entradaDados[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaDados[13]~input_o\,
	combout => \DI[13]~feeder_combout\);

-- Location: FF_X27_Y30_N13
\DI[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \DI[13]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Mux15~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DI(13));

-- Location: FF_X26_Y30_N17
\BP[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[13]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BP(13));

-- Location: FF_X26_Y30_N11
\SP[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[13]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux15~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SP(13));

-- Location: LCCOMB_X27_Y30_N22
\SI[13]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SI[13]~feeder_combout\ = \entradaDados[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaDados[13]~input_o\,
	combout => \SI[13]~feeder_combout\);

-- Location: FF_X27_Y30_N23
\SI[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \SI[13]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Mux15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SI(13));

-- Location: LCCOMB_X26_Y30_N10
\Mux130~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux130~0_combout\ = (\seletor[0]~input_o\ & (\seletor[1]~input_o\)) # (!\seletor[0]~input_o\ & ((\seletor[1]~input_o\ & ((SI(13)))) # (!\seletor[1]~input_o\ & (SP(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[0]~input_o\,
	datab => \seletor[1]~input_o\,
	datac => SP(13),
	datad => SI(13),
	combout => \Mux130~0_combout\);

-- Location: LCCOMB_X26_Y30_N16
\Mux130~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux130~1_combout\ = (\seletor[0]~input_o\ & ((\Mux130~0_combout\ & (DI(13))) # (!\Mux130~0_combout\ & ((BP(13)))))) # (!\seletor[0]~input_o\ & (((\Mux130~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[0]~input_o\,
	datab => DI(13),
	datac => BP(13),
	datad => \Mux130~0_combout\,
	combout => \Mux130~1_combout\);

-- Location: LCCOMB_X25_Y30_N12
\Mux130~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux130~4_combout\ = (\seletor[2]~input_o\ & ((\Mux130~1_combout\))) # (!\seletor[2]~input_o\ & (\Mux130~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[2]~input_o\,
	datac => \Mux130~3_combout\,
	datad => \Mux130~1_combout\,
	combout => \Mux130~4_combout\);

-- Location: FF_X25_Y30_N13
\saidaDados[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Mux130~4_combout\,
	ena => \ProcessoLeitura~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saidaDados[13]~reg0_q\);

-- Location: IOIBUF_X22_Y31_N8
\entradaDados[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaDados(14),
	o => \entradaDados[14]~input_o\);

-- Location: LCCOMB_X27_Y30_N0
\DI[14]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DI[14]~feeder_combout\ = \entradaDados[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaDados[14]~input_o\,
	combout => \DI[14]~feeder_combout\);

-- Location: FF_X27_Y30_N1
\DI[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \DI[14]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Mux15~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DI(14));

-- Location: FF_X26_Y30_N13
\BP[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[14]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BP(14));

-- Location: FF_X26_Y30_N15
\SP[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[14]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux15~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SP(14));

-- Location: LCCOMB_X27_Y30_N6
\SI[14]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SI[14]~feeder_combout\ = \entradaDados[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaDados[14]~input_o\,
	combout => \SI[14]~feeder_combout\);

-- Location: FF_X27_Y30_N7
\SI[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \SI[14]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Mux15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SI(14));

-- Location: LCCOMB_X26_Y30_N14
\Mux129~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux129~0_combout\ = (\seletor[0]~input_o\ & (\seletor[1]~input_o\)) # (!\seletor[0]~input_o\ & ((\seletor[1]~input_o\ & ((SI(14)))) # (!\seletor[1]~input_o\ & (SP(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[0]~input_o\,
	datab => \seletor[1]~input_o\,
	datac => SP(14),
	datad => SI(14),
	combout => \Mux129~0_combout\);

-- Location: LCCOMB_X26_Y30_N12
\Mux129~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux129~1_combout\ = (\seletor[0]~input_o\ & ((\Mux129~0_combout\ & (DI(14))) # (!\Mux129~0_combout\ & ((BP(14)))))) # (!\seletor[0]~input_o\ & (((\Mux129~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[0]~input_o\,
	datab => DI(14),
	datac => BP(14),
	datad => \Mux129~0_combout\,
	combout => \Mux129~1_combout\);

-- Location: LCCOMB_X23_Y30_N16
\BX[14]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \BX[14]~feeder_combout\ = \entradaDados[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaDados[14]~input_o\,
	combout => \BX[14]~feeder_combout\);

-- Location: FF_X23_Y30_N17
\BX[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \BX[14]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Mux15~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BX(14));

-- Location: FF_X25_Y30_N17
\DX[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[14]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux15~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DX(14));

-- Location: FF_X24_Y30_N31
\AX[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[14]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux15~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AX(14));

-- Location: FF_X24_Y30_N5
\CX[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[14]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux15~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CX(14));

-- Location: LCCOMB_X24_Y30_N30
\Mux129~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux129~2_combout\ = (\seletor[1]~input_o\ & (\seletor[0]~input_o\)) # (!\seletor[1]~input_o\ & ((\seletor[0]~input_o\ & ((CX(14)))) # (!\seletor[0]~input_o\ & (AX(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[1]~input_o\,
	datab => \seletor[0]~input_o\,
	datac => AX(14),
	datad => CX(14),
	combout => \Mux129~2_combout\);

-- Location: LCCOMB_X25_Y30_N16
\Mux129~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux129~3_combout\ = (\seletor[1]~input_o\ & ((\Mux129~2_combout\ & (BX(14))) # (!\Mux129~2_combout\ & ((DX(14)))))) # (!\seletor[1]~input_o\ & (((\Mux129~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[1]~input_o\,
	datab => BX(14),
	datac => DX(14),
	datad => \Mux129~2_combout\,
	combout => \Mux129~3_combout\);

-- Location: LCCOMB_X25_Y30_N6
\Mux129~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux129~4_combout\ = (\seletor[2]~input_o\ & (\Mux129~1_combout\)) # (!\seletor[2]~input_o\ & ((\Mux129~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[2]~input_o\,
	datac => \Mux129~1_combout\,
	datad => \Mux129~3_combout\,
	combout => \Mux129~4_combout\);

-- Location: FF_X25_Y30_N7
\saidaDados[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Mux129~4_combout\,
	ena => \ProcessoLeitura~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saidaDados[14]~reg0_q\);

-- Location: IOIBUF_X29_Y31_N1
\entradaDados[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaDados(15),
	o => \entradaDados[15]~input_o\);

-- Location: FF_X23_Y30_N7
\BX[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[15]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux15~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BX(15));

-- Location: FF_X25_Y30_N23
\DX[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[15]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux15~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DX(15));

-- Location: FF_X24_Y30_N23
\AX[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[15]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux15~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AX(15));

-- Location: FF_X24_Y30_N25
\CX[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[15]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux15~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CX(15));

-- Location: LCCOMB_X24_Y30_N22
\Mux128~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux128~2_combout\ = (\seletor[1]~input_o\ & (\seletor[0]~input_o\)) # (!\seletor[1]~input_o\ & ((\seletor[0]~input_o\ & ((CX(15)))) # (!\seletor[0]~input_o\ & (AX(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[1]~input_o\,
	datab => \seletor[0]~input_o\,
	datac => AX(15),
	datad => CX(15),
	combout => \Mux128~2_combout\);

-- Location: LCCOMB_X25_Y30_N22
\Mux128~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux128~3_combout\ = (\seletor[1]~input_o\ & ((\Mux128~2_combout\ & (BX(15))) # (!\Mux128~2_combout\ & ((DX(15)))))) # (!\seletor[1]~input_o\ & (((\Mux128~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => BX(15),
	datab => \seletor[1]~input_o\,
	datac => DX(15),
	datad => \Mux128~2_combout\,
	combout => \Mux128~3_combout\);

-- Location: FF_X26_Y30_N27
\SP[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[15]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux15~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SP(15));

-- Location: LCCOMB_X27_Y30_N18
\SI[15]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SI[15]~feeder_combout\ = \entradaDados[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaDados[15]~input_o\,
	combout => \SI[15]~feeder_combout\);

-- Location: FF_X27_Y30_N19
\SI[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \SI[15]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Mux15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SI(15));

-- Location: LCCOMB_X26_Y30_N26
\Mux128~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux128~0_combout\ = (\seletor[0]~input_o\ & (\seletor[1]~input_o\)) # (!\seletor[0]~input_o\ & ((\seletor[1]~input_o\ & ((SI(15)))) # (!\seletor[1]~input_o\ & (SP(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[0]~input_o\,
	datab => \seletor[1]~input_o\,
	datac => SP(15),
	datad => SI(15),
	combout => \Mux128~0_combout\);

-- Location: FF_X26_Y30_N29
\BP[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaDados[15]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BP(15));

-- Location: LCCOMB_X27_Y30_N28
\DI[15]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DI[15]~feeder_combout\ = \entradaDados[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaDados[15]~input_o\,
	combout => \DI[15]~feeder_combout\);

-- Location: FF_X27_Y30_N29
\DI[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \DI[15]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Mux15~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DI(15));

-- Location: LCCOMB_X26_Y30_N28
\Mux128~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux128~1_combout\ = (\Mux128~0_combout\ & (((DI(15))) # (!\seletor[0]~input_o\))) # (!\Mux128~0_combout\ & (\seletor[0]~input_o\ & (BP(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux128~0_combout\,
	datab => \seletor[0]~input_o\,
	datac => BP(15),
	datad => DI(15),
	combout => \Mux128~1_combout\);

-- Location: LCCOMB_X25_Y30_N4
\Mux128~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux128~4_combout\ = (\seletor[2]~input_o\ & ((\Mux128~1_combout\))) # (!\seletor[2]~input_o\ & (\Mux128~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[2]~input_o\,
	datac => \Mux128~3_combout\,
	datad => \Mux128~1_combout\,
	combout => \Mux128~4_combout\);

-- Location: FF_X25_Y30_N5
\saidaDados[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Mux128~4_combout\,
	ena => \ProcessoLeitura~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saidaDados[15]~reg0_q\);

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
END structure;


