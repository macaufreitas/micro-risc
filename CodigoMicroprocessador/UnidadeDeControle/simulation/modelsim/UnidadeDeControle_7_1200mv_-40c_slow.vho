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

-- DATE "04/18/2014 14:17:58"

-- 
-- Device: Altera EP3C25F256I7 Package FBGA256
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

ENTITY 	UnidadeDeControle IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	opcode : IN std_logic_vector(15 DOWNTO 0);
	sitEnd : IN std_logic;
	leEnd : BUFFER std_logic;
	habULA : BUFFER std_logic;
	ctrlULA : BUFFER std_logic_vector(2 DOWNTO 0);
	regDataLe : BUFFER std_logic;
	habRegData : BUFFER std_logic;
	ctrlRegData : BUFFER std_logic_vector(2 DOWNTO 0);
	ctrlDemuxData : BUFFER std_logic
	);
END UnidadeDeControle;

-- Design Ports Information
-- leEnd	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- habULA	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrlULA[0]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrlULA[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrlULA[2]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regDataLe	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- habRegData	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrlRegData[0]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrlRegData[1]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrlRegData[2]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrlDemuxData	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sitEnd	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[0]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[1]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[2]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[15]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[14]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[13]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[12]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[8]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[11]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[10]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[9]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[7]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[3]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[4]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[5]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[6]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF UnidadeDeControle IS
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
SIGNAL ww_opcode : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_sitEnd : std_logic;
SIGNAL ww_leEnd : std_logic;
SIGNAL ww_habULA : std_logic;
SIGNAL ww_ctrlULA : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_regDataLe : std_logic;
SIGNAL ww_habRegData : std_logic;
SIGNAL ww_ctrlRegData : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_ctrlDemuxData : std_logic;
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \leEnd~output_o\ : std_logic;
SIGNAL \habULA~output_o\ : std_logic;
SIGNAL \ctrlULA[0]~output_o\ : std_logic;
SIGNAL \ctrlULA[1]~output_o\ : std_logic;
SIGNAL \ctrlULA[2]~output_o\ : std_logic;
SIGNAL \regDataLe~output_o\ : std_logic;
SIGNAL \habRegData~output_o\ : std_logic;
SIGNAL \ctrlRegData[0]~output_o\ : std_logic;
SIGNAL \ctrlRegData[1]~output_o\ : std_logic;
SIGNAL \ctrlRegData[2]~output_o\ : std_logic;
SIGNAL \ctrlDemuxData~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \opcode[3]~input_o\ : std_logic;
SIGNAL \opcodeFetch[3]~feeder_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \opcodeFetch[15]~0_combout\ : std_logic;
SIGNAL \opcode[5]~input_o\ : std_logic;
SIGNAL \opcodeFetch[5]~feeder_combout\ : std_logic;
SIGNAL \opcode[4]~input_o\ : std_logic;
SIGNAL \sitEnd~input_o\ : std_logic;
SIGNAL \opcode[6]~input_o\ : std_logic;
SIGNAL \opcodeFetch[6]~feeder_combout\ : std_logic;
SIGNAL \opcode[7]~input_o\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \Estado.Adc_regImed_16~q\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \Estado.And_regImed_16~q\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \Estado.Sub_regImed_16~q\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \Estado.Or_regImed_16~q\ : std_logic;
SIGNAL \Selector14~1_combout\ : std_logic;
SIGNAL \Estado.Add_regImed_16~q\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \Estado.Sbb_regImed_16~q\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \Estado.Xor_regImed_16~q\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \Selector23~1_combout\ : std_logic;
SIGNAL \Estado.ResultRegImed~q\ : std_logic;
SIGNAL \Estado.FimInstrucao~feeder_combout\ : std_logic;
SIGNAL \Estado.FimInstrucao~q\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \Estado.Busca~q\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \Estado.Fetch~q\ : std_logic;
SIGNAL \opcode[10]~input_o\ : std_logic;
SIGNAL \opcodeFetch[10]~feeder_combout\ : std_logic;
SIGNAL \opcode[9]~input_o\ : std_logic;
SIGNAL \opcode[11]~input_o\ : std_logic;
SIGNAL \opcode[8]~input_o\ : std_logic;
SIGNAL \opcodeFetch[8]~feeder_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \opcode[12]~input_o\ : std_logic;
SIGNAL \opcode[13]~input_o\ : std_logic;
SIGNAL \opcode[14]~input_o\ : std_logic;
SIGNAL \opcode[15]~input_o\ : std_logic;
SIGNAL \opcodeFetch[15]~feeder_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \Estado.OpRegImed16~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \leEnd~reg0_q\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \Selector16~1_combout\ : std_logic;
SIGNAL \Estado.Erro~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \habULA~reg0_q\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \WideOr4~combout\ : std_logic;
SIGNAL \Selector5~1_combout\ : std_logic;
SIGNAL \ctrlULA[0]~reg0_q\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Selector4~1_combout\ : std_logic;
SIGNAL \ctrlULA[1]~reg0_q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \ctrlULA[2]~reg0_q\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Selector7~1_combout\ : std_logic;
SIGNAL \regDataLe~reg0_q\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \habRegData~reg0_q\ : std_logic;
SIGNAL \opcode[0]~input_o\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \ctrlRegData[0]~reg0_q\ : std_logic;
SIGNAL \opcode[1]~input_o\ : std_logic;
SIGNAL \opcodeFetch[1]~feeder_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \ctrlRegData[1]~reg0_q\ : std_logic;
SIGNAL \opcode[2]~input_o\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \ctrlRegData[2]~reg0_q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \ctrlDemuxData~reg0_q\ : std_logic;
SIGNAL opcodeFetch : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_clock~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clock <= clock;
ww_reset <= reset;
ww_opcode <= opcode;
ww_sitEnd <= sitEnd;
leEnd <= ww_leEnd;
habULA <= ww_habULA;
ctrlULA <= ww_ctrlULA;
regDataLe <= ww_regDataLe;
habRegData <= ww_habRegData;
ctrlRegData <= ww_ctrlRegData;
ctrlDemuxData <= ww_ctrlDemuxData;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\ALT_INV_clock~inputclkctrl_outclk\ <= NOT \clock~inputclkctrl_outclk\;

-- Location: IOOBUF_X34_Y34_N9
\leEnd~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \leEnd~reg0_q\,
	devoe => ww_devoe,
	o => \leEnd~output_o\);

-- Location: IOOBUF_X34_Y34_N2
\habULA~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \habULA~reg0_q\,
	devoe => ww_devoe,
	o => \habULA~output_o\);

-- Location: IOOBUF_X45_Y34_N2
\ctrlULA[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ctrlULA[0]~reg0_q\,
	devoe => ww_devoe,
	o => \ctrlULA[0]~output_o\);

-- Location: IOOBUF_X53_Y22_N9
\ctrlULA[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ctrlULA[1]~reg0_q\,
	devoe => ww_devoe,
	o => \ctrlULA[1]~output_o\);

-- Location: IOOBUF_X40_Y34_N9
\ctrlULA[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ctrlULA[2]~reg0_q\,
	devoe => ww_devoe,
	o => \ctrlULA[2]~output_o\);

-- Location: IOOBUF_X38_Y34_N2
\regDataLe~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regDataLe~reg0_q\,
	devoe => ww_devoe,
	o => \regDataLe~output_o\);

-- Location: IOOBUF_X53_Y22_N2
\habRegData~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \habRegData~reg0_q\,
	devoe => ww_devoe,
	o => \habRegData~output_o\);

-- Location: IOOBUF_X53_Y24_N23
\ctrlRegData[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ctrlRegData[0]~reg0_q\,
	devoe => ww_devoe,
	o => \ctrlRegData[0]~output_o\);

-- Location: IOOBUF_X53_Y25_N2
\ctrlRegData[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ctrlRegData[1]~reg0_q\,
	devoe => ww_devoe,
	o => \ctrlRegData[1]~output_o\);

-- Location: IOOBUF_X53_Y26_N23
\ctrlRegData[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ctrlRegData[2]~reg0_q\,
	devoe => ww_devoe,
	o => \ctrlRegData[2]~output_o\);

-- Location: IOOBUF_X43_Y34_N23
\ctrlDemuxData~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ctrlDemuxData~reg0_q\,
	devoe => ww_devoe,
	o => \ctrlDemuxData~output_o\);

-- Location: IOIBUF_X0_Y16_N1
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

-- Location: IOIBUF_X49_Y34_N1
\opcode[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(3),
	o => \opcode[3]~input_o\);

-- Location: LCCOMB_X49_Y30_N24
\opcodeFetch[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \opcodeFetch[3]~feeder_combout\ = \opcode[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \opcode[3]~input_o\,
	combout => \opcodeFetch[3]~feeder_combout\);

-- Location: IOIBUF_X0_Y16_N8
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X46_Y30_N18
\opcodeFetch[15]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \opcodeFetch[15]~0_combout\ = (\reset~input_o\ & \Estado.Fetch~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \Estado.Fetch~q\,
	combout => \opcodeFetch[15]~0_combout\);

-- Location: FF_X49_Y30_N25
\opcodeFetch[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \opcodeFetch[3]~feeder_combout\,
	ena => \opcodeFetch[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => opcodeFetch(3));

-- Location: IOIBUF_X53_Y17_N22
\opcode[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(5),
	o => \opcode[5]~input_o\);

-- Location: LCCOMB_X49_Y30_N12
\opcodeFetch[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \opcodeFetch[5]~feeder_combout\ = \opcode[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \opcode[5]~input_o\,
	combout => \opcodeFetch[5]~feeder_combout\);

-- Location: FF_X49_Y30_N13
\opcodeFetch[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \opcodeFetch[5]~feeder_combout\,
	ena => \opcodeFetch[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => opcodeFetch(5));

-- Location: IOIBUF_X49_Y34_N8
\opcode[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(4),
	o => \opcode[4]~input_o\);

-- Location: FF_X49_Y30_N31
\opcodeFetch[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \opcode[4]~input_o\,
	sload => VCC,
	ena => \opcodeFetch[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => opcodeFetch(4));

-- Location: IOIBUF_X53_Y30_N1
\sitEnd~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sitEnd,
	o => \sitEnd~input_o\);

-- Location: IOIBUF_X53_Y17_N15
\opcode[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(6),
	o => \opcode[6]~input_o\);

-- Location: LCCOMB_X49_Y30_N22
\opcodeFetch[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \opcodeFetch[6]~feeder_combout\ = \opcode[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \opcode[6]~input_o\,
	combout => \opcodeFetch[6]~feeder_combout\);

-- Location: FF_X49_Y30_N23
\opcodeFetch[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \opcodeFetch[6]~feeder_combout\,
	ena => \opcodeFetch[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => opcodeFetch(6));

-- Location: IOIBUF_X51_Y34_N22
\opcode[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(7),
	o => \opcode[7]~input_o\);

-- Location: FF_X47_Y30_N23
\opcodeFetch[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \opcode[7]~input_o\,
	sload => VCC,
	ena => \opcodeFetch[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => opcodeFetch(7));

-- Location: LCCOMB_X49_Y30_N28
\Selector14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (\sitEnd~input_o\ & (\Estado.OpRegImed16~q\ & (opcodeFetch(6) & opcodeFetch(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sitEnd~input_o\,
	datab => \Estado.OpRegImed16~q\,
	datac => opcodeFetch(6),
	datad => opcodeFetch(7),
	combout => \Selector14~0_combout\);

-- Location: LCCOMB_X48_Y30_N10
\Selector18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (!opcodeFetch(3) & (!opcodeFetch(5) & (opcodeFetch(4) & \Selector14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcodeFetch(3),
	datab => opcodeFetch(5),
	datac => opcodeFetch(4),
	datad => \Selector14~0_combout\,
	combout => \Selector18~0_combout\);

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

-- Location: FF_X48_Y30_N11
\Estado.Adc_regImed_16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \Selector18~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Estado.Adc_regImed_16~q\);

-- Location: LCCOMB_X48_Y30_N4
\Selector20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (!opcodeFetch(3) & (opcodeFetch(5) & (!opcodeFetch(4) & \Selector14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcodeFetch(3),
	datab => opcodeFetch(5),
	datac => opcodeFetch(4),
	datad => \Selector14~0_combout\,
	combout => \Selector20~0_combout\);

-- Location: FF_X48_Y30_N5
\Estado.And_regImed_16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \Selector20~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Estado.And_regImed_16~q\);

-- Location: LCCOMB_X48_Y30_N26
\Selector15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (opcodeFetch(3) & (opcodeFetch(5) & (!opcodeFetch(4) & \Selector14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcodeFetch(3),
	datab => opcodeFetch(5),
	datac => opcodeFetch(4),
	datad => \Selector14~0_combout\,
	combout => \Selector15~0_combout\);

-- Location: FF_X48_Y30_N27
\Estado.Sub_regImed_16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \Selector15~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Estado.Sub_regImed_16~q\);

-- Location: LCCOMB_X49_Y30_N4
\Selector17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (!opcodeFetch(5) & (opcodeFetch(3) & (!opcodeFetch(4) & \Selector14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcodeFetch(5),
	datab => opcodeFetch(3),
	datac => opcodeFetch(4),
	datad => \Selector14~0_combout\,
	combout => \Selector17~0_combout\);

-- Location: FF_X49_Y30_N5
\Estado.Or_regImed_16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \Selector17~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Estado.Or_regImed_16~q\);

-- Location: LCCOMB_X49_Y30_N0
\Selector14~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector14~1_combout\ = (!opcodeFetch(4) & (\Selector14~0_combout\ & (!opcodeFetch(3) & !opcodeFetch(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcodeFetch(4),
	datab => \Selector14~0_combout\,
	datac => opcodeFetch(3),
	datad => opcodeFetch(5),
	combout => \Selector14~1_combout\);

-- Location: FF_X49_Y30_N1
\Estado.Add_regImed_16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \Selector14~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Estado.Add_regImed_16~q\);

-- Location: LCCOMB_X49_Y30_N14
\Selector19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (opcodeFetch(4) & (\Selector14~0_combout\ & (opcodeFetch(3) & !opcodeFetch(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcodeFetch(4),
	datab => \Selector14~0_combout\,
	datac => opcodeFetch(3),
	datad => opcodeFetch(5),
	combout => \Selector19~0_combout\);

-- Location: FF_X49_Y30_N15
\Estado.Sbb_regImed_16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \Selector19~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Estado.Sbb_regImed_16~q\);

-- Location: LCCOMB_X49_Y30_N16
\Selector21~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = (opcodeFetch(5) & (!opcodeFetch(3) & (opcodeFetch(4) & \Selector14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcodeFetch(5),
	datab => opcodeFetch(3),
	datac => opcodeFetch(4),
	datad => \Selector14~0_combout\,
	combout => \Selector21~0_combout\);

-- Location: FF_X49_Y30_N17
\Estado.Xor_regImed_16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \Selector21~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Estado.Xor_regImed_16~q\);

-- Location: LCCOMB_X49_Y30_N6
\Selector23~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = (\Estado.Or_regImed_16~q\) # ((\Estado.Add_regImed_16~q\) # ((\Estado.Sbb_regImed_16~q\) # (\Estado.Xor_regImed_16~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Estado.Or_regImed_16~q\,
	datab => \Estado.Add_regImed_16~q\,
	datac => \Estado.Sbb_regImed_16~q\,
	datad => \Estado.Xor_regImed_16~q\,
	combout => \Selector23~0_combout\);

-- Location: LCCOMB_X48_Y30_N6
\Selector23~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector23~1_combout\ = (\Estado.Adc_regImed_16~q\) # ((\Estado.And_regImed_16~q\) # ((\Estado.Sub_regImed_16~q\) # (\Selector23~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Estado.Adc_regImed_16~q\,
	datab => \Estado.And_regImed_16~q\,
	datac => \Estado.Sub_regImed_16~q\,
	datad => \Selector23~0_combout\,
	combout => \Selector23~1_combout\);

-- Location: FF_X48_Y30_N13
\Estado.ResultRegImed\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \Selector23~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Estado.ResultRegImed~q\);

-- Location: LCCOMB_X46_Y30_N6
\Estado.FimInstrucao~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Estado.FimInstrucao~feeder_combout\ = \Estado.ResultRegImed~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Estado.ResultRegImed~q\,
	combout => \Estado.FimInstrucao~feeder_combout\);

-- Location: FF_X46_Y30_N7
\Estado.FimInstrucao\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \Estado.FimInstrucao~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Estado.FimInstrucao~q\);

-- Location: LCCOMB_X48_Y30_N20
\Selector11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (!\Estado.FimInstrucao~q\ & ((\Estado.Busca~q\) # (\sitEnd~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Estado.FimInstrucao~q\,
	datac => \Estado.Busca~q\,
	datad => \sitEnd~input_o\,
	combout => \Selector11~0_combout\);

-- Location: FF_X48_Y30_N21
\Estado.Busca\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \Selector11~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Estado.Busca~q\);

-- Location: LCCOMB_X46_Y30_N10
\Selector12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (!\Estado.Busca~q\ & \sitEnd~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Estado.Busca~q\,
	datad => \sitEnd~input_o\,
	combout => \Selector12~0_combout\);

-- Location: FF_X46_Y30_N11
\Estado.Fetch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \Selector12~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Estado.Fetch~q\);

-- Location: IOIBUF_X45_Y34_N8
\opcode[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(10),
	o => \opcode[10]~input_o\);

-- Location: LCCOMB_X47_Y30_N6
\opcodeFetch[10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \opcodeFetch[10]~feeder_combout\ = \opcode[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \opcode[10]~input_o\,
	combout => \opcodeFetch[10]~feeder_combout\);

-- Location: FF_X47_Y30_N7
\opcodeFetch[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \opcodeFetch[10]~feeder_combout\,
	ena => \opcodeFetch[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => opcodeFetch(10));

-- Location: IOIBUF_X43_Y34_N15
\opcode[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(9),
	o => \opcode[9]~input_o\);

-- Location: FF_X47_Y30_N17
\opcodeFetch[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \opcode[9]~input_o\,
	sload => VCC,
	ena => \opcodeFetch[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => opcodeFetch(9));

-- Location: IOIBUF_X51_Y34_N8
\opcode[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(11),
	o => \opcode[11]~input_o\);

-- Location: FF_X47_Y30_N5
\opcodeFetch[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \opcode[11]~input_o\,
	sload => VCC,
	ena => \opcodeFetch[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => opcodeFetch(11));

-- Location: IOIBUF_X38_Y34_N15
\opcode[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(8),
	o => \opcode[8]~input_o\);

-- Location: LCCOMB_X47_Y30_N10
\opcodeFetch[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \opcodeFetch[8]~feeder_combout\ = \opcode[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \opcode[8]~input_o\,
	combout => \opcodeFetch[8]~feeder_combout\);

-- Location: FF_X47_Y30_N11
\opcodeFetch[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \opcodeFetch[8]~feeder_combout\,
	ena => \opcodeFetch[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => opcodeFetch(8));

-- Location: LCCOMB_X47_Y30_N4
\Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (!opcodeFetch(10) & (!opcodeFetch(9) & (!opcodeFetch(11) & opcodeFetch(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcodeFetch(10),
	datab => opcodeFetch(9),
	datac => opcodeFetch(11),
	datad => opcodeFetch(8),
	combout => \Mux0~1_combout\);

-- Location: IOIBUF_X40_Y34_N1
\opcode[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(12),
	o => \opcode[12]~input_o\);

-- Location: FF_X47_Y30_N13
\opcodeFetch[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \opcode[12]~input_o\,
	sload => VCC,
	ena => \opcodeFetch[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => opcodeFetch(12));

-- Location: IOIBUF_X51_Y34_N15
\opcode[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(13),
	o => \opcode[13]~input_o\);

-- Location: FF_X47_Y30_N3
\opcodeFetch[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \opcode[13]~input_o\,
	sload => VCC,
	ena => \opcodeFetch[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => opcodeFetch(13));

-- Location: IOIBUF_X47_Y34_N22
\opcode[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(14),
	o => \opcode[14]~input_o\);

-- Location: FF_X47_Y30_N25
\opcodeFetch[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \opcode[14]~input_o\,
	sload => VCC,
	ena => \opcodeFetch[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => opcodeFetch(14));

-- Location: IOIBUF_X53_Y30_N8
\opcode[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(15),
	o => \opcode[15]~input_o\);

-- Location: LCCOMB_X47_Y30_N18
\opcodeFetch[15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \opcodeFetch[15]~feeder_combout\ = \opcode[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \opcode[15]~input_o\,
	combout => \opcodeFetch[15]~feeder_combout\);

-- Location: FF_X47_Y30_N19
\opcodeFetch[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \opcodeFetch[15]~feeder_combout\,
	ena => \opcodeFetch[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => opcodeFetch(15));

-- Location: LCCOMB_X47_Y30_N24
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!opcodeFetch(12) & (!opcodeFetch(13) & (!opcodeFetch(14) & opcodeFetch(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcodeFetch(12),
	datab => opcodeFetch(13),
	datac => opcodeFetch(14),
	datad => opcodeFetch(15),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X47_Y30_N28
\Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\Mux0~1_combout\ & \Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux0~1_combout\,
	datad => \Mux0~0_combout\,
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X48_Y30_N22
\Selector13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (\Estado.Fetch~q\ & ((\Mux0~2_combout\) # ((!\sitEnd~input_o\ & \Estado.OpRegImed16~q\)))) # (!\Estado.Fetch~q\ & (!\sitEnd~input_o\ & (\Estado.OpRegImed16~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Estado.Fetch~q\,
	datab => \sitEnd~input_o\,
	datac => \Estado.OpRegImed16~q\,
	datad => \Mux0~2_combout\,
	combout => \Selector13~0_combout\);

-- Location: FF_X48_Y30_N23
\Estado.OpRegImed16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \Selector13~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Estado.OpRegImed16~q\);

-- Location: LCCOMB_X46_Y30_N12
\Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\leEnd~reg0_q\ & ((\Estado.FimInstrucao~q\) # (\Estado.ResultRegImed~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Estado.FimInstrucao~q\,
	datac => \Estado.ResultRegImed~q\,
	datad => \leEnd~reg0_q\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X46_Y30_N24
\Selector0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (\Estado.OpRegImed16~q\) # ((\Selector0~0_combout\) # (!\Estado.Busca~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Estado.OpRegImed16~q\,
	datac => \Estado.Busca~q\,
	datad => \Selector0~0_combout\,
	combout => \Selector0~1_combout\);

-- Location: FF_X46_Y30_N25
\leEnd~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector0~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leEnd~reg0_q\);

-- Location: LCCOMB_X49_Y30_N20
\Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (opcodeFetch(6) & (((!opcodeFetch(5)) # (!opcodeFetch(3))) # (!opcodeFetch(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcodeFetch(4),
	datab => opcodeFetch(3),
	datac => opcodeFetch(6),
	datad => opcodeFetch(5),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X49_Y30_N18
\Selector16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (\sitEnd~input_o\ & (\Estado.OpRegImed16~q\ & ((!\Mux4~0_combout\) # (!opcodeFetch(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sitEnd~input_o\,
	datab => \Estado.OpRegImed16~q\,
	datac => opcodeFetch(7),
	datad => \Mux4~0_combout\,
	combout => \Selector16~0_combout\);

-- Location: LCCOMB_X48_Y30_N2
\Selector16~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector16~1_combout\ = (\Estado.Erro~q\) # ((\Selector16~0_combout\) # ((\Estado.Fetch~q\ & !\Mux0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Estado.Fetch~q\,
	datab => \Mux0~2_combout\,
	datac => \Estado.Erro~q\,
	datad => \Selector16~0_combout\,
	combout => \Selector16~1_combout\);

-- Location: FF_X48_Y30_N3
\Estado.Erro\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \Selector16~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Estado.Erro~q\);

-- Location: LCCOMB_X47_Y30_N0
\Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\Estado.OpRegImed16~q\) # ((!\Estado.FimInstrucao~q\ & (\habULA~reg0_q\ & !\Estado.Erro~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Estado.OpRegImed16~q\,
	datab => \Estado.FimInstrucao~q\,
	datac => \habULA~reg0_q\,
	datad => \Estado.Erro~q\,
	combout => \Selector2~0_combout\);

-- Location: FF_X47_Y30_N1
\habULA~reg0\ : dffeas
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
	q => \habULA~reg0_q\);

-- Location: LCCOMB_X49_Y30_N26
\Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (!\Estado.Xor_regImed_16~q\ & (!\Estado.Or_regImed_16~q\ & !\Estado.Sbb_regImed_16~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Estado.Xor_regImed_16~q\,
	datac => \Estado.Or_regImed_16~q\,
	datad => \Estado.Sbb_regImed_16~q\,
	combout => \Selector5~0_combout\);

-- Location: LCCOMB_X48_Y30_N16
WideOr4 : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr4~combout\ = (\Estado.OpRegImed16~q\) # (((\Estado.ResultRegImed~q\) # (\Estado.Fetch~q\)) # (!\Estado.Busca~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Estado.OpRegImed16~q\,
	datab => \Estado.Busca~q\,
	datac => \Estado.ResultRegImed~q\,
	datad => \Estado.Fetch~q\,
	combout => \WideOr4~combout\);

-- Location: LCCOMB_X47_Y30_N30
\Selector5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector5~1_combout\ = ((\ctrlULA[0]~reg0_q\ & \WideOr4~combout\)) # (!\Selector5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector5~0_combout\,
	datac => \ctrlULA[0]~reg0_q\,
	datad => \WideOr4~combout\,
	combout => \Selector5~1_combout\);

-- Location: FF_X47_Y30_N31
\ctrlULA[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector5~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrlULA[0]~reg0_q\);

-- Location: LCCOMB_X48_Y30_N12
\Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\Estado.Adc_regImed_16~q\) # ((\Estado.And_regImed_16~q\) # (\Estado.Sbb_regImed_16~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Estado.Adc_regImed_16~q\,
	datab => \Estado.And_regImed_16~q\,
	datad => \Estado.Sbb_regImed_16~q\,
	combout => \Selector4~0_combout\);

-- Location: LCCOMB_X48_Y30_N8
\Selector4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~1_combout\ = (\Selector4~0_combout\) # ((\WideOr4~combout\ & \ctrlULA[1]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WideOr4~combout\,
	datac => \ctrlULA[1]~reg0_q\,
	datad => \Selector4~0_combout\,
	combout => \Selector4~1_combout\);

-- Location: FF_X48_Y30_N9
\ctrlULA[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector4~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrlULA[1]~reg0_q\);

-- Location: LCCOMB_X48_Y30_N24
\Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\Estado.And_regImed_16~q\) # ((\Estado.Sub_regImed_16~q\) # (\Estado.Xor_regImed_16~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Estado.And_regImed_16~q\,
	datac => \Estado.Sub_regImed_16~q\,
	datad => \Estado.Xor_regImed_16~q\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X48_Y30_N14
\Selector3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = (\Selector3~0_combout\) # ((\WideOr4~combout\ & \ctrlULA[2]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WideOr4~combout\,
	datac => \ctrlULA[2]~reg0_q\,
	datad => \Selector3~0_combout\,
	combout => \Selector3~1_combout\);

-- Location: FF_X48_Y30_N15
\ctrlULA[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector3~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrlULA[2]~reg0_q\);

-- Location: LCCOMB_X46_Y30_N16
\Selector7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\Estado.FimInstrucao~q\) # ((\Estado.Fetch~q\) # ((\Estado.OpRegImed16~q\) # (!\Estado.Busca~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Estado.FimInstrucao~q\,
	datab => \Estado.Fetch~q\,
	datac => \Estado.Busca~q\,
	datad => \Estado.OpRegImed16~q\,
	combout => \Selector7~0_combout\);

-- Location: LCCOMB_X47_Y30_N8
\Selector7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector7~1_combout\ = (\Selector23~1_combout\) # ((\Selector7~0_combout\ & \regDataLe~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector7~0_combout\,
	datac => \regDataLe~reg0_q\,
	datad => \Selector23~1_combout\,
	combout => \Selector7~1_combout\);

-- Location: FF_X47_Y30_N9
\regDataLe~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector7~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regDataLe~reg0_q\);

-- Location: LCCOMB_X48_Y30_N0
\Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\Selector23~1_combout\) # ((\WideOr4~combout\ & \habRegData~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WideOr4~combout\,
	datac => \habRegData~reg0_q\,
	datad => \Selector23~1_combout\,
	combout => \Selector6~0_combout\);

-- Location: FF_X48_Y30_N1
\habRegData~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector6~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \habRegData~reg0_q\);

-- Location: IOIBUF_X34_Y34_N15
\opcode[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(0),
	o => \opcode[0]~input_o\);

-- Location: FF_X47_Y30_N29
\opcodeFetch[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \opcode[0]~input_o\,
	sload => VCC,
	ena => \opcodeFetch[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => opcodeFetch(0));

-- Location: LCCOMB_X48_Y30_N30
\Selector10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (opcodeFetch(0) & ((\Selector23~1_combout\) # ((\WideOr4~combout\ & \ctrlRegData[0]~reg0_q\)))) # (!opcodeFetch(0) & (\WideOr4~combout\ & (\ctrlRegData[0]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcodeFetch(0),
	datab => \WideOr4~combout\,
	datac => \ctrlRegData[0]~reg0_q\,
	datad => \Selector23~1_combout\,
	combout => \Selector10~0_combout\);

-- Location: FF_X48_Y30_N31
\ctrlRegData[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector10~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrlRegData[0]~reg0_q\);

-- Location: IOIBUF_X45_Y34_N15
\opcode[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(1),
	o => \opcode[1]~input_o\);

-- Location: LCCOMB_X47_Y30_N14
\opcodeFetch[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \opcodeFetch[1]~feeder_combout\ = \opcode[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \opcode[1]~input_o\,
	combout => \opcodeFetch[1]~feeder_combout\);

-- Location: FF_X47_Y30_N15
\opcodeFetch[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \opcodeFetch[1]~feeder_combout\,
	ena => \opcodeFetch[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => opcodeFetch(1));

-- Location: LCCOMB_X48_Y30_N28
\Selector9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (opcodeFetch(1) & ((\Selector23~1_combout\) # ((\WideOr4~combout\ & \ctrlRegData[1]~reg0_q\)))) # (!opcodeFetch(1) & (\WideOr4~combout\ & (\ctrlRegData[1]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcodeFetch(1),
	datab => \WideOr4~combout\,
	datac => \ctrlRegData[1]~reg0_q\,
	datad => \Selector23~1_combout\,
	combout => \Selector9~0_combout\);

-- Location: FF_X48_Y30_N29
\ctrlRegData[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector9~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrlRegData[1]~reg0_q\);

-- Location: IOIBUF_X51_Y34_N1
\opcode[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(2),
	o => \opcode[2]~input_o\);

-- Location: FF_X47_Y30_N21
\opcodeFetch[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \opcode[2]~input_o\,
	sload => VCC,
	ena => \opcodeFetch[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => opcodeFetch(2));

-- Location: LCCOMB_X48_Y30_N18
\Selector8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\WideOr4~combout\ & ((\ctrlRegData[2]~reg0_q\) # ((opcodeFetch(2) & \Selector23~1_combout\)))) # (!\WideOr4~combout\ & (opcodeFetch(2) & ((\Selector23~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr4~combout\,
	datab => opcodeFetch(2),
	datac => \ctrlRegData[2]~reg0_q\,
	datad => \Selector23~1_combout\,
	combout => \Selector8~0_combout\);

-- Location: FF_X48_Y30_N19
\ctrlRegData[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector8~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrlRegData[2]~reg0_q\);

-- Location: LCCOMB_X47_Y30_N26
\Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = ((!\Estado.Erro~q\ & (!\Estado.OpRegImed16~q\ & \ctrlDemuxData~reg0_q\))) # (!\Estado.Busca~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Estado.Erro~q\,
	datab => \Estado.OpRegImed16~q\,
	datac => \ctrlDemuxData~reg0_q\,
	datad => \Estado.Busca~q\,
	combout => \Selector1~0_combout\);

-- Location: FF_X47_Y30_N27
\ctrlDemuxData~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector1~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrlDemuxData~reg0_q\);

ww_leEnd <= \leEnd~output_o\;

ww_habULA <= \habULA~output_o\;

ww_ctrlULA(0) <= \ctrlULA[0]~output_o\;

ww_ctrlULA(1) <= \ctrlULA[1]~output_o\;

ww_ctrlULA(2) <= \ctrlULA[2]~output_o\;

ww_regDataLe <= \regDataLe~output_o\;

ww_habRegData <= \habRegData~output_o\;

ww_ctrlRegData(0) <= \ctrlRegData[0]~output_o\;

ww_ctrlRegData(1) <= \ctrlRegData[1]~output_o\;

ww_ctrlRegData(2) <= \ctrlRegData[2]~output_o\;

ww_ctrlDemuxData <= \ctrlDemuxData~output_o\;
END structure;


