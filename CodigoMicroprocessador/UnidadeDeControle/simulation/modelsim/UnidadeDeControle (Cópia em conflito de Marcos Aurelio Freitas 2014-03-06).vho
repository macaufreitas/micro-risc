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

-- DATE "03/06/2014 21:05:28"

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
	sitFila : IN std_logic;
	leFila : BUFFER std_logic;
	habULA : BUFFER std_logic;
	ctrlULA : BUFFER std_logic_vector(2 DOWNTO 0);
	regDataLe : BUFFER std_logic;
	habRegData : BUFFER std_logic;
	ctrlRegData : BUFFER std_logic_vector(2 DOWNTO 0);
	ctrlDemuxData : BUFFER std_logic
	);
END UnidadeDeControle;

-- Design Ports Information
-- leFila	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- habULA	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrlULA[0]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrlULA[1]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrlULA[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regDataLe	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- habRegData	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrlRegData[0]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrlRegData[1]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrlRegData[2]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrlDemuxData	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sitFila	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[0]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[1]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[2]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[15]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[14]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[13]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[12]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[8]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[11]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[10]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[9]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[7]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[6]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[4]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[5]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[3]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_sitFila : std_logic;
SIGNAL ww_leFila : std_logic;
SIGNAL ww_habULA : std_logic;
SIGNAL ww_ctrlULA : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_regDataLe : std_logic;
SIGNAL ww_habRegData : std_logic;
SIGNAL ww_ctrlRegData : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_ctrlDemuxData : std_logic;
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \leFila~output_o\ : std_logic;
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
SIGNAL \opcode[5]~input_o\ : std_logic;
SIGNAL \opcodeFetch[5]~feeder_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \sitFila~input_o\ : std_logic;
SIGNAL \Estado~16_combout\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \Estado.Fetch~q\ : std_logic;
SIGNAL \opcodeFetch[15]~0_combout\ : std_logic;
SIGNAL \opcode[3]~input_o\ : std_logic;
SIGNAL \opcode[6]~input_o\ : std_logic;
SIGNAL \opcodeFetch[6]~feeder_combout\ : std_logic;
SIGNAL \opcode[9]~input_o\ : std_logic;
SIGNAL \opcodeFetch[9]~feeder_combout\ : std_logic;
SIGNAL \opcode[8]~input_o\ : std_logic;
SIGNAL \opcode[11]~input_o\ : std_logic;
SIGNAL \opcode[10]~input_o\ : std_logic;
SIGNAL \opcodeFetch[10]~feeder_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \opcode[12]~input_o\ : std_logic;
SIGNAL \opcodeFetch[12]~feeder_combout\ : std_logic;
SIGNAL \opcode[13]~input_o\ : std_logic;
SIGNAL \opcodeFetch[13]~feeder_combout\ : std_logic;
SIGNAL \opcode[14]~input_o\ : std_logic;
SIGNAL \opcode[15]~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Estado~12_combout\ : std_logic;
SIGNAL \Estado.OpRegImed16~q\ : std_logic;
SIGNAL \opcode[4]~input_o\ : std_logic;
SIGNAL \opcode[7]~input_o\ : std_logic;
SIGNAL \opcodeFetch[7]~feeder_combout\ : std_logic;
SIGNAL \Estado~13_combout\ : std_logic;
SIGNAL \Estado~14_combout\ : std_logic;
SIGNAL \Estado.Add_regImed_16~q\ : std_logic;
SIGNAL \Estado~15_combout\ : std_logic;
SIGNAL \Estado.Sub_regImed_16~q\ : std_logic;
SIGNAL \habRegData~0_combout\ : std_logic;
SIGNAL \Estado.ResultRegImed~q\ : std_logic;
SIGNAL \Estado.FimInstrucao~q\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \Estado.Busca~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \leFila~reg0_q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \habULA~reg0_q\ : std_logic;
SIGNAL \WideOr3~combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \ctrlULA[2]~reg0_q\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Selector5~1_combout\ : std_logic;
SIGNAL \regDataLe~reg0_q\ : std_logic;
SIGNAL \Selector4~2_combout\ : std_logic;
SIGNAL \habRegData~reg0_q\ : std_logic;
SIGNAL \opcode[0]~input_o\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \ctrlRegData[0]~reg0_q\ : std_logic;
SIGNAL \opcode[1]~input_o\ : std_logic;
SIGNAL \opcodeFetch[1]~feeder_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \ctrlRegData[1]~reg0_q\ : std_logic;
SIGNAL \opcode[2]~input_o\ : std_logic;
SIGNAL \opcodeFetch[2]~feeder_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \ctrlRegData[2]~reg0_q\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \Selector10~1_combout\ : std_logic;
SIGNAL \Estado.Erro~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \ctrlDemuxData~reg0_q\ : std_logic;
SIGNAL opcodeFetch : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_clock~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clock <= clock;
ww_reset <= reset;
ww_opcode <= opcode;
ww_sitFila <= sitFila;
leFila <= ww_leFila;
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

-- Location: IOOBUF_X49_Y34_N9
\leFila~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \leFila~reg0_q\,
	devoe => ww_devoe,
	o => \leFila~output_o\);

-- Location: IOOBUF_X51_Y34_N23
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

-- Location: IOOBUF_X16_Y34_N9
\ctrlULA[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ctrlULA[0]~output_o\);

-- Location: IOOBUF_X45_Y34_N2
\ctrlULA[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ctrlULA[1]~output_o\);

-- Location: IOOBUF_X53_Y30_N2
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

-- Location: IOOBUF_X49_Y34_N2
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

-- Location: IOOBUF_X53_Y20_N23
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

-- Location: IOOBUF_X53_Y16_N9
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

-- Location: IOOBUF_X51_Y34_N9
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

-- Location: IOOBUF_X47_Y34_N23
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

-- Location: IOOBUF_X51_Y34_N16
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

-- Location: LCCOMB_X52_Y23_N24
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

-- Location: IOIBUF_X53_Y22_N1
\sitFila~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sitFila,
	o => \sitFila~input_o\);

-- Location: LCCOMB_X52_Y23_N20
\Estado~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Estado~16_combout\ = (\sitFila~input_o\ & !\Estado.Busca~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sitFila~input_o\,
	datac => \Estado.Busca~q\,
	combout => \Estado~16_combout\);

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

-- Location: FF_X52_Y23_N21
\Estado.Fetch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \Estado~16_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Estado.Fetch~q\);

-- Location: LCCOMB_X52_Y23_N18
\opcodeFetch[15]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \opcodeFetch[15]~0_combout\ = (\reset~input_o\ & \Estado.Fetch~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \Estado.Fetch~q\,
	combout => \opcodeFetch[15]~0_combout\);

-- Location: FF_X52_Y23_N25
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

-- Location: IOIBUF_X53_Y17_N15
\opcode[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(3),
	o => \opcode[3]~input_o\);

-- Location: FF_X52_Y23_N27
\opcodeFetch[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \opcode[3]~input_o\,
	sload => VCC,
	ena => \opcodeFetch[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => opcodeFetch(3));

-- Location: IOIBUF_X53_Y19_N8
\opcode[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(6),
	o => \opcode[6]~input_o\);

-- Location: LCCOMB_X52_Y23_N12
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

-- Location: FF_X52_Y23_N13
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

-- Location: IOIBUF_X53_Y19_N1
\opcode[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(9),
	o => \opcode[9]~input_o\);

-- Location: LCCOMB_X52_Y23_N22
\opcodeFetch[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \opcodeFetch[9]~feeder_combout\ = \opcode[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \opcode[9]~input_o\,
	combout => \opcodeFetch[9]~feeder_combout\);

-- Location: FF_X52_Y23_N23
\opcodeFetch[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \opcodeFetch[9]~feeder_combout\,
	ena => \opcodeFetch[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => opcodeFetch(9));

-- Location: IOIBUF_X53_Y14_N8
\opcode[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(8),
	o => \opcode[8]~input_o\);

-- Location: FF_X52_Y23_N5
\opcodeFetch[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \opcode[8]~input_o\,
	sload => VCC,
	ena => \opcodeFetch[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => opcodeFetch(8));

-- Location: IOIBUF_X53_Y21_N22
\opcode[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(11),
	o => \opcode[11]~input_o\);

-- Location: FF_X52_Y23_N11
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

-- Location: IOIBUF_X53_Y14_N1
\opcode[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(10),
	o => \opcode[10]~input_o\);

-- Location: LCCOMB_X52_Y23_N28
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

-- Location: FF_X52_Y23_N29
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

-- Location: LCCOMB_X52_Y23_N10
\Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (!opcodeFetch(9) & (opcodeFetch(8) & (!opcodeFetch(11) & !opcodeFetch(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcodeFetch(9),
	datab => opcodeFetch(8),
	datac => opcodeFetch(11),
	datad => opcodeFetch(10),
	combout => \Mux0~1_combout\);

-- Location: IOIBUF_X53_Y26_N22
\opcode[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(12),
	o => \opcode[12]~input_o\);

-- Location: LCCOMB_X52_Y23_N30
\opcodeFetch[12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \opcodeFetch[12]~feeder_combout\ = \opcode[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \opcode[12]~input_o\,
	combout => \opcodeFetch[12]~feeder_combout\);

-- Location: FF_X52_Y23_N31
\opcodeFetch[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \opcodeFetch[12]~feeder_combout\,
	ena => \opcodeFetch[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => opcodeFetch(12));

-- Location: IOIBUF_X53_Y22_N8
\opcode[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(13),
	o => \opcode[13]~input_o\);

-- Location: LCCOMB_X52_Y23_N16
\opcodeFetch[13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \opcodeFetch[13]~feeder_combout\ = \opcode[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \opcode[13]~input_o\,
	combout => \opcodeFetch[13]~feeder_combout\);

-- Location: FF_X52_Y23_N17
\opcodeFetch[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \opcodeFetch[13]~feeder_combout\,
	ena => \opcodeFetch[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => opcodeFetch(13));

-- Location: IOIBUF_X53_Y15_N8
\opcode[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(14),
	o => \opcode[14]~input_o\);

-- Location: FF_X52_Y23_N7
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

-- Location: IOIBUF_X53_Y24_N22
\opcode[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(15),
	o => \opcode[15]~input_o\);

-- Location: FF_X52_Y23_N1
\opcodeFetch[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \opcode[15]~input_o\,
	sload => VCC,
	ena => \opcodeFetch[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => opcodeFetch(15));

-- Location: LCCOMB_X52_Y23_N6
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

-- Location: LCCOMB_X51_Y23_N28
\Estado~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Estado~12_combout\ = (\Estado.Fetch~q\ & (\Mux0~1_combout\ & \Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Estado.Fetch~q\,
	datac => \Mux0~1_combout\,
	datad => \Mux0~0_combout\,
	combout => \Estado~12_combout\);

-- Location: FF_X51_Y23_N29
\Estado.OpRegImed16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \Estado~12_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Estado.OpRegImed16~q\);

-- Location: IOIBUF_X53_Y30_N8
\opcode[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(4),
	o => \opcode[4]~input_o\);

-- Location: FF_X52_Y23_N15
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

-- Location: IOIBUF_X53_Y13_N8
\opcode[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(7),
	o => \opcode[7]~input_o\);

-- Location: LCCOMB_X51_Y23_N18
\opcodeFetch[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \opcodeFetch[7]~feeder_combout\ = \opcode[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \opcode[7]~input_o\,
	combout => \opcodeFetch[7]~feeder_combout\);

-- Location: FF_X51_Y23_N19
\opcodeFetch[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \opcodeFetch[7]~feeder_combout\,
	ena => \opcodeFetch[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => opcodeFetch(7));

-- Location: LCCOMB_X52_Y23_N14
\Estado~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Estado~13_combout\ = (opcodeFetch(6) & (\Estado.OpRegImed16~q\ & (!opcodeFetch(4) & opcodeFetch(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcodeFetch(6),
	datab => \Estado.OpRegImed16~q\,
	datac => opcodeFetch(4),
	datad => opcodeFetch(7),
	combout => \Estado~13_combout\);

-- Location: LCCOMB_X50_Y23_N26
\Estado~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Estado~14_combout\ = (!opcodeFetch(5) & (!opcodeFetch(3) & \Estado~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => opcodeFetch(5),
	datac => opcodeFetch(3),
	datad => \Estado~13_combout\,
	combout => \Estado~14_combout\);

-- Location: FF_X50_Y23_N27
\Estado.Add_regImed_16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \Estado~14_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Estado.Add_regImed_16~q\);

-- Location: LCCOMB_X51_Y23_N26
\Estado~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Estado~15_combout\ = (opcodeFetch(3) & (\Estado~13_combout\ & opcodeFetch(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcodeFetch(3),
	datac => \Estado~13_combout\,
	datad => opcodeFetch(5),
	combout => \Estado~15_combout\);

-- Location: FF_X51_Y23_N27
\Estado.Sub_regImed_16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \Estado~15_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Estado.Sub_regImed_16~q\);

-- Location: LCCOMB_X50_Y23_N12
\habRegData~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \habRegData~0_combout\ = (\Estado.Add_regImed_16~q\) # (\Estado.Sub_regImed_16~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Estado.Add_regImed_16~q\,
	datad => \Estado.Sub_regImed_16~q\,
	combout => \habRegData~0_combout\);

-- Location: FF_X50_Y23_N3
\Estado.ResultRegImed\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \habRegData~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Estado.ResultRegImed~q\);

-- Location: FF_X50_Y23_N21
\Estado.FimInstrucao\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	asdata => \Estado.ResultRegImed~q\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Estado.FimInstrucao~q\);

-- Location: LCCOMB_X50_Y23_N6
\Selector9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (!\Estado.FimInstrucao~q\ & ((\Estado.Busca~q\) # (\sitFila~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Estado.FimInstrucao~q\,
	datac => \Estado.Busca~q\,
	datad => \sitFila~input_o\,
	combout => \Selector9~0_combout\);

-- Location: FF_X50_Y23_N7
\Estado.Busca\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \Selector9~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Estado.Busca~q\);

-- Location: LCCOMB_X50_Y23_N20
\Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\Estado.Add_regImed_16~q\) # ((\Estado.ResultRegImed~q\) # ((\Estado.FimInstrucao~q\) # (\Estado.Sub_regImed_16~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Estado.Add_regImed_16~q\,
	datab => \Estado.ResultRegImed~q\,
	datac => \Estado.FimInstrucao~q\,
	datad => \Estado.Sub_regImed_16~q\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X50_Y23_N18
\Selector0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = ((\Estado.OpRegImed16~q\) # ((\leFila~reg0_q\ & \Selector0~0_combout\))) # (!\Estado.Busca~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Estado.Busca~q\,
	datab => \Estado.OpRegImed16~q\,
	datac => \leFila~reg0_q\,
	datad => \Selector0~0_combout\,
	combout => \Selector0~1_combout\);

-- Location: FF_X50_Y23_N19
\leFila~reg0\ : dffeas
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
	q => \leFila~reg0_q\);

-- Location: LCCOMB_X50_Y23_N28
\Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = ((\Estado.ResultRegImed~q\) # ((\Estado.Add_regImed_16~q\) # (\Estado.Fetch~q\))) # (!\Estado.Busca~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Estado.Busca~q\,
	datab => \Estado.ResultRegImed~q\,
	datac => \Estado.Add_regImed_16~q\,
	datad => \Estado.Fetch~q\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X50_Y23_N22
\Selector2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (\Estado.Sub_regImed_16~q\) # ((\Estado.OpRegImed16~q\) # ((\habULA~reg0_q\ & \Selector2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Estado.Sub_regImed_16~q\,
	datab => \Estado.OpRegImed16~q\,
	datac => \habULA~reg0_q\,
	datad => \Selector2~0_combout\,
	combout => \Selector2~1_combout\);

-- Location: FF_X50_Y23_N23
\habULA~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector2~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \habULA~reg0_q\);

-- Location: LCCOMB_X50_Y23_N2
WideOr3 : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr3~combout\ = ((\Estado.OpRegImed16~q\) # ((\Estado.ResultRegImed~q\) # (\Estado.Fetch~q\))) # (!\Estado.Busca~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Estado.Busca~q\,
	datab => \Estado.OpRegImed16~q\,
	datac => \Estado.ResultRegImed~q\,
	datad => \Estado.Fetch~q\,
	combout => \WideOr3~combout\);

-- Location: LCCOMB_X50_Y23_N30
\Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\Estado.Sub_regImed_16~q\) # ((\ctrlULA[2]~reg0_q\ & \WideOr3~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Estado.Sub_regImed_16~q\,
	datac => \ctrlULA[2]~reg0_q\,
	datad => \WideOr3~combout\,
	combout => \Selector3~0_combout\);

-- Location: FF_X50_Y23_N31
\ctrlULA[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector3~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrlULA[2]~reg0_q\);

-- Location: LCCOMB_X50_Y23_N10
\Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = ((\Estado.OpRegImed16~q\) # ((\Estado.FimInstrucao~q\) # (\Estado.Fetch~q\))) # (!\Estado.Busca~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Estado.Busca~q\,
	datab => \Estado.OpRegImed16~q\,
	datac => \Estado.FimInstrucao~q\,
	datad => \Estado.Fetch~q\,
	combout => \Selector5~0_combout\);

-- Location: LCCOMB_X50_Y23_N4
\Selector5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector5~1_combout\ = (\Estado.Add_regImed_16~q\) # ((\regDataLe~reg0_q\ & \Selector5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Estado.Add_regImed_16~q\,
	datac => \regDataLe~reg0_q\,
	datad => \Selector5~0_combout\,
	combout => \Selector5~1_combout\);

-- Location: FF_X50_Y23_N5
\regDataLe~reg0\ : dffeas
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
	q => \regDataLe~reg0_q\);

-- Location: LCCOMB_X50_Y23_N8
\Selector4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~2_combout\ = (\Estado.Add_regImed_16~q\) # ((\Estado.Sub_regImed_16~q\) # ((\habRegData~reg0_q\ & \WideOr3~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Estado.Add_regImed_16~q\,
	datab => \Estado.Sub_regImed_16~q\,
	datac => \habRegData~reg0_q\,
	datad => \WideOr3~combout\,
	combout => \Selector4~2_combout\);

-- Location: FF_X50_Y23_N9
\habRegData~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector4~2_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \habRegData~reg0_q\);

-- Location: IOIBUF_X53_Y20_N15
\opcode[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(0),
	o => \opcode[0]~input_o\);

-- Location: FF_X52_Y23_N19
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

-- Location: LCCOMB_X50_Y23_N24
\Selector8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\habRegData~0_combout\ & ((opcodeFetch(0)) # ((\ctrlRegData[0]~reg0_q\ & \WideOr3~combout\)))) # (!\habRegData~0_combout\ & (((\ctrlRegData[0]~reg0_q\ & \WideOr3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \habRegData~0_combout\,
	datab => opcodeFetch(0),
	datac => \ctrlRegData[0]~reg0_q\,
	datad => \WideOr3~combout\,
	combout => \Selector8~0_combout\);

-- Location: FF_X50_Y23_N25
\ctrlRegData[0]~reg0\ : dffeas
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
	q => \ctrlRegData[0]~reg0_q\);

-- Location: IOIBUF_X53_Y25_N1
\opcode[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(1),
	o => \opcode[1]~input_o\);

-- Location: LCCOMB_X52_Y23_N8
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

-- Location: FF_X52_Y23_N9
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

-- Location: LCCOMB_X50_Y23_N16
\Selector7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\habRegData~0_combout\ & ((opcodeFetch(1)) # ((\ctrlRegData[1]~reg0_q\ & \WideOr3~combout\)))) # (!\habRegData~0_combout\ & (((\ctrlRegData[1]~reg0_q\ & \WideOr3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \habRegData~0_combout\,
	datab => opcodeFetch(1),
	datac => \ctrlRegData[1]~reg0_q\,
	datad => \WideOr3~combout\,
	combout => \Selector7~0_combout\);

-- Location: FF_X50_Y23_N17
\ctrlRegData[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector7~0_combout\,
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

-- Location: LCCOMB_X52_Y23_N2
\opcodeFetch[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \opcodeFetch[2]~feeder_combout\ = \opcode[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \opcode[2]~input_o\,
	combout => \opcodeFetch[2]~feeder_combout\);

-- Location: FF_X52_Y23_N3
\opcodeFetch[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \opcodeFetch[2]~feeder_combout\,
	ena => \opcodeFetch[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => opcodeFetch(2));

-- Location: LCCOMB_X50_Y23_N0
\Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\habRegData~0_combout\ & ((opcodeFetch(2)) # ((\ctrlRegData[2]~reg0_q\ & \WideOr3~combout\)))) # (!\habRegData~0_combout\ & (((\ctrlRegData[2]~reg0_q\ & \WideOr3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \habRegData~0_combout\,
	datab => opcodeFetch(2),
	datac => \ctrlRegData[2]~reg0_q\,
	datad => \WideOr3~combout\,
	combout => \Selector6~0_combout\);

-- Location: FF_X50_Y23_N1
\ctrlRegData[2]~reg0\ : dffeas
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
	q => \ctrlRegData[2]~reg0_q\);

-- Location: LCCOMB_X52_Y23_N26
\Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (opcodeFetch(6) & (!opcodeFetch(4) & (opcodeFetch(3) $ (!opcodeFetch(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcodeFetch(6),
	datab => opcodeFetch(4),
	datac => opcodeFetch(3),
	datad => opcodeFetch(5),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X51_Y23_N20
\Selector10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\Estado.Erro~q\) # ((\Estado.OpRegImed16~q\ & ((!\Mux4~0_combout\) # (!opcodeFetch(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Estado.OpRegImed16~q\,
	datab => opcodeFetch(7),
	datac => \Estado.Erro~q\,
	datad => \Mux4~0_combout\,
	combout => \Selector10~0_combout\);

-- Location: LCCOMB_X51_Y23_N24
\Selector10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector10~1_combout\ = (\Selector10~0_combout\) # ((\Estado.Fetch~q\ & ((!\Mux0~1_combout\) # (!\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \Estado.Fetch~q\,
	datac => \Mux0~1_combout\,
	datad => \Selector10~0_combout\,
	combout => \Selector10~1_combout\);

-- Location: FF_X51_Y23_N25
\Estado.Erro\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~inputclkctrl_outclk\,
	d => \Selector10~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Estado.Erro~q\);

-- Location: LCCOMB_X50_Y23_N14
\Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = ((!\Estado.OpRegImed16~q\ & (\ctrlDemuxData~reg0_q\ & !\Estado.Erro~q\))) # (!\Estado.Busca~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Estado.Busca~q\,
	datab => \Estado.OpRegImed16~q\,
	datac => \ctrlDemuxData~reg0_q\,
	datad => \Estado.Erro~q\,
	combout => \Selector1~0_combout\);

-- Location: FF_X50_Y23_N15
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

ww_leFila <= \leFila~output_o\;

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


