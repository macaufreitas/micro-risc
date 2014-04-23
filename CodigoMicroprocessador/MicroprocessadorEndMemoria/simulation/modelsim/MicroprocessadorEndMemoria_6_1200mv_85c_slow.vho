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

-- DATE "04/18/2014 12:35:48"

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

ENTITY 	MicroprocessadorEndMemoria IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	endereco : BUFFER std_logic_vector(19 DOWNTO 0)
	);
END MicroprocessadorEndMemoria;

-- Design Ports Information
-- endereco[0]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endereco[1]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endereco[2]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endereco[3]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endereco[4]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endereco[5]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endereco[6]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endereco[7]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endereco[8]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endereco[9]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endereco[10]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endereco[11]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endereco[12]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endereco[13]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endereco[14]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endereco[15]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endereco[16]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endereco[17]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endereco[18]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endereco[19]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MicroprocessadorEndMemoria IS
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
SIGNAL ww_reset : std_logic;
SIGNAL ww_endereco : std_logic_vector(19 DOWNTO 0);
SIGNAL \UCE|ctrlRegSeg[0]~reg0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \UCE|habSaidaEnd~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \endereco[0]~output_o\ : std_logic;
SIGNAL \endereco[1]~output_o\ : std_logic;
SIGNAL \endereco[2]~output_o\ : std_logic;
SIGNAL \endereco[3]~output_o\ : std_logic;
SIGNAL \endereco[4]~output_o\ : std_logic;
SIGNAL \endereco[5]~output_o\ : std_logic;
SIGNAL \endereco[6]~output_o\ : std_logic;
SIGNAL \endereco[7]~output_o\ : std_logic;
SIGNAL \endereco[8]~output_o\ : std_logic;
SIGNAL \endereco[9]~output_o\ : std_logic;
SIGNAL \endereco[10]~output_o\ : std_logic;
SIGNAL \endereco[11]~output_o\ : std_logic;
SIGNAL \endereco[12]~output_o\ : std_logic;
SIGNAL \endereco[13]~output_o\ : std_logic;
SIGNAL \endereco[14]~output_o\ : std_logic;
SIGNAL \endereco[15]~output_o\ : std_logic;
SIGNAL \endereco[16]~output_o\ : std_logic;
SIGNAL \endereco[17]~output_o\ : std_logic;
SIGNAL \endereco[18]~output_o\ : std_logic;
SIGNAL \endereco[19]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \RegS|IP[0]~32_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \UCE|Estado.Espera~0_combout\ : std_logic;
SIGNAL \UCE|Estado.Espera~q\ : std_logic;
SIGNAL \UCE|Estado.HabilitaSegmento~0_combout\ : std_logic;
SIGNAL \UCE|Estado.HabilitaSegmento~q\ : std_logic;
SIGNAL \UCE|Estado.HabilitaIP~feeder_combout\ : std_logic;
SIGNAL \UCE|Estado.HabilitaIP~q\ : std_logic;
SIGNAL \UCE|Estado.CalculoEndereco~q\ : std_logic;
SIGNAL \UCE|Estado.ColocaEndBarramentoIncIP~feeder_combout\ : std_logic;
SIGNAL \UCE|Estado.ColocaEndBarramentoIncIP~q\ : std_logic;
SIGNAL \UCE|Estado.TerminaCalculo~q\ : std_logic;
SIGNAL \UCE|incIP~0_combout\ : std_logic;
SIGNAL \UCE|incIP~reg0_q\ : std_logic;
SIGNAL \UCE|Selector1~0_combout\ : std_logic;
SIGNAL \UCE|habRegSeg~q\ : std_logic;
SIGNAL \RegS|ProcessoResetEscrita~0_combout\ : std_logic;
SIGNAL \UCE|ctrlRegSeg[2]~reg0feeder_combout\ : std_logic;
SIGNAL \UCE|WideOr3~0_combout\ : std_logic;
SIGNAL \UCE|ctrlRegSeg[2]~reg0_q\ : std_logic;
SIGNAL \RegS|Mux0~0_combout\ : std_logic;
SIGNAL \RegS|saidaDados[0]~reg0feeder_combout\ : std_logic;
SIGNAL \RegS|saidaDados[0]~reg0_q\ : std_logic;
SIGNAL \UCE|ctrlRegSeg[0]~0_combout\ : std_logic;
SIGNAL \UCE|ctrlRegSeg[0]~reg0_q\ : std_logic;
SIGNAL \UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\ : std_logic;
SIGNAL \UCE|habilitaCalc~0_combout\ : std_logic;
SIGNAL \UCE|habilitaCalc~reg0_q\ : std_logic;
SIGNAL \UCE|Selector2~0_combout\ : std_logic;
SIGNAL \UCE|habSaidaEnd~feeder_combout\ : std_logic;
SIGNAL \UCE|habSaidaEnd~q\ : std_logic;
SIGNAL \UCE|habSaidaEnd~clkctrl_outclk\ : std_logic;
SIGNAL \RegS|IP[0]~33\ : std_logic;
SIGNAL \RegS|IP[1]~34_combout\ : std_logic;
SIGNAL \RegS|Mux2~0_combout\ : std_logic;
SIGNAL \RegS|saidaDados[1]~reg0_q\ : std_logic;
SIGNAL \RegS|IP[1]~35\ : std_logic;
SIGNAL \RegS|IP[2]~36_combout\ : std_logic;
SIGNAL \RegS|Mux3~0_combout\ : std_logic;
SIGNAL \RegS|saidaDados[2]~reg0_q\ : std_logic;
SIGNAL \RegS|IP[2]~37\ : std_logic;
SIGNAL \RegS|IP[3]~38_combout\ : std_logic;
SIGNAL \RegS|Mux4~0_combout\ : std_logic;
SIGNAL \RegS|saidaDados[3]~reg0_q\ : std_logic;
SIGNAL \RegS|IP[3]~39\ : std_logic;
SIGNAL \RegS|IP[4]~40_combout\ : std_logic;
SIGNAL \RegS|Mux5~0_combout\ : std_logic;
SIGNAL \RegS|saidaDados[4]~reg0_q\ : std_logic;
SIGNAL \Calc|regReult[4]~16_combout\ : std_logic;
SIGNAL \RegS|IP[4]~41\ : std_logic;
SIGNAL \RegS|IP[5]~42_combout\ : std_logic;
SIGNAL \RegS|Mux6~0_combout\ : std_logic;
SIGNAL \RegS|saidaDados[5]~reg0_q\ : std_logic;
SIGNAL \Calc|regReult[4]~17\ : std_logic;
SIGNAL \Calc|regReult[5]~18_combout\ : std_logic;
SIGNAL \RegS|IP[5]~43\ : std_logic;
SIGNAL \RegS|IP[6]~44_combout\ : std_logic;
SIGNAL \RegS|Mux7~0_combout\ : std_logic;
SIGNAL \RegS|saidaDados[6]~reg0_q\ : std_logic;
SIGNAL \Calc|regReult[5]~19\ : std_logic;
SIGNAL \Calc|regReult[6]~20_combout\ : std_logic;
SIGNAL \RegS|IP[6]~45\ : std_logic;
SIGNAL \RegS|IP[7]~46_combout\ : std_logic;
SIGNAL \RegS|Mux8~0_combout\ : std_logic;
SIGNAL \RegS|saidaDados[7]~reg0_q\ : std_logic;
SIGNAL \Calc|regReult[6]~21\ : std_logic;
SIGNAL \Calc|regReult[7]~22_combout\ : std_logic;
SIGNAL \RegS|IP[7]~47\ : std_logic;
SIGNAL \RegS|IP[8]~48_combout\ : std_logic;
SIGNAL \RegS|Mux9~0_combout\ : std_logic;
SIGNAL \RegS|saidaDados[8]~reg0_q\ : std_logic;
SIGNAL \Calc|regReult[7]~23\ : std_logic;
SIGNAL \Calc|regReult[8]~24_combout\ : std_logic;
SIGNAL \RegS|IP[8]~49\ : std_logic;
SIGNAL \RegS|IP[9]~50_combout\ : std_logic;
SIGNAL \RegS|Mux10~0_combout\ : std_logic;
SIGNAL \RegS|saidaDados[9]~reg0_q\ : std_logic;
SIGNAL \Calc|regReult[8]~25\ : std_logic;
SIGNAL \Calc|regReult[9]~26_combout\ : std_logic;
SIGNAL \RegS|IP[9]~51\ : std_logic;
SIGNAL \RegS|IP[10]~52_combout\ : std_logic;
SIGNAL \RegS|Mux11~0_combout\ : std_logic;
SIGNAL \RegS|saidaDados[10]~reg0_q\ : std_logic;
SIGNAL \Calc|regReult[9]~27\ : std_logic;
SIGNAL \Calc|regReult[10]~28_combout\ : std_logic;
SIGNAL \RegS|IP[10]~53\ : std_logic;
SIGNAL \RegS|IP[11]~54_combout\ : std_logic;
SIGNAL \RegS|Mux12~0_combout\ : std_logic;
SIGNAL \RegS|saidaDados[11]~reg0_q\ : std_logic;
SIGNAL \Calc|regReult[10]~29\ : std_logic;
SIGNAL \Calc|regReult[11]~30_combout\ : std_logic;
SIGNAL \RegS|IP[11]~55\ : std_logic;
SIGNAL \RegS|IP[12]~56_combout\ : std_logic;
SIGNAL \RegS|Mux13~0_combout\ : std_logic;
SIGNAL \RegS|saidaDados[12]~reg0_q\ : std_logic;
SIGNAL \Calc|regReult[11]~31\ : std_logic;
SIGNAL \Calc|regReult[12]~32_combout\ : std_logic;
SIGNAL \RegS|IP[12]~57\ : std_logic;
SIGNAL \RegS|IP[13]~58_combout\ : std_logic;
SIGNAL \RegS|Mux14~0_combout\ : std_logic;
SIGNAL \RegS|saidaDados[13]~reg0_q\ : std_logic;
SIGNAL \Calc|regReult[12]~33\ : std_logic;
SIGNAL \Calc|regReult[13]~34_combout\ : std_logic;
SIGNAL \RegS|IP[13]~59\ : std_logic;
SIGNAL \RegS|IP[14]~60_combout\ : std_logic;
SIGNAL \RegS|Mux15~0_combout\ : std_logic;
SIGNAL \RegS|saidaDados[14]~reg0_q\ : std_logic;
SIGNAL \Calc|regReult[13]~35\ : std_logic;
SIGNAL \Calc|regReult[14]~36_combout\ : std_logic;
SIGNAL \RegS|IP[14]~61\ : std_logic;
SIGNAL \RegS|IP[15]~62_combout\ : std_logic;
SIGNAL \RegS|Mux16~0_combout\ : std_logic;
SIGNAL \RegS|saidaDados[15]~reg0_q\ : std_logic;
SIGNAL \Calc|regReult[14]~37\ : std_logic;
SIGNAL \Calc|regReult[15]~38_combout\ : std_logic;
SIGNAL \Calc|regS[16]~feeder_combout\ : std_logic;
SIGNAL \Calc|regReult[15]~39\ : std_logic;
SIGNAL \Calc|regReult[16]~40_combout\ : std_logic;
SIGNAL \Calc|regS[17]~feeder_combout\ : std_logic;
SIGNAL \Calc|regReult[16]~41\ : std_logic;
SIGNAL \Calc|regReult[17]~42_combout\ : std_logic;
SIGNAL \Calc|regS[18]~feeder_combout\ : std_logic;
SIGNAL \Calc|regReult[17]~43\ : std_logic;
SIGNAL \Calc|regReult[18]~44_combout\ : std_logic;
SIGNAL \Calc|regReult[18]~45\ : std_logic;
SIGNAL \Calc|regReult[19]~46_combout\ : std_logic;
SIGNAL \RegS|IP\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Demux|saida_02\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Demux|saida_01\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Calc|resultado\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \Calc|regS\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \Calc|regReult\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \Calc|regI\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \ALT_INV_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \UCE|ALT_INV_habRegSeg~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
endereco <= ww_endereco;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\UCE|ctrlRegSeg[0]~reg0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \UCE|ctrlRegSeg[0]~reg0_q\);

\UCE|habSaidaEnd~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \UCE|habSaidaEnd~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\ALT_INV_clk~inputclkctrl_outclk\ <= NOT \clk~inputclkctrl_outclk\;
\UCE|ALT_INV_habRegSeg~q\ <= NOT \UCE|habRegSeg~q\;

-- Location: IOOBUF_X34_Y7_N23
\endereco[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Calc|resultado\(0),
	devoe => ww_devoe,
	o => \endereco[0]~output_o\);

-- Location: IOOBUF_X21_Y0_N16
\endereco[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Calc|resultado\(1),
	devoe => ww_devoe,
	o => \endereco[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\endereco[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Calc|resultado\(2),
	devoe => ww_devoe,
	o => \endereco[2]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\endereco[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Calc|resultado\(3),
	devoe => ww_devoe,
	o => \endereco[3]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\endereco[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Calc|resultado\(4),
	devoe => ww_devoe,
	o => \endereco[4]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\endereco[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Calc|resultado\(5),
	devoe => ww_devoe,
	o => \endereco[5]~output_o\);

-- Location: IOOBUF_X21_Y24_N16
\endereco[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Calc|resultado\(6),
	devoe => ww_devoe,
	o => \endereco[6]~output_o\);

-- Location: IOOBUF_X21_Y0_N2
\endereco[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Calc|resultado\(7),
	devoe => ww_devoe,
	o => \endereco[7]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\endereco[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Calc|resultado\(8),
	devoe => ww_devoe,
	o => \endereco[8]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\endereco[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Calc|resultado\(9),
	devoe => ww_devoe,
	o => \endereco[9]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\endereco[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Calc|resultado\(10),
	devoe => ww_devoe,
	o => \endereco[10]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\endereco[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Calc|resultado\(11),
	devoe => ww_devoe,
	o => \endereco[11]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\endereco[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Calc|resultado\(12),
	devoe => ww_devoe,
	o => \endereco[12]~output_o\);

-- Location: IOOBUF_X13_Y0_N23
\endereco[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Calc|resultado\(13),
	devoe => ww_devoe,
	o => \endereco[13]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\endereco[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Calc|resultado\(14),
	devoe => ww_devoe,
	o => \endereco[14]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\endereco[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Calc|resultado\(15),
	devoe => ww_devoe,
	o => \endereco[15]~output_o\);

-- Location: IOOBUF_X34_Y7_N9
\endereco[16]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Calc|resultado\(16),
	devoe => ww_devoe,
	o => \endereco[16]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\endereco[17]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Calc|resultado\(17),
	devoe => ww_devoe,
	o => \endereco[17]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\endereco[18]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Calc|resultado\(18),
	devoe => ww_devoe,
	o => \endereco[18]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\endereco[19]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Calc|resultado\(19),
	devoe => ww_devoe,
	o => \endereco[19]~output_o\);

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

-- Location: LCCOMB_X19_Y8_N0
\RegS|IP[0]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RegS|IP[0]~32_combout\ = \RegS|IP\(0) $ (VCC)
-- \RegS|IP[0]~33\ = CARRY(\RegS|IP\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegS|IP\(0),
	datad => VCC,
	combout => \RegS|IP[0]~32_combout\,
	cout => \RegS|IP[0]~33\);

-- Location: IOIBUF_X0_Y11_N8
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G2
\reset~inputclkctrl\ : cycloneiii_clkctrl
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

-- Location: LCCOMB_X16_Y8_N8
\UCE|Estado.Espera~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UCE|Estado.Espera~0_combout\ = !\UCE|Estado.TerminaCalculo~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UCE|Estado.TerminaCalculo~q\,
	combout => \UCE|Estado.Espera~0_combout\);

-- Location: FF_X16_Y8_N9
\UCE|Estado.Espera\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \UCE|Estado.Espera~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UCE|Estado.Espera~q\);

-- Location: LCCOMB_X16_Y8_N18
\UCE|Estado.HabilitaSegmento~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UCE|Estado.HabilitaSegmento~0_combout\ = !\UCE|Estado.Espera~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UCE|Estado.Espera~q\,
	combout => \UCE|Estado.HabilitaSegmento~0_combout\);

-- Location: FF_X16_Y8_N19
\UCE|Estado.HabilitaSegmento\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \UCE|Estado.HabilitaSegmento~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UCE|Estado.HabilitaSegmento~q\);

-- Location: LCCOMB_X16_Y8_N26
\UCE|Estado.HabilitaIP~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UCE|Estado.HabilitaIP~feeder_combout\ = \UCE|Estado.HabilitaSegmento~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UCE|Estado.HabilitaSegmento~q\,
	combout => \UCE|Estado.HabilitaIP~feeder_combout\);

-- Location: FF_X16_Y8_N27
\UCE|Estado.HabilitaIP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \UCE|Estado.HabilitaIP~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UCE|Estado.HabilitaIP~q\);

-- Location: FF_X16_Y8_N29
\UCE|Estado.CalculoEndereco\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \UCE|Estado.HabilitaIP~q\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UCE|Estado.CalculoEndereco~q\);

-- Location: LCCOMB_X16_Y8_N16
\UCE|Estado.ColocaEndBarramentoIncIP~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UCE|Estado.ColocaEndBarramentoIncIP~feeder_combout\ = \UCE|Estado.CalculoEndereco~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UCE|Estado.CalculoEndereco~q\,
	combout => \UCE|Estado.ColocaEndBarramentoIncIP~feeder_combout\);

-- Location: FF_X16_Y8_N17
\UCE|Estado.ColocaEndBarramentoIncIP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \UCE|Estado.ColocaEndBarramentoIncIP~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UCE|Estado.ColocaEndBarramentoIncIP~q\);

-- Location: FF_X16_Y8_N23
\UCE|Estado.TerminaCalculo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \UCE|Estado.ColocaEndBarramentoIncIP~q\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UCE|Estado.TerminaCalculo~q\);

-- Location: LCCOMB_X16_Y8_N30
\UCE|incIP~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UCE|incIP~0_combout\ = (!\UCE|Estado.TerminaCalculo~q\ & ((\UCE|incIP~reg0_q\) # (\UCE|Estado.ColocaEndBarramentoIncIP~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCE|Estado.TerminaCalculo~q\,
	datac => \UCE|incIP~reg0_q\,
	datad => \UCE|Estado.ColocaEndBarramentoIncIP~q\,
	combout => \UCE|incIP~0_combout\);

-- Location: FF_X16_Y8_N31
\UCE|incIP~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UCE|incIP~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UCE|incIP~reg0_q\);

-- Location: LCCOMB_X16_Y8_N10
\UCE|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UCE|Selector1~0_combout\ = (!\UCE|Estado.HabilitaSegmento~q\ & ((\UCE|Estado.TerminaCalculo~q\) # (\UCE|habRegSeg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCE|Estado.TerminaCalculo~q\,
	datab => \UCE|Estado.HabilitaSegmento~q\,
	datac => \UCE|habRegSeg~q\,
	combout => \UCE|Selector1~0_combout\);

-- Location: FF_X16_Y8_N11
\UCE|habRegSeg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UCE|Selector1~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UCE|habRegSeg~q\);

-- Location: LCCOMB_X16_Y8_N22
\RegS|ProcessoResetEscrita~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RegS|ProcessoResetEscrita~0_combout\ = (\UCE|incIP~reg0_q\ & !\UCE|habRegSeg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCE|incIP~reg0_q\,
	datad => \UCE|habRegSeg~q\,
	combout => \RegS|ProcessoResetEscrita~0_combout\);

-- Location: FF_X19_Y8_N1
\RegS|IP[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegS|IP[0]~32_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \RegS|ProcessoResetEscrita~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegS|IP\(0));

-- Location: LCCOMB_X17_Y8_N28
\UCE|ctrlRegSeg[2]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UCE|ctrlRegSeg[2]~reg0feeder_combout\ = \UCE|Estado.HabilitaIP~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UCE|Estado.HabilitaIP~q\,
	combout => \UCE|ctrlRegSeg[2]~reg0feeder_combout\);

-- Location: LCCOMB_X16_Y8_N6
\UCE|WideOr3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UCE|WideOr3~0_combout\ = (\UCE|Estado.HabilitaIP~q\) # (\UCE|Estado.HabilitaSegmento~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UCE|Estado.HabilitaIP~q\,
	datad => \UCE|Estado.HabilitaSegmento~q\,
	combout => \UCE|WideOr3~0_combout\);

-- Location: FF_X17_Y8_N29
\UCE|ctrlRegSeg[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UCE|ctrlRegSeg[2]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \UCE|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UCE|ctrlRegSeg[2]~reg0_q\);

-- Location: LCCOMB_X17_Y8_N30
\RegS|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RegS|Mux0~0_combout\ = (\RegS|IP\(0) & \UCE|ctrlRegSeg[2]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegS|IP\(0),
	datad => \UCE|ctrlRegSeg[2]~reg0_q\,
	combout => \RegS|Mux0~0_combout\);

-- Location: LCCOMB_X19_Y7_N10
\RegS|saidaDados[0]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RegS|saidaDados[0]~reg0feeder_combout\ = \RegS|Mux0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegS|Mux0~0_combout\,
	combout => \RegS|saidaDados[0]~reg0feeder_combout\);

-- Location: FF_X19_Y7_N11
\RegS|saidaDados[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegS|saidaDados[0]~reg0feeder_combout\,
	ena => \UCE|ALT_INV_habRegSeg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegS|saidaDados[0]~reg0_q\);

-- Location: LCCOMB_X17_Y8_N0
\UCE|ctrlRegSeg[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UCE|ctrlRegSeg[0]~0_combout\ = !\UCE|Estado.HabilitaIP~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UCE|Estado.HabilitaIP~q\,
	combout => \UCE|ctrlRegSeg[0]~0_combout\);

-- Location: FF_X17_Y8_N1
\UCE|ctrlRegSeg[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UCE|ctrlRegSeg[0]~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \UCE|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UCE|ctrlRegSeg[0]~reg0_q\);

-- Location: CLKCTRL_G0
\UCE|ctrlRegSeg[0]~reg0clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \UCE|ctrlRegSeg[0]~reg0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\);

-- Location: LCCOMB_X19_Y7_N18
\Demux|saida_02[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Demux|saida_02\(0) = (GLOBAL(\UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\) & (\RegS|saidaDados[0]~reg0_q\)) # (!GLOBAL(\UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\) & ((\Demux|saida_02\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegS|saidaDados[0]~reg0_q\,
	datab => \Demux|saida_02\(0),
	datad => \UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\,
	combout => \Demux|saida_02\(0));

-- Location: LCCOMB_X16_Y8_N20
\UCE|habilitaCalc~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UCE|habilitaCalc~0_combout\ = (!\UCE|Estado.TerminaCalculo~q\ & ((\UCE|Estado.HabilitaSegmento~q\) # (\UCE|habilitaCalc~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCE|Estado.HabilitaSegmento~q\,
	datac => \UCE|habilitaCalc~reg0_q\,
	datad => \UCE|Estado.TerminaCalculo~q\,
	combout => \UCE|habilitaCalc~0_combout\);

-- Location: FF_X16_Y8_N21
\UCE|habilitaCalc~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UCE|habilitaCalc~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UCE|habilitaCalc~reg0_q\);

-- Location: FF_X19_Y7_N19
\Calc|regI[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Demux|saida_02\(0),
	ena => \UCE|habilitaCalc~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Calc|regI\(0));

-- Location: FF_X21_Y7_N3
\Calc|regReult[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Calc|regI\(0),
	sload => VCC,
	ena => \UCE|habilitaCalc~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Calc|regReult\(0));

-- Location: LCCOMB_X16_Y8_N28
\UCE|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UCE|Selector2~0_combout\ = (\UCE|Estado.ColocaEndBarramentoIncIP~q\) # ((!\UCE|Estado.TerminaCalculo~q\ & \UCE|habSaidaEnd~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCE|Estado.TerminaCalculo~q\,
	datab => \UCE|habSaidaEnd~q\,
	datad => \UCE|Estado.ColocaEndBarramentoIncIP~q\,
	combout => \UCE|Selector2~0_combout\);

-- Location: LCCOMB_X16_Y8_N24
\UCE|habSaidaEnd~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \UCE|habSaidaEnd~feeder_combout\ = \UCE|Selector2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCE|Selector2~0_combout\,
	combout => \UCE|habSaidaEnd~feeder_combout\);

-- Location: FF_X16_Y8_N25
\UCE|habSaidaEnd\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UCE|habSaidaEnd~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UCE|habSaidaEnd~q\);

-- Location: CLKCTRL_G3
\UCE|habSaidaEnd~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \UCE|habSaidaEnd~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \UCE|habSaidaEnd~clkctrl_outclk\);

-- Location: LCCOMB_X21_Y7_N2
\Calc|resultado[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Calc|resultado\(0) = (GLOBAL(\UCE|habSaidaEnd~clkctrl_outclk\) & ((\Calc|regReult\(0)))) # (!GLOBAL(\UCE|habSaidaEnd~clkctrl_outclk\) & (\Calc|resultado\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Calc|resultado\(0),
	datac => \Calc|regReult\(0),
	datad => \UCE|habSaidaEnd~clkctrl_outclk\,
	combout => \Calc|resultado\(0));

-- Location: LCCOMB_X19_Y8_N2
\RegS|IP[1]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RegS|IP[1]~34_combout\ = (\RegS|IP\(1) & (!\RegS|IP[0]~33\)) # (!\RegS|IP\(1) & ((\RegS|IP[0]~33\) # (GND)))
-- \RegS|IP[1]~35\ = CARRY((!\RegS|IP[0]~33\) # (!\RegS|IP\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RegS|IP\(1),
	datad => VCC,
	cin => \RegS|IP[0]~33\,
	combout => \RegS|IP[1]~34_combout\,
	cout => \RegS|IP[1]~35\);

-- Location: FF_X19_Y8_N3
\RegS|IP[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegS|IP[1]~34_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \RegS|ProcessoResetEscrita~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegS|IP\(1));

-- Location: LCCOMB_X18_Y8_N16
\RegS|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RegS|Mux2~0_combout\ = (\UCE|ctrlRegSeg[2]~reg0_q\ & \RegS|IP\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UCE|ctrlRegSeg[2]~reg0_q\,
	datad => \RegS|IP\(1),
	combout => \RegS|Mux2~0_combout\);

-- Location: FF_X19_Y7_N17
\RegS|saidaDados[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegS|Mux2~0_combout\,
	sload => VCC,
	ena => \UCE|ALT_INV_habRegSeg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegS|saidaDados[1]~reg0_q\);

-- Location: LCCOMB_X19_Y7_N12
\Demux|saida_02[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Demux|saida_02\(1) = (GLOBAL(\UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\) & ((\RegS|saidaDados[1]~reg0_q\))) # (!GLOBAL(\UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\) & (\Demux|saida_02\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Demux|saida_02\(1),
	datab => \RegS|saidaDados[1]~reg0_q\,
	datad => \UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\,
	combout => \Demux|saida_02\(1));

-- Location: FF_X19_Y7_N13
\Calc|regI[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Demux|saida_02\(1),
	ena => \UCE|habilitaCalc~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Calc|regI\(1));

-- Location: FF_X21_Y7_N29
\Calc|regReult[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Calc|regI\(1),
	sload => VCC,
	ena => \UCE|habilitaCalc~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Calc|regReult\(1));

-- Location: LCCOMB_X21_Y7_N28
\Calc|resultado[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Calc|resultado\(1) = (GLOBAL(\UCE|habSaidaEnd~clkctrl_outclk\) & ((\Calc|regReult\(1)))) # (!GLOBAL(\UCE|habSaidaEnd~clkctrl_outclk\) & (\Calc|resultado\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Calc|resultado\(1),
	datac => \Calc|regReult\(1),
	datad => \UCE|habSaidaEnd~clkctrl_outclk\,
	combout => \Calc|resultado\(1));

-- Location: LCCOMB_X19_Y8_N4
\RegS|IP[2]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RegS|IP[2]~36_combout\ = (\RegS|IP\(2) & (\RegS|IP[1]~35\ $ (GND))) # (!\RegS|IP\(2) & (!\RegS|IP[1]~35\ & VCC))
-- \RegS|IP[2]~37\ = CARRY((\RegS|IP\(2) & !\RegS|IP[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RegS|IP\(2),
	datad => VCC,
	cin => \RegS|IP[1]~35\,
	combout => \RegS|IP[2]~36_combout\,
	cout => \RegS|IP[2]~37\);

-- Location: FF_X19_Y8_N5
\RegS|IP[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegS|IP[2]~36_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \RegS|ProcessoResetEscrita~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegS|IP\(2));

-- Location: LCCOMB_X18_Y8_N24
\RegS|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RegS|Mux3~0_combout\ = (\RegS|IP\(2) & \UCE|ctrlRegSeg[2]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegS|IP\(2),
	datad => \UCE|ctrlRegSeg[2]~reg0_q\,
	combout => \RegS|Mux3~0_combout\);

-- Location: FF_X19_Y7_N31
\RegS|saidaDados[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegS|Mux3~0_combout\,
	sload => VCC,
	ena => \UCE|ALT_INV_habRegSeg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegS|saidaDados[2]~reg0_q\);

-- Location: LCCOMB_X19_Y7_N6
\Demux|saida_02[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Demux|saida_02\(2) = (GLOBAL(\UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\) & ((\RegS|saidaDados[2]~reg0_q\))) # (!GLOBAL(\UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\) & (\Demux|saida_02\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Demux|saida_02\(2),
	datac => \UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\,
	datad => \RegS|saidaDados[2]~reg0_q\,
	combout => \Demux|saida_02\(2));

-- Location: FF_X19_Y7_N7
\Calc|regI[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Demux|saida_02\(2),
	ena => \UCE|habilitaCalc~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Calc|regI\(2));

-- Location: FF_X16_Y7_N27
\Calc|regReult[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Calc|regI\(2),
	sload => VCC,
	ena => \UCE|habilitaCalc~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Calc|regReult\(2));

-- Location: LCCOMB_X16_Y7_N26
\Calc|resultado[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Calc|resultado\(2) = (GLOBAL(\UCE|habSaidaEnd~clkctrl_outclk\) & ((\Calc|regReult\(2)))) # (!GLOBAL(\UCE|habSaidaEnd~clkctrl_outclk\) & (\Calc|resultado\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Calc|resultado\(2),
	datac => \Calc|regReult\(2),
	datad => \UCE|habSaidaEnd~clkctrl_outclk\,
	combout => \Calc|resultado\(2));

-- Location: LCCOMB_X19_Y8_N6
\RegS|IP[3]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RegS|IP[3]~38_combout\ = (\RegS|IP\(3) & (!\RegS|IP[2]~37\)) # (!\RegS|IP\(3) & ((\RegS|IP[2]~37\) # (GND)))
-- \RegS|IP[3]~39\ = CARRY((!\RegS|IP[2]~37\) # (!\RegS|IP\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegS|IP\(3),
	datad => VCC,
	cin => \RegS|IP[2]~37\,
	combout => \RegS|IP[3]~38_combout\,
	cout => \RegS|IP[3]~39\);

-- Location: FF_X19_Y8_N7
\RegS|IP[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegS|IP[3]~38_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \RegS|ProcessoResetEscrita~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegS|IP\(3));

-- Location: LCCOMB_X18_Y8_N28
\RegS|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RegS|Mux4~0_combout\ = (\UCE|ctrlRegSeg[2]~reg0_q\ & \RegS|IP\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UCE|ctrlRegSeg[2]~reg0_q\,
	datad => \RegS|IP\(3),
	combout => \RegS|Mux4~0_combout\);

-- Location: FF_X18_Y8_N29
\RegS|saidaDados[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegS|Mux4~0_combout\,
	ena => \UCE|ALT_INV_habRegSeg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegS|saidaDados[3]~reg0_q\);

-- Location: LCCOMB_X18_Y8_N12
\Demux|saida_02[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Demux|saida_02\(3) = (GLOBAL(\UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\) & ((\RegS|saidaDados[3]~reg0_q\))) # (!GLOBAL(\UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\) & (\Demux|saida_02\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Demux|saida_02\(3),
	datab => \RegS|saidaDados[3]~reg0_q\,
	datac => \UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\,
	combout => \Demux|saida_02\(3));

-- Location: FF_X18_Y8_N13
\Calc|regI[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Demux|saida_02\(3),
	ena => \UCE|habilitaCalc~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Calc|regI\(3));

-- Location: FF_X17_Y7_N17
\Calc|regReult[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Calc|regI\(3),
	sload => VCC,
	ena => \UCE|habilitaCalc~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Calc|regReult\(3));

-- Location: LCCOMB_X17_Y7_N16
\Calc|resultado[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Calc|resultado\(3) = (GLOBAL(\UCE|habSaidaEnd~clkctrl_outclk\) & ((\Calc|regReult\(3)))) # (!GLOBAL(\UCE|habSaidaEnd~clkctrl_outclk\) & (\Calc|resultado\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Calc|resultado\(3),
	datac => \Calc|regReult\(3),
	datad => \UCE|habSaidaEnd~clkctrl_outclk\,
	combout => \Calc|resultado\(3));

-- Location: LCCOMB_X19_Y8_N8
\RegS|IP[4]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RegS|IP[4]~40_combout\ = (\RegS|IP\(4) & (\RegS|IP[3]~39\ $ (GND))) # (!\RegS|IP\(4) & (!\RegS|IP[3]~39\ & VCC))
-- \RegS|IP[4]~41\ = CARRY((\RegS|IP\(4) & !\RegS|IP[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RegS|IP\(4),
	datad => VCC,
	cin => \RegS|IP[3]~39\,
	combout => \RegS|IP[4]~40_combout\,
	cout => \RegS|IP[4]~41\);

-- Location: FF_X19_Y8_N9
\RegS|IP[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegS|IP[4]~40_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \RegS|ProcessoResetEscrita~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegS|IP\(4));

-- Location: LCCOMB_X17_Y8_N8
\RegS|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RegS|Mux5~0_combout\ = (\RegS|IP\(4) & \UCE|ctrlRegSeg[2]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegS|IP\(4),
	datad => \UCE|ctrlRegSeg[2]~reg0_q\,
	combout => \RegS|Mux5~0_combout\);

-- Location: FF_X17_Y8_N9
\RegS|saidaDados[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegS|Mux5~0_combout\,
	ena => \UCE|ALT_INV_habRegSeg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegS|saidaDados[4]~reg0_q\);

-- Location: LCCOMB_X18_Y8_N30
\Demux|saida_02[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Demux|saida_02\(4) = (GLOBAL(\UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\) & ((\RegS|saidaDados[4]~reg0_q\))) # (!GLOBAL(\UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\) & (\Demux|saida_02\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Demux|saida_02\(4),
	datac => \UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\,
	datad => \RegS|saidaDados[4]~reg0_q\,
	combout => \Demux|saida_02\(4));

-- Location: FF_X18_Y8_N31
\Calc|regI[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Demux|saida_02\(4),
	ena => \UCE|habilitaCalc~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Calc|regI\(4));

-- Location: LCCOMB_X19_Y7_N4
\Demux|saida_01[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Demux|saida_01\(0) = (GLOBAL(\UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\) & ((\Demux|saida_01\(0)))) # (!GLOBAL(\UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\) & (\RegS|saidaDados[0]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegS|saidaDados[0]~reg0_q\,
	datab => \Demux|saida_01\(0),
	datad => \UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\,
	combout => \Demux|saida_01\(0));

-- Location: FF_X19_Y7_N9
\Calc|regS[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Demux|saida_01\(0),
	sload => VCC,
	ena => \UCE|habilitaCalc~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Calc|regS\(4));

-- Location: LCCOMB_X18_Y7_N0
\Calc|regReult[4]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Calc|regReult[4]~16_combout\ = (\Calc|regI\(4) & (\Calc|regS\(4) $ (VCC))) # (!\Calc|regI\(4) & (\Calc|regS\(4) & VCC))
-- \Calc|regReult[4]~17\ = CARRY((\Calc|regI\(4) & \Calc|regS\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Calc|regI\(4),
	datab => \Calc|regS\(4),
	datad => VCC,
	combout => \Calc|regReult[4]~16_combout\,
	cout => \Calc|regReult[4]~17\);

-- Location: FF_X16_Y7_N29
\Calc|regReult[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Calc|regReult[4]~16_combout\,
	sload => VCC,
	ena => \UCE|habilitaCalc~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Calc|regReult\(4));

-- Location: LCCOMB_X16_Y7_N28
\Calc|resultado[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Calc|resultado\(4) = (GLOBAL(\UCE|habSaidaEnd~clkctrl_outclk\) & ((\Calc|regReult\(4)))) # (!GLOBAL(\UCE|habSaidaEnd~clkctrl_outclk\) & (\Calc|resultado\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Calc|resultado\(4),
	datac => \Calc|regReult\(4),
	datad => \UCE|habSaidaEnd~clkctrl_outclk\,
	combout => \Calc|resultado\(4));

-- Location: LCCOMB_X19_Y8_N10
\RegS|IP[5]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RegS|IP[5]~42_combout\ = (\RegS|IP\(5) & (!\RegS|IP[4]~41\)) # (!\RegS|IP\(5) & ((\RegS|IP[4]~41\) # (GND)))
-- \RegS|IP[5]~43\ = CARRY((!\RegS|IP[4]~41\) # (!\RegS|IP\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegS|IP\(5),
	datad => VCC,
	cin => \RegS|IP[4]~41\,
	combout => \RegS|IP[5]~42_combout\,
	cout => \RegS|IP[5]~43\);

-- Location: FF_X19_Y8_N11
\RegS|IP[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegS|IP[5]~42_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \RegS|ProcessoResetEscrita~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegS|IP\(5));

-- Location: LCCOMB_X18_Y8_N10
\RegS|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RegS|Mux6~0_combout\ = (\RegS|IP\(5) & \UCE|ctrlRegSeg[2]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegS|IP\(5),
	datad => \UCE|ctrlRegSeg[2]~reg0_q\,
	combout => \RegS|Mux6~0_combout\);

-- Location: FF_X17_Y7_N11
\RegS|saidaDados[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegS|Mux6~0_combout\,
	sload => VCC,
	ena => \UCE|ALT_INV_habRegSeg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegS|saidaDados[5]~reg0_q\);

-- Location: LCCOMB_X17_Y7_N26
\Demux|saida_02[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Demux|saida_02\(5) = (GLOBAL(\UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\) & ((\RegS|saidaDados[5]~reg0_q\))) # (!GLOBAL(\UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\) & (\Demux|saida_02\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Demux|saida_02\(5),
	datac => \RegS|saidaDados[5]~reg0_q\,
	datad => \UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\,
	combout => \Demux|saida_02\(5));

-- Location: FF_X17_Y7_N27
\Calc|regI[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Demux|saida_02\(5),
	ena => \UCE|habilitaCalc~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Calc|regI\(5));

-- Location: LCCOMB_X19_Y7_N8
\Demux|saida_01[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Demux|saida_01\(1) = (GLOBAL(\UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\) & ((\Demux|saida_01\(1)))) # (!GLOBAL(\UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\) & (\RegS|saidaDados[1]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegS|saidaDados[1]~reg0_q\,
	datab => \Demux|saida_01\(1),
	datad => \UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\,
	combout => \Demux|saida_01\(1));

-- Location: FF_X19_Y7_N15
\Calc|regS[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Demux|saida_01\(1),
	sload => VCC,
	ena => \UCE|habilitaCalc~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Calc|regS\(5));

-- Location: LCCOMB_X18_Y7_N2
\Calc|regReult[5]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Calc|regReult[5]~18_combout\ = (\Calc|regI\(5) & ((\Calc|regS\(5) & (\Calc|regReult[4]~17\ & VCC)) # (!\Calc|regS\(5) & (!\Calc|regReult[4]~17\)))) # (!\Calc|regI\(5) & ((\Calc|regS\(5) & (!\Calc|regReult[4]~17\)) # (!\Calc|regS\(5) & 
-- ((\Calc|regReult[4]~17\) # (GND)))))
-- \Calc|regReult[5]~19\ = CARRY((\Calc|regI\(5) & (!\Calc|regS\(5) & !\Calc|regReult[4]~17\)) # (!\Calc|regI\(5) & ((!\Calc|regReult[4]~17\) # (!\Calc|regS\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Calc|regI\(5),
	datab => \Calc|regS\(5),
	datad => VCC,
	cin => \Calc|regReult[4]~17\,
	combout => \Calc|regReult[5]~18_combout\,
	cout => \Calc|regReult[5]~19\);

-- Location: FF_X19_Y7_N29
\Calc|regReult[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Calc|regReult[5]~18_combout\,
	sload => VCC,
	ena => \UCE|habilitaCalc~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Calc|regReult\(5));

-- Location: LCCOMB_X19_Y7_N28
\Calc|resultado[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Calc|resultado\(5) = (GLOBAL(\UCE|habSaidaEnd~clkctrl_outclk\) & ((\Calc|regReult\(5)))) # (!GLOBAL(\UCE|habSaidaEnd~clkctrl_outclk\) & (\Calc|resultado\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Calc|resultado\(5),
	datac => \Calc|regReult\(5),
	datad => \UCE|habSaidaEnd~clkctrl_outclk\,
	combout => \Calc|resultado\(5));

-- Location: LCCOMB_X19_Y7_N30
\Demux|saida_01[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Demux|saida_01\(2) = (GLOBAL(\UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\) & (\Demux|saida_01\(2))) # (!GLOBAL(\UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\) & ((\RegS|saidaDados[2]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Demux|saida_01\(2),
	datac => \RegS|saidaDados[2]~reg0_q\,
	datad => \UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\,
	combout => \Demux|saida_01\(2));

-- Location: FF_X19_Y7_N25
\Calc|regS[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Demux|saida_01\(2),
	sload => VCC,
	ena => \UCE|habilitaCalc~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Calc|regS\(6));

-- Location: LCCOMB_X19_Y8_N12
\RegS|IP[6]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RegS|IP[6]~44_combout\ = (\RegS|IP\(6) & (\RegS|IP[5]~43\ $ (GND))) # (!\RegS|IP\(6) & (!\RegS|IP[5]~43\ & VCC))
-- \RegS|IP[6]~45\ = CARRY((\RegS|IP\(6) & !\RegS|IP[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegS|IP\(6),
	datad => VCC,
	cin => \RegS|IP[5]~43\,
	combout => \RegS|IP[6]~44_combout\,
	cout => \RegS|IP[6]~45\);

-- Location: FF_X19_Y8_N13
\RegS|IP[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegS|IP[6]~44_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \RegS|ProcessoResetEscrita~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegS|IP\(6));

-- Location: LCCOMB_X18_Y8_N18
\RegS|Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RegS|Mux7~0_combout\ = (\RegS|IP\(6) & \UCE|ctrlRegSeg[2]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegS|IP\(6),
	datad => \UCE|ctrlRegSeg[2]~reg0_q\,
	combout => \RegS|Mux7~0_combout\);

-- Location: FF_X18_Y8_N19
\RegS|saidaDados[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegS|Mux7~0_combout\,
	ena => \UCE|ALT_INV_habRegSeg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegS|saidaDados[6]~reg0_q\);

-- Location: LCCOMB_X18_Y8_N20
\Demux|saida_02[6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Demux|saida_02\(6) = (GLOBAL(\UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\) & (\RegS|saidaDados[6]~reg0_q\)) # (!GLOBAL(\UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\) & ((\Demux|saida_02\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegS|saidaDados[6]~reg0_q\,
	datac => \Demux|saida_02\(6),
	datad => \UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\,
	combout => \Demux|saida_02\(6));

-- Location: FF_X18_Y8_N21
\Calc|regI[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Demux|saida_02\(6),
	ena => \UCE|habilitaCalc~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Calc|regI\(6));

-- Location: LCCOMB_X18_Y7_N4
\Calc|regReult[6]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Calc|regReult[6]~20_combout\ = ((\Calc|regS\(6) $ (\Calc|regI\(6) $ (!\Calc|regReult[5]~19\)))) # (GND)
-- \Calc|regReult[6]~21\ = CARRY((\Calc|regS\(6) & ((\Calc|regI\(6)) # (!\Calc|regReult[5]~19\))) # (!\Calc|regS\(6) & (\Calc|regI\(6) & !\Calc|regReult[5]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Calc|regS\(6),
	datab => \Calc|regI\(6),
	datad => VCC,
	cin => \Calc|regReult[5]~19\,
	combout => \Calc|regReult[6]~20_combout\,
	cout => \Calc|regReult[6]~21\);

-- Location: FF_X21_Y7_N1
\Calc|regReult[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Calc|regReult[6]~20_combout\,
	sload => VCC,
	ena => \UCE|habilitaCalc~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Calc|regReult\(6));

-- Location: LCCOMB_X21_Y7_N0
\Calc|resultado[6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Calc|resultado\(6) = (GLOBAL(\UCE|habSaidaEnd~clkctrl_outclk\) & ((\Calc|regReult\(6)))) # (!GLOBAL(\UCE|habSaidaEnd~clkctrl_outclk\) & (\Calc|resultado\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Calc|resultado\(6),
	datac => \Calc|regReult\(6),
	datad => \UCE|habSaidaEnd~clkctrl_outclk\,
	combout => \Calc|resultado\(6));

-- Location: LCCOMB_X18_Y8_N22
\Demux|saida_01[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Demux|saida_01\(3) = (GLOBAL(\UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\) & (\Demux|saida_01\(3))) # (!GLOBAL(\UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\) & ((\RegS|saidaDados[3]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Demux|saida_01\(3),
	datab => \RegS|saidaDados[3]~reg0_q\,
	datad => \UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\,
	combout => \Demux|saida_01\(3));

-- Location: FF_X18_Y8_N17
\Calc|regS[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Demux|saida_01\(3),
	sload => VCC,
	ena => \UCE|habilitaCalc~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Calc|regS\(7));

-- Location: LCCOMB_X19_Y8_N14
\RegS|IP[7]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RegS|IP[7]~46_combout\ = (\RegS|IP\(7) & (!\RegS|IP[6]~45\)) # (!\RegS|IP\(7) & ((\RegS|IP[6]~45\) # (GND)))
-- \RegS|IP[7]~47\ = CARRY((!\RegS|IP[6]~45\) # (!\RegS|IP\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RegS|IP\(7),
	datad => VCC,
	cin => \RegS|IP[6]~45\,
	combout => \RegS|IP[7]~46_combout\,
	cout => \RegS|IP[7]~47\);

-- Location: FF_X19_Y8_N15
\RegS|IP[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegS|IP[7]~46_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \RegS|ProcessoResetEscrita~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegS|IP\(7));

-- Location: LCCOMB_X18_Y8_N0
\RegS|Mux8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RegS|Mux8~0_combout\ = (\RegS|IP\(7) & \UCE|ctrlRegSeg[2]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegS|IP\(7),
	datad => \UCE|ctrlRegSeg[2]~reg0_q\,
	combout => \RegS|Mux8~0_combout\);

-- Location: FF_X18_Y8_N1
\RegS|saidaDados[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegS|Mux8~0_combout\,
	ena => \UCE|ALT_INV_habRegSeg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegS|saidaDados[7]~reg0_q\);

-- Location: LCCOMB_X18_Y8_N6
\Demux|saida_02[7]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Demux|saida_02\(7) = (GLOBAL(\UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\) & ((\RegS|saidaDados[7]~reg0_q\))) # (!GLOBAL(\UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\) & (\Demux|saida_02\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Demux|saida_02\(7),
	datab => \RegS|saidaDados[7]~reg0_q\,
	datad => \UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\,
	combout => \Demux|saida_02\(7));

-- Location: FF_X18_Y8_N7
\Calc|regI[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Demux|saida_02\(7),
	ena => \UCE|habilitaCalc~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Calc|regI\(7));

-- Location: LCCOMB_X18_Y7_N6
\Calc|regReult[7]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Calc|regReult[7]~22_combout\ = (\Calc|regS\(7) & ((\Calc|regI\(7) & (\Calc|regReult[6]~21\ & VCC)) # (!\Calc|regI\(7) & (!\Calc|regReult[6]~21\)))) # (!\Calc|regS\(7) & ((\Calc|regI\(7) & (!\Calc|regReult[6]~21\)) # (!\Calc|regI\(7) & 
-- ((\Calc|regReult[6]~21\) # (GND)))))
-- \Calc|regReult[7]~23\ = CARRY((\Calc|regS\(7) & (!\Calc|regI\(7) & !\Calc|regReult[6]~21\)) # (!\Calc|regS\(7) & ((!\Calc|regReult[6]~21\) # (!\Calc|regI\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Calc|regS\(7),
	datab => \Calc|regI\(7),
	datad => VCC,
	cin => \Calc|regReult[6]~21\,
	combout => \Calc|regReult[7]~22_combout\,
	cout => \Calc|regReult[7]~23\);

-- Location: FF_X14_Y7_N21
\Calc|regReult[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Calc|regReult[7]~22_combout\,
	sload => VCC,
	ena => \UCE|habilitaCalc~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Calc|regReult\(7));

-- Location: LCCOMB_X14_Y7_N20
\Calc|resultado[7]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Calc|resultado\(7) = (GLOBAL(\UCE|habSaidaEnd~clkctrl_outclk\) & ((\Calc|regReult\(7)))) # (!GLOBAL(\UCE|habSaidaEnd~clkctrl_outclk\) & (\Calc|resultado\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Calc|resultado\(7),
	datac => \Calc|regReult\(7),
	datad => \UCE|habSaidaEnd~clkctrl_outclk\,
	combout => \Calc|resultado\(7));

-- Location: LCCOMB_X19_Y8_N16
\RegS|IP[8]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RegS|IP[8]~48_combout\ = (\RegS|IP\(8) & (\RegS|IP[7]~47\ $ (GND))) # (!\RegS|IP\(8) & (!\RegS|IP[7]~47\ & VCC))
-- \RegS|IP[8]~49\ = CARRY((\RegS|IP\(8) & !\RegS|IP[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RegS|IP\(8),
	datad => VCC,
	cin => \RegS|IP[7]~47\,
	combout => \RegS|IP[8]~48_combout\,
	cout => \RegS|IP[8]~49\);

-- Location: FF_X19_Y8_N17
\RegS|IP[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegS|IP[8]~48_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \RegS|ProcessoResetEscrita~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegS|IP\(8));

-- Location: LCCOMB_X18_Y8_N2
\RegS|Mux9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RegS|Mux9~0_combout\ = (\UCE|ctrlRegSeg[2]~reg0_q\ & \RegS|IP\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UCE|ctrlRegSeg[2]~reg0_q\,
	datad => \RegS|IP\(8),
	combout => \RegS|Mux9~0_combout\);

-- Location: FF_X18_Y8_N3
\RegS|saidaDados[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegS|Mux9~0_combout\,
	ena => \UCE|ALT_INV_habRegSeg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegS|saidaDados[8]~reg0_q\);

-- Location: LCCOMB_X18_Y8_N14
\Demux|saida_02[8]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Demux|saida_02\(8) = (GLOBAL(\UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\) & (\RegS|saidaDados[8]~reg0_q\)) # (!GLOBAL(\UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\) & ((\Demux|saida_02\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegS|saidaDados[8]~reg0_q\,
	datac => \Demux|saida_02\(8),
	datad => \UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\,
	combout => \Demux|saida_02\(8));

-- Location: FF_X18_Y8_N15
\Calc|regI[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Demux|saida_02\(8),
	ena => \UCE|habilitaCalc~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Calc|regI\(8));

-- Location: LCCOMB_X17_Y8_N6
\Demux|saida_01[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Demux|saida_01\(4) = (GLOBAL(\UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\) & (\Demux|saida_01\(4))) # (!GLOBAL(\UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\) & ((\RegS|saidaDados[4]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Demux|saida_01\(4),
	datac => \RegS|saidaDados[4]~reg0_q\,
	datad => \UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\,
	combout => \Demux|saida_01\(4));

-- Location: FF_X18_Y8_N25
\Calc|regS[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Demux|saida_01\(4),
	sload => VCC,
	ena => \UCE|habilitaCalc~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Calc|regS\(8));

-- Location: LCCOMB_X18_Y7_N8
\Calc|regReult[8]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Calc|regReult[8]~24_combout\ = ((\Calc|regI\(8) $ (\Calc|regS\(8) $ (!\Calc|regReult[7]~23\)))) # (GND)
-- \Calc|regReult[8]~25\ = CARRY((\Calc|regI\(8) & ((\Calc|regS\(8)) # (!\Calc|regReult[7]~23\))) # (!\Calc|regI\(8) & (\Calc|regS\(8) & !\Calc|regReult[7]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Calc|regI\(8),
	datab => \Calc|regS\(8),
	datad => VCC,
	cin => \Calc|regReult[7]~23\,
	combout => \Calc|regReult[8]~24_combout\,
	cout => \Calc|regReult[8]~25\);

-- Location: FF_X16_Y7_N31
\Calc|regReult[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Calc|regReult[8]~24_combout\,
	sload => VCC,
	ena => \UCE|habilitaCalc~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Calc|regReult\(8));

-- Location: LCCOMB_X16_Y7_N30
\Calc|resultado[8]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Calc|resultado\(8) = (GLOBAL(\UCE|habSaidaEnd~clkctrl_outclk\) & ((\Calc|regReult\(8)))) # (!GLOBAL(\UCE|habSaidaEnd~clkctrl_outclk\) & (\Calc|resultado\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Calc|resultado\(8),
	datac => \Calc|regReult\(8),
	datad => \UCE|habSaidaEnd~clkctrl_outclk\,
	combout => \Calc|resultado\(8));

-- Location: LCCOMB_X19_Y8_N18
\RegS|IP[9]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RegS|IP[9]~50_combout\ = (\RegS|IP\(9) & (!\RegS|IP[8]~49\)) # (!\RegS|IP\(9) & ((\RegS|IP[8]~49\) # (GND)))
-- \RegS|IP[9]~51\ = CARRY((!\RegS|IP[8]~49\) # (!\RegS|IP\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RegS|IP\(9),
	datad => VCC,
	cin => \RegS|IP[8]~49\,
	combout => \RegS|IP[9]~50_combout\,
	cout => \RegS|IP[9]~51\);

-- Location: FF_X19_Y8_N19
\RegS|IP[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegS|IP[9]~50_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \RegS|ProcessoResetEscrita~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegS|IP\(9));

-- Location: LCCOMB_X19_Y7_N0
\RegS|Mux10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RegS|Mux10~0_combout\ = (\UCE|ctrlRegSeg[2]~reg0_q\ & \RegS|IP\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UCE|ctrlRegSeg[2]~reg0_q\,
	datad => \RegS|IP\(9),
	combout => \RegS|Mux10~0_combout\);

-- Location: FF_X19_Y7_N1
\RegS|saidaDados[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegS|Mux10~0_combout\,
	ena => \UCE|ALT_INV_habRegSeg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegS|saidaDados[9]~reg0_q\);

-- Location: LCCOMB_X19_Y7_N2
\Demux|saida_02[9]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Demux|saida_02\(9) = (GLOBAL(\UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\) & (\RegS|saidaDados[9]~reg0_q\)) # (!GLOBAL(\UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\) & ((\Demux|saida_02\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegS|saidaDados[9]~reg0_q\,
	datac => \Demux|saida_02\(9),
	datad => \UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\,
	combout => \Demux|saida_02\(9));

-- Location: FF_X19_Y7_N3
\Calc|regI[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Demux|saida_02\(9),
	ena => \UCE|habilitaCalc~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Calc|regI\(9));

-- Location: LCCOMB_X17_Y7_N8
\Demux|saida_01[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Demux|saida_01\(5) = (GLOBAL(\UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\) & ((\Demux|saida_01\(5)))) # (!GLOBAL(\UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\) & (\RegS|saidaDados[5]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegS|saidaDados[5]~reg0_q\,
	datac => \UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\,
	datad => \Demux|saida_01\(5),
	combout => \Demux|saida_01\(5));

-- Location: FF_X17_Y7_N5
\Calc|regS[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Demux|saida_01\(5),
	sload => VCC,
	ena => \UCE|habilitaCalc~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Calc|regS\(9));

-- Location: LCCOMB_X18_Y7_N10
\Calc|regReult[9]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Calc|regReult[9]~26_combout\ = (\Calc|regI\(9) & ((\Calc|regS\(9) & (\Calc|regReult[8]~25\ & VCC)) # (!\Calc|regS\(9) & (!\Calc|regReult[8]~25\)))) # (!\Calc|regI\(9) & ((\Calc|regS\(9) & (!\Calc|regReult[8]~25\)) # (!\Calc|regS\(9) & 
-- ((\Calc|regReult[8]~25\) # (GND)))))
-- \Calc|regReult[9]~27\ = CARRY((\Calc|regI\(9) & (!\Calc|regS\(9) & !\Calc|regReult[8]~25\)) # (!\Calc|regI\(9) & ((!\Calc|regReult[8]~25\) # (!\Calc|regS\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Calc|regI\(9),
	datab => \Calc|regS\(9),
	datad => VCC,
	cin => \Calc|regReult[8]~25\,
	combout => \Calc|regReult[9]~26_combout\,
	cout => \Calc|regReult[9]~27\);

-- Location: FF_X17_Y7_N21
\Calc|regReult[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Calc|regReult[9]~26_combout\,
	sload => VCC,
	ena => \UCE|habilitaCalc~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Calc|regReult\(9));

-- Location: LCCOMB_X17_Y7_N20
\Calc|resultado[9]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Calc|resultado\(9) = (GLOBAL(\UCE|habSaidaEnd~clkctrl_outclk\) & ((\Calc|regReult\(9)))) # (!GLOBAL(\UCE|habSaidaEnd~clkctrl_outclk\) & (\Calc|resultado\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Calc|resultado\(9),
	datac => \Calc|regReult\(9),
	datad => \UCE|habSaidaEnd~clkctrl_outclk\,
	combout => \Calc|resultado\(9));

-- Location: LCCOMB_X19_Y8_N20
\RegS|IP[10]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RegS|IP[10]~52_combout\ = (\RegS|IP\(10) & (\RegS|IP[9]~51\ $ (GND))) # (!\RegS|IP\(10) & (!\RegS|IP[9]~51\ & VCC))
-- \RegS|IP[10]~53\ = CARRY((\RegS|IP\(10) & !\RegS|IP[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RegS|IP\(10),
	datad => VCC,
	cin => \RegS|IP[9]~51\,
	combout => \RegS|IP[10]~52_combout\,
	cout => \RegS|IP[10]~53\);

-- Location: FF_X19_Y8_N21
\RegS|IP[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegS|IP[10]~52_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \RegS|ProcessoResetEscrita~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegS|IP\(10));

-- Location: LCCOMB_X19_Y7_N26
\RegS|Mux11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RegS|Mux11~0_combout\ = (\UCE|ctrlRegSeg[2]~reg0_q\ & \RegS|IP\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UCE|ctrlRegSeg[2]~reg0_q\,
	datad => \RegS|IP\(10),
	combout => \RegS|Mux11~0_combout\);

-- Location: FF_X19_Y7_N27
\RegS|saidaDados[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegS|Mux11~0_combout\,
	ena => \UCE|ALT_INV_habRegSeg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegS|saidaDados[10]~reg0_q\);

-- Location: LCCOMB_X19_Y7_N20
\Demux|saida_02[10]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Demux|saida_02\(10) = (GLOBAL(\UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\) & (\RegS|saidaDados[10]~reg0_q\)) # (!GLOBAL(\UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\) & ((\Demux|saida_02\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegS|saidaDados[10]~reg0_q\,
	datab => \Demux|saida_02\(10),
	datad => \UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\,
	combout => \Demux|saida_02\(10));

-- Location: FF_X19_Y7_N21
\Calc|regI[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Demux|saida_02\(10),
	ena => \UCE|habilitaCalc~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Calc|regI\(10));

-- Location: LCCOMB_X18_Y8_N8
\Demux|saida_01[6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Demux|saida_01\(6) = (GLOBAL(\UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\) & (\Demux|saida_01\(6))) # (!GLOBAL(\UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\) & ((\RegS|saidaDados[6]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Demux|saida_01\(6),
	datac => \RegS|saidaDados[6]~reg0_q\,
	datad => \UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\,
	combout => \Demux|saida_01\(6));

-- Location: FF_X18_Y8_N11
\Calc|regS[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Demux|saida_01\(6),
	sload => VCC,
	ena => \UCE|habilitaCalc~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Calc|regS\(10));

-- Location: LCCOMB_X18_Y7_N12
\Calc|regReult[10]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Calc|regReult[10]~28_combout\ = ((\Calc|regI\(10) $ (\Calc|regS\(10) $ (!\Calc|regReult[9]~27\)))) # (GND)
-- \Calc|regReult[10]~29\ = CARRY((\Calc|regI\(10) & ((\Calc|regS\(10)) # (!\Calc|regReult[9]~27\))) # (!\Calc|regI\(10) & (\Calc|regS\(10) & !\Calc|regReult[9]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Calc|regI\(10),
	datab => \Calc|regS\(10),
	datad => VCC,
	cin => \Calc|regReult[9]~27\,
	combout => \Calc|regReult[10]~28_combout\,
	cout => \Calc|regReult[10]~29\);

-- Location: FF_X17_Y7_N3
\Calc|regReult[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Calc|regReult[10]~28_combout\,
	sload => VCC,
	ena => \UCE|habilitaCalc~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Calc|regReult\(10));

-- Location: LCCOMB_X17_Y7_N2
\Calc|resultado[10]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Calc|resultado\(10) = (GLOBAL(\UCE|habSaidaEnd~clkctrl_outclk\) & ((\Calc|regReult\(10)))) # (!GLOBAL(\UCE|habSaidaEnd~clkctrl_outclk\) & (\Calc|resultado\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Calc|resultado\(10),
	datac => \Calc|regReult\(10),
	datad => \UCE|habSaidaEnd~clkctrl_outclk\,
	combout => \Calc|resultado\(10));

-- Location: LCCOMB_X18_Y8_N26
\Demux|saida_01[7]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Demux|saida_01\(7) = (GLOBAL(\UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\) & (\Demux|saida_01\(7))) # (!GLOBAL(\UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\) & ((\RegS|saidaDados[7]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Demux|saida_01\(7),
	datac => \UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\,
	datad => \RegS|saidaDados[7]~reg0_q\,
	combout => \Demux|saida_01\(7));

-- Location: FF_X18_Y8_N5
\Calc|regS[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Demux|saida_01\(7),
	sload => VCC,
	ena => \UCE|habilitaCalc~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Calc|regS\(11));

-- Location: LCCOMB_X19_Y8_N22
\RegS|IP[11]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RegS|IP[11]~54_combout\ = (\RegS|IP\(11) & (!\RegS|IP[10]~53\)) # (!\RegS|IP\(11) & ((\RegS|IP[10]~53\) # (GND)))
-- \RegS|IP[11]~55\ = CARRY((!\RegS|IP[10]~53\) # (!\RegS|IP\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegS|IP\(11),
	datad => VCC,
	cin => \RegS|IP[10]~53\,
	combout => \RegS|IP[11]~54_combout\,
	cout => \RegS|IP[11]~55\);

-- Location: FF_X19_Y8_N23
\RegS|IP[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegS|IP[11]~54_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \RegS|ProcessoResetEscrita~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegS|IP\(11));

-- Location: LCCOMB_X17_Y7_N0
\RegS|Mux12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RegS|Mux12~0_combout\ = (\UCE|ctrlRegSeg[2]~reg0_q\ & \RegS|IP\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCE|ctrlRegSeg[2]~reg0_q\,
	datad => \RegS|IP\(11),
	combout => \RegS|Mux12~0_combout\);

-- Location: FF_X17_Y7_N1
\RegS|saidaDados[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegS|Mux12~0_combout\,
	ena => \UCE|ALT_INV_habRegSeg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegS|saidaDados[11]~reg0_q\);

-- Location: LCCOMB_X17_Y7_N14
\Demux|saida_02[11]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Demux|saida_02\(11) = (GLOBAL(\UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\) & (\RegS|saidaDados[11]~reg0_q\)) # (!GLOBAL(\UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\) & ((\Demux|saida_02\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegS|saidaDados[11]~reg0_q\,
	datac => \UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\,
	datad => \Demux|saida_02\(11),
	combout => \Demux|saida_02\(11));

-- Location: FF_X17_Y7_N15
\Calc|regI[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Demux|saida_02\(11),
	ena => \UCE|habilitaCalc~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Calc|regI\(11));

-- Location: LCCOMB_X18_Y7_N14
\Calc|regReult[11]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Calc|regReult[11]~30_combout\ = (\Calc|regS\(11) & ((\Calc|regI\(11) & (\Calc|regReult[10]~29\ & VCC)) # (!\Calc|regI\(11) & (!\Calc|regReult[10]~29\)))) # (!\Calc|regS\(11) & ((\Calc|regI\(11) & (!\Calc|regReult[10]~29\)) # (!\Calc|regI\(11) & 
-- ((\Calc|regReult[10]~29\) # (GND)))))
-- \Calc|regReult[11]~31\ = CARRY((\Calc|regS\(11) & (!\Calc|regI\(11) & !\Calc|regReult[10]~29\)) # (!\Calc|regS\(11) & ((!\Calc|regReult[10]~29\) # (!\Calc|regI\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Calc|regS\(11),
	datab => \Calc|regI\(11),
	datad => VCC,
	cin => \Calc|regReult[10]~29\,
	combout => \Calc|regReult[11]~30_combout\,
	cout => \Calc|regReult[11]~31\);

-- Location: FF_X18_Y7_N15
\Calc|regReult[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Calc|regReult[11]~30_combout\,
	ena => \UCE|habilitaCalc~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Calc|regReult\(11));

-- Location: LCCOMB_X17_Y7_N10
\Calc|resultado[11]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Calc|resultado\(11) = (GLOBAL(\UCE|habSaidaEnd~clkctrl_outclk\) & ((\Calc|regReult\(11)))) # (!GLOBAL(\UCE|habSaidaEnd~clkctrl_outclk\) & (\Calc|resultado\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Calc|resultado\(11),
	datab => \UCE|habSaidaEnd~clkctrl_outclk\,
	datad => \Calc|regReult\(11),
	combout => \Calc|resultado\(11));

-- Location: LCCOMB_X18_Y8_N4
\Demux|saida_01[8]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Demux|saida_01\(8) = (GLOBAL(\UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\) & ((\Demux|saida_01\(8)))) # (!GLOBAL(\UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\) & (\RegS|saidaDados[8]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegS|saidaDados[8]~reg0_q\,
	datab => \Demux|saida_01\(8),
	datad => \UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\,
	combout => \Demux|saida_01\(8));

-- Location: FF_X18_Y8_N23
\Calc|regS[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Demux|saida_01\(8),
	sload => VCC,
	ena => \UCE|habilitaCalc~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Calc|regS\(12));

-- Location: LCCOMB_X19_Y8_N24
\RegS|IP[12]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RegS|IP[12]~56_combout\ = (\RegS|IP\(12) & (\RegS|IP[11]~55\ $ (GND))) # (!\RegS|IP\(12) & (!\RegS|IP[11]~55\ & VCC))
-- \RegS|IP[12]~57\ = CARRY((\RegS|IP\(12) & !\RegS|IP[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RegS|IP\(12),
	datad => VCC,
	cin => \RegS|IP[11]~55\,
	combout => \RegS|IP[12]~56_combout\,
	cout => \RegS|IP[12]~57\);

-- Location: FF_X19_Y8_N25
\RegS|IP[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegS|IP[12]~56_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \RegS|ProcessoResetEscrita~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegS|IP\(12));

-- Location: LCCOMB_X16_Y7_N4
\RegS|Mux13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RegS|Mux13~0_combout\ = (\RegS|IP\(12) & \UCE|ctrlRegSeg[2]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegS|IP\(12),
	datad => \UCE|ctrlRegSeg[2]~reg0_q\,
	combout => \RegS|Mux13~0_combout\);

-- Location: FF_X16_Y7_N5
\RegS|saidaDados[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegS|Mux13~0_combout\,
	ena => \UCE|ALT_INV_habRegSeg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegS|saidaDados[12]~reg0_q\);

-- Location: LCCOMB_X16_Y7_N16
\Demux|saida_02[12]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Demux|saida_02\(12) = (GLOBAL(\UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\) & (\RegS|saidaDados[12]~reg0_q\)) # (!GLOBAL(\UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\) & ((\Demux|saida_02\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegS|saidaDados[12]~reg0_q\,
	datac => \Demux|saida_02\(12),
	datad => \UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\,
	combout => \Demux|saida_02\(12));

-- Location: FF_X16_Y7_N17
\Calc|regI[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Demux|saida_02\(12),
	ena => \UCE|habilitaCalc~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Calc|regI\(12));

-- Location: LCCOMB_X18_Y7_N16
\Calc|regReult[12]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Calc|regReult[12]~32_combout\ = ((\Calc|regS\(12) $ (\Calc|regI\(12) $ (!\Calc|regReult[11]~31\)))) # (GND)
-- \Calc|regReult[12]~33\ = CARRY((\Calc|regS\(12) & ((\Calc|regI\(12)) # (!\Calc|regReult[11]~31\))) # (!\Calc|regS\(12) & (\Calc|regI\(12) & !\Calc|regReult[11]~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Calc|regS\(12),
	datab => \Calc|regI\(12),
	datad => VCC,
	cin => \Calc|regReult[11]~31\,
	combout => \Calc|regReult[12]~32_combout\,
	cout => \Calc|regReult[12]~33\);

-- Location: FF_X14_Y7_N3
\Calc|regReult[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Calc|regReult[12]~32_combout\,
	sload => VCC,
	ena => \UCE|habilitaCalc~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Calc|regReult\(12));

-- Location: LCCOMB_X14_Y7_N2
\Calc|resultado[12]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Calc|resultado\(12) = (GLOBAL(\UCE|habSaidaEnd~clkctrl_outclk\) & ((\Calc|regReult\(12)))) # (!GLOBAL(\UCE|habSaidaEnd~clkctrl_outclk\) & (\Calc|resultado\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Calc|resultado\(12),
	datac => \Calc|regReult\(12),
	datad => \UCE|habSaidaEnd~clkctrl_outclk\,
	combout => \Calc|resultado\(12));

-- Location: LCCOMB_X19_Y8_N26
\RegS|IP[13]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RegS|IP[13]~58_combout\ = (\RegS|IP\(13) & (!\RegS|IP[12]~57\)) # (!\RegS|IP\(13) & ((\RegS|IP[12]~57\) # (GND)))
-- \RegS|IP[13]~59\ = CARRY((!\RegS|IP[12]~57\) # (!\RegS|IP\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegS|IP\(13),
	datad => VCC,
	cin => \RegS|IP[12]~57\,
	combout => \RegS|IP[13]~58_combout\,
	cout => \RegS|IP[13]~59\);

-- Location: FF_X19_Y8_N27
\RegS|IP[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegS|IP[13]~58_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \RegS|ProcessoResetEscrita~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegS|IP\(13));

-- Location: LCCOMB_X16_Y7_N22
\RegS|Mux14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RegS|Mux14~0_combout\ = (\RegS|IP\(13) & \UCE|ctrlRegSeg[2]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegS|IP\(13),
	datad => \UCE|ctrlRegSeg[2]~reg0_q\,
	combout => \RegS|Mux14~0_combout\);

-- Location: FF_X16_Y7_N23
\RegS|saidaDados[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegS|Mux14~0_combout\,
	ena => \UCE|ALT_INV_habRegSeg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegS|saidaDados[13]~reg0_q\);

-- Location: LCCOMB_X16_Y7_N14
\Demux|saida_02[13]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Demux|saida_02\(13) = (GLOBAL(\UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\) & (\RegS|saidaDados[13]~reg0_q\)) # (!GLOBAL(\UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\) & ((\Demux|saida_02\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegS|saidaDados[13]~reg0_q\,
	datac => \Demux|saida_02\(13),
	datad => \UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\,
	combout => \Demux|saida_02\(13));

-- Location: FF_X16_Y7_N15
\Calc|regI[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Demux|saida_02\(13),
	ena => \UCE|habilitaCalc~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Calc|regI\(13));

-- Location: LCCOMB_X19_Y7_N14
\Demux|saida_01[9]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Demux|saida_01\(9) = (GLOBAL(\UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\) & ((\Demux|saida_01\(9)))) # (!GLOBAL(\UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\) & (\RegS|saidaDados[9]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegS|saidaDados[9]~reg0_q\,
	datab => \Demux|saida_01\(9),
	datad => \UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\,
	combout => \Demux|saida_01\(9));

-- Location: FF_X19_Y7_N23
\Calc|regS[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Demux|saida_01\(9),
	sload => VCC,
	ena => \UCE|habilitaCalc~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Calc|regS\(13));

-- Location: LCCOMB_X18_Y7_N18
\Calc|regReult[13]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Calc|regReult[13]~34_combout\ = (\Calc|regI\(13) & ((\Calc|regS\(13) & (\Calc|regReult[12]~33\ & VCC)) # (!\Calc|regS\(13) & (!\Calc|regReult[12]~33\)))) # (!\Calc|regI\(13) & ((\Calc|regS\(13) & (!\Calc|regReult[12]~33\)) # (!\Calc|regS\(13) & 
-- ((\Calc|regReult[12]~33\) # (GND)))))
-- \Calc|regReult[13]~35\ = CARRY((\Calc|regI\(13) & (!\Calc|regS\(13) & !\Calc|regReult[12]~33\)) # (!\Calc|regI\(13) & ((!\Calc|regReult[12]~33\) # (!\Calc|regS\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Calc|regI\(13),
	datab => \Calc|regS\(13),
	datad => VCC,
	cin => \Calc|regReult[12]~33\,
	combout => \Calc|regReult[13]~34_combout\,
	cout => \Calc|regReult[13]~35\);

-- Location: FF_X18_Y7_N19
\Calc|regReult[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Calc|regReult[13]~34_combout\,
	ena => \UCE|habilitaCalc~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Calc|regReult\(13));

-- Location: LCCOMB_X17_Y7_N28
\Calc|resultado[13]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Calc|resultado\(13) = (GLOBAL(\UCE|habSaidaEnd~clkctrl_outclk\) & ((\Calc|regReult\(13)))) # (!GLOBAL(\UCE|habSaidaEnd~clkctrl_outclk\) & (\Calc|resultado\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Calc|resultado\(13),
	datab => \UCE|habSaidaEnd~clkctrl_outclk\,
	datad => \Calc|regReult\(13),
	combout => \Calc|resultado\(13));

-- Location: LCCOMB_X19_Y8_N28
\RegS|IP[14]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RegS|IP[14]~60_combout\ = (\RegS|IP\(14) & (\RegS|IP[13]~59\ $ (GND))) # (!\RegS|IP\(14) & (!\RegS|IP[13]~59\ & VCC))
-- \RegS|IP[14]~61\ = CARRY((\RegS|IP\(14) & !\RegS|IP[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RegS|IP\(14),
	datad => VCC,
	cin => \RegS|IP[13]~59\,
	combout => \RegS|IP[14]~60_combout\,
	cout => \RegS|IP[14]~61\);

-- Location: FF_X19_Y8_N29
\RegS|IP[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegS|IP[14]~60_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \RegS|ProcessoResetEscrita~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegS|IP\(14));

-- Location: LCCOMB_X16_Y7_N12
\RegS|Mux15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RegS|Mux15~0_combout\ = (\UCE|ctrlRegSeg[2]~reg0_q\ & \RegS|IP\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCE|ctrlRegSeg[2]~reg0_q\,
	datad => \RegS|IP\(14),
	combout => \RegS|Mux15~0_combout\);

-- Location: FF_X16_Y7_N13
\RegS|saidaDados[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegS|Mux15~0_combout\,
	ena => \UCE|ALT_INV_habRegSeg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegS|saidaDados[14]~reg0_q\);

-- Location: LCCOMB_X16_Y7_N8
\Demux|saida_02[14]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Demux|saida_02\(14) = (GLOBAL(\UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\) & (\RegS|saidaDados[14]~reg0_q\)) # (!GLOBAL(\UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\) & ((\Demux|saida_02\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegS|saidaDados[14]~reg0_q\,
	datac => \Demux|saida_02\(14),
	datad => \UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\,
	combout => \Demux|saida_02\(14));

-- Location: FF_X16_Y7_N9
\Calc|regI[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Demux|saida_02\(14),
	ena => \UCE|habilitaCalc~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Calc|regI\(14));

-- Location: LCCOMB_X19_Y7_N22
\Demux|saida_01[10]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Demux|saida_01\(10) = (GLOBAL(\UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\) & ((\Demux|saida_01\(10)))) # (!GLOBAL(\UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\) & (\RegS|saidaDados[10]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegS|saidaDados[10]~reg0_q\,
	datab => \Demux|saida_01\(10),
	datad => \UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\,
	combout => \Demux|saida_01\(10));

-- Location: FF_X19_Y7_N5
\Calc|regS[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Demux|saida_01\(10),
	sload => VCC,
	ena => \UCE|habilitaCalc~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Calc|regS\(14));

-- Location: LCCOMB_X18_Y7_N20
\Calc|regReult[14]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Calc|regReult[14]~36_combout\ = ((\Calc|regI\(14) $ (\Calc|regS\(14) $ (!\Calc|regReult[13]~35\)))) # (GND)
-- \Calc|regReult[14]~37\ = CARRY((\Calc|regI\(14) & ((\Calc|regS\(14)) # (!\Calc|regReult[13]~35\))) # (!\Calc|regI\(14) & (\Calc|regS\(14) & !\Calc|regReult[13]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Calc|regI\(14),
	datab => \Calc|regS\(14),
	datad => VCC,
	cin => \Calc|regReult[13]~35\,
	combout => \Calc|regReult[14]~36_combout\,
	cout => \Calc|regReult[14]~37\);

-- Location: FF_X16_Y7_N25
\Calc|regReult[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Calc|regReult[14]~36_combout\,
	sload => VCC,
	ena => \UCE|habilitaCalc~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Calc|regReult\(14));

-- Location: LCCOMB_X16_Y7_N24
\Calc|resultado[14]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Calc|resultado\(14) = (GLOBAL(\UCE|habSaidaEnd~clkctrl_outclk\) & ((\Calc|regReult\(14)))) # (!GLOBAL(\UCE|habSaidaEnd~clkctrl_outclk\) & (\Calc|resultado\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Calc|resultado\(14),
	datac => \Calc|regReult\(14),
	datad => \UCE|habSaidaEnd~clkctrl_outclk\,
	combout => \Calc|resultado\(14));

-- Location: LCCOMB_X19_Y8_N30
\RegS|IP[15]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RegS|IP[15]~62_combout\ = \RegS|IP\(15) $ (\RegS|IP[14]~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegS|IP\(15),
	cin => \RegS|IP[14]~61\,
	combout => \RegS|IP[15]~62_combout\);

-- Location: FF_X19_Y8_N31
\RegS|IP[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegS|IP[15]~62_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \RegS|ProcessoResetEscrita~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegS|IP\(15));

-- Location: LCCOMB_X17_Y7_N6
\RegS|Mux16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RegS|Mux16~0_combout\ = (\RegS|IP\(15) & \UCE|ctrlRegSeg[2]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegS|IP\(15),
	datad => \UCE|ctrlRegSeg[2]~reg0_q\,
	combout => \RegS|Mux16~0_combout\);

-- Location: FF_X17_Y7_N7
\RegS|saidaDados[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegS|Mux16~0_combout\,
	ena => \UCE|ALT_INV_habRegSeg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegS|saidaDados[15]~reg0_q\);

-- Location: LCCOMB_X17_Y7_N12
\Demux|saida_02[15]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Demux|saida_02\(15) = (GLOBAL(\UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\) & (\RegS|saidaDados[15]~reg0_q\)) # (!GLOBAL(\UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\) & ((\Demux|saida_02\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegS|saidaDados[15]~reg0_q\,
	datac => \UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\,
	datad => \Demux|saida_02\(15),
	combout => \Demux|saida_02\(15));

-- Location: FF_X17_Y7_N13
\Calc|regI[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Demux|saida_02\(15),
	ena => \UCE|habilitaCalc~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Calc|regI\(15));

-- Location: LCCOMB_X17_Y7_N4
\Demux|saida_01[11]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Demux|saida_01\(11) = (GLOBAL(\UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\) & ((\Demux|saida_01\(11)))) # (!GLOBAL(\UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\) & (\RegS|saidaDados[11]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegS|saidaDados[11]~reg0_q\,
	datab => \Demux|saida_01\(11),
	datad => \UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\,
	combout => \Demux|saida_01\(11));

-- Location: FF_X17_Y7_N23
\Calc|regS[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Demux|saida_01\(11),
	sload => VCC,
	ena => \UCE|habilitaCalc~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Calc|regS\(15));

-- Location: LCCOMB_X18_Y7_N22
\Calc|regReult[15]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Calc|regReult[15]~38_combout\ = (\Calc|regI\(15) & ((\Calc|regS\(15) & (\Calc|regReult[14]~37\ & VCC)) # (!\Calc|regS\(15) & (!\Calc|regReult[14]~37\)))) # (!\Calc|regI\(15) & ((\Calc|regS\(15) & (!\Calc|regReult[14]~37\)) # (!\Calc|regS\(15) & 
-- ((\Calc|regReult[14]~37\) # (GND)))))
-- \Calc|regReult[15]~39\ = CARRY((\Calc|regI\(15) & (!\Calc|regS\(15) & !\Calc|regReult[14]~37\)) # (!\Calc|regI\(15) & ((!\Calc|regReult[14]~37\) # (!\Calc|regS\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Calc|regI\(15),
	datab => \Calc|regS\(15),
	datad => VCC,
	cin => \Calc|regReult[14]~37\,
	combout => \Calc|regReult[15]~38_combout\,
	cout => \Calc|regReult[15]~39\);

-- Location: FF_X18_Y7_N23
\Calc|regReult[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Calc|regReult[15]~38_combout\,
	ena => \UCE|habilitaCalc~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Calc|regReult\(15));

-- Location: LCCOMB_X17_Y7_N24
\Calc|resultado[15]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Calc|resultado\(15) = (GLOBAL(\UCE|habSaidaEnd~clkctrl_outclk\) & ((\Calc|regReult\(15)))) # (!GLOBAL(\UCE|habSaidaEnd~clkctrl_outclk\) & (\Calc|resultado\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Calc|resultado\(15),
	datab => \UCE|habSaidaEnd~clkctrl_outclk\,
	datad => \Calc|regReult\(15),
	combout => \Calc|resultado\(15));

-- Location: LCCOMB_X16_Y7_N6
\Demux|saida_01[12]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Demux|saida_01\(12) = (GLOBAL(\UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\) & (\Demux|saida_01\(12))) # (!GLOBAL(\UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\) & ((\RegS|saidaDados[12]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Demux|saida_01\(12),
	datac => \RegS|saidaDados[12]~reg0_q\,
	datad => \UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\,
	combout => \Demux|saida_01\(12));

-- Location: LCCOMB_X16_Y7_N2
\Calc|regS[16]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Calc|regS[16]~feeder_combout\ = \Demux|saida_01\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Demux|saida_01\(12),
	combout => \Calc|regS[16]~feeder_combout\);

-- Location: FF_X16_Y7_N3
\Calc|regS[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Calc|regS[16]~feeder_combout\,
	ena => \UCE|habilitaCalc~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Calc|regS\(16));

-- Location: LCCOMB_X18_Y7_N24
\Calc|regReult[16]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Calc|regReult[16]~40_combout\ = (\Calc|regS\(16) & (\Calc|regReult[15]~39\ $ (GND))) # (!\Calc|regS\(16) & (!\Calc|regReult[15]~39\ & VCC))
-- \Calc|regReult[16]~41\ = CARRY((\Calc|regS\(16) & !\Calc|regReult[15]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Calc|regS\(16),
	datad => VCC,
	cin => \Calc|regReult[15]~39\,
	combout => \Calc|regReult[16]~40_combout\,
	cout => \Calc|regReult[16]~41\);

-- Location: FF_X18_Y7_N25
\Calc|regReult[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Calc|regReult[16]~40_combout\,
	ena => \UCE|habilitaCalc~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Calc|regReult\(16));

-- Location: LCCOMB_X19_Y7_N16
\Calc|resultado[16]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Calc|resultado\(16) = (GLOBAL(\UCE|habSaidaEnd~clkctrl_outclk\) & ((\Calc|regReult\(16)))) # (!GLOBAL(\UCE|habSaidaEnd~clkctrl_outclk\) & (\Calc|resultado\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCE|habSaidaEnd~clkctrl_outclk\,
	datab => \Calc|resultado\(16),
	datad => \Calc|regReult\(16),
	combout => \Calc|resultado\(16));

-- Location: LCCOMB_X16_Y7_N0
\Demux|saida_01[13]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Demux|saida_01\(13) = (GLOBAL(\UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\) & (\Demux|saida_01\(13))) # (!GLOBAL(\UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\) & ((\RegS|saidaDados[13]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Demux|saida_01\(13),
	datac => \RegS|saidaDados[13]~reg0_q\,
	datad => \UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\,
	combout => \Demux|saida_01\(13));

-- Location: LCCOMB_X16_Y7_N20
\Calc|regS[17]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Calc|regS[17]~feeder_combout\ = \Demux|saida_01\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Demux|saida_01\(13),
	combout => \Calc|regS[17]~feeder_combout\);

-- Location: FF_X16_Y7_N21
\Calc|regS[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Calc|regS[17]~feeder_combout\,
	ena => \UCE|habilitaCalc~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Calc|regS\(17));

-- Location: LCCOMB_X18_Y7_N26
\Calc|regReult[17]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Calc|regReult[17]~42_combout\ = (\Calc|regS\(17) & (!\Calc|regReult[16]~41\)) # (!\Calc|regS\(17) & ((\Calc|regReult[16]~41\) # (GND)))
-- \Calc|regReult[17]~43\ = CARRY((!\Calc|regReult[16]~41\) # (!\Calc|regS\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Calc|regS\(17),
	datad => VCC,
	cin => \Calc|regReult[16]~41\,
	combout => \Calc|regReult[17]~42_combout\,
	cout => \Calc|regReult[17]~43\);

-- Location: FF_X17_Y7_N25
\Calc|regReult[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Calc|regReult[17]~42_combout\,
	sload => VCC,
	ena => \UCE|habilitaCalc~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Calc|regReult\(17));

-- Location: LCCOMB_X17_Y7_N22
\Calc|resultado[17]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Calc|resultado\(17) = (GLOBAL(\UCE|habSaidaEnd~clkctrl_outclk\) & ((\Calc|regReult\(17)))) # (!GLOBAL(\UCE|habSaidaEnd~clkctrl_outclk\) & (\Calc|resultado\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Calc|resultado\(17),
	datab => \UCE|habSaidaEnd~clkctrl_outclk\,
	datad => \Calc|regReult\(17),
	combout => \Calc|resultado\(17));

-- Location: LCCOMB_X16_Y7_N18
\Demux|saida_01[14]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Demux|saida_01\(14) = (GLOBAL(\UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\) & (\Demux|saida_01\(14))) # (!GLOBAL(\UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\) & ((\RegS|saidaDados[14]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Demux|saida_01\(14),
	datac => \RegS|saidaDados[14]~reg0_q\,
	datad => \UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\,
	combout => \Demux|saida_01\(14));

-- Location: LCCOMB_X16_Y7_N10
\Calc|regS[18]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Calc|regS[18]~feeder_combout\ = \Demux|saida_01\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Demux|saida_01\(14),
	combout => \Calc|regS[18]~feeder_combout\);

-- Location: FF_X16_Y7_N11
\Calc|regS[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Calc|regS[18]~feeder_combout\,
	ena => \UCE|habilitaCalc~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Calc|regS\(18));

-- Location: LCCOMB_X18_Y7_N28
\Calc|regReult[18]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Calc|regReult[18]~44_combout\ = (\Calc|regS\(18) & (\Calc|regReult[17]~43\ $ (GND))) # (!\Calc|regS\(18) & (!\Calc|regReult[17]~43\ & VCC))
-- \Calc|regReult[18]~45\ = CARRY((\Calc|regS\(18) & !\Calc|regReult[17]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Calc|regS\(18),
	datad => VCC,
	cin => \Calc|regReult[17]~43\,
	combout => \Calc|regReult[18]~44_combout\,
	cout => \Calc|regReult[18]~45\);

-- Location: FF_X18_Y7_N29
\Calc|regReult[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Calc|regReult[18]~44_combout\,
	ena => \UCE|habilitaCalc~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Calc|regReult\(18));

-- Location: LCCOMB_X19_Y7_N24
\Calc|resultado[18]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Calc|resultado\(18) = (GLOBAL(\UCE|habSaidaEnd~clkctrl_outclk\) & ((\Calc|regReult\(18)))) # (!GLOBAL(\UCE|habSaidaEnd~clkctrl_outclk\) & (\Calc|resultado\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UCE|habSaidaEnd~clkctrl_outclk\,
	datab => \Calc|resultado\(18),
	datad => \Calc|regReult\(18),
	combout => \Calc|resultado\(18));

-- Location: LCCOMB_X17_Y7_N30
\Demux|saida_01[15]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Demux|saida_01\(15) = (GLOBAL(\UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\) & (\Demux|saida_01\(15))) # (!GLOBAL(\UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\) & ((\RegS|saidaDados[15]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Demux|saida_01\(15),
	datac => \UCE|ctrlRegSeg[0]~reg0clkctrl_outclk\,
	datad => \RegS|saidaDados[15]~reg0_q\,
	combout => \Demux|saida_01\(15));

-- Location: FF_X17_Y7_N29
\Calc|regS[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Demux|saida_01\(15),
	sload => VCC,
	ena => \UCE|habilitaCalc~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Calc|regS\(19));

-- Location: LCCOMB_X18_Y7_N30
\Calc|regReult[19]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Calc|regReult[19]~46_combout\ = \Calc|regReult[18]~45\ $ (\Calc|regS\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Calc|regS\(19),
	cin => \Calc|regReult[18]~45\,
	combout => \Calc|regReult[19]~46_combout\);

-- Location: FF_X17_Y7_N19
\Calc|regReult[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Calc|regReult[19]~46_combout\,
	sload => VCC,
	ena => \UCE|habilitaCalc~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Calc|regReult\(19));

-- Location: LCCOMB_X17_Y7_N18
\Calc|resultado[19]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Calc|resultado\(19) = (GLOBAL(\UCE|habSaidaEnd~clkctrl_outclk\) & ((\Calc|regReult\(19)))) # (!GLOBAL(\UCE|habSaidaEnd~clkctrl_outclk\) & (\Calc|resultado\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Calc|resultado\(19),
	datac => \Calc|regReult\(19),
	datad => \UCE|habSaidaEnd~clkctrl_outclk\,
	combout => \Calc|resultado\(19));

ww_endereco(0) <= \endereco[0]~output_o\;

ww_endereco(1) <= \endereco[1]~output_o\;

ww_endereco(2) <= \endereco[2]~output_o\;

ww_endereco(3) <= \endereco[3]~output_o\;

ww_endereco(4) <= \endereco[4]~output_o\;

ww_endereco(5) <= \endereco[5]~output_o\;

ww_endereco(6) <= \endereco[6]~output_o\;

ww_endereco(7) <= \endereco[7]~output_o\;

ww_endereco(8) <= \endereco[8]~output_o\;

ww_endereco(9) <= \endereco[9]~output_o\;

ww_endereco(10) <= \endereco[10]~output_o\;

ww_endereco(11) <= \endereco[11]~output_o\;

ww_endereco(12) <= \endereco[12]~output_o\;

ww_endereco(13) <= \endereco[13]~output_o\;

ww_endereco(14) <= \endereco[14]~output_o\;

ww_endereco(15) <= \endereco[15]~output_o\;

ww_endereco(16) <= \endereco[16]~output_o\;

ww_endereco(17) <= \endereco[17]~output_o\;

ww_endereco(18) <= \endereco[18]~output_o\;

ww_endereco(19) <= \endereco[19]~output_o\;
END structure;


