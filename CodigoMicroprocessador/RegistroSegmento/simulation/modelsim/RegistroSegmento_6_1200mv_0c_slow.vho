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

-- DATE "04/10/2014 21:08:48"

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

ENTITY 	RegistroSegmento IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	habilita : IN std_logic;
	leitura_Escrita : IN std_logic;
	soma_IP : IN std_logic;
	seletor : IN std_logic_vector(2 DOWNTO 0);
	entradaDados : IN std_logic_vector(15 DOWNTO 0);
	saidaDados : OUT std_logic_vector(15 DOWNTO 0)
	);
END RegistroSegmento;

-- Design Ports Information
-- saidaDados[0]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDados[1]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDados[2]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDados[3]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDados[4]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDados[5]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDados[6]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDados[7]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDados[8]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDados[9]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDados[10]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDados[11]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDados[12]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDados[13]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDados[14]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDados[15]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seletor[1]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seletor[0]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seletor[2]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- habilita	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leitura_Escrita	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaDados[0]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- soma_IP	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaDados[1]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaDados[2]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaDados[3]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaDados[4]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaDados[5]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaDados[6]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaDados[7]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaDados[8]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaDados[9]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaDados[10]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaDados[11]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaDados[12]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaDados[13]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaDados[14]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaDados[15]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF RegistroSegmento IS
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
SIGNAL ww_soma_IP : std_logic;
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
SIGNAL \seletor[1]~input_o\ : std_logic;
SIGNAL \entradaDados[0]~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \habilita~input_o\ : std_logic;
SIGNAL \leitura_Escrita~input_o\ : std_logic;
SIGNAL \ProcessoResetEscrita~0_combout\ : std_logic;
SIGNAL \seletor[2]~input_o\ : std_logic;
SIGNAL \seletor[0]~input_o\ : std_logic;
SIGNAL \DS[15]~16_combout\ : std_logic;
SIGNAL \SS[15]~16_combout\ : std_logic;
SIGNAL \ES[15]~16_combout\ : std_logic;
SIGNAL \CS[15]~16_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \saidaDados[0]~reg0feeder_combout\ : std_logic;
SIGNAL \IP[0]~32_combout\ : std_logic;
SIGNAL \soma_IP~input_o\ : std_logic;
SIGNAL \ProcessoResetEscrita~1_combout\ : std_logic;
SIGNAL \IP[15]~34_combout\ : std_logic;
SIGNAL \ProcessoLeitura~0_combout\ : std_logic;
SIGNAL \saidaDados[0]~reg0_q\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \saidaDados[0]~enfeeder_combout\ : std_logic;
SIGNAL \saidaDados[0]~en_q\ : std_logic;
SIGNAL \entradaDados[1]~input_o\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \saidaDados[1]~reg0feeder_combout\ : std_logic;
SIGNAL \IP[0]~33\ : std_logic;
SIGNAL \IP[1]~35_combout\ : std_logic;
SIGNAL \saidaDados[1]~reg0_q\ : std_logic;
SIGNAL \saidaDados[1]~enfeeder_combout\ : std_logic;
SIGNAL \saidaDados[1]~en_q\ : std_logic;
SIGNAL \entradaDados[2]~input_o\ : std_logic;
SIGNAL \DS[2]~feeder_combout\ : std_logic;
SIGNAL \CS[2]~feeder_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \saidaDados[2]~reg0feeder_combout\ : std_logic;
SIGNAL \IP[1]~36\ : std_logic;
SIGNAL \IP[2]~37_combout\ : std_logic;
SIGNAL \saidaDados[2]~reg0_q\ : std_logic;
SIGNAL \saidaDados[2]~enfeeder_combout\ : std_logic;
SIGNAL \saidaDados[2]~en_q\ : std_logic;
SIGNAL \entradaDados[3]~input_o\ : std_logic;
SIGNAL \DS[3]~feeder_combout\ : std_logic;
SIGNAL \SS[3]~feeder_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \saidaDados[3]~reg0feeder_combout\ : std_logic;
SIGNAL \IP[2]~38\ : std_logic;
SIGNAL \IP[3]~39_combout\ : std_logic;
SIGNAL \saidaDados[3]~reg0_q\ : std_logic;
SIGNAL \saidaDados[3]~enfeeder_combout\ : std_logic;
SIGNAL \saidaDados[3]~en_q\ : std_logic;
SIGNAL \entradaDados[4]~input_o\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \saidaDados[4]~reg0feeder_combout\ : std_logic;
SIGNAL \IP[3]~40\ : std_logic;
SIGNAL \IP[4]~41_combout\ : std_logic;
SIGNAL \saidaDados[4]~reg0_q\ : std_logic;
SIGNAL \saidaDados[4]~enfeeder_combout\ : std_logic;
SIGNAL \saidaDados[4]~en_q\ : std_logic;
SIGNAL \entradaDados[5]~input_o\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \saidaDados[5]~reg0feeder_combout\ : std_logic;
SIGNAL \IP[4]~42\ : std_logic;
SIGNAL \IP[5]~43_combout\ : std_logic;
SIGNAL \saidaDados[5]~reg0_q\ : std_logic;
SIGNAL \saidaDados[5]~enfeeder_combout\ : std_logic;
SIGNAL \saidaDados[5]~en_q\ : std_logic;
SIGNAL \entradaDados[6]~input_o\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \saidaDados[6]~reg0feeder_combout\ : std_logic;
SIGNAL \IP[5]~44\ : std_logic;
SIGNAL \IP[6]~45_combout\ : std_logic;
SIGNAL \saidaDados[6]~reg0_q\ : std_logic;
SIGNAL \saidaDados[6]~enfeeder_combout\ : std_logic;
SIGNAL \saidaDados[6]~en_q\ : std_logic;
SIGNAL \entradaDados[7]~input_o\ : std_logic;
SIGNAL \DS[7]~feeder_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \saidaDados[7]~reg0feeder_combout\ : std_logic;
SIGNAL \IP[6]~46\ : std_logic;
SIGNAL \IP[7]~47_combout\ : std_logic;
SIGNAL \saidaDados[7]~reg0_q\ : std_logic;
SIGNAL \saidaDados[7]~enfeeder_combout\ : std_logic;
SIGNAL \saidaDados[7]~en_q\ : std_logic;
SIGNAL \entradaDados[8]~input_o\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \saidaDados[8]~reg0feeder_combout\ : std_logic;
SIGNAL \IP[7]~48\ : std_logic;
SIGNAL \IP[8]~49_combout\ : std_logic;
SIGNAL \saidaDados[8]~reg0_q\ : std_logic;
SIGNAL \saidaDados[8]~enfeeder_combout\ : std_logic;
SIGNAL \saidaDados[8]~en_q\ : std_logic;
SIGNAL \entradaDados[9]~input_o\ : std_logic;
SIGNAL \DS[9]~feeder_combout\ : std_logic;
SIGNAL \SS[9]~feeder_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \saidaDados[9]~reg0feeder_combout\ : std_logic;
SIGNAL \IP[8]~50\ : std_logic;
SIGNAL \IP[9]~51_combout\ : std_logic;
SIGNAL \saidaDados[9]~reg0_q\ : std_logic;
SIGNAL \saidaDados[9]~enfeeder_combout\ : std_logic;
SIGNAL \saidaDados[9]~en_q\ : std_logic;
SIGNAL \entradaDados[10]~input_o\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \saidaDados[10]~reg0feeder_combout\ : std_logic;
SIGNAL \IP[9]~52\ : std_logic;
SIGNAL \IP[10]~53_combout\ : std_logic;
SIGNAL \saidaDados[10]~reg0_q\ : std_logic;
SIGNAL \saidaDados[10]~enfeeder_combout\ : std_logic;
SIGNAL \saidaDados[10]~en_q\ : std_logic;
SIGNAL \entradaDados[11]~input_o\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \saidaDados[11]~reg0feeder_combout\ : std_logic;
SIGNAL \IP[10]~54\ : std_logic;
SIGNAL \IP[11]~55_combout\ : std_logic;
SIGNAL \saidaDados[11]~reg0_q\ : std_logic;
SIGNAL \saidaDados[11]~enfeeder_combout\ : std_logic;
SIGNAL \saidaDados[11]~en_q\ : std_logic;
SIGNAL \entradaDados[12]~input_o\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \saidaDados[12]~reg0feeder_combout\ : std_logic;
SIGNAL \IP[11]~56\ : std_logic;
SIGNAL \IP[12]~57_combout\ : std_logic;
SIGNAL \saidaDados[12]~reg0_q\ : std_logic;
SIGNAL \saidaDados[12]~enfeeder_combout\ : std_logic;
SIGNAL \saidaDados[12]~en_q\ : std_logic;
SIGNAL \entradaDados[13]~input_o\ : std_logic;
SIGNAL \DS[13]~feeder_combout\ : std_logic;
SIGNAL \SS[13]~feeder_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \saidaDados[13]~reg0feeder_combout\ : std_logic;
SIGNAL \IP[12]~58\ : std_logic;
SIGNAL \IP[13]~59_combout\ : std_logic;
SIGNAL \saidaDados[13]~reg0_q\ : std_logic;
SIGNAL \saidaDados[13]~enfeeder_combout\ : std_logic;
SIGNAL \saidaDados[13]~en_q\ : std_logic;
SIGNAL \entradaDados[14]~input_o\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \saidaDados[14]~reg0feeder_combout\ : std_logic;
SIGNAL \IP[13]~60\ : std_logic;
SIGNAL \IP[14]~61_combout\ : std_logic;
SIGNAL \saidaDados[14]~reg0_q\ : std_logic;
SIGNAL \saidaDados[14]~enfeeder_combout\ : std_logic;
SIGNAL \saidaDados[14]~en_q\ : std_logic;
SIGNAL \entradaDados[15]~input_o\ : std_logic;
SIGNAL \DS[15]~feeder_combout\ : std_logic;
SIGNAL \SS[15]~feeder_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux16~1_combout\ : std_logic;
SIGNAL \saidaDados[15]~reg0feeder_combout\ : std_logic;
SIGNAL \IP[14]~62\ : std_logic;
SIGNAL \IP[15]~63_combout\ : std_logic;
SIGNAL \saidaDados[15]~reg0_q\ : std_logic;
SIGNAL \saidaDados[15]~enfeeder_combout\ : std_logic;
SIGNAL \saidaDados[15]~en_q\ : std_logic;
SIGNAL SS : std_logic_vector(15 DOWNTO 0);
SIGNAL IP : std_logic_vector(15 DOWNTO 0);
SIGNAL ES : std_logic_vector(15 DOWNTO 0);
SIGNAL DS : std_logic_vector(15 DOWNTO 0);
SIGNAL CS : std_logic_vector(15 DOWNTO 0);

BEGIN

ww_clock <= clock;
ww_reset <= reset;
ww_habilita <= habilita;
ww_leitura_Escrita <= leitura_Escrita;
ww_soma_IP <= soma_IP;
ww_seletor <= seletor;
ww_entradaDados <= entradaDados;
saidaDados <= ww_saidaDados;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);

-- Location: IOOBUF_X24_Y0_N9
\saidaDados[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saidaDados[0]~reg0_q\,
	oe => \saidaDados[0]~en_q\,
	devoe => ww_devoe,
	o => \saidaDados[0]~output_o\);

-- Location: IOOBUF_X33_Y11_N2
\saidaDados[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saidaDados[1]~reg0_q\,
	oe => \saidaDados[1]~en_q\,
	devoe => ww_devoe,
	o => \saidaDados[1]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\saidaDados[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saidaDados[2]~reg0_q\,
	oe => \saidaDados[2]~en_q\,
	devoe => ww_devoe,
	o => \saidaDados[2]~output_o\);

-- Location: IOOBUF_X33_Y14_N2
\saidaDados[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saidaDados[3]~reg0_q\,
	oe => \saidaDados[3]~en_q\,
	devoe => ww_devoe,
	o => \saidaDados[3]~output_o\);

-- Location: IOOBUF_X33_Y12_N2
\saidaDados[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saidaDados[4]~reg0_q\,
	oe => \saidaDados[4]~en_q\,
	devoe => ww_devoe,
	o => \saidaDados[4]~output_o\);

-- Location: IOOBUF_X33_Y15_N2
\saidaDados[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saidaDados[5]~reg0_q\,
	oe => \saidaDados[5]~en_q\,
	devoe => ww_devoe,
	o => \saidaDados[5]~output_o\);

-- Location: IOOBUF_X33_Y11_N9
\saidaDados[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saidaDados[6]~reg0_q\,
	oe => \saidaDados[6]~en_q\,
	devoe => ww_devoe,
	o => \saidaDados[6]~output_o\);

-- Location: IOOBUF_X33_Y10_N2
\saidaDados[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saidaDados[7]~reg0_q\,
	oe => \saidaDados[7]~en_q\,
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
	oe => \saidaDados[8]~en_q\,
	devoe => ww_devoe,
	o => \saidaDados[8]~output_o\);

-- Location: IOOBUF_X29_Y0_N9
\saidaDados[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saidaDados[9]~reg0_q\,
	oe => \saidaDados[9]~en_q\,
	devoe => ww_devoe,
	o => \saidaDados[9]~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\saidaDados[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saidaDados[10]~reg0_q\,
	oe => \saidaDados[10]~en_q\,
	devoe => ww_devoe,
	o => \saidaDados[10]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\saidaDados[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saidaDados[11]~reg0_q\,
	oe => \saidaDados[11]~en_q\,
	devoe => ww_devoe,
	o => \saidaDados[11]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\saidaDados[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saidaDados[12]~reg0_q\,
	oe => \saidaDados[12]~en_q\,
	devoe => ww_devoe,
	o => \saidaDados[12]~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\saidaDados[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saidaDados[13]~reg0_q\,
	oe => \saidaDados[13]~en_q\,
	devoe => ww_devoe,
	o => \saidaDados[13]~output_o\);

-- Location: IOOBUF_X33_Y15_N9
\saidaDados[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saidaDados[14]~reg0_q\,
	oe => \saidaDados[14]~en_q\,
	devoe => ww_devoe,
	o => \saidaDados[14]~output_o\);

-- Location: IOOBUF_X33_Y10_N9
\saidaDados[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saidaDados[15]~reg0_q\,
	oe => \saidaDados[15]~en_q\,
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

-- Location: IOIBUF_X20_Y0_N8
\seletor[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_seletor(1),
	o => \seletor[1]~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\entradaDados[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaDados(0),
	o => \entradaDados[0]~input_o\);

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

-- Location: IOIBUF_X14_Y0_N1
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

-- Location: LCCOMB_X22_Y9_N30
\ProcessoResetEscrita~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ProcessoResetEscrita~0_combout\ = (\habilita~input_o\ & !\leitura_Escrita~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \habilita~input_o\,
	datad => \leitura_Escrita~input_o\,
	combout => \ProcessoResetEscrita~0_combout\);

-- Location: IOIBUF_X22_Y31_N1
\seletor[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_seletor(2),
	o => \seletor[2]~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\seletor[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_seletor(0),
	o => \seletor[0]~input_o\);

-- Location: LCCOMB_X22_Y9_N10
\DS[15]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DS[15]~16_combout\ = (\ProcessoResetEscrita~0_combout\ & ((\seletor[2]~input_o\ & ((\seletor[1]~input_o\) # (\seletor[0]~input_o\))) # (!\seletor[2]~input_o\ & (\seletor[1]~input_o\ & \seletor[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ProcessoResetEscrita~0_combout\,
	datab => \seletor[2]~input_o\,
	datac => \seletor[1]~input_o\,
	datad => \seletor[0]~input_o\,
	combout => \DS[15]~16_combout\);

-- Location: FF_X23_Y9_N23
\DS[0]\ : dffeas
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
	ena => \DS[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DS(0));

-- Location: LCCOMB_X22_Y9_N0
\SS[15]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SS[15]~16_combout\ = (\ProcessoResetEscrita~0_combout\ & ((\seletor[0]~input_o\ & (\seletor[2]~input_o\)) # (!\seletor[0]~input_o\ & ((\seletor[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ProcessoResetEscrita~0_combout\,
	datab => \seletor[2]~input_o\,
	datac => \seletor[1]~input_o\,
	datad => \seletor[0]~input_o\,
	combout => \SS[15]~16_combout\);

-- Location: FF_X22_Y9_N17
\SS[0]\ : dffeas
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
	ena => \SS[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SS(0));

-- Location: LCCOMB_X22_Y9_N4
\ES[15]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ES[15]~16_combout\ = (\ProcessoResetEscrita~0_combout\ & (\seletor[2]~input_o\ $ (((!\seletor[1]~input_o\ & !\seletor[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ProcessoResetEscrita~0_combout\,
	datab => \seletor[2]~input_o\,
	datac => \seletor[1]~input_o\,
	datad => \seletor[0]~input_o\,
	combout => \ES[15]~16_combout\);

-- Location: FF_X22_Y9_N3
\ES[0]\ : dffeas
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
	ena => \ES[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ES(0));

-- Location: LCCOMB_X22_Y9_N6
\CS[15]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CS[15]~16_combout\ = (\ProcessoResetEscrita~0_combout\ & ((\seletor[1]~input_o\ & (\seletor[2]~input_o\)) # (!\seletor[1]~input_o\ & ((\seletor[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ProcessoResetEscrita~0_combout\,
	datab => \seletor[2]~input_o\,
	datac => \seletor[1]~input_o\,
	datad => \seletor[0]~input_o\,
	combout => \CS[15]~16_combout\);

-- Location: FF_X23_Y9_N5
\CS[0]\ : dffeas
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
	ena => \CS[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CS(0));

-- Location: LCCOMB_X22_Y9_N2
\Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\seletor[0]~input_o\ & ((\seletor[1]~input_o\) # ((CS(0))))) # (!\seletor[0]~input_o\ & (!\seletor[1]~input_o\ & (ES(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[0]~input_o\,
	datab => \seletor[1]~input_o\,
	datac => ES(0),
	datad => CS(0),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X22_Y9_N16
\Mux0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\seletor[1]~input_o\ & ((\Mux0~0_combout\ & (DS(0))) # (!\Mux0~0_combout\ & ((SS(0)))))) # (!\seletor[1]~input_o\ & (((\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[1]~input_o\,
	datab => DS(0),
	datac => SS(0),
	datad => \Mux0~0_combout\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X26_Y9_N8
\saidaDados[0]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saidaDados[0]~reg0feeder_combout\ = \Mux0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux0~1_combout\,
	combout => \saidaDados[0]~reg0feeder_combout\);

-- Location: LCCOMB_X27_Y9_N0
\IP[0]~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IP[0]~32_combout\ = IP(0) $ (VCC)
-- \IP[0]~33\ = CARRY(IP(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => IP(0),
	datad => VCC,
	combout => \IP[0]~32_combout\,
	cout => \IP[0]~33\);

-- Location: IOIBUF_X33_Y25_N1
\soma_IP~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_soma_IP,
	o => \soma_IP~input_o\);

-- Location: LCCOMB_X22_Y9_N12
\ProcessoResetEscrita~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ProcessoResetEscrita~1_combout\ = (!\soma_IP~input_o\) # (!\habilita~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \habilita~input_o\,
	datad => \soma_IP~input_o\,
	combout => \ProcessoResetEscrita~1_combout\);

-- Location: LCCOMB_X22_Y9_N26
\IP[15]~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IP[15]~34_combout\ = (\habilita~input_o\ & ((\soma_IP~input_o\) # ((\seletor[2]~input_o\ & !\leitura_Escrita~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \soma_IP~input_o\,
	datab => \habilita~input_o\,
	datac => \seletor[2]~input_o\,
	datad => \leitura_Escrita~input_o\,
	combout => \IP[15]~34_combout\);

-- Location: FF_X27_Y9_N1
\IP[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \IP[0]~32_combout\,
	asdata => \entradaDados[0]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => \ProcessoResetEscrita~1_combout\,
	ena => \IP[15]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IP(0));

-- Location: LCCOMB_X22_Y9_N20
\ProcessoLeitura~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ProcessoLeitura~0_combout\ = (\habilita~input_o\ & \leitura_Escrita~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \habilita~input_o\,
	datad => \leitura_Escrita~input_o\,
	combout => \ProcessoLeitura~0_combout\);

-- Location: FF_X26_Y9_N9
\saidaDados[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \saidaDados[0]~reg0feeder_combout\,
	asdata => IP(0),
	sload => \seletor[2]~input_o\,
	ena => \ProcessoLeitura~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saidaDados[0]~reg0_q\);

-- Location: LCCOMB_X25_Y8_N18
\Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ((!\seletor[1]~input_o\ & !\seletor[0]~input_o\)) # (!\seletor[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[1]~input_o\,
	datac => \seletor[0]~input_o\,
	datad => \seletor[2]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X25_Y8_N22
\saidaDados[0]~enfeeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saidaDados[0]~enfeeder_combout\ = \Mux1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux1~0_combout\,
	combout => \saidaDados[0]~enfeeder_combout\);

-- Location: FF_X25_Y8_N23
\saidaDados[0]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \saidaDados[0]~enfeeder_combout\,
	ena => \ProcessoLeitura~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saidaDados[0]~en_q\);

-- Location: IOIBUF_X20_Y0_N1
\entradaDados[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaDados(1),
	o => \entradaDados[1]~input_o\);

-- Location: FF_X25_Y9_N19
\DS[1]\ : dffeas
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
	ena => \DS[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DS(1));

-- Location: FF_X24_Y9_N1
\CS[1]\ : dffeas
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
	ena => \CS[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CS(1));

-- Location: FF_X24_Y9_N3
\ES[1]\ : dffeas
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
	ena => \ES[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ES(1));

-- Location: FF_X25_Y9_N17
\SS[1]\ : dffeas
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
	ena => \SS[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SS(1));

-- Location: LCCOMB_X24_Y9_N2
\Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\seletor[0]~input_o\ & (\seletor[1]~input_o\)) # (!\seletor[0]~input_o\ & ((\seletor[1]~input_o\ & ((SS(1)))) # (!\seletor[1]~input_o\ & (ES(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[0]~input_o\,
	datab => \seletor[1]~input_o\,
	datac => ES(1),
	datad => SS(1),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X24_Y9_N0
\Mux2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\seletor[0]~input_o\ & ((\Mux2~0_combout\ & (DS(1))) # (!\Mux2~0_combout\ & ((CS(1)))))) # (!\seletor[0]~input_o\ & (((\Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[0]~input_o\,
	datab => DS(1),
	datac => CS(1),
	datad => \Mux2~0_combout\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X26_Y9_N2
\saidaDados[1]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saidaDados[1]~reg0feeder_combout\ = \Mux2~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux2~1_combout\,
	combout => \saidaDados[1]~reg0feeder_combout\);

-- Location: LCCOMB_X27_Y9_N2
\IP[1]~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IP[1]~35_combout\ = (IP(1) & (!\IP[0]~33\)) # (!IP(1) & ((\IP[0]~33\) # (GND)))
-- \IP[1]~36\ = CARRY((!\IP[0]~33\) # (!IP(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => IP(1),
	datad => VCC,
	cin => \IP[0]~33\,
	combout => \IP[1]~35_combout\,
	cout => \IP[1]~36\);

-- Location: FF_X27_Y9_N3
\IP[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \IP[1]~35_combout\,
	asdata => \entradaDados[1]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => \ProcessoResetEscrita~1_combout\,
	ena => \IP[15]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IP(1));

-- Location: FF_X26_Y9_N3
\saidaDados[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \saidaDados[1]~reg0feeder_combout\,
	asdata => IP(1),
	sload => \seletor[2]~input_o\,
	ena => \ProcessoLeitura~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saidaDados[1]~reg0_q\);

-- Location: LCCOMB_X26_Y8_N0
\saidaDados[1]~enfeeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saidaDados[1]~enfeeder_combout\ = \Mux1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux1~0_combout\,
	combout => \saidaDados[1]~enfeeder_combout\);

-- Location: FF_X26_Y8_N1
\saidaDados[1]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \saidaDados[1]~enfeeder_combout\,
	ena => \ProcessoLeitura~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saidaDados[1]~en_q\);

-- Location: IOIBUF_X33_Y24_N1
\entradaDados[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaDados(2),
	o => \entradaDados[2]~input_o\);

-- Location: LCCOMB_X21_Y9_N6
\DS[2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DS[2]~feeder_combout\ = \entradaDados[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaDados[2]~input_o\,
	combout => \DS[2]~feeder_combout\);

-- Location: FF_X21_Y9_N7
\DS[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \DS[2]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \DS[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DS(2));

-- Location: FF_X22_Y9_N23
\SS[2]\ : dffeas
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
	ena => \SS[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SS(2));

-- Location: FF_X22_Y9_N29
\ES[2]\ : dffeas
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
	ena => \ES[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ES(2));

-- Location: LCCOMB_X21_Y9_N24
\CS[2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CS[2]~feeder_combout\ = \entradaDados[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaDados[2]~input_o\,
	combout => \CS[2]~feeder_combout\);

-- Location: FF_X21_Y9_N25
\CS[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \CS[2]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \CS[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CS(2));

-- Location: LCCOMB_X22_Y9_N28
\Mux3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\seletor[0]~input_o\ & ((\seletor[1]~input_o\) # ((CS(2))))) # (!\seletor[0]~input_o\ & (!\seletor[1]~input_o\ & (ES(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[0]~input_o\,
	datab => \seletor[1]~input_o\,
	datac => ES(2),
	datad => CS(2),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X22_Y9_N22
\Mux3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\seletor[1]~input_o\ & ((\Mux3~0_combout\ & (DS(2))) # (!\Mux3~0_combout\ & ((SS(2)))))) # (!\seletor[1]~input_o\ & (((\Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[1]~input_o\,
	datab => DS(2),
	datac => SS(2),
	datad => \Mux3~0_combout\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X26_Y9_N20
\saidaDados[2]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saidaDados[2]~reg0feeder_combout\ = \Mux3~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux3~1_combout\,
	combout => \saidaDados[2]~reg0feeder_combout\);

-- Location: LCCOMB_X27_Y9_N4
\IP[2]~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IP[2]~37_combout\ = (IP(2) & (\IP[1]~36\ $ (GND))) # (!IP(2) & (!\IP[1]~36\ & VCC))
-- \IP[2]~38\ = CARRY((IP(2) & !\IP[1]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => IP(2),
	datad => VCC,
	cin => \IP[1]~36\,
	combout => \IP[2]~37_combout\,
	cout => \IP[2]~38\);

-- Location: FF_X27_Y9_N5
\IP[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \IP[2]~37_combout\,
	asdata => \entradaDados[2]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => \ProcessoResetEscrita~1_combout\,
	ena => \IP[15]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IP(2));

-- Location: FF_X26_Y9_N21
\saidaDados[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \saidaDados[2]~reg0feeder_combout\,
	asdata => IP(2),
	sload => \seletor[2]~input_o\,
	ena => \ProcessoLeitura~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saidaDados[2]~reg0_q\);

-- Location: LCCOMB_X25_Y8_N12
\saidaDados[2]~enfeeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saidaDados[2]~enfeeder_combout\ = \Mux1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux1~0_combout\,
	combout => \saidaDados[2]~enfeeder_combout\);

-- Location: FF_X25_Y8_N13
\saidaDados[2]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \saidaDados[2]~enfeeder_combout\,
	ena => \ProcessoLeitura~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saidaDados[2]~en_q\);

-- Location: IOIBUF_X33_Y16_N22
\entradaDados[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaDados(3),
	o => \entradaDados[3]~input_o\);

-- Location: LCCOMB_X23_Y9_N28
\DS[3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DS[3]~feeder_combout\ = \entradaDados[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaDados[3]~input_o\,
	combout => \DS[3]~feeder_combout\);

-- Location: FF_X23_Y9_N29
\DS[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \DS[3]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \DS[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DS(3));

-- Location: FF_X24_Y9_N21
\CS[3]\ : dffeas
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
	ena => \CS[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CS(3));

-- Location: FF_X24_Y9_N19
\ES[3]\ : dffeas
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
	ena => \ES[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ES(3));

-- Location: LCCOMB_X25_Y9_N4
\SS[3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SS[3]~feeder_combout\ = \entradaDados[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaDados[3]~input_o\,
	combout => \SS[3]~feeder_combout\);

-- Location: FF_X25_Y9_N5
\SS[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \SS[3]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \SS[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SS(3));

-- Location: LCCOMB_X24_Y9_N18
\Mux4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\seletor[0]~input_o\ & (\seletor[1]~input_o\)) # (!\seletor[0]~input_o\ & ((\seletor[1]~input_o\ & ((SS(3)))) # (!\seletor[1]~input_o\ & (ES(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[0]~input_o\,
	datab => \seletor[1]~input_o\,
	datac => ES(3),
	datad => SS(3),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X24_Y9_N20
\Mux4~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\seletor[0]~input_o\ & ((\Mux4~0_combout\ & (DS(3))) # (!\Mux4~0_combout\ & ((CS(3)))))) # (!\seletor[0]~input_o\ & (((\Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[0]~input_o\,
	datab => DS(3),
	datac => CS(3),
	datad => \Mux4~0_combout\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X26_Y9_N10
\saidaDados[3]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saidaDados[3]~reg0feeder_combout\ = \Mux4~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux4~1_combout\,
	combout => \saidaDados[3]~reg0feeder_combout\);

-- Location: LCCOMB_X27_Y9_N6
\IP[3]~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IP[3]~39_combout\ = (IP(3) & (!\IP[2]~38\)) # (!IP(3) & ((\IP[2]~38\) # (GND)))
-- \IP[3]~40\ = CARRY((!\IP[2]~38\) # (!IP(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => IP(3),
	datad => VCC,
	cin => \IP[2]~38\,
	combout => \IP[3]~39_combout\,
	cout => \IP[3]~40\);

-- Location: FF_X27_Y9_N7
\IP[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \IP[3]~39_combout\,
	asdata => \entradaDados[3]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => \ProcessoResetEscrita~1_combout\,
	ena => \IP[15]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IP(3));

-- Location: FF_X26_Y9_N11
\saidaDados[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \saidaDados[3]~reg0feeder_combout\,
	asdata => IP(3),
	sload => \seletor[2]~input_o\,
	ena => \ProcessoLeitura~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saidaDados[3]~reg0_q\);

-- Location: LCCOMB_X26_Y9_N0
\saidaDados[3]~enfeeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saidaDados[3]~enfeeder_combout\ = \Mux1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux1~0_combout\,
	combout => \saidaDados[3]~enfeeder_combout\);

-- Location: FF_X26_Y9_N1
\saidaDados[3]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \saidaDados[3]~enfeeder_combout\,
	ena => \ProcessoLeitura~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saidaDados[3]~en_q\);

-- Location: IOIBUF_X33_Y16_N15
\entradaDados[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaDados(4),
	o => \entradaDados[4]~input_o\);

-- Location: FF_X23_Y9_N13
\DS[4]\ : dffeas
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
	ena => \DS[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DS(4));

-- Location: FF_X22_Y9_N15
\SS[4]\ : dffeas
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
	ena => \SS[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SS(4));

-- Location: FF_X22_Y9_N25
\ES[4]\ : dffeas
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
	ena => \ES[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ES(4));

-- Location: FF_X23_Y9_N19
\CS[4]\ : dffeas
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
	ena => \CS[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CS(4));

-- Location: LCCOMB_X22_Y9_N24
\Mux5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\seletor[0]~input_o\ & ((\seletor[1]~input_o\) # ((CS(4))))) # (!\seletor[0]~input_o\ & (!\seletor[1]~input_o\ & (ES(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[0]~input_o\,
	datab => \seletor[1]~input_o\,
	datac => ES(4),
	datad => CS(4),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X22_Y9_N14
\Mux5~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\seletor[1]~input_o\ & ((\Mux5~0_combout\ & (DS(4))) # (!\Mux5~0_combout\ & ((SS(4)))))) # (!\seletor[1]~input_o\ & (((\Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[1]~input_o\,
	datab => DS(4),
	datac => SS(4),
	datad => \Mux5~0_combout\,
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X26_Y9_N4
\saidaDados[4]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saidaDados[4]~reg0feeder_combout\ = \Mux5~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux5~1_combout\,
	combout => \saidaDados[4]~reg0feeder_combout\);

-- Location: LCCOMB_X27_Y9_N8
\IP[4]~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IP[4]~41_combout\ = (IP(4) & (\IP[3]~40\ $ (GND))) # (!IP(4) & (!\IP[3]~40\ & VCC))
-- \IP[4]~42\ = CARRY((IP(4) & !\IP[3]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => IP(4),
	datad => VCC,
	cin => \IP[3]~40\,
	combout => \IP[4]~41_combout\,
	cout => \IP[4]~42\);

-- Location: FF_X27_Y9_N9
\IP[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \IP[4]~41_combout\,
	asdata => \entradaDados[4]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => \ProcessoResetEscrita~1_combout\,
	ena => \IP[15]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IP(4));

-- Location: FF_X26_Y9_N5
\saidaDados[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \saidaDados[4]~reg0feeder_combout\,
	asdata => IP(4),
	sload => \seletor[2]~input_o\,
	ena => \ProcessoLeitura~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saidaDados[4]~reg0_q\);

-- Location: LCCOMB_X25_Y8_N6
\saidaDados[4]~enfeeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saidaDados[4]~enfeeder_combout\ = \Mux1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux1~0_combout\,
	combout => \saidaDados[4]~enfeeder_combout\);

-- Location: FF_X25_Y8_N7
\saidaDados[4]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \saidaDados[4]~enfeeder_combout\,
	ena => \ProcessoLeitura~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saidaDados[4]~en_q\);

-- Location: IOIBUF_X24_Y31_N1
\entradaDados[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaDados(5),
	o => \entradaDados[5]~input_o\);

-- Location: FF_X23_Y9_N17
\DS[5]\ : dffeas
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
	ena => \DS[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DS(5));

-- Location: FF_X23_Y9_N7
\CS[5]\ : dffeas
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
	ena => \CS[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CS(5));

-- Location: FF_X24_Y9_N5
\ES[5]\ : dffeas
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
	ena => \ES[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ES(5));

-- Location: FF_X25_Y9_N23
\SS[5]\ : dffeas
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
	ena => \SS[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SS(5));

-- Location: LCCOMB_X24_Y9_N4
\Mux6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\seletor[0]~input_o\ & (\seletor[1]~input_o\)) # (!\seletor[0]~input_o\ & ((\seletor[1]~input_o\ & ((SS(5)))) # (!\seletor[1]~input_o\ & (ES(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[0]~input_o\,
	datab => \seletor[1]~input_o\,
	datac => ES(5),
	datad => SS(5),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X23_Y9_N6
\Mux6~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\seletor[0]~input_o\ & ((\Mux6~0_combout\ & (DS(5))) # (!\Mux6~0_combout\ & ((CS(5)))))) # (!\seletor[0]~input_o\ & (((\Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[0]~input_o\,
	datab => DS(5),
	datac => CS(5),
	datad => \Mux6~0_combout\,
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X26_Y9_N18
\saidaDados[5]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saidaDados[5]~reg0feeder_combout\ = \Mux6~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux6~1_combout\,
	combout => \saidaDados[5]~reg0feeder_combout\);

-- Location: LCCOMB_X27_Y9_N10
\IP[5]~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IP[5]~43_combout\ = (IP(5) & (!\IP[4]~42\)) # (!IP(5) & ((\IP[4]~42\) # (GND)))
-- \IP[5]~44\ = CARRY((!\IP[4]~42\) # (!IP(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => IP(5),
	datad => VCC,
	cin => \IP[4]~42\,
	combout => \IP[5]~43_combout\,
	cout => \IP[5]~44\);

-- Location: FF_X27_Y9_N11
\IP[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \IP[5]~43_combout\,
	asdata => \entradaDados[5]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => \ProcessoResetEscrita~1_combout\,
	ena => \IP[15]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IP(5));

-- Location: FF_X26_Y9_N19
\saidaDados[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \saidaDados[5]~reg0feeder_combout\,
	asdata => IP(5),
	sload => \seletor[2]~input_o\,
	ena => \ProcessoLeitura~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saidaDados[5]~reg0_q\);

-- Location: LCCOMB_X26_Y8_N14
\saidaDados[5]~enfeeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saidaDados[5]~enfeeder_combout\ = \Mux1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux1~0_combout\,
	combout => \saidaDados[5]~enfeeder_combout\);

-- Location: FF_X26_Y8_N15
\saidaDados[5]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \saidaDados[5]~enfeeder_combout\,
	ena => \ProcessoLeitura~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saidaDados[5]~en_q\);

-- Location: IOIBUF_X33_Y16_N8
\entradaDados[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaDados(6),
	o => \entradaDados[6]~input_o\);

-- Location: FF_X24_Y10_N17
\DS[6]\ : dffeas
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
	ena => \DS[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DS(6));

-- Location: FF_X25_Y9_N21
\SS[6]\ : dffeas
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
	ena => \SS[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SS(6));

-- Location: FF_X24_Y9_N29
\ES[6]\ : dffeas
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
	ena => \ES[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ES(6));

-- Location: FF_X24_Y9_N11
\CS[6]\ : dffeas
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
	ena => \CS[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CS(6));

-- Location: LCCOMB_X24_Y9_N28
\Mux7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\seletor[0]~input_o\ & ((\seletor[1]~input_o\) # ((CS(6))))) # (!\seletor[0]~input_o\ & (!\seletor[1]~input_o\ & (ES(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[0]~input_o\,
	datab => \seletor[1]~input_o\,
	datac => ES(6),
	datad => CS(6),
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X25_Y9_N20
\Mux7~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\seletor[1]~input_o\ & ((\Mux7~0_combout\ & (DS(6))) # (!\Mux7~0_combout\ & ((SS(6)))))) # (!\seletor[1]~input_o\ & (((\Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[1]~input_o\,
	datab => DS(6),
	datac => SS(6),
	datad => \Mux7~0_combout\,
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X26_Y9_N24
\saidaDados[6]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saidaDados[6]~reg0feeder_combout\ = \Mux7~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux7~1_combout\,
	combout => \saidaDados[6]~reg0feeder_combout\);

-- Location: LCCOMB_X27_Y9_N12
\IP[6]~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IP[6]~45_combout\ = (IP(6) & (\IP[5]~44\ $ (GND))) # (!IP(6) & (!\IP[5]~44\ & VCC))
-- \IP[6]~46\ = CARRY((IP(6) & !\IP[5]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => IP(6),
	datad => VCC,
	cin => \IP[5]~44\,
	combout => \IP[6]~45_combout\,
	cout => \IP[6]~46\);

-- Location: FF_X27_Y9_N13
\IP[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \IP[6]~45_combout\,
	asdata => \entradaDados[6]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => \ProcessoResetEscrita~1_combout\,
	ena => \IP[15]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IP(6));

-- Location: FF_X26_Y9_N25
\saidaDados[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \saidaDados[6]~reg0feeder_combout\,
	asdata => IP(6),
	sload => \seletor[2]~input_o\,
	ena => \ProcessoLeitura~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saidaDados[6]~reg0_q\);

-- Location: LCCOMB_X26_Y8_N12
\saidaDados[6]~enfeeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saidaDados[6]~enfeeder_combout\ = \Mux1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux1~0_combout\,
	combout => \saidaDados[6]~enfeeder_combout\);

-- Location: FF_X26_Y8_N13
\saidaDados[6]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \saidaDados[6]~enfeeder_combout\,
	ena => \ProcessoLeitura~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saidaDados[6]~en_q\);

-- Location: IOIBUF_X33_Y16_N1
\entradaDados[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaDados(7),
	o => \entradaDados[7]~input_o\);

-- Location: LCCOMB_X23_Y9_N0
\DS[7]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DS[7]~feeder_combout\ = \entradaDados[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaDados[7]~input_o\,
	combout => \DS[7]~feeder_combout\);

-- Location: FF_X23_Y9_N1
\DS[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \DS[7]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \DS[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DS(7));

-- Location: FF_X23_Y9_N27
\CS[7]\ : dffeas
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
	ena => \CS[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CS(7));

-- Location: FF_X22_Y9_N9
\ES[7]\ : dffeas
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
	ena => \ES[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ES(7));

-- Location: FF_X22_Y9_N19
\SS[7]\ : dffeas
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
	ena => \SS[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SS(7));

-- Location: LCCOMB_X22_Y9_N8
\Mux8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\seletor[0]~input_o\ & (\seletor[1]~input_o\)) # (!\seletor[0]~input_o\ & ((\seletor[1]~input_o\ & ((SS(7)))) # (!\seletor[1]~input_o\ & (ES(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[0]~input_o\,
	datab => \seletor[1]~input_o\,
	datac => ES(7),
	datad => SS(7),
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X23_Y9_N26
\Mux8~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (\seletor[0]~input_o\ & ((\Mux8~0_combout\ & (DS(7))) # (!\Mux8~0_combout\ & ((CS(7)))))) # (!\seletor[0]~input_o\ & (((\Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[0]~input_o\,
	datab => DS(7),
	datac => CS(7),
	datad => \Mux8~0_combout\,
	combout => \Mux8~1_combout\);

-- Location: LCCOMB_X26_Y9_N14
\saidaDados[7]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saidaDados[7]~reg0feeder_combout\ = \Mux8~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux8~1_combout\,
	combout => \saidaDados[7]~reg0feeder_combout\);

-- Location: LCCOMB_X27_Y9_N14
\IP[7]~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IP[7]~47_combout\ = (IP(7) & (!\IP[6]~46\)) # (!IP(7) & ((\IP[6]~46\) # (GND)))
-- \IP[7]~48\ = CARRY((!\IP[6]~46\) # (!IP(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => IP(7),
	datad => VCC,
	cin => \IP[6]~46\,
	combout => \IP[7]~47_combout\,
	cout => \IP[7]~48\);

-- Location: FF_X27_Y9_N15
\IP[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \IP[7]~47_combout\,
	asdata => \entradaDados[7]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => \ProcessoResetEscrita~1_combout\,
	ena => \IP[15]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IP(7));

-- Location: FF_X26_Y9_N15
\saidaDados[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \saidaDados[7]~reg0feeder_combout\,
	asdata => IP(7),
	sload => \seletor[2]~input_o\,
	ena => \ProcessoLeitura~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saidaDados[7]~reg0_q\);

-- Location: LCCOMB_X26_Y9_N22
\saidaDados[7]~enfeeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saidaDados[7]~enfeeder_combout\ = \Mux1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux1~0_combout\,
	combout => \saidaDados[7]~enfeeder_combout\);

-- Location: FF_X26_Y9_N23
\saidaDados[7]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \saidaDados[7]~enfeeder_combout\,
	ena => \ProcessoLeitura~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saidaDados[7]~en_q\);

-- Location: IOIBUF_X31_Y0_N1
\entradaDados[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaDados(8),
	o => \entradaDados[8]~input_o\);

-- Location: FF_X25_Y9_N1
\DS[8]\ : dffeas
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
	ena => \DS[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DS(8));

-- Location: FF_X25_Y9_N11
\SS[8]\ : dffeas
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
	ena => \SS[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SS(8));

-- Location: FF_X24_Y9_N25
\ES[8]\ : dffeas
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
	ena => \ES[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ES(8));

-- Location: FF_X24_Y9_N23
\CS[8]\ : dffeas
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
	ena => \CS[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CS(8));

-- Location: LCCOMB_X24_Y9_N24
\Mux9~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\seletor[0]~input_o\ & ((\seletor[1]~input_o\) # ((CS(8))))) # (!\seletor[0]~input_o\ & (!\seletor[1]~input_o\ & (ES(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[0]~input_o\,
	datab => \seletor[1]~input_o\,
	datac => ES(8),
	datad => CS(8),
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X25_Y9_N10
\Mux9~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (\seletor[1]~input_o\ & ((\Mux9~0_combout\ & (DS(8))) # (!\Mux9~0_combout\ & ((SS(8)))))) # (!\seletor[1]~input_o\ & (((\Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[1]~input_o\,
	datab => DS(8),
	datac => SS(8),
	datad => \Mux9~0_combout\,
	combout => \Mux9~1_combout\);

-- Location: LCCOMB_X26_Y9_N28
\saidaDados[8]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saidaDados[8]~reg0feeder_combout\ = \Mux9~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux9~1_combout\,
	combout => \saidaDados[8]~reg0feeder_combout\);

-- Location: LCCOMB_X27_Y9_N16
\IP[8]~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IP[8]~49_combout\ = (IP(8) & (\IP[7]~48\ $ (GND))) # (!IP(8) & (!\IP[7]~48\ & VCC))
-- \IP[8]~50\ = CARRY((IP(8) & !\IP[7]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => IP(8),
	datad => VCC,
	cin => \IP[7]~48\,
	combout => \IP[8]~49_combout\,
	cout => \IP[8]~50\);

-- Location: FF_X27_Y9_N17
\IP[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \IP[8]~49_combout\,
	asdata => \entradaDados[8]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => \ProcessoResetEscrita~1_combout\,
	ena => \IP[15]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IP(8));

-- Location: FF_X26_Y9_N29
\saidaDados[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \saidaDados[8]~reg0feeder_combout\,
	asdata => IP(8),
	sload => \seletor[2]~input_o\,
	ena => \ProcessoLeitura~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saidaDados[8]~reg0_q\);

-- Location: LCCOMB_X25_Y8_N4
\saidaDados[8]~enfeeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saidaDados[8]~enfeeder_combout\ = \Mux1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux1~0_combout\,
	combout => \saidaDados[8]~enfeeder_combout\);

-- Location: FF_X25_Y8_N5
\saidaDados[8]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \saidaDados[8]~enfeeder_combout\,
	ena => \ProcessoLeitura~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saidaDados[8]~en_q\);

-- Location: IOIBUF_X33_Y22_N8
\entradaDados[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaDados(9),
	o => \entradaDados[9]~input_o\);

-- Location: LCCOMB_X23_Y9_N8
\DS[9]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DS[9]~feeder_combout\ = \entradaDados[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaDados[9]~input_o\,
	combout => \DS[9]~feeder_combout\);

-- Location: FF_X23_Y9_N9
\DS[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \DS[9]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \DS[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DS(9));

-- Location: FF_X23_Y9_N11
\CS[9]\ : dffeas
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
	ena => \CS[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CS(9));

-- Location: FF_X24_Y9_N27
\ES[9]\ : dffeas
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
	ena => \ES[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ES(9));

-- Location: LCCOMB_X25_Y9_N6
\SS[9]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SS[9]~feeder_combout\ = \entradaDados[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaDados[9]~input_o\,
	combout => \SS[9]~feeder_combout\);

-- Location: FF_X25_Y9_N7
\SS[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \SS[9]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \SS[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SS(9));

-- Location: LCCOMB_X24_Y9_N26
\Mux10~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\seletor[0]~input_o\ & (\seletor[1]~input_o\)) # (!\seletor[0]~input_o\ & ((\seletor[1]~input_o\ & ((SS(9)))) # (!\seletor[1]~input_o\ & (ES(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[0]~input_o\,
	datab => \seletor[1]~input_o\,
	datac => ES(9),
	datad => SS(9),
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X23_Y9_N10
\Mux10~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (\seletor[0]~input_o\ & ((\Mux10~0_combout\ & (DS(9))) # (!\Mux10~0_combout\ & ((CS(9)))))) # (!\seletor[0]~input_o\ & (((\Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[0]~input_o\,
	datab => DS(9),
	datac => CS(9),
	datad => \Mux10~0_combout\,
	combout => \Mux10~1_combout\);

-- Location: LCCOMB_X26_Y9_N30
\saidaDados[9]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saidaDados[9]~reg0feeder_combout\ = \Mux10~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux10~1_combout\,
	combout => \saidaDados[9]~reg0feeder_combout\);

-- Location: LCCOMB_X27_Y9_N18
\IP[9]~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IP[9]~51_combout\ = (IP(9) & (!\IP[8]~50\)) # (!IP(9) & ((\IP[8]~50\) # (GND)))
-- \IP[9]~52\ = CARRY((!\IP[8]~50\) # (!IP(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => IP(9),
	datad => VCC,
	cin => \IP[8]~50\,
	combout => \IP[9]~51_combout\,
	cout => \IP[9]~52\);

-- Location: FF_X27_Y9_N19
\IP[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \IP[9]~51_combout\,
	asdata => \entradaDados[9]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => \ProcessoResetEscrita~1_combout\,
	ena => \IP[15]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IP(9));

-- Location: FF_X26_Y9_N31
\saidaDados[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \saidaDados[9]~reg0feeder_combout\,
	asdata => IP(9),
	sload => \seletor[2]~input_o\,
	ena => \ProcessoLeitura~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saidaDados[9]~reg0_q\);

-- Location: LCCOMB_X25_Y8_N10
\saidaDados[9]~enfeeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saidaDados[9]~enfeeder_combout\ = \Mux1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux1~0_combout\,
	combout => \saidaDados[9]~enfeeder_combout\);

-- Location: FF_X25_Y8_N11
\saidaDados[9]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \saidaDados[9]~enfeeder_combout\,
	ena => \ProcessoLeitura~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saidaDados[9]~en_q\);

-- Location: IOIBUF_X31_Y0_N8
\entradaDados[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaDados(10),
	o => \entradaDados[10]~input_o\);

-- Location: FF_X25_Y9_N15
\DS[10]\ : dffeas
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
	ena => \DS[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DS(10));

-- Location: FF_X25_Y9_N13
\SS[10]\ : dffeas
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
	ena => \SS[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SS(10));

-- Location: FF_X24_Y9_N9
\ES[10]\ : dffeas
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
	ena => \ES[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ES(10));

-- Location: FF_X23_Y9_N31
\CS[10]\ : dffeas
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
	ena => \CS[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CS(10));

-- Location: LCCOMB_X24_Y9_N8
\Mux11~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\seletor[0]~input_o\ & ((\seletor[1]~input_o\) # ((CS(10))))) # (!\seletor[0]~input_o\ & (!\seletor[1]~input_o\ & (ES(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[0]~input_o\,
	datab => \seletor[1]~input_o\,
	datac => ES(10),
	datad => CS(10),
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X25_Y9_N12
\Mux11~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (\seletor[1]~input_o\ & ((\Mux11~0_combout\ & (DS(10))) # (!\Mux11~0_combout\ & ((SS(10)))))) # (!\seletor[1]~input_o\ & (((\Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[1]~input_o\,
	datab => DS(10),
	datac => SS(10),
	datad => \Mux11~0_combout\,
	combout => \Mux11~1_combout\);

-- Location: LCCOMB_X26_Y9_N16
\saidaDados[10]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saidaDados[10]~reg0feeder_combout\ = \Mux11~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux11~1_combout\,
	combout => \saidaDados[10]~reg0feeder_combout\);

-- Location: LCCOMB_X27_Y9_N20
\IP[10]~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IP[10]~53_combout\ = (IP(10) & (\IP[9]~52\ $ (GND))) # (!IP(10) & (!\IP[9]~52\ & VCC))
-- \IP[10]~54\ = CARRY((IP(10) & !\IP[9]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => IP(10),
	datad => VCC,
	cin => \IP[9]~52\,
	combout => \IP[10]~53_combout\,
	cout => \IP[10]~54\);

-- Location: FF_X27_Y9_N21
\IP[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \IP[10]~53_combout\,
	asdata => \entradaDados[10]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => \ProcessoResetEscrita~1_combout\,
	ena => \IP[15]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IP(10));

-- Location: FF_X26_Y9_N17
\saidaDados[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \saidaDados[10]~reg0feeder_combout\,
	asdata => IP(10),
	sload => \seletor[2]~input_o\,
	ena => \ProcessoLeitura~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saidaDados[10]~reg0_q\);

-- Location: LCCOMB_X26_Y8_N18
\saidaDados[10]~enfeeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saidaDados[10]~enfeeder_combout\ = \Mux1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux1~0_combout\,
	combout => \saidaDados[10]~enfeeder_combout\);

-- Location: FF_X26_Y8_N19
\saidaDados[10]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \saidaDados[10]~enfeeder_combout\,
	ena => \ProcessoLeitura~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saidaDados[10]~en_q\);

-- Location: IOIBUF_X22_Y31_N8
\entradaDados[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaDados(11),
	o => \entradaDados[11]~input_o\);

-- Location: FF_X23_Y9_N21
\DS[11]\ : dffeas
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
	ena => \DS[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DS(11));

-- Location: FF_X24_Y9_N31
\CS[11]\ : dffeas
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
	ena => \CS[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CS(11));

-- Location: FF_X24_Y9_N17
\ES[11]\ : dffeas
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
	ena => \ES[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ES(11));

-- Location: FF_X25_Y9_N29
\SS[11]\ : dffeas
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
	ena => \SS[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SS(11));

-- Location: LCCOMB_X24_Y9_N16
\Mux12~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\seletor[0]~input_o\ & (\seletor[1]~input_o\)) # (!\seletor[0]~input_o\ & ((\seletor[1]~input_o\ & ((SS(11)))) # (!\seletor[1]~input_o\ & (ES(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[0]~input_o\,
	datab => \seletor[1]~input_o\,
	datac => ES(11),
	datad => SS(11),
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X24_Y9_N30
\Mux12~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = (\seletor[0]~input_o\ & ((\Mux12~0_combout\ & (DS(11))) # (!\Mux12~0_combout\ & ((CS(11)))))) # (!\seletor[0]~input_o\ & (((\Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[0]~input_o\,
	datab => DS(11),
	datac => CS(11),
	datad => \Mux12~0_combout\,
	combout => \Mux12~1_combout\);

-- Location: LCCOMB_X25_Y8_N20
\saidaDados[11]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saidaDados[11]~reg0feeder_combout\ = \Mux12~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux12~1_combout\,
	combout => \saidaDados[11]~reg0feeder_combout\);

-- Location: LCCOMB_X27_Y9_N22
\IP[11]~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IP[11]~55_combout\ = (IP(11) & (!\IP[10]~54\)) # (!IP(11) & ((\IP[10]~54\) # (GND)))
-- \IP[11]~56\ = CARRY((!\IP[10]~54\) # (!IP(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => IP(11),
	datad => VCC,
	cin => \IP[10]~54\,
	combout => \IP[11]~55_combout\,
	cout => \IP[11]~56\);

-- Location: FF_X27_Y9_N23
\IP[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \IP[11]~55_combout\,
	asdata => \entradaDados[11]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => \ProcessoResetEscrita~1_combout\,
	ena => \IP[15]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IP(11));

-- Location: FF_X25_Y8_N21
\saidaDados[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \saidaDados[11]~reg0feeder_combout\,
	asdata => IP(11),
	sload => \seletor[2]~input_o\,
	ena => \ProcessoLeitura~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saidaDados[11]~reg0_q\);

-- Location: LCCOMB_X25_Y8_N28
\saidaDados[11]~enfeeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saidaDados[11]~enfeeder_combout\ = \Mux1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux1~0_combout\,
	combout => \saidaDados[11]~enfeeder_combout\);

-- Location: FF_X25_Y8_N29
\saidaDados[11]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \saidaDados[11]~enfeeder_combout\,
	ena => \ProcessoLeitura~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saidaDados[11]~en_q\);

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

-- Location: FF_X25_Y9_N25
\DS[12]\ : dffeas
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
	ena => \DS[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DS(12));

-- Location: FF_X25_Y9_N31
\SS[12]\ : dffeas
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
	ena => \SS[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SS(12));

-- Location: FF_X24_Y9_N15
\ES[12]\ : dffeas
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
	ena => \ES[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ES(12));

-- Location: FF_X23_Y9_N15
\CS[12]\ : dffeas
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
	ena => \CS[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CS(12));

-- Location: LCCOMB_X24_Y9_N14
\Mux13~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\seletor[0]~input_o\ & ((\seletor[1]~input_o\) # ((CS(12))))) # (!\seletor[0]~input_o\ & (!\seletor[1]~input_o\ & (ES(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[0]~input_o\,
	datab => \seletor[1]~input_o\,
	datac => ES(12),
	datad => CS(12),
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X25_Y9_N30
\Mux13~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = (\seletor[1]~input_o\ & ((\Mux13~0_combout\ & (DS(12))) # (!\Mux13~0_combout\ & ((SS(12)))))) # (!\seletor[1]~input_o\ & (((\Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[1]~input_o\,
	datab => DS(12),
	datac => SS(12),
	datad => \Mux13~0_combout\,
	combout => \Mux13~1_combout\);

-- Location: LCCOMB_X26_Y9_N26
\saidaDados[12]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saidaDados[12]~reg0feeder_combout\ = \Mux13~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux13~1_combout\,
	combout => \saidaDados[12]~reg0feeder_combout\);

-- Location: LCCOMB_X27_Y9_N24
\IP[12]~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IP[12]~57_combout\ = (IP(12) & (\IP[11]~56\ $ (GND))) # (!IP(12) & (!\IP[11]~56\ & VCC))
-- \IP[12]~58\ = CARRY((IP(12) & !\IP[11]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => IP(12),
	datad => VCC,
	cin => \IP[11]~56\,
	combout => \IP[12]~57_combout\,
	cout => \IP[12]~58\);

-- Location: FF_X27_Y9_N25
\IP[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \IP[12]~57_combout\,
	asdata => \entradaDados[12]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => \ProcessoResetEscrita~1_combout\,
	ena => \IP[15]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IP(12));

-- Location: FF_X26_Y9_N27
\saidaDados[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \saidaDados[12]~reg0feeder_combout\,
	asdata => IP(12),
	sload => \seletor[2]~input_o\,
	ena => \ProcessoLeitura~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saidaDados[12]~reg0_q\);

-- Location: LCCOMB_X25_Y8_N26
\saidaDados[12]~enfeeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saidaDados[12]~enfeeder_combout\ = \Mux1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux1~0_combout\,
	combout => \saidaDados[12]~enfeeder_combout\);

-- Location: FF_X25_Y8_N27
\saidaDados[12]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \saidaDados[12]~enfeeder_combout\,
	ena => \ProcessoLeitura~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saidaDados[12]~en_q\);

-- Location: IOIBUF_X33_Y14_N8
\entradaDados[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaDados(13),
	o => \entradaDados[13]~input_o\);

-- Location: LCCOMB_X23_Y9_N24
\DS[13]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DS[13]~feeder_combout\ = \entradaDados[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaDados[13]~input_o\,
	combout => \DS[13]~feeder_combout\);

-- Location: FF_X23_Y9_N25
\DS[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \DS[13]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \DS[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DS(13));

-- Location: FF_X24_Y9_N13
\CS[13]\ : dffeas
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
	ena => \CS[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CS(13));

-- Location: FF_X24_Y9_N7
\ES[13]\ : dffeas
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
	ena => \ES[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ES(13));

-- Location: LCCOMB_X25_Y9_N26
\SS[13]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SS[13]~feeder_combout\ = \entradaDados[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaDados[13]~input_o\,
	combout => \SS[13]~feeder_combout\);

-- Location: FF_X25_Y9_N27
\SS[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \SS[13]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \SS[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SS(13));

-- Location: LCCOMB_X24_Y9_N6
\Mux14~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\seletor[0]~input_o\ & (\seletor[1]~input_o\)) # (!\seletor[0]~input_o\ & ((\seletor[1]~input_o\ & ((SS(13)))) # (!\seletor[1]~input_o\ & (ES(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[0]~input_o\,
	datab => \seletor[1]~input_o\,
	datac => ES(13),
	datad => SS(13),
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X24_Y9_N12
\Mux14~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = (\seletor[0]~input_o\ & ((\Mux14~0_combout\ & (DS(13))) # (!\Mux14~0_combout\ & ((CS(13)))))) # (!\seletor[0]~input_o\ & (((\Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[0]~input_o\,
	datab => DS(13),
	datac => CS(13),
	datad => \Mux14~0_combout\,
	combout => \Mux14~1_combout\);

-- Location: LCCOMB_X26_Y9_N12
\saidaDados[13]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saidaDados[13]~reg0feeder_combout\ = \Mux14~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux14~1_combout\,
	combout => \saidaDados[13]~reg0feeder_combout\);

-- Location: LCCOMB_X27_Y9_N26
\IP[13]~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IP[13]~59_combout\ = (IP(13) & (!\IP[12]~58\)) # (!IP(13) & ((\IP[12]~58\) # (GND)))
-- \IP[13]~60\ = CARRY((!\IP[12]~58\) # (!IP(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => IP(13),
	datad => VCC,
	cin => \IP[12]~58\,
	combout => \IP[13]~59_combout\,
	cout => \IP[13]~60\);

-- Location: FF_X27_Y9_N27
\IP[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \IP[13]~59_combout\,
	asdata => \entradaDados[13]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => \ProcessoResetEscrita~1_combout\,
	ena => \IP[15]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IP(13));

-- Location: FF_X26_Y9_N13
\saidaDados[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \saidaDados[13]~reg0feeder_combout\,
	asdata => IP(13),
	sload => \seletor[2]~input_o\,
	ena => \ProcessoLeitura~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saidaDados[13]~reg0_q\);

-- Location: LCCOMB_X25_Y8_N24
\saidaDados[13]~enfeeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saidaDados[13]~enfeeder_combout\ = \Mux1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux1~0_combout\,
	combout => \saidaDados[13]~enfeeder_combout\);

-- Location: FF_X25_Y8_N25
\saidaDados[13]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \saidaDados[13]~enfeeder_combout\,
	ena => \ProcessoLeitura~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saidaDados[13]~en_q\);

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

-- Location: FF_X25_Y9_N3
\DS[14]\ : dffeas
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
	ena => \DS[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DS(14));

-- Location: FF_X25_Y9_N9
\SS[14]\ : dffeas
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
	ena => \SS[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SS(14));

-- Location: FF_X25_Y10_N3
\ES[14]\ : dffeas
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
	ena => \ES[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ES(14));

-- Location: FF_X25_Y10_N1
\CS[14]\ : dffeas
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
	ena => \CS[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CS(14));

-- Location: LCCOMB_X25_Y10_N2
\Mux15~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\seletor[0]~input_o\ & ((\seletor[1]~input_o\) # ((CS(14))))) # (!\seletor[0]~input_o\ & (!\seletor[1]~input_o\ & (ES(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[0]~input_o\,
	datab => \seletor[1]~input_o\,
	datac => ES(14),
	datad => CS(14),
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X25_Y9_N8
\Mux15~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = (\seletor[1]~input_o\ & ((\Mux15~0_combout\ & (DS(14))) # (!\Mux15~0_combout\ & ((SS(14)))))) # (!\seletor[1]~input_o\ & (((\Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[1]~input_o\,
	datab => DS(14),
	datac => SS(14),
	datad => \Mux15~0_combout\,
	combout => \Mux15~1_combout\);

-- Location: LCCOMB_X26_Y9_N6
\saidaDados[14]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saidaDados[14]~reg0feeder_combout\ = \Mux15~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux15~1_combout\,
	combout => \saidaDados[14]~reg0feeder_combout\);

-- Location: LCCOMB_X27_Y9_N28
\IP[14]~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IP[14]~61_combout\ = (IP(14) & (\IP[13]~60\ $ (GND))) # (!IP(14) & (!\IP[13]~60\ & VCC))
-- \IP[14]~62\ = CARRY((IP(14) & !\IP[13]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => IP(14),
	datad => VCC,
	cin => \IP[13]~60\,
	combout => \IP[14]~61_combout\,
	cout => \IP[14]~62\);

-- Location: FF_X27_Y9_N29
\IP[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \IP[14]~61_combout\,
	asdata => \entradaDados[14]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => \ProcessoResetEscrita~1_combout\,
	ena => \IP[15]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IP(14));

-- Location: FF_X26_Y9_N7
\saidaDados[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \saidaDados[14]~reg0feeder_combout\,
	asdata => IP(14),
	sload => \seletor[2]~input_o\,
	ena => \ProcessoLeitura~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saidaDados[14]~reg0_q\);

-- Location: LCCOMB_X25_Y8_N14
\saidaDados[14]~enfeeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saidaDados[14]~enfeeder_combout\ = \Mux1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux1~0_combout\,
	combout => \saidaDados[14]~enfeeder_combout\);

-- Location: FF_X25_Y8_N15
\saidaDados[14]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \saidaDados[14]~enfeeder_combout\,
	ena => \ProcessoLeitura~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saidaDados[14]~en_q\);

-- Location: IOIBUF_X26_Y31_N1
\entradaDados[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaDados(15),
	o => \entradaDados[15]~input_o\);

-- Location: LCCOMB_X24_Y10_N20
\DS[15]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DS[15]~feeder_combout\ = \entradaDados[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaDados[15]~input_o\,
	combout => \DS[15]~feeder_combout\);

-- Location: FF_X24_Y10_N21
\DS[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \DS[15]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \DS[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DS(15));

-- Location: FF_X25_Y10_N25
\CS[15]\ : dffeas
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
	ena => \CS[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CS(15));

-- Location: FF_X25_Y10_N7
\ES[15]\ : dffeas
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
	ena => \ES[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ES(15));

-- Location: LCCOMB_X24_Y10_N14
\SS[15]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SS[15]~feeder_combout\ = \entradaDados[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \entradaDados[15]~input_o\,
	combout => \SS[15]~feeder_combout\);

-- Location: FF_X24_Y10_N15
\SS[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \SS[15]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \SS[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SS(15));

-- Location: LCCOMB_X25_Y10_N6
\Mux16~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (\seletor[0]~input_o\ & (\seletor[1]~input_o\)) # (!\seletor[0]~input_o\ & ((\seletor[1]~input_o\ & ((SS(15)))) # (!\seletor[1]~input_o\ & (ES(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[0]~input_o\,
	datab => \seletor[1]~input_o\,
	datac => ES(15),
	datad => SS(15),
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X25_Y10_N24
\Mux16~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux16~1_combout\ = (\seletor[0]~input_o\ & ((\Mux16~0_combout\ & (DS(15))) # (!\Mux16~0_combout\ & ((CS(15)))))) # (!\seletor[0]~input_o\ & (((\Mux16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[0]~input_o\,
	datab => DS(15),
	datac => CS(15),
	datad => \Mux16~0_combout\,
	combout => \Mux16~1_combout\);

-- Location: LCCOMB_X26_Y10_N8
\saidaDados[15]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saidaDados[15]~reg0feeder_combout\ = \Mux16~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux16~1_combout\,
	combout => \saidaDados[15]~reg0feeder_combout\);

-- Location: LCCOMB_X27_Y9_N30
\IP[15]~63\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IP[15]~63_combout\ = \IP[14]~62\ $ (IP(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => IP(15),
	cin => \IP[14]~62\,
	combout => \IP[15]~63_combout\);

-- Location: FF_X27_Y9_N31
\IP[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \IP[15]~63_combout\,
	asdata => \entradaDados[15]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => \ProcessoResetEscrita~1_combout\,
	ena => \IP[15]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IP(15));

-- Location: FF_X26_Y10_N9
\saidaDados[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \saidaDados[15]~reg0feeder_combout\,
	asdata => IP(15),
	sload => \seletor[2]~input_o\,
	ena => \ProcessoLeitura~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saidaDados[15]~reg0_q\);

-- Location: LCCOMB_X25_Y8_N16
\saidaDados[15]~enfeeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saidaDados[15]~enfeeder_combout\ = \Mux1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux1~0_combout\,
	combout => \saidaDados[15]~enfeeder_combout\);

-- Location: FF_X25_Y8_N17
\saidaDados[15]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \saidaDados[15]~enfeeder_combout\,
	ena => \ProcessoLeitura~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saidaDados[15]~en_q\);

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


