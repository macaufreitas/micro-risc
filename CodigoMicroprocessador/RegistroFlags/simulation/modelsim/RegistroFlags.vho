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

-- DATE "03/17/2014 23:34:58"

-- 
-- Device: Altera EP3C25F324C8 Package FBGA324
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

ENTITY 	RegistroFlags IS
    PORT (
	reset : IN std_logic;
	clock : IN std_logic;
	Overflow : IN std_logic;
	Direction : IN std_logic;
	Interrupt : IN std_logic;
	Trap : IN std_logic;
	Sign : IN std_logic;
	Zero : IN std_logic;
	Adjust : IN std_logic;
	Parity : IN std_logic;
	Carry : IN std_logic;
	Flags : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END RegistroFlags;

-- Design Ports Information
-- Flags[0]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flags[1]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flags[2]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flags[3]	=>  Location: PIN_A1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flags[4]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flags[5]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flags[6]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flags[7]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flags[8]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flags[9]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flags[10]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flags[11]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flags[12]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flags[13]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flags[14]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Flags[15]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Carry	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Parity	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Adjust	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Zero	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sign	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Trap	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Interrupt	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Direction	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Overflow	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF RegistroFlags IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_Overflow : std_logic;
SIGNAL ww_Direction : std_logic;
SIGNAL ww_Interrupt : std_logic;
SIGNAL ww_Trap : std_logic;
SIGNAL ww_Sign : std_logic;
SIGNAL ww_Zero : std_logic;
SIGNAL ww_Adjust : std_logic;
SIGNAL ww_Parity : std_logic;
SIGNAL ww_Carry : std_logic;
SIGNAL ww_Flags : std_logic_vector(15 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Flags[0]~output_o\ : std_logic;
SIGNAL \Flags[1]~output_o\ : std_logic;
SIGNAL \Flags[2]~output_o\ : std_logic;
SIGNAL \Flags[3]~output_o\ : std_logic;
SIGNAL \Flags[4]~output_o\ : std_logic;
SIGNAL \Flags[5]~output_o\ : std_logic;
SIGNAL \Flags[6]~output_o\ : std_logic;
SIGNAL \Flags[7]~output_o\ : std_logic;
SIGNAL \Flags[8]~output_o\ : std_logic;
SIGNAL \Flags[9]~output_o\ : std_logic;
SIGNAL \Flags[10]~output_o\ : std_logic;
SIGNAL \Flags[11]~output_o\ : std_logic;
SIGNAL \Flags[12]~output_o\ : std_logic;
SIGNAL \Flags[13]~output_o\ : std_logic;
SIGNAL \Flags[14]~output_o\ : std_logic;
SIGNAL \Flags[15]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \Carry~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \Flags[0]~reg0_q\ : std_logic;
SIGNAL \Parity~input_o\ : std_logic;
SIGNAL \Flags[2]~reg0feeder_combout\ : std_logic;
SIGNAL \Flags[2]~reg0_q\ : std_logic;
SIGNAL \Adjust~input_o\ : std_logic;
SIGNAL \Flags[4]~reg0feeder_combout\ : std_logic;
SIGNAL \Flags[4]~reg0_q\ : std_logic;
SIGNAL \Zero~input_o\ : std_logic;
SIGNAL \Flags[6]~reg0feeder_combout\ : std_logic;
SIGNAL \Flags[6]~reg0_q\ : std_logic;
SIGNAL \Sign~input_o\ : std_logic;
SIGNAL \Flags[7]~reg0feeder_combout\ : std_logic;
SIGNAL \Flags[7]~reg0_q\ : std_logic;
SIGNAL \Trap~input_o\ : std_logic;
SIGNAL \Flags[8]~reg0_q\ : std_logic;
SIGNAL \Interrupt~input_o\ : std_logic;
SIGNAL \Flags[9]~reg0feeder_combout\ : std_logic;
SIGNAL \Flags[9]~reg0_q\ : std_logic;
SIGNAL \Direction~input_o\ : std_logic;
SIGNAL \Flags[10]~reg0_q\ : std_logic;
SIGNAL \Overflow~input_o\ : std_logic;
SIGNAL \Flags[11]~reg0feeder_combout\ : std_logic;
SIGNAL \Flags[11]~reg0_q\ : std_logic;

BEGIN

ww_reset <= reset;
ww_clock <= clock;
ww_Overflow <= Overflow;
ww_Direction <= Direction;
ww_Interrupt <= Interrupt;
ww_Trap <= Trap;
ww_Sign <= Sign;
ww_Zero <= Zero;
ww_Adjust <= Adjust;
ww_Parity <= Parity;
ww_Carry <= Carry;
Flags <= ww_Flags;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

-- Location: IOOBUF_X1_Y0_N16
\Flags[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Flags[0]~reg0_q\,
	devoe => ww_devoe,
	o => \Flags[0]~output_o\);

-- Location: IOOBUF_X0_Y13_N23
\Flags[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Flags[1]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\Flags[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Flags[2]~reg0_q\,
	devoe => ww_devoe,
	o => \Flags[2]~output_o\);

-- Location: IOOBUF_X1_Y34_N2
\Flags[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Flags[3]~output_o\);

-- Location: IOOBUF_X45_Y34_N16
\Flags[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Flags[4]~reg0_q\,
	devoe => ww_devoe,
	o => \Flags[4]~output_o\);

-- Location: IOOBUF_X49_Y34_N9
\Flags[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Flags[5]~output_o\);

-- Location: IOOBUF_X29_Y34_N16
\Flags[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Flags[6]~reg0_q\,
	devoe => ww_devoe,
	o => \Flags[6]~output_o\);

-- Location: IOOBUF_X53_Y20_N16
\Flags[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Flags[7]~reg0_q\,
	devoe => ww_devoe,
	o => \Flags[7]~output_o\);

-- Location: IOOBUF_X34_Y34_N2
\Flags[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Flags[8]~reg0_q\,
	devoe => ww_devoe,
	o => \Flags[8]~output_o\);

-- Location: IOOBUF_X29_Y34_N9
\Flags[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Flags[9]~reg0_q\,
	devoe => ww_devoe,
	o => \Flags[9]~output_o\);

-- Location: IOOBUF_X27_Y34_N2
\Flags[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Flags[10]~reg0_q\,
	devoe => ww_devoe,
	o => \Flags[10]~output_o\);

-- Location: IOOBUF_X53_Y19_N9
\Flags[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Flags[11]~reg0_q\,
	devoe => ww_devoe,
	o => \Flags[11]~output_o\);

-- Location: IOOBUF_X51_Y34_N16
\Flags[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Flags[12]~output_o\);

-- Location: IOOBUF_X20_Y34_N16
\Flags[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Flags[13]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\Flags[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Flags[14]~output_o\);

-- Location: IOOBUF_X0_Y27_N2
\Flags[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Flags[15]~output_o\);

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

-- Location: IOIBUF_X1_Y0_N8
\Carry~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Carry,
	o => \Carry~input_o\);

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

-- Location: FF_X1_Y1_N17
\Flags[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Carry~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Flags[0]~reg0_q\);

-- Location: IOIBUF_X0_Y4_N15
\Parity~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Parity,
	o => \Parity~input_o\);

-- Location: LCCOMB_X1_Y4_N16
\Flags[2]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Flags[2]~reg0feeder_combout\ = \Parity~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Parity~input_o\,
	combout => \Flags[2]~reg0feeder_combout\);

-- Location: FF_X1_Y4_N17
\Flags[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Flags[2]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Flags[2]~reg0_q\);

-- Location: IOIBUF_X43_Y34_N22
\Adjust~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Adjust,
	o => \Adjust~input_o\);

-- Location: LCCOMB_X44_Y33_N0
\Flags[4]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Flags[4]~reg0feeder_combout\ = \Adjust~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Adjust~input_o\,
	combout => \Flags[4]~reg0feeder_combout\);

-- Location: FF_X44_Y33_N1
\Flags[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Flags[4]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Flags[4]~reg0_q\);

-- Location: IOIBUF_X29_Y34_N1
\Zero~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Zero,
	o => \Zero~input_o\);

-- Location: LCCOMB_X29_Y33_N0
\Flags[6]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Flags[6]~reg0feeder_combout\ = \Zero~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Zero~input_o\,
	combout => \Flags[6]~reg0feeder_combout\);

-- Location: FF_X29_Y33_N1
\Flags[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Flags[6]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Flags[6]~reg0_q\);

-- Location: IOIBUF_X53_Y20_N22
\Sign~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sign,
	o => \Sign~input_o\);

-- Location: LCCOMB_X52_Y20_N16
\Flags[7]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Flags[7]~reg0feeder_combout\ = \Sign~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Sign~input_o\,
	combout => \Flags[7]~reg0feeder_combout\);

-- Location: FF_X52_Y20_N17
\Flags[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Flags[7]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Flags[7]~reg0_q\);

-- Location: IOIBUF_X34_Y34_N15
\Trap~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Trap,
	o => \Trap~input_o\);

-- Location: FF_X35_Y33_N1
\Flags[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Trap~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Flags[8]~reg0_q\);

-- Location: IOIBUF_X31_Y34_N8
\Interrupt~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Interrupt,
	o => \Interrupt~input_o\);

-- Location: LCCOMB_X31_Y33_N0
\Flags[9]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Flags[9]~reg0feeder_combout\ = \Interrupt~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Interrupt~input_o\,
	combout => \Flags[9]~reg0feeder_combout\);

-- Location: FF_X31_Y33_N1
\Flags[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Flags[9]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Flags[9]~reg0_q\);

-- Location: IOIBUF_X29_Y34_N22
\Direction~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Direction,
	o => \Direction~input_o\);

-- Location: FF_X28_Y33_N1
\Flags[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Direction~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Flags[10]~reg0_q\);

-- Location: IOIBUF_X53_Y19_N1
\Overflow~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Overflow,
	o => \Overflow~input_o\);

-- Location: LCCOMB_X52_Y19_N16
\Flags[11]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Flags[11]~reg0feeder_combout\ = \Overflow~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Overflow~input_o\,
	combout => \Flags[11]~reg0feeder_combout\);

-- Location: FF_X52_Y19_N17
\Flags[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Flags[11]~reg0feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Flags[11]~reg0_q\);

ww_Flags(0) <= \Flags[0]~output_o\;

ww_Flags(1) <= \Flags[1]~output_o\;

ww_Flags(2) <= \Flags[2]~output_o\;

ww_Flags(3) <= \Flags[3]~output_o\;

ww_Flags(4) <= \Flags[4]~output_o\;

ww_Flags(5) <= \Flags[5]~output_o\;

ww_Flags(6) <= \Flags[6]~output_o\;

ww_Flags(7) <= \Flags[7]~output_o\;

ww_Flags(8) <= \Flags[8]~output_o\;

ww_Flags(9) <= \Flags[9]~output_o\;

ww_Flags(10) <= \Flags[10]~output_o\;

ww_Flags(11) <= \Flags[11]~output_o\;

ww_Flags(12) <= \Flags[12]~output_o\;

ww_Flags(13) <= \Flags[13]~output_o\;

ww_Flags(14) <= \Flags[14]~output_o\;

ww_Flags(15) <= \Flags[15]~output_o\;
END structure;


