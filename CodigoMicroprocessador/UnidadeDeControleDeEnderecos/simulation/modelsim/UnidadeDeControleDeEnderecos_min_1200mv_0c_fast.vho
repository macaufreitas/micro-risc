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

-- DATE "03/31/2014 22:09:40"

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

ENTITY 	UnidadeDeControleDeEnderecos IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	habilita : IN std_logic;
	habilitaCalc : OUT std_logic;
	habRegSeg : OUT std_logic;
	leRegSeg : OUT std_logic;
	ctrlRegSeg : OUT std_logic_vector(2 DOWNTO 0);
	incIP : OUT std_logic;
	selecSeg : OUT std_logic;
	habSaidaEnd : OUT std_logic;
	habMemoria : OUT std_logic
	);
END UnidadeDeControleDeEnderecos;

-- Design Ports Information
-- habilitaCalc	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- habRegSeg	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leRegSeg	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrlRegSeg[0]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrlRegSeg[1]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrlRegSeg[2]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- incIP	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- selecSeg	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- habSaidaEnd	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- habMemoria	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- habilita	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF UnidadeDeControleDeEnderecos IS
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
SIGNAL ww_habilitaCalc : std_logic;
SIGNAL ww_habRegSeg : std_logic;
SIGNAL ww_leRegSeg : std_logic;
SIGNAL ww_ctrlRegSeg : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_incIP : std_logic;
SIGNAL ww_selecSeg : std_logic;
SIGNAL ww_habSaidaEnd : std_logic;
SIGNAL ww_habMemoria : std_logic;
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \habilitaCalc~output_o\ : std_logic;
SIGNAL \leRegSeg~output_o\ : std_logic;
SIGNAL \ctrlRegSeg[0]~output_o\ : std_logic;
SIGNAL \ctrlRegSeg[1]~output_o\ : std_logic;
SIGNAL \ctrlRegSeg[2]~output_o\ : std_logic;
SIGNAL \incIP~output_o\ : std_logic;
SIGNAL \selecSeg~output_o\ : std_logic;
SIGNAL \habRegSeg~output_o\ : std_logic;
SIGNAL \habSaidaEnd~output_o\ : std_logic;
SIGNAL \habMemoria~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \habilita~input_o\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \Estado.Espera~q\ : std_logic;
SIGNAL \Estado~10_combout\ : std_logic;
SIGNAL \Estado.HabilitaSegmento~q\ : std_logic;
SIGNAL \Estado.HabilitaIP~feeder_combout\ : std_logic;
SIGNAL \Estado.HabilitaIP~q\ : std_logic;
SIGNAL \Estado.CalculoEndereco~q\ : std_logic;
SIGNAL \Estado.ColocaEndBarramentoIncIP~feeder_combout\ : std_logic;
SIGNAL \Estado.ColocaEndBarramentoIncIP~q\ : std_logic;
SIGNAL \Estado.TerminaCalculo~feeder_combout\ : std_logic;
SIGNAL \Estado.TerminaCalculo~q\ : std_logic;
SIGNAL \habilitaCalc~1_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \habilitaCalc~reg0_q\ : std_logic;
SIGNAL \leRegSeg~reg0feeder_combout\ : std_logic;
SIGNAL \WideOr2~0_combout\ : std_logic;
SIGNAL \leRegSeg~reg0_q\ : std_logic;
SIGNAL \leRegSeg~en_q\ : std_logic;
SIGNAL \ctrlRegSeg[0]~3_combout\ : std_logic;
SIGNAL \WideOr3~0_combout\ : std_logic;
SIGNAL \ctrlRegSeg[0]~reg0_q\ : std_logic;
SIGNAL \ctrlRegSeg[2]~reg0_q\ : std_logic;
SIGNAL \incIP~1_combout\ : std_logic;
SIGNAL \WideOr4~0_combout\ : std_logic;
SIGNAL \incIP~reg0_q\ : std_logic;
SIGNAL \selecSeg~1_combout\ : std_logic;
SIGNAL \selecSeg~reg0_q\ : std_logic;
SIGNAL \habRegSeg~0_combout\ : std_logic;
SIGNAL \habRegSeg~reg0_q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \habSaidaEnd~reg0_q\ : std_logic;
SIGNAL \habMemoria~reg0_q\ : std_logic;
SIGNAL \ALT_INV_clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_leRegSeg~en_q\ : std_logic;
SIGNAL \ALT_INV_habRegSeg~reg0_q\ : std_logic;

BEGIN

ww_clock <= clock;
ww_reset <= reset;
ww_habilita <= habilita;
habilitaCalc <= ww_habilitaCalc;
habRegSeg <= ww_habRegSeg;
leRegSeg <= ww_leRegSeg;
ctrlRegSeg <= ww_ctrlRegSeg;
incIP <= ww_incIP;
selecSeg <= ww_selecSeg;
habSaidaEnd <= ww_habSaidaEnd;
habMemoria <= ww_habMemoria;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\ALT_INV_clock~inputclkctrl_outclk\ <= NOT \clock~inputclkctrl_outclk\;
\ALT_INV_leRegSeg~en_q\ <= NOT \leRegSeg~en_q\;
\ALT_INV_habRegSeg~reg0_q\ <= NOT \habRegSeg~reg0_q\;

-- Location: IOOBUF_X23_Y24_N23
\habilitaCalc~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \habilitaCalc~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \habilitaCalc~output_o\);

-- Location: IOOBUF_X25_Y24_N16
\leRegSeg~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \leRegSeg~reg0_q\,
	oe => \ALT_INV_leRegSeg~en_q\,
	devoe => ww_devoe,
	o => \leRegSeg~output_o\);

-- Location: IOOBUF_X23_Y24_N2
\ctrlRegSeg[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ctrlRegSeg[0]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \ctrlRegSeg[0]~output_o\);

-- Location: IOOBUF_X30_Y24_N2
\ctrlRegSeg[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ctrlRegSeg[1]~output_o\);

-- Location: IOOBUF_X23_Y24_N9
\ctrlRegSeg[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ctrlRegSeg[2]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \ctrlRegSeg[2]~output_o\);

-- Location: IOOBUF_X25_Y24_N9
\incIP~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \incIP~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \incIP~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\selecSeg~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \selecSeg~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \selecSeg~output_o\);

-- Location: IOOBUF_X21_Y24_N9
\habRegSeg~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_habRegSeg~reg0_q\,
	devoe => ww_devoe,
	o => \habRegSeg~output_o\);

-- Location: IOOBUF_X21_Y24_N16
\habSaidaEnd~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \habSaidaEnd~reg0_q\,
	devoe => ww_devoe,
	o => \habSaidaEnd~output_o\);

-- Location: IOOBUF_X21_Y24_N2
\habMemoria~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \habMemoria~reg0_q\,
	devoe => ww_devoe,
	o => \habMemoria~output_o\);

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

-- Location: IOIBUF_X34_Y12_N8
\habilita~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_habilita,
	o => \habilita~input_o\);

-- Location: LCCOMB_X24_Y23_N26
\Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (!\Estado.TerminaCalculo~q\ & ((\habilita~input_o\) # (\Estado.Espera~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \habilita~input_o\,
	datac => \Estado.Espera~q\,
	datad => \Estado.TerminaCalculo~q\,
	combout => \Selector3~0_combout\);

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

-- Location: FF_X24_Y23_N27
\Estado.Espera\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \Selector3~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Estado.Espera~q\);

-- Location: LCCOMB_X24_Y23_N28
\Estado~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Estado~10_combout\ = (!\Estado.Espera~q\ & \habilita~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Estado.Espera~q\,
	datad => \habilita~input_o\,
	combout => \Estado~10_combout\);

-- Location: FF_X24_Y23_N29
\Estado.HabilitaSegmento\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \Estado~10_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Estado.HabilitaSegmento~q\);

-- Location: LCCOMB_X23_Y23_N8
\Estado.HabilitaIP~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Estado.HabilitaIP~feeder_combout\ = \Estado.HabilitaSegmento~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Estado.HabilitaSegmento~q\,
	combout => \Estado.HabilitaIP~feeder_combout\);

-- Location: FF_X23_Y23_N9
\Estado.HabilitaIP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \Estado.HabilitaIP~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Estado.HabilitaIP~q\);

-- Location: FF_X23_Y23_N19
\Estado.CalculoEndereco\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \Estado.HabilitaIP~q\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Estado.CalculoEndereco~q\);

-- Location: LCCOMB_X23_Y23_N6
\Estado.ColocaEndBarramentoIncIP~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Estado.ColocaEndBarramentoIncIP~feeder_combout\ = \Estado.CalculoEndereco~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Estado.CalculoEndereco~q\,
	combout => \Estado.ColocaEndBarramentoIncIP~feeder_combout\);

-- Location: FF_X23_Y23_N7
\Estado.ColocaEndBarramentoIncIP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \Estado.ColocaEndBarramentoIncIP~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Estado.ColocaEndBarramentoIncIP~q\);

-- Location: LCCOMB_X22_Y23_N28
\Estado.TerminaCalculo~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Estado.TerminaCalculo~feeder_combout\ = \Estado.ColocaEndBarramentoIncIP~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Estado.ColocaEndBarramentoIncIP~q\,
	combout => \Estado.TerminaCalculo~feeder_combout\);

-- Location: FF_X22_Y23_N29
\Estado.TerminaCalculo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \Estado.TerminaCalculo~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Estado.TerminaCalculo~q\);

-- Location: LCCOMB_X21_Y23_N10
\habilitaCalc~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \habilitaCalc~1_combout\ = !\Estado.TerminaCalculo~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Estado.TerminaCalculo~q\,
	combout => \habilitaCalc~1_combout\);

-- Location: LCCOMB_X21_Y23_N0
\Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\Estado.HabilitaSegmento~q\) # (\Estado.TerminaCalculo~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Estado.HabilitaSegmento~q\,
	datad => \Estado.TerminaCalculo~q\,
	combout => \Selector0~0_combout\);

-- Location: FF_X21_Y23_N11
\habilitaCalc~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \habilitaCalc~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \habilitaCalc~reg0_q\);

-- Location: LCCOMB_X24_Y23_N10
\leRegSeg~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \leRegSeg~reg0feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \leRegSeg~reg0feeder_combout\);

-- Location: LCCOMB_X24_Y23_N24
\WideOr2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr2~0_combout\ = (\Estado.ColocaEndBarramentoIncIP~q\) # (\Estado.HabilitaSegmento~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Estado.ColocaEndBarramentoIncIP~q\,
	datad => \Estado.HabilitaSegmento~q\,
	combout => \WideOr2~0_combout\);

-- Location: FF_X24_Y23_N11
\leRegSeg~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \leRegSeg~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leRegSeg~reg0_q\);

-- Location: FF_X24_Y23_N25
\leRegSeg~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Estado.ColocaEndBarramentoIncIP~q\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leRegSeg~en_q\);

-- Location: LCCOMB_X23_Y23_N20
\ctrlRegSeg[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ctrlRegSeg[0]~3_combout\ = !\Estado.HabilitaIP~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Estado.HabilitaIP~q\,
	combout => \ctrlRegSeg[0]~3_combout\);

-- Location: LCCOMB_X23_Y23_N10
\WideOr3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr3~0_combout\ = (\Estado.HabilitaIP~q\) # (\Estado.HabilitaSegmento~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Estado.HabilitaIP~q\,
	datad => \Estado.HabilitaSegmento~q\,
	combout => \WideOr3~0_combout\);

-- Location: FF_X23_Y23_N21
\ctrlRegSeg[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ctrlRegSeg[0]~3_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrlRegSeg[0]~reg0_q\);

-- Location: FF_X23_Y23_N11
\ctrlRegSeg[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Estado.HabilitaIP~q\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrlRegSeg[2]~reg0_q\);

-- Location: LCCOMB_X22_Y23_N14
\incIP~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \incIP~1_combout\ = !\Estado.TerminaCalculo~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Estado.TerminaCalculo~q\,
	combout => \incIP~1_combout\);

-- Location: LCCOMB_X22_Y23_N24
\WideOr4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr4~0_combout\ = (\Estado.TerminaCalculo~q\) # (\Estado.ColocaEndBarramentoIncIP~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Estado.TerminaCalculo~q\,
	datad => \Estado.ColocaEndBarramentoIncIP~q\,
	combout => \WideOr4~0_combout\);

-- Location: FF_X22_Y23_N15
\incIP~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \incIP~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \incIP~reg0_q\);

-- Location: LCCOMB_X23_Y23_N12
\selecSeg~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selecSeg~1_combout\ = !\Estado.HabilitaIP~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Estado.HabilitaIP~q\,
	combout => \selecSeg~1_combout\);

-- Location: FF_X23_Y23_N13
\selecSeg~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \selecSeg~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \selecSeg~reg0_q\);

-- Location: LCCOMB_X21_Y23_N12
\habRegSeg~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \habRegSeg~0_combout\ = !\Estado.HabilitaSegmento~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Estado.HabilitaSegmento~q\,
	combout => \habRegSeg~0_combout\);

-- Location: FF_X21_Y23_N13
\habRegSeg~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \habRegSeg~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \habRegSeg~reg0_q\);

-- Location: LCCOMB_X21_Y23_N22
\Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\Estado.ColocaEndBarramentoIncIP~q\) # ((\habSaidaEnd~reg0_q\ & !\Estado.TerminaCalculo~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Estado.ColocaEndBarramentoIncIP~q\,
	datac => \habSaidaEnd~reg0_q\,
	datad => \Estado.TerminaCalculo~q\,
	combout => \Selector2~0_combout\);

-- Location: FF_X21_Y23_N23
\habSaidaEnd~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector2~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \habSaidaEnd~reg0_q\);

-- Location: FF_X21_Y23_N1
\habMemoria~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Estado.HabilitaSegmento~q\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \habMemoria~reg0_q\);

ww_habilitaCalc <= \habilitaCalc~output_o\;

ww_habRegSeg <= \habRegSeg~output_o\;

ww_leRegSeg <= \leRegSeg~output_o\;

ww_ctrlRegSeg(0) <= \ctrlRegSeg[0]~output_o\;

ww_ctrlRegSeg(1) <= \ctrlRegSeg[1]~output_o\;

ww_ctrlRegSeg(2) <= \ctrlRegSeg[2]~output_o\;

ww_incIP <= \incIP~output_o\;

ww_selecSeg <= \selecSeg~output_o\;

ww_habSaidaEnd <= \habSaidaEnd~output_o\;

ww_habMemoria <= \habMemoria~output_o\;
END structure;


