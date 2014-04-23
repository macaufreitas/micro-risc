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

-- DATE "03/31/2014 23:35:00"

-- 
-- Device: Altera EP4CGX22CF19C6 Package FBGA324
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

ENTITY 	ULA IS
    PORT (
	clock : IN std_logic;
	seletor : IN std_logic_vector(2 DOWNTO 0);
	carryIn : IN std_logic;
	entradaA : IN std_logic_vector(15 DOWNTO 0);
	entradaB : IN std_logic_vector(15 DOWNTO 0);
	habilitaULA : IN std_logic;
	flagCarry : BUFFER std_logic;
	flagOverflow : BUFFER std_logic;
	flagParidade : BUFFER std_logic;
	flagSinal : BUFFER std_logic;
	flagZero : BUFFER std_logic;
	flagAuxiliar : BUFFER std_logic;
	resultado : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END ULA;

-- Design Ports Information
-- flagCarry	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- flagOverflow	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- flagParidade	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- flagSinal	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- flagZero	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- flagAuxiliar	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[0]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[1]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[2]	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[4]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[5]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[6]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[7]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[8]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[9]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[10]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[11]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[12]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[13]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[14]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resultado[15]	=>  Location: PIN_M17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- habilitaULA	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[15]	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[15]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- carryIn	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[3]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[3]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[2]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[2]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[1]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[1]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[0]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seletor[2]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seletor[0]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seletor[1]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[4]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[4]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[5]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[5]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[6]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[6]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[7]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[7]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[8]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[8]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[9]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[9]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[10]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[10]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[11]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[11]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[12]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[12]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[13]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[13]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[14]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[14]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ULA IS
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
SIGNAL ww_seletor : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_carryIn : std_logic;
SIGNAL ww_entradaA : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_entradaB : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_habilitaULA : std_logic;
SIGNAL ww_flagCarry : std_logic;
SIGNAL ww_flagOverflow : std_logic;
SIGNAL ww_flagParidade : std_logic;
SIGNAL ww_flagSinal : std_logic;
SIGNAL ww_flagZero : std_logic;
SIGNAL ww_flagAuxiliar : std_logic;
SIGNAL ww_resultado : std_logic_vector(15 DOWNTO 0);
SIGNAL \habilitaULA~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \flagAuxiliar~output_o\ : std_logic;
SIGNAL \flagCarry~output_o\ : std_logic;
SIGNAL \flagOverflow~output_o\ : std_logic;
SIGNAL \flagParidade~output_o\ : std_logic;
SIGNAL \flagSinal~output_o\ : std_logic;
SIGNAL \flagZero~output_o\ : std_logic;
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
SIGNAL \entradaB[3]~input_o\ : std_logic;
SIGNAL \entradaA[2]~input_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \seletor[1]~input_o\ : std_logic;
SIGNAL \seletor[0]~input_o\ : std_logic;
SIGNAL \seletor[2]~input_o\ : std_logic;
SIGNAL \Mux0~6_combout\ : std_logic;
SIGNAL \habilitaULA~input_o\ : std_logic;
SIGNAL \habilitaULA~inputclkctrl_outclk\ : std_logic;
SIGNAL \enum_op.op_a_xor_b_1066~combout\ : std_logic;
SIGNAL \Mux0~5_combout\ : std_logic;
SIGNAL \enum_op.op_nop_1060~combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \enum_op.op_sub_1072~combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \enum_op.op_subCarry_1078~combout\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \Selector21~1_combout\ : std_logic;
SIGNAL \entradaB[2]~input_o\ : std_logic;
SIGNAL \entradaB[1]~input_o\ : std_logic;
SIGNAL \entradaA[1]~input_o\ : std_logic;
SIGNAL \entradaA[0]~input_o\ : std_logic;
SIGNAL \entradaB[0]~input_o\ : std_logic;
SIGNAL \carryIn~input_o\ : std_logic;
SIGNAL \dAuxiliarFlag|Mux1~0_combout\ : std_logic;
SIGNAL \dAuxiliarFlag|Mux1~1_combout\ : std_logic;
SIGNAL \dAuxiliarFlag|Mux1~2_combout\ : std_logic;
SIGNAL \entradaA[3]~input_o\ : std_logic;
SIGNAL \dAuxiliarFlag|Mux1~3_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \enum_op.op_a_comp_b_1054~combout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \Mux0~7_combout\ : std_logic;
SIGNAL \enum_op.op_a_or_b_1090~combout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \dAuxiliarFlag|Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \enum_op.op_add_1096~combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \enum_op.op_addCarry_1084~combout\ : std_logic;
SIGNAL \entradaB[15]~input_o\ : std_logic;
SIGNAL \entradaA[15]~input_o\ : std_logic;
SIGNAL \entradaA[14]~input_o\ : std_logic;
SIGNAL \entradaB[14]~input_o\ : std_logic;
SIGNAL \entradaB[13]~input_o\ : std_logic;
SIGNAL \entradaA[13]~input_o\ : std_logic;
SIGNAL \entradaA[12]~input_o\ : std_logic;
SIGNAL \entradaB[12]~input_o\ : std_logic;
SIGNAL \entradaB[11]~input_o\ : std_logic;
SIGNAL \entradaA[11]~input_o\ : std_logic;
SIGNAL \entradaA[10]~input_o\ : std_logic;
SIGNAL \entradaB[10]~input_o\ : std_logic;
SIGNAL \entradaA[9]~input_o\ : std_logic;
SIGNAL \entradaB[9]~input_o\ : std_logic;
SIGNAL \entradaB[8]~input_o\ : std_logic;
SIGNAL \entradaA[8]~input_o\ : std_logic;
SIGNAL \entradaA[7]~input_o\ : std_logic;
SIGNAL \entradaB[7]~input_o\ : std_logic;
SIGNAL \entradaA[6]~input_o\ : std_logic;
SIGNAL \entradaB[6]~input_o\ : std_logic;
SIGNAL \entradaB[5]~input_o\ : std_logic;
SIGNAL \entradaA[5]~input_o\ : std_logic;
SIGNAL \entradaA[4]~input_o\ : std_logic;
SIGNAL \entradaB[4]~input_o\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \regEntradaTesteFlags[1]~0_combout\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~15\ : std_logic;
SIGNAL \Add3~17\ : std_logic;
SIGNAL \Add3~19\ : std_logic;
SIGNAL \Add3~21\ : std_logic;
SIGNAL \Add3~23\ : std_logic;
SIGNAL \Add3~25\ : std_logic;
SIGNAL \Add3~27\ : std_logic;
SIGNAL \Add3~29\ : std_logic;
SIGNAL \Add3~31\ : std_logic;
SIGNAL \Add3~32_combout\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~19\ : std_logic;
SIGNAL \Add2~21\ : std_logic;
SIGNAL \Add2~23\ : std_logic;
SIGNAL \Add2~25\ : std_logic;
SIGNAL \Add2~27\ : std_logic;
SIGNAL \Add2~29\ : std_logic;
SIGNAL \Add2~31\ : std_logic;
SIGNAL \Add2~32_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \Selector0~2_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \Selector17~1_combout\ : std_logic;
SIGNAL \Selector17~2_combout\ : std_logic;
SIGNAL \flagCarry~reg0_q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Add3~30_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \Add2~30_combout\ : std_logic;
SIGNAL \Selector1~2_combout\ : std_logic;
SIGNAL \Selector1~3_combout\ : std_logic;
SIGNAL \regEntradaTesteFlags[1]~1_combout\ : std_logic;
SIGNAL \flagOverflow~0_combout\ : std_logic;
SIGNAL \flagOverflow~1_combout\ : std_logic;
SIGNAL \Selector18~1_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \Selector18~2_combout\ : std_logic;
SIGNAL \flagOverflow~reg0_q\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \Selector8~2_combout\ : std_logic;
SIGNAL \Add3~16_combout\ : std_logic;
SIGNAL \Selector8~1_combout\ : std_logic;
SIGNAL \Selector8~3_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Add3~22_combout\ : std_logic;
SIGNAL \Selector5~1_combout\ : std_logic;
SIGNAL \Add2~22_combout\ : std_logic;
SIGNAL \Selector5~2_combout\ : std_logic;
SIGNAL \Selector5~3_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \Selector7~2_combout\ : std_logic;
SIGNAL \Add3~18_combout\ : std_logic;
SIGNAL \Selector7~1_combout\ : std_logic;
SIGNAL \Selector7~3_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Add3~20_combout\ : std_logic;
SIGNAL \Selector6~1_combout\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \Selector6~2_combout\ : std_logic;
SIGNAL \Selector6~3_combout\ : std_logic;
SIGNAL \dParidade|saida~2_combout\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \Selector14~1_combout\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Selector14~2_combout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \Selector14~3_combout\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \Selector15~1_combout\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Selector15~2_combout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \Selector15~3_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Selector16~1_combout\ : std_logic;
SIGNAL \Selector16~2_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \Selector16~3_combout\ : std_logic;
SIGNAL \Selector16~4_combout\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \Selector13~1_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Selector13~2_combout\ : std_logic;
SIGNAL \Selector13~3_combout\ : std_logic;
SIGNAL \dParidade|saida~0_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Add3~28_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \Add2~28_combout\ : std_logic;
SIGNAL \Selector2~2_combout\ : std_logic;
SIGNAL \Selector2~3_combout\ : std_logic;
SIGNAL \Add3~24_combout\ : std_logic;
SIGNAL \Selector4~1_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Add2~24_combout\ : std_logic;
SIGNAL \Selector4~2_combout\ : std_logic;
SIGNAL \Selector4~3_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Add3~26_combout\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \Add2~26_combout\ : std_logic;
SIGNAL \Selector3~2_combout\ : std_logic;
SIGNAL \Selector3~3_combout\ : std_logic;
SIGNAL \dParidade|saida~3_combout\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \Selector9~1_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \Selector9~2_combout\ : std_logic;
SIGNAL \Selector9~3_combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Selector12~2_combout\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \Selector12~1_combout\ : std_logic;
SIGNAL \Selector12~3_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \Selector10~1_combout\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \Selector10~2_combout\ : std_logic;
SIGNAL \Selector10~3_combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \Selector11~1_combout\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Selector11~2_combout\ : std_logic;
SIGNAL \Selector11~3_combout\ : std_logic;
SIGNAL \dParidade|saida~1_combout\ : std_logic;
SIGNAL \dParidade|saida~4_combout\ : std_logic;
SIGNAL \flagSinal~reg0_q\ : std_logic;
SIGNAL \dZeroFlag|saida~1_combout\ : std_logic;
SIGNAL \dZeroFlag|saida~2_combout\ : std_logic;
SIGNAL \dZeroFlag|saida~3_combout\ : std_logic;
SIGNAL \dZeroFlag|saida~0_combout\ : std_logic;
SIGNAL \dZeroFlag|saida~4_combout\ : std_logic;
SIGNAL \resultado[0]~0_combout\ : std_logic;
SIGNAL \resultado[0]~reg0_q\ : std_logic;
SIGNAL \resultado[1]~reg0feeder_combout\ : std_logic;
SIGNAL \resultado[1]~reg0_q\ : std_logic;
SIGNAL \resultado[2]~reg0_q\ : std_logic;
SIGNAL \resultado[3]~reg0feeder_combout\ : std_logic;
SIGNAL \resultado[3]~reg0_q\ : std_logic;
SIGNAL \resultado[4]~reg0feeder_combout\ : std_logic;
SIGNAL \resultado[4]~reg0_q\ : std_logic;
SIGNAL \resultado[5]~reg0feeder_combout\ : std_logic;
SIGNAL \resultado[5]~reg0_q\ : std_logic;
SIGNAL \resultado[6]~reg0feeder_combout\ : std_logic;
SIGNAL \resultado[6]~reg0_q\ : std_logic;
SIGNAL \resultado[7]~reg0feeder_combout\ : std_logic;
SIGNAL \resultado[7]~reg0_q\ : std_logic;
SIGNAL \resultado[8]~reg0_q\ : std_logic;
SIGNAL \resultado[9]~reg0_q\ : std_logic;
SIGNAL \resultado[10]~reg0_q\ : std_logic;
SIGNAL \resultado[11]~reg0feeder_combout\ : std_logic;
SIGNAL \resultado[11]~reg0_q\ : std_logic;
SIGNAL \resultado[12]~reg0_q\ : std_logic;
SIGNAL \resultado[13]~reg0_q\ : std_logic;
SIGNAL \resultado[14]~reg0_q\ : std_logic;
SIGNAL \resultado[15]~reg0_q\ : std_logic;
SIGNAL regEntradaTesteFlags : std_logic_vector(16 DOWNTO 0);
SIGNAL regB : std_logic_vector(15 DOWNTO 0);
SIGNAL regA : std_logic_vector(15 DOWNTO 0);
SIGNAL op : std_logic_vector(2 DOWNTO 0);
SIGNAL \dZeroFlag|ALT_INV_saida~4_combout\ : std_logic;
SIGNAL \dParidade|ALT_INV_saida~4_combout\ : std_logic;

BEGIN

ww_clock <= clock;
ww_seletor <= seletor;
ww_carryIn <= carryIn;
ww_entradaA <= entradaA;
ww_entradaB <= entradaB;
ww_habilitaULA <= habilitaULA;
flagCarry <= ww_flagCarry;
flagOverflow <= ww_flagOverflow;
flagParidade <= ww_flagParidade;
flagSinal <= ww_flagSinal;
flagZero <= ww_flagZero;
flagAuxiliar <= ww_flagAuxiliar;
resultado <= ww_resultado;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\habilitaULA~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \habilitaULA~input_o\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\dZeroFlag|ALT_INV_saida~4_combout\ <= NOT \dZeroFlag|saida~4_combout\;
\dParidade|ALT_INV_saida~4_combout\ <= NOT \dParidade|saida~4_combout\;

-- Location: IOOBUF_X52_Y25_N9
\flagAuxiliar~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dAuxiliarFlag|Mux1~3_combout\,
	oe => \dAuxiliarFlag|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \flagAuxiliar~output_o\);

-- Location: IOOBUF_X52_Y19_N9
\flagCarry~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \flagCarry~reg0_q\,
	devoe => ww_devoe,
	o => \flagCarry~output_o\);

-- Location: IOOBUF_X23_Y41_N2
\flagOverflow~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \flagOverflow~reg0_q\,
	devoe => ww_devoe,
	o => \flagOverflow~output_o\);

-- Location: IOOBUF_X52_Y16_N9
\flagParidade~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dParidade|ALT_INV_saida~4_combout\,
	devoe => ww_devoe,
	o => \flagParidade~output_o\);

-- Location: IOOBUF_X52_Y27_N2
\flagSinal~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \flagSinal~reg0_q\,
	devoe => ww_devoe,
	o => \flagSinal~output_o\);

-- Location: IOOBUF_X52_Y30_N2
\flagZero~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dZeroFlag|ALT_INV_saida~4_combout\,
	devoe => ww_devoe,
	o => \flagZero~output_o\);

-- Location: IOOBUF_X34_Y0_N9
\resultado[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \resultado[0]~reg0_q\,
	devoe => ww_devoe,
	o => \resultado[0]~output_o\);

-- Location: IOOBUF_X41_Y41_N2
\resultado[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \resultado[1]~reg0_q\,
	devoe => ww_devoe,
	o => \resultado[1]~output_o\);

-- Location: IOOBUF_X52_Y16_N2
\resultado[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \resultado[2]~reg0_q\,
	devoe => ww_devoe,
	o => \resultado[2]~output_o\);

-- Location: IOOBUF_X34_Y41_N2
\resultado[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \resultado[3]~reg0_q\,
	devoe => ww_devoe,
	o => \resultado[3]~output_o\);

-- Location: IOOBUF_X38_Y41_N9
\resultado[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \resultado[4]~reg0_q\,
	devoe => ww_devoe,
	o => \resultado[4]~output_o\);

-- Location: IOOBUF_X43_Y41_N2
\resultado[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \resultado[5]~reg0_q\,
	devoe => ww_devoe,
	o => \resultado[5]~output_o\);

-- Location: IOOBUF_X41_Y41_N23
\resultado[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \resultado[6]~reg0_q\,
	devoe => ww_devoe,
	o => \resultado[6]~output_o\);

-- Location: IOOBUF_X41_Y41_N9
\resultado[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \resultado[7]~reg0_q\,
	devoe => ww_devoe,
	o => \resultado[7]~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\resultado[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \resultado[8]~reg0_q\,
	devoe => ww_devoe,
	o => \resultado[8]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\resultado[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \resultado[9]~reg0_q\,
	devoe => ww_devoe,
	o => \resultado[9]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\resultado[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \resultado[10]~reg0_q\,
	devoe => ww_devoe,
	o => \resultado[10]~output_o\);

-- Location: IOOBUF_X52_Y25_N2
\resultado[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \resultado[11]~reg0_q\,
	devoe => ww_devoe,
	o => \resultado[11]~output_o\);

-- Location: IOOBUF_X52_Y30_N9
\resultado[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \resultado[12]~reg0_q\,
	devoe => ww_devoe,
	o => \resultado[12]~output_o\);

-- Location: IOOBUF_X41_Y41_N16
\resultado[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \resultado[13]~reg0_q\,
	devoe => ww_devoe,
	o => \resultado[13]~output_o\);

-- Location: IOOBUF_X52_Y15_N2
\resultado[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \resultado[14]~reg0_q\,
	devoe => ww_devoe,
	o => \resultado[14]~output_o\);

-- Location: IOOBUF_X52_Y15_N9
\resultado[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \resultado[15]~reg0_q\,
	devoe => ww_devoe,
	o => \resultado[15]~output_o\);

-- Location: IOIBUF_X52_Y23_N1
\entradaB[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(3),
	o => \entradaB[3]~input_o\);

-- Location: IOIBUF_X31_Y41_N22
\entradaA[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(2),
	o => \entradaA[2]~input_o\);

-- Location: IOIBUF_X27_Y0_N15
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

-- Location: IOIBUF_X36_Y41_N8
\seletor[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_seletor(1),
	o => \seletor[1]~input_o\);

-- Location: IOIBUF_X34_Y41_N8
\seletor[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_seletor(0),
	o => \seletor[0]~input_o\);

-- Location: IOIBUF_X43_Y41_N8
\seletor[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_seletor(2),
	o => \seletor[2]~input_o\);

-- Location: LCCOMB_X34_Y22_N20
\Mux0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~6_combout\ = (!\seletor[1]~input_o\ & (\seletor[0]~input_o\ & \seletor[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[1]~input_o\,
	datac => \seletor[0]~input_o\,
	datad => \seletor[2]~input_o\,
	combout => \Mux0~6_combout\);

-- Location: IOIBUF_X27_Y0_N22
\habilitaULA~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_habilitaULA,
	o => \habilitaULA~input_o\);

-- Location: CLKCTRL_G19
\habilitaULA~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \habilitaULA~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \habilitaULA~inputclkctrl_outclk\);

-- Location: LCCOMB_X34_Y22_N0
\enum_op.op_a_xor_b_1066\ : cycloneiv_lcell_comb
-- Equation(s):
-- \enum_op.op_a_xor_b_1066~combout\ = (GLOBAL(\habilitaULA~inputclkctrl_outclk\) & (\Mux0~6_combout\)) # (!GLOBAL(\habilitaULA~inputclkctrl_outclk\) & ((\enum_op.op_a_xor_b_1066~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux0~6_combout\,
	datac => \enum_op.op_a_xor_b_1066~combout\,
	datad => \habilitaULA~inputclkctrl_outclk\,
	combout => \enum_op.op_a_xor_b_1066~combout\);

-- Location: LCCOMB_X34_Y23_N2
\Mux0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~5_combout\ = (\seletor[1]~input_o\ & (\seletor[0]~input_o\ & \seletor[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seletor[1]~input_o\,
	datac => \seletor[0]~input_o\,
	datad => \seletor[2]~input_o\,
	combout => \Mux0~5_combout\);

-- Location: LCCOMB_X31_Y23_N10
\enum_op.op_nop_1060\ : cycloneiv_lcell_comb
-- Equation(s):
-- \enum_op.op_nop_1060~combout\ = (GLOBAL(\habilitaULA~inputclkctrl_outclk\) & (\Mux0~5_combout\)) # (!GLOBAL(\habilitaULA~inputclkctrl_outclk\) & ((\enum_op.op_nop_1060~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~5_combout\,
	datab => \enum_op.op_nop_1060~combout\,
	datad => \habilitaULA~inputclkctrl_outclk\,
	combout => \enum_op.op_nop_1060~combout\);

-- Location: LCCOMB_X34_Y23_N28
\Mux0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (!\seletor[1]~input_o\ & (!\seletor[0]~input_o\ & \seletor[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seletor[1]~input_o\,
	datac => \seletor[0]~input_o\,
	datad => \seletor[2]~input_o\,
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X35_Y22_N6
\enum_op.op_sub_1072\ : cycloneiv_lcell_comb
-- Equation(s):
-- \enum_op.op_sub_1072~combout\ = (GLOBAL(\habilitaULA~inputclkctrl_outclk\) & ((\Mux0~3_combout\))) # (!GLOBAL(\habilitaULA~inputclkctrl_outclk\) & (\enum_op.op_sub_1072~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enum_op.op_sub_1072~combout\,
	datab => \Mux0~3_combout\,
	datad => \habilitaULA~inputclkctrl_outclk\,
	combout => \enum_op.op_sub_1072~combout\);

-- Location: LCCOMB_X34_Y22_N4
\Mux0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (\seletor[1]~input_o\ & (\seletor[0]~input_o\ & !\seletor[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[1]~input_o\,
	datac => \seletor[0]~input_o\,
	datad => \seletor[2]~input_o\,
	combout => \Mux0~4_combout\);

-- Location: LCCOMB_X34_Y22_N18
\enum_op.op_subCarry_1078\ : cycloneiv_lcell_comb
-- Equation(s):
-- \enum_op.op_subCarry_1078~combout\ = (GLOBAL(\habilitaULA~inputclkctrl_outclk\) & (\Mux0~4_combout\)) # (!GLOBAL(\habilitaULA~inputclkctrl_outclk\) & ((\enum_op.op_subCarry_1078~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~4_combout\,
	datab => \enum_op.op_subCarry_1078~combout\,
	datad => \habilitaULA~inputclkctrl_outclk\,
	combout => \enum_op.op_subCarry_1078~combout\);

-- Location: LCCOMB_X35_Y22_N10
\Selector21~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = (\enum_op.op_sub_1072~combout\) # (\enum_op.op_subCarry_1078~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enum_op.op_sub_1072~combout\,
	datad => \enum_op.op_subCarry_1078~combout\,
	combout => \Selector21~0_combout\);

-- Location: LCCOMB_X36_Y22_N10
\Selector21~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector21~1_combout\ = (\enum_op.op_a_xor_b_1066~combout\) # ((\Selector21~0_combout\) # ((\enum_op.op_nop_1060~combout\ & op(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enum_op.op_a_xor_b_1066~combout\,
	datab => \enum_op.op_nop_1060~combout\,
	datac => op(0),
	datad => \Selector21~0_combout\,
	combout => \Selector21~1_combout\);

-- Location: FF_X36_Y22_N11
\op[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector21~1_combout\,
	ena => \habilitaULA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => op(0));

-- Location: IOIBUF_X25_Y0_N1
\entradaB[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(2),
	o => \entradaB[2]~input_o\);

-- Location: IOIBUF_X52_Y23_N8
\entradaB[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(1),
	o => \entradaB[1]~input_o\);

-- Location: IOIBUF_X52_Y27_N8
\entradaA[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(1),
	o => \entradaA[1]~input_o\);

-- Location: IOIBUF_X25_Y41_N1
\entradaA[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(0),
	o => \entradaA[0]~input_o\);

-- Location: IOIBUF_X52_Y31_N8
\entradaB[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(0),
	o => \entradaB[0]~input_o\);

-- Location: IOIBUF_X52_Y28_N1
\carryIn~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_carryIn,
	o => \carryIn~input_o\);

-- Location: LCCOMB_X29_Y23_N8
\dAuxiliarFlag|Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dAuxiliarFlag|Mux1~0_combout\ = (\entradaB[0]~input_o\ & ((\carryIn~input_o\) # (\entradaA[0]~input_o\ $ (op(0))))) # (!\entradaB[0]~input_o\ & (\carryIn~input_o\ & (\entradaA[0]~input_o\ $ (op(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradaA[0]~input_o\,
	datab => \entradaB[0]~input_o\,
	datac => \carryIn~input_o\,
	datad => op(0),
	combout => \dAuxiliarFlag|Mux1~0_combout\);

-- Location: LCCOMB_X30_Y23_N6
\dAuxiliarFlag|Mux1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dAuxiliarFlag|Mux1~1_combout\ = (\entradaB[1]~input_o\ & ((\dAuxiliarFlag|Mux1~0_combout\) # (op(0) $ (\entradaA[1]~input_o\)))) # (!\entradaB[1]~input_o\ & (\dAuxiliarFlag|Mux1~0_combout\ & (op(0) $ (\entradaA[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradaB[1]~input_o\,
	datab => op(0),
	datac => \entradaA[1]~input_o\,
	datad => \dAuxiliarFlag|Mux1~0_combout\,
	combout => \dAuxiliarFlag|Mux1~1_combout\);

-- Location: LCCOMB_X30_Y23_N8
\dAuxiliarFlag|Mux1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dAuxiliarFlag|Mux1~2_combout\ = (\entradaB[2]~input_o\ & ((\dAuxiliarFlag|Mux1~1_combout\) # (\entradaA[2]~input_o\ $ (op(0))))) # (!\entradaB[2]~input_o\ & (\dAuxiliarFlag|Mux1~1_combout\ & (\entradaA[2]~input_o\ $ (op(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradaA[2]~input_o\,
	datab => op(0),
	datac => \entradaB[2]~input_o\,
	datad => \dAuxiliarFlag|Mux1~1_combout\,
	combout => \dAuxiliarFlag|Mux1~2_combout\);

-- Location: IOIBUF_X29_Y0_N8
\entradaA[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(3),
	o => \entradaA[3]~input_o\);

-- Location: LCCOMB_X30_Y23_N4
\dAuxiliarFlag|Mux1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dAuxiliarFlag|Mux1~3_combout\ = (\entradaB[3]~input_o\ & ((\dAuxiliarFlag|Mux1~2_combout\) # (\entradaA[3]~input_o\ $ (op(0))))) # (!\entradaB[3]~input_o\ & (\dAuxiliarFlag|Mux1~2_combout\ & (\entradaA[3]~input_o\ $ (op(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradaB[3]~input_o\,
	datab => \dAuxiliarFlag|Mux1~2_combout\,
	datac => \entradaA[3]~input_o\,
	datad => op(0),
	combout => \dAuxiliarFlag|Mux1~3_combout\);

-- Location: LCCOMB_X34_Y23_N30
\Mux0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\seletor[1]~input_o\ & (!\seletor[0]~input_o\ & \seletor[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seletor[1]~input_o\,
	datac => \seletor[0]~input_o\,
	datad => \seletor[2]~input_o\,
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X35_Y22_N26
\enum_op.op_a_comp_b_1054\ : cycloneiv_lcell_comb
-- Equation(s):
-- \enum_op.op_a_comp_b_1054~combout\ = (GLOBAL(\habilitaULA~inputclkctrl_outclk\) & ((\Mux0~2_combout\))) # (!GLOBAL(\habilitaULA~inputclkctrl_outclk\) & (\enum_op.op_a_comp_b_1054~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enum_op.op_a_comp_b_1054~combout\,
	datab => \Mux0~2_combout\,
	datad => \habilitaULA~inputclkctrl_outclk\,
	combout => \enum_op.op_a_comp_b_1054~combout\);

-- Location: LCCOMB_X36_Y22_N26
\Selector19~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (\enum_op.op_a_comp_b_1054~combout\) # ((\enum_op.op_nop_1060~combout\ & op(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enum_op.op_nop_1060~combout\,
	datac => op(2),
	datad => \enum_op.op_a_comp_b_1054~combout\,
	combout => \Selector19~0_combout\);

-- Location: FF_X36_Y22_N27
\op[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector19~0_combout\,
	ena => \habilitaULA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => op(2));

-- Location: LCCOMB_X34_Y23_N4
\Mux0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~7_combout\ = (!\seletor[1]~input_o\ & (\seletor[0]~input_o\ & !\seletor[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seletor[1]~input_o\,
	datac => \seletor[0]~input_o\,
	datad => \seletor[2]~input_o\,
	combout => \Mux0~7_combout\);

-- Location: LCCOMB_X34_Y22_N16
\enum_op.op_a_or_b_1090\ : cycloneiv_lcell_comb
-- Equation(s):
-- \enum_op.op_a_or_b_1090~combout\ = (GLOBAL(\habilitaULA~inputclkctrl_outclk\) & ((\Mux0~7_combout\))) # (!GLOBAL(\habilitaULA~inputclkctrl_outclk\) & (\enum_op.op_a_or_b_1090~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \enum_op.op_a_or_b_1090~combout\,
	datac => \Mux0~7_combout\,
	datad => \habilitaULA~inputclkctrl_outclk\,
	combout => \enum_op.op_a_or_b_1090~combout\);

-- Location: LCCOMB_X36_Y22_N28
\Selector20~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (\enum_op.op_a_xor_b_1066~combout\) # ((\enum_op.op_a_or_b_1090~combout\) # ((\enum_op.op_nop_1060~combout\ & op(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enum_op.op_a_xor_b_1066~combout\,
	datab => \enum_op.op_nop_1060~combout\,
	datac => op(1),
	datad => \enum_op.op_a_or_b_1090~combout\,
	combout => \Selector20~0_combout\);

-- Location: FF_X36_Y22_N29
\op[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector20~0_combout\,
	ena => \habilitaULA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => op(1));

-- Location: LCCOMB_X36_Y22_N20
\dAuxiliarFlag|Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dAuxiliarFlag|Mux0~0_combout\ = (!op(2) & !op(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => op(2),
	datad => op(1),
	combout => \dAuxiliarFlag|Mux0~0_combout\);

-- Location: LCCOMB_X34_Y23_N20
\Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!\seletor[1]~input_o\ & (!\seletor[0]~input_o\ & !\seletor[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seletor[1]~input_o\,
	datac => \seletor[0]~input_o\,
	datad => \seletor[2]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X31_Y22_N30
\enum_op.op_add_1096\ : cycloneiv_lcell_comb
-- Equation(s):
-- \enum_op.op_add_1096~combout\ = (GLOBAL(\habilitaULA~inputclkctrl_outclk\) & ((\Mux0~0_combout\))) # (!GLOBAL(\habilitaULA~inputclkctrl_outclk\) & (\enum_op.op_add_1096~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enum_op.op_add_1096~combout\,
	datab => \Mux0~0_combout\,
	datad => \habilitaULA~inputclkctrl_outclk\,
	combout => \enum_op.op_add_1096~combout\);

-- Location: LCCOMB_X34_Y22_N10
\Mux0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\seletor[1]~input_o\ & (!\seletor[0]~input_o\ & !\seletor[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[1]~input_o\,
	datac => \seletor[0]~input_o\,
	datad => \seletor[2]~input_o\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X35_Y22_N14
\enum_op.op_addCarry_1084\ : cycloneiv_lcell_comb
-- Equation(s):
-- \enum_op.op_addCarry_1084~combout\ = (GLOBAL(\habilitaULA~inputclkctrl_outclk\) & (\Mux0~1_combout\)) # (!GLOBAL(\habilitaULA~inputclkctrl_outclk\) & ((\enum_op.op_addCarry_1084~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~1_combout\,
	datab => \enum_op.op_addCarry_1084~combout\,
	datad => \habilitaULA~inputclkctrl_outclk\,
	combout => \enum_op.op_addCarry_1084~combout\);

-- Location: IOIBUF_X29_Y0_N1
\entradaB[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(15),
	o => \entradaB[15]~input_o\);

-- Location: FF_X30_Y22_N15
\regB[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaB[15]~input_o\,
	sload => VCC,
	ena => \habilitaULA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regB(15));

-- Location: IOIBUF_X25_Y0_N8
\entradaA[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(15),
	o => \entradaA[15]~input_o\);

-- Location: FF_X30_Y22_N29
\regA[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaA[15]~input_o\,
	sload => VCC,
	ena => \habilitaULA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regA(15));

-- Location: IOIBUF_X52_Y18_N1
\entradaA[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(14),
	o => \entradaA[14]~input_o\);

-- Location: FF_X31_Y22_N13
\regA[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaA[14]~input_o\,
	sload => VCC,
	ena => \habilitaULA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regA(14));

-- Location: IOIBUF_X52_Y18_N8
\entradaB[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(14),
	o => \entradaB[14]~input_o\);

-- Location: FF_X31_Y22_N15
\regB[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaB[14]~input_o\,
	sload => VCC,
	ena => \habilitaULA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regB(14));

-- Location: IOIBUF_X31_Y0_N8
\entradaB[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(13),
	o => \entradaB[13]~input_o\);

-- Location: FF_X31_Y22_N11
\regB[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaB[13]~input_o\,
	sload => VCC,
	ena => \habilitaULA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regB(13));

-- Location: IOIBUF_X23_Y41_N8
\entradaA[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(13),
	o => \entradaA[13]~input_o\);

-- Location: FF_X30_Y22_N19
\regA[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaA[13]~input_o\,
	sload => VCC,
	ena => \habilitaULA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regA(13));

-- Location: IOIBUF_X31_Y41_N1
\entradaA[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(12),
	o => \entradaA[12]~input_o\);

-- Location: FF_X31_Y22_N9
\regA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaA[12]~input_o\,
	sload => VCC,
	ena => \habilitaULA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regA(12));

-- Location: IOIBUF_X29_Y41_N1
\entradaB[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(12),
	o => \entradaB[12]~input_o\);

-- Location: FF_X30_Y22_N21
\regB[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaB[12]~input_o\,
	sload => VCC,
	ena => \habilitaULA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regB(12));

-- Location: IOIBUF_X31_Y41_N8
\entradaB[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(11),
	o => \entradaB[11]~input_o\);

-- Location: FF_X31_Y22_N7
\regB[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaB[11]~input_o\,
	sload => VCC,
	ena => \habilitaULA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regB(11));

-- Location: IOIBUF_X52_Y19_N1
\entradaA[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(11),
	o => \entradaA[11]~input_o\);

-- Location: FF_X30_Y22_N31
\regA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaA[11]~input_o\,
	sload => VCC,
	ena => \habilitaULA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regA(11));

-- Location: IOIBUF_X36_Y41_N1
\entradaA[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(10),
	o => \entradaA[10]~input_o\);

-- Location: FF_X31_Y22_N29
\regA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaA[10]~input_o\,
	sload => VCC,
	ena => \habilitaULA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regA(10));

-- Location: IOIBUF_X31_Y0_N15
\entradaB[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(10),
	o => \entradaB[10]~input_o\);

-- Location: FF_X30_Y22_N5
\regB[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaB[10]~input_o\,
	sload => VCC,
	ena => \habilitaULA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regB(10));

-- Location: IOIBUF_X25_Y41_N8
\entradaA[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(9),
	o => \entradaA[9]~input_o\);

-- Location: FF_X30_Y22_N25
\regA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaA[9]~input_o\,
	sload => VCC,
	ena => \habilitaULA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regA(9));

-- Location: IOIBUF_X31_Y41_N15
\entradaB[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(9),
	o => \entradaB[9]~input_o\);

-- Location: FF_X31_Y22_N3
\regB[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaB[9]~input_o\,
	sload => VCC,
	ena => \habilitaULA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regB(9));

-- Location: IOIBUF_X29_Y41_N8
\entradaB[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(8),
	o => \entradaB[8]~input_o\);

-- Location: FF_X30_Y22_N1
\regB[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaB[8]~input_o\,
	sload => VCC,
	ena => \habilitaULA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regB(8));

-- Location: IOIBUF_X36_Y0_N1
\entradaA[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(8),
	o => \entradaA[8]~input_o\);

-- Location: FF_X31_Y22_N31
\regA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaA[8]~input_o\,
	sload => VCC,
	ena => \habilitaULA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regA(8));

-- Location: IOIBUF_X52_Y21_N1
\entradaA[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(7),
	o => \entradaA[7]~input_o\);

-- Location: FF_X30_Y23_N15
\regA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaA[7]~input_o\,
	sload => VCC,
	ena => \habilitaULA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regA(7));

-- Location: IOIBUF_X52_Y21_N8
\entradaB[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(7),
	o => \entradaB[7]~input_o\);

-- Location: FF_X31_Y23_N19
\regB[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaB[7]~input_o\,
	sload => VCC,
	ena => \habilitaULA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regB(7));

-- Location: IOIBUF_X38_Y41_N1
\entradaA[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(6),
	o => \entradaA[6]~input_o\);

-- Location: FF_X31_Y23_N7
\regA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaA[6]~input_o\,
	sload => VCC,
	ena => \habilitaULA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regA(6));

-- Location: IOIBUF_X52_Y21_N15
\entradaB[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(6),
	o => \entradaB[6]~input_o\);

-- Location: FF_X30_Y23_N29
\regB[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaB[6]~input_o\,
	sload => VCC,
	ena => \habilitaULA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regB(6));

-- Location: IOIBUF_X31_Y0_N22
\entradaB[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(5),
	o => \entradaB[5]~input_o\);

-- Location: FF_X31_Y23_N27
\regB[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaB[5]~input_o\,
	sload => VCC,
	ena => \habilitaULA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regB(5));

-- Location: IOIBUF_X52_Y21_N22
\entradaA[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(5),
	o => \entradaA[5]~input_o\);

-- Location: FF_X30_Y23_N27
\regA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaA[5]~input_o\,
	sload => VCC,
	ena => \habilitaULA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regA(5));

-- Location: IOIBUF_X31_Y0_N1
\entradaA[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(4),
	o => \entradaA[4]~input_o\);

-- Location: FF_X31_Y23_N13
\regA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaA[4]~input_o\,
	sload => VCC,
	ena => \habilitaULA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regA(4));

-- Location: IOIBUF_X52_Y28_N8
\entradaB[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(4),
	o => \entradaB[4]~input_o\);

-- Location: FF_X30_Y23_N25
\regB[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaB[4]~input_o\,
	sload => VCC,
	ena => \habilitaULA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regB(4));

-- Location: FF_X31_Y23_N23
\regB[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaB[3]~input_o\,
	sload => VCC,
	ena => \habilitaULA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regB(3));

-- Location: FF_X30_Y23_N5
\regA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaA[3]~input_o\,
	sload => VCC,
	ena => \habilitaULA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regA(3));

-- Location: FF_X30_Y23_N9
\regB[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaB[2]~input_o\,
	sload => VCC,
	ena => \habilitaULA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regB(2));

-- Location: FF_X31_Y23_N21
\regA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaA[2]~input_o\,
	sload => VCC,
	ena => \habilitaULA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regA(2));

-- Location: FF_X31_Y23_N11
\regB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaB[1]~input_o\,
	sload => VCC,
	ena => \habilitaULA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regB(1));

-- Location: FF_X30_Y23_N7
\regA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaA[1]~input_o\,
	sload => VCC,
	ena => \habilitaULA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regA(1));

-- Location: FF_X30_Y23_N13
\regB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaB[0]~input_o\,
	sload => VCC,
	ena => \habilitaULA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regB(0));

-- Location: FF_X31_Y23_N9
\regA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \entradaA[0]~input_o\,
	sload => VCC,
	ena => \habilitaULA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regA(0));

-- Location: LCCOMB_X31_Y23_N16
\Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (regB(0) & (regA(0) $ (VCC))) # (!regB(0) & (regA(0) & VCC))
-- \Add0~1\ = CARRY((regB(0) & regA(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regB(0),
	datab => regA(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X31_Y23_N18
\Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (regB(1) & ((regA(1) & (\Add0~1\ & VCC)) # (!regA(1) & (!\Add0~1\)))) # (!regB(1) & ((regA(1) & (!\Add0~1\)) # (!regA(1) & ((\Add0~1\) # (GND)))))
-- \Add0~3\ = CARRY((regB(1) & (!regA(1) & !\Add0~1\)) # (!regB(1) & ((!\Add0~1\) # (!regA(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => regB(1),
	datab => regA(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X31_Y23_N20
\Add0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((regB(2) $ (regA(2) $ (!\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((regB(2) & ((regA(2)) # (!\Add0~3\))) # (!regB(2) & (regA(2) & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => regB(2),
	datab => regA(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X31_Y23_N22
\Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (regB(3) & ((regA(3) & (\Add0~5\ & VCC)) # (!regA(3) & (!\Add0~5\)))) # (!regB(3) & ((regA(3) & (!\Add0~5\)) # (!regA(3) & ((\Add0~5\) # (GND)))))
-- \Add0~7\ = CARRY((regB(3) & (!regA(3) & !\Add0~5\)) # (!regB(3) & ((!\Add0~5\) # (!regA(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => regB(3),
	datab => regA(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X31_Y23_N24
\Add0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((regA(4) $ (regB(4) $ (!\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((regA(4) & ((regB(4)) # (!\Add0~7\))) # (!regA(4) & (regB(4) & !\Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => regA(4),
	datab => regB(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X31_Y23_N26
\Add0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (regB(5) & ((regA(5) & (\Add0~9\ & VCC)) # (!regA(5) & (!\Add0~9\)))) # (!regB(5) & ((regA(5) & (!\Add0~9\)) # (!regA(5) & ((\Add0~9\) # (GND)))))
-- \Add0~11\ = CARRY((regB(5) & (!regA(5) & !\Add0~9\)) # (!regB(5) & ((!\Add0~9\) # (!regA(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => regB(5),
	datab => regA(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X31_Y23_N28
\Add0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((regA(6) $ (regB(6) $ (!\Add0~11\)))) # (GND)
-- \Add0~13\ = CARRY((regA(6) & ((regB(6)) # (!\Add0~11\))) # (!regA(6) & (regB(6) & !\Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => regA(6),
	datab => regB(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X31_Y23_N30
\Add0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (regA(7) & ((regB(7) & (\Add0~13\ & VCC)) # (!regB(7) & (!\Add0~13\)))) # (!regA(7) & ((regB(7) & (!\Add0~13\)) # (!regB(7) & ((\Add0~13\) # (GND)))))
-- \Add0~15\ = CARRY((regA(7) & (!regB(7) & !\Add0~13\)) # (!regA(7) & ((!\Add0~13\) # (!regB(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => regA(7),
	datab => regB(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X31_Y22_N0
\Add0~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = ((regB(8) $ (regA(8) $ (!\Add0~15\)))) # (GND)
-- \Add0~17\ = CARRY((regB(8) & ((regA(8)) # (!\Add0~15\))) # (!regB(8) & (regA(8) & !\Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => regB(8),
	datab => regA(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X31_Y22_N2
\Add0~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (regA(9) & ((regB(9) & (\Add0~17\ & VCC)) # (!regB(9) & (!\Add0~17\)))) # (!regA(9) & ((regB(9) & (!\Add0~17\)) # (!regB(9) & ((\Add0~17\) # (GND)))))
-- \Add0~19\ = CARRY((regA(9) & (!regB(9) & !\Add0~17\)) # (!regA(9) & ((!\Add0~17\) # (!regB(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => regA(9),
	datab => regB(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X31_Y22_N4
\Add0~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = ((regA(10) $ (regB(10) $ (!\Add0~19\)))) # (GND)
-- \Add0~21\ = CARRY((regA(10) & ((regB(10)) # (!\Add0~19\))) # (!regA(10) & (regB(10) & !\Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => regA(10),
	datab => regB(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X31_Y22_N6
\Add0~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (regB(11) & ((regA(11) & (\Add0~21\ & VCC)) # (!regA(11) & (!\Add0~21\)))) # (!regB(11) & ((regA(11) & (!\Add0~21\)) # (!regA(11) & ((\Add0~21\) # (GND)))))
-- \Add0~23\ = CARRY((regB(11) & (!regA(11) & !\Add0~21\)) # (!regB(11) & ((!\Add0~21\) # (!regA(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => regB(11),
	datab => regA(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X31_Y22_N8
\Add0~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = ((regA(12) $ (regB(12) $ (!\Add0~23\)))) # (GND)
-- \Add0~25\ = CARRY((regA(12) & ((regB(12)) # (!\Add0~23\))) # (!regA(12) & (regB(12) & !\Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => regA(12),
	datab => regB(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X31_Y22_N10
\Add0~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (regB(13) & ((regA(13) & (\Add0~25\ & VCC)) # (!regA(13) & (!\Add0~25\)))) # (!regB(13) & ((regA(13) & (!\Add0~25\)) # (!regA(13) & ((\Add0~25\) # (GND)))))
-- \Add0~27\ = CARRY((regB(13) & (!regA(13) & !\Add0~25\)) # (!regB(13) & ((!\Add0~25\) # (!regA(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => regB(13),
	datab => regA(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X31_Y22_N12
\Add0~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = ((regA(14) $ (regB(14) $ (!\Add0~27\)))) # (GND)
-- \Add0~29\ = CARRY((regA(14) & ((regB(14)) # (!\Add0~27\))) # (!regA(14) & (regB(14) & !\Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => regA(14),
	datab => regB(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X31_Y22_N14
\Add0~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (regB(15) & ((regA(15) & (\Add0~29\ & VCC)) # (!regA(15) & (!\Add0~29\)))) # (!regB(15) & ((regA(15) & (!\Add0~29\)) # (!regA(15) & ((\Add0~29\) # (GND)))))
-- \Add0~31\ = CARRY((regB(15) & (!regA(15) & !\Add0~29\)) # (!regB(15) & ((!\Add0~29\) # (!regA(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => regB(15),
	datab => regA(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X31_Y22_N16
\Add0~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = !\Add0~31\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add0~31\,
	combout => \Add0~32_combout\);

-- Location: LCCOMB_X31_Y22_N26
\Selector0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\enum_op.op_add_1096~combout\ & ((\Add0~32_combout\) # ((regEntradaTesteFlags(16) & \enum_op.op_nop_1060~combout\)))) # (!\enum_op.op_add_1096~combout\ & (regEntradaTesteFlags(16) & ((\enum_op.op_nop_1060~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enum_op.op_add_1096~combout\,
	datab => regEntradaTesteFlags(16),
	datac => \Add0~32_combout\,
	datad => \enum_op.op_nop_1060~combout\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X30_Y23_N16
\Add1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (regB(0) & (regA(0) $ (VCC))) # (!regB(0) & ((regA(0)) # (GND)))
-- \Add1~1\ = CARRY((regA(0)) # (!regB(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regB(0),
	datab => regA(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X30_Y23_N18
\Add1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (regA(1) & ((regB(1) & (!\Add1~1\)) # (!regB(1) & (\Add1~1\ & VCC)))) # (!regA(1) & ((regB(1) & ((\Add1~1\) # (GND))) # (!regB(1) & (!\Add1~1\))))
-- \Add1~3\ = CARRY((regA(1) & (regB(1) & !\Add1~1\)) # (!regA(1) & ((regB(1)) # (!\Add1~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => regA(1),
	datab => regB(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X30_Y23_N20
\Add1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((regA(2) $ (regB(2) $ (\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((regA(2) & ((!\Add1~3\) # (!regB(2)))) # (!regA(2) & (!regB(2) & !\Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => regA(2),
	datab => regB(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X30_Y23_N22
\Add1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (regA(3) & ((regB(3) & (!\Add1~5\)) # (!regB(3) & (\Add1~5\ & VCC)))) # (!regA(3) & ((regB(3) & ((\Add1~5\) # (GND))) # (!regB(3) & (!\Add1~5\))))
-- \Add1~7\ = CARRY((regA(3) & (regB(3) & !\Add1~5\)) # (!regA(3) & ((regB(3)) # (!\Add1~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => regA(3),
	datab => regB(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X30_Y23_N24
\Add1~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = ((regA(4) $ (regB(4) $ (\Add1~7\)))) # (GND)
-- \Add1~9\ = CARRY((regA(4) & ((!\Add1~7\) # (!regB(4)))) # (!regA(4) & (!regB(4) & !\Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => regA(4),
	datab => regB(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X30_Y23_N26
\Add1~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (regA(5) & ((regB(5) & (!\Add1~9\)) # (!regB(5) & (\Add1~9\ & VCC)))) # (!regA(5) & ((regB(5) & ((\Add1~9\) # (GND))) # (!regB(5) & (!\Add1~9\))))
-- \Add1~11\ = CARRY((regA(5) & (regB(5) & !\Add1~9\)) # (!regA(5) & ((regB(5)) # (!\Add1~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => regA(5),
	datab => regB(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X30_Y23_N28
\Add1~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = ((regA(6) $ (regB(6) $ (\Add1~11\)))) # (GND)
-- \Add1~13\ = CARRY((regA(6) & ((!\Add1~11\) # (!regB(6)))) # (!regA(6) & (!regB(6) & !\Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => regA(6),
	datab => regB(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X30_Y23_N30
\Add1~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (regB(7) & ((regA(7) & (!\Add1~13\)) # (!regA(7) & ((\Add1~13\) # (GND))))) # (!regB(7) & ((regA(7) & (\Add1~13\ & VCC)) # (!regA(7) & (!\Add1~13\))))
-- \Add1~15\ = CARRY((regB(7) & ((!\Add1~13\) # (!regA(7)))) # (!regB(7) & (!regA(7) & !\Add1~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => regB(7),
	datab => regA(7),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X30_Y22_N0
\Add1~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = ((regA(8) $ (regB(8) $ (\Add1~15\)))) # (GND)
-- \Add1~17\ = CARRY((regA(8) & ((!\Add1~15\) # (!regB(8)))) # (!regA(8) & (!regB(8) & !\Add1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => regA(8),
	datab => regB(8),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X30_Y22_N2
\Add1~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (regB(9) & ((regA(9) & (!\Add1~17\)) # (!regA(9) & ((\Add1~17\) # (GND))))) # (!regB(9) & ((regA(9) & (\Add1~17\ & VCC)) # (!regA(9) & (!\Add1~17\))))
-- \Add1~19\ = CARRY((regB(9) & ((!\Add1~17\) # (!regA(9)))) # (!regB(9) & (!regA(9) & !\Add1~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => regB(9),
	datab => regA(9),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X30_Y22_N4
\Add1~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = ((regB(10) $ (regA(10) $ (\Add1~19\)))) # (GND)
-- \Add1~21\ = CARRY((regB(10) & (regA(10) & !\Add1~19\)) # (!regB(10) & ((regA(10)) # (!\Add1~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => regB(10),
	datab => regA(10),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: LCCOMB_X30_Y22_N6
\Add1~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (regB(11) & ((regA(11) & (!\Add1~21\)) # (!regA(11) & ((\Add1~21\) # (GND))))) # (!regB(11) & ((regA(11) & (\Add1~21\ & VCC)) # (!regA(11) & (!\Add1~21\))))
-- \Add1~23\ = CARRY((regB(11) & ((!\Add1~21\) # (!regA(11)))) # (!regB(11) & (!regA(11) & !\Add1~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => regB(11),
	datab => regA(11),
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: LCCOMB_X30_Y22_N8
\Add1~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = ((regB(12) $ (regA(12) $ (\Add1~23\)))) # (GND)
-- \Add1~25\ = CARRY((regB(12) & (regA(12) & !\Add1~23\)) # (!regB(12) & ((regA(12)) # (!\Add1~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => regB(12),
	datab => regA(12),
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: LCCOMB_X30_Y22_N10
\Add1~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (regB(13) & ((regA(13) & (!\Add1~25\)) # (!regA(13) & ((\Add1~25\) # (GND))))) # (!regB(13) & ((regA(13) & (\Add1~25\ & VCC)) # (!regA(13) & (!\Add1~25\))))
-- \Add1~27\ = CARRY((regB(13) & ((!\Add1~25\) # (!regA(13)))) # (!regB(13) & (!regA(13) & !\Add1~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => regB(13),
	datab => regA(13),
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: LCCOMB_X30_Y22_N12
\Add1~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = ((regB(14) $ (regA(14) $ (\Add1~27\)))) # (GND)
-- \Add1~29\ = CARRY((regB(14) & (regA(14) & !\Add1~27\)) # (!regB(14) & ((regA(14)) # (!\Add1~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => regB(14),
	datab => regA(14),
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: LCCOMB_X30_Y22_N14
\Add1~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (regA(15) & ((regB(15) & (!\Add1~29\)) # (!regB(15) & (\Add1~29\ & VCC)))) # (!regA(15) & ((regB(15) & ((\Add1~29\) # (GND))) # (!regB(15) & (!\Add1~29\))))
-- \Add1~31\ = CARRY((regA(15) & (regB(15) & !\Add1~29\)) # (!regA(15) & ((regB(15)) # (!\Add1~29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => regA(15),
	datab => regB(15),
	datad => VCC,
	cin => \Add1~29\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

-- Location: LCCOMB_X30_Y22_N16
\Add1~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = !\Add1~31\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add1~31\,
	combout => \Add1~32_combout\);

-- Location: LCCOMB_X35_Y22_N28
\regEntradaTesteFlags[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regEntradaTesteFlags[1]~0_combout\ = (\enum_op.op_a_comp_b_1054~combout\) # (\enum_op.op_sub_1072~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enum_op.op_a_comp_b_1054~combout\,
	datad => \enum_op.op_sub_1072~combout\,
	combout => \regEntradaTesteFlags[1]~0_combout\);

-- Location: LCCOMB_X29_Y23_N16
\Add3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = (\Add1~0_combout\ & ((GND) # (!\carryIn~input_o\))) # (!\Add1~0_combout\ & (\carryIn~input_o\ $ (GND)))
-- \Add3~1\ = CARRY((\Add1~0_combout\) # (!\carryIn~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datab => \carryIn~input_o\,
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: LCCOMB_X29_Y23_N18
\Add3~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (\Add1~2_combout\ & (\Add3~1\ & VCC)) # (!\Add1~2_combout\ & (!\Add3~1\))
-- \Add3~3\ = CARRY((!\Add1~2_combout\ & !\Add3~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add1~2_combout\,
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: LCCOMB_X29_Y23_N20
\Add3~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = (\Add1~4_combout\ & ((GND) # (!\Add3~3\))) # (!\Add1~4_combout\ & (\Add3~3\ $ (GND)))
-- \Add3~5\ = CARRY((\Add1~4_combout\) # (!\Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~4_combout\,
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: LCCOMB_X29_Y23_N22
\Add3~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (\Add1~6_combout\ & (\Add3~5\ & VCC)) # (!\Add1~6_combout\ & (!\Add3~5\))
-- \Add3~7\ = CARRY((!\Add1~6_combout\ & !\Add3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add1~6_combout\,
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X29_Y23_N24
\Add3~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = (\Add1~8_combout\ & ((GND) # (!\Add3~7\))) # (!\Add1~8_combout\ & (\Add3~7\ $ (GND)))
-- \Add3~9\ = CARRY((\Add1~8_combout\) # (!\Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~8_combout\,
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: LCCOMB_X29_Y23_N26
\Add3~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (\Add1~10_combout\ & (\Add3~9\ & VCC)) # (!\Add1~10_combout\ & (!\Add3~9\))
-- \Add3~11\ = CARRY((!\Add1~10_combout\ & !\Add3~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~10_combout\,
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~10_combout\,
	cout => \Add3~11\);

-- Location: LCCOMB_X29_Y23_N28
\Add3~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = (\Add1~12_combout\ & ((GND) # (!\Add3~11\))) # (!\Add1~12_combout\ & (\Add3~11\ $ (GND)))
-- \Add3~13\ = CARRY((\Add1~12_combout\) # (!\Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add1~12_combout\,
	datad => VCC,
	cin => \Add3~11\,
	combout => \Add3~12_combout\,
	cout => \Add3~13\);

-- Location: LCCOMB_X29_Y23_N30
\Add3~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = (\Add1~14_combout\ & (\Add3~13\ & VCC)) # (!\Add1~14_combout\ & (!\Add3~13\))
-- \Add3~15\ = CARRY((!\Add1~14_combout\ & !\Add3~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~14_combout\,
	datad => VCC,
	cin => \Add3~13\,
	combout => \Add3~14_combout\,
	cout => \Add3~15\);

-- Location: LCCOMB_X29_Y22_N0
\Add3~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~16_combout\ = (\Add1~16_combout\ & ((GND) # (!\Add3~15\))) # (!\Add1~16_combout\ & (\Add3~15\ $ (GND)))
-- \Add3~17\ = CARRY((\Add1~16_combout\) # (!\Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add1~16_combout\,
	datad => VCC,
	cin => \Add3~15\,
	combout => \Add3~16_combout\,
	cout => \Add3~17\);

-- Location: LCCOMB_X29_Y22_N2
\Add3~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~18_combout\ = (\Add1~18_combout\ & (\Add3~17\ & VCC)) # (!\Add1~18_combout\ & (!\Add3~17\))
-- \Add3~19\ = CARRY((!\Add1~18_combout\ & !\Add3~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~18_combout\,
	datad => VCC,
	cin => \Add3~17\,
	combout => \Add3~18_combout\,
	cout => \Add3~19\);

-- Location: LCCOMB_X29_Y22_N4
\Add3~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~20_combout\ = (\Add1~20_combout\ & ((GND) # (!\Add3~19\))) # (!\Add1~20_combout\ & (\Add3~19\ $ (GND)))
-- \Add3~21\ = CARRY((\Add1~20_combout\) # (!\Add3~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~20_combout\,
	datad => VCC,
	cin => \Add3~19\,
	combout => \Add3~20_combout\,
	cout => \Add3~21\);

-- Location: LCCOMB_X29_Y22_N6
\Add3~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~22_combout\ = (\Add1~22_combout\ & (\Add3~21\ & VCC)) # (!\Add1~22_combout\ & (!\Add3~21\))
-- \Add3~23\ = CARRY((!\Add1~22_combout\ & !\Add3~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~22_combout\,
	datad => VCC,
	cin => \Add3~21\,
	combout => \Add3~22_combout\,
	cout => \Add3~23\);

-- Location: LCCOMB_X29_Y22_N8
\Add3~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~24_combout\ = (\Add1~24_combout\ & ((GND) # (!\Add3~23\))) # (!\Add1~24_combout\ & (\Add3~23\ $ (GND)))
-- \Add3~25\ = CARRY((\Add1~24_combout\) # (!\Add3~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add1~24_combout\,
	datad => VCC,
	cin => \Add3~23\,
	combout => \Add3~24_combout\,
	cout => \Add3~25\);

-- Location: LCCOMB_X29_Y22_N10
\Add3~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~26_combout\ = (\Add1~26_combout\ & (\Add3~25\ & VCC)) # (!\Add1~26_combout\ & (!\Add3~25\))
-- \Add3~27\ = CARRY((!\Add1~26_combout\ & !\Add3~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add1~26_combout\,
	datad => VCC,
	cin => \Add3~25\,
	combout => \Add3~26_combout\,
	cout => \Add3~27\);

-- Location: LCCOMB_X29_Y22_N12
\Add3~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~28_combout\ = (\Add1~28_combout\ & ((GND) # (!\Add3~27\))) # (!\Add1~28_combout\ & (\Add3~27\ $ (GND)))
-- \Add3~29\ = CARRY((\Add1~28_combout\) # (!\Add3~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add1~28_combout\,
	datad => VCC,
	cin => \Add3~27\,
	combout => \Add3~28_combout\,
	cout => \Add3~29\);

-- Location: LCCOMB_X29_Y22_N14
\Add3~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~30_combout\ = (\Add1~30_combout\ & (\Add3~29\ & VCC)) # (!\Add1~30_combout\ & (!\Add3~29\))
-- \Add3~31\ = CARRY((!\Add1~30_combout\ & !\Add3~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add1~30_combout\,
	datad => VCC,
	cin => \Add3~29\,
	combout => \Add3~30_combout\,
	cout => \Add3~31\);

-- Location: LCCOMB_X29_Y22_N16
\Add3~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~32_combout\ = \Add3~31\ $ (!\Add1~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Add1~32_combout\,
	cin => \Add3~31\,
	combout => \Add3~32_combout\);

-- Location: LCCOMB_X32_Y23_N16
\Add2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = (\Add0~0_combout\ & (\carryIn~input_o\ $ (VCC))) # (!\Add0~0_combout\ & (\carryIn~input_o\ & VCC))
-- \Add2~1\ = CARRY((\Add0~0_combout\ & \carryIn~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \carryIn~input_o\,
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X32_Y23_N18
\Add2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (\Add0~2_combout\ & (!\Add2~1\)) # (!\Add0~2_combout\ & ((\Add2~1\) # (GND)))
-- \Add2~3\ = CARRY((!\Add2~1\) # (!\Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~2_combout\,
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X32_Y23_N20
\Add2~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (\Add0~4_combout\ & (\Add2~3\ $ (GND))) # (!\Add0~4_combout\ & (!\Add2~3\ & VCC))
-- \Add2~5\ = CARRY((\Add0~4_combout\ & !\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~4_combout\,
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X32_Y23_N22
\Add2~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (\Add0~6_combout\ & (!\Add2~5\)) # (!\Add0~6_combout\ & ((\Add2~5\) # (GND)))
-- \Add2~7\ = CARRY((!\Add2~5\) # (!\Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~6_combout\,
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X32_Y23_N24
\Add2~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (\Add0~8_combout\ & (\Add2~7\ $ (GND))) # (!\Add0~8_combout\ & (!\Add2~7\ & VCC))
-- \Add2~9\ = CARRY((\Add0~8_combout\ & !\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~8_combout\,
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X32_Y23_N26
\Add2~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (\Add0~10_combout\ & (!\Add2~9\)) # (!\Add0~10_combout\ & ((\Add2~9\) # (GND)))
-- \Add2~11\ = CARRY((!\Add2~9\) # (!\Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X32_Y23_N28
\Add2~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (\Add0~12_combout\ & (\Add2~11\ $ (GND))) # (!\Add0~12_combout\ & (!\Add2~11\ & VCC))
-- \Add2~13\ = CARRY((\Add0~12_combout\ & !\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~12_combout\,
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X32_Y23_N30
\Add2~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (\Add0~14_combout\ & (!\Add2~13\)) # (!\Add0~14_combout\ & ((\Add2~13\) # (GND)))
-- \Add2~15\ = CARRY((!\Add2~13\) # (!\Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~14_combout\,
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: LCCOMB_X32_Y22_N0
\Add2~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = (\Add0~16_combout\ & (\Add2~15\ $ (GND))) # (!\Add0~16_combout\ & (!\Add2~15\ & VCC))
-- \Add2~17\ = CARRY((\Add0~16_combout\ & !\Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datad => VCC,
	cin => \Add2~15\,
	combout => \Add2~16_combout\,
	cout => \Add2~17\);

-- Location: LCCOMB_X32_Y22_N2
\Add2~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = (\Add0~18_combout\ & (!\Add2~17\)) # (!\Add0~18_combout\ & ((\Add2~17\) # (GND)))
-- \Add2~19\ = CARRY((!\Add2~17\) # (!\Add0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~18_combout\,
	datad => VCC,
	cin => \Add2~17\,
	combout => \Add2~18_combout\,
	cout => \Add2~19\);

-- Location: LCCOMB_X32_Y22_N4
\Add2~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~20_combout\ = (\Add0~20_combout\ & (\Add2~19\ $ (GND))) # (!\Add0~20_combout\ & (!\Add2~19\ & VCC))
-- \Add2~21\ = CARRY((\Add0~20_combout\ & !\Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~20_combout\,
	datad => VCC,
	cin => \Add2~19\,
	combout => \Add2~20_combout\,
	cout => \Add2~21\);

-- Location: LCCOMB_X32_Y22_N6
\Add2~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~22_combout\ = (\Add0~22_combout\ & (!\Add2~21\)) # (!\Add0~22_combout\ & ((\Add2~21\) # (GND)))
-- \Add2~23\ = CARRY((!\Add2~21\) # (!\Add0~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~22_combout\,
	datad => VCC,
	cin => \Add2~21\,
	combout => \Add2~22_combout\,
	cout => \Add2~23\);

-- Location: LCCOMB_X32_Y22_N8
\Add2~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~24_combout\ = (\Add0~24_combout\ & (\Add2~23\ $ (GND))) # (!\Add0~24_combout\ & (!\Add2~23\ & VCC))
-- \Add2~25\ = CARRY((\Add0~24_combout\ & !\Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~24_combout\,
	datad => VCC,
	cin => \Add2~23\,
	combout => \Add2~24_combout\,
	cout => \Add2~25\);

-- Location: LCCOMB_X32_Y22_N10
\Add2~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~26_combout\ = (\Add0~26_combout\ & (!\Add2~25\)) # (!\Add0~26_combout\ & ((\Add2~25\) # (GND)))
-- \Add2~27\ = CARRY((!\Add2~25\) # (!\Add0~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~26_combout\,
	datad => VCC,
	cin => \Add2~25\,
	combout => \Add2~26_combout\,
	cout => \Add2~27\);

-- Location: LCCOMB_X32_Y22_N12
\Add2~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~28_combout\ = (\Add0~28_combout\ & (\Add2~27\ $ (GND))) # (!\Add0~28_combout\ & (!\Add2~27\ & VCC))
-- \Add2~29\ = CARRY((\Add0~28_combout\ & !\Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~28_combout\,
	datad => VCC,
	cin => \Add2~27\,
	combout => \Add2~28_combout\,
	cout => \Add2~29\);

-- Location: LCCOMB_X32_Y22_N14
\Add2~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~30_combout\ = (\Add0~30_combout\ & (!\Add2~29\)) # (!\Add0~30_combout\ & ((\Add2~29\) # (GND)))
-- \Add2~31\ = CARRY((!\Add2~29\) # (!\Add0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~30_combout\,
	datad => VCC,
	cin => \Add2~29\,
	combout => \Add2~30_combout\,
	cout => \Add2~31\);

-- Location: LCCOMB_X32_Y22_N16
\Add2~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~32_combout\ = \Add0~32_combout\ $ (!\Add2~31\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~32_combout\,
	cin => \Add2~31\,
	combout => \Add2~32_combout\);

-- Location: LCCOMB_X29_Y22_N18
\Selector0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (\enum_op.op_addCarry_1084~combout\ & ((\Add2~32_combout\) # ((\Add3~32_combout\ & \enum_op.op_subCarry_1078~combout\)))) # (!\enum_op.op_addCarry_1084~combout\ & (\Add3~32_combout\ & (\enum_op.op_subCarry_1078~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enum_op.op_addCarry_1084~combout\,
	datab => \Add3~32_combout\,
	datac => \enum_op.op_subCarry_1078~combout\,
	datad => \Add2~32_combout\,
	combout => \Selector0~1_combout\);

-- Location: LCCOMB_X29_Y22_N26
\Selector0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector0~2_combout\ = (\Selector0~0_combout\) # ((\Selector0~1_combout\) # ((!\Add1~32_combout\ & \regEntradaTesteFlags[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~0_combout\,
	datab => \Add1~32_combout\,
	datac => \regEntradaTesteFlags[1]~0_combout\,
	datad => \Selector0~1_combout\,
	combout => \Selector0~2_combout\);

-- Location: FF_X29_Y22_N27
\regEntradaTesteFlags[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector0~2_combout\,
	ena => \habilitaULA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regEntradaTesteFlags(16));

-- Location: LCCOMB_X35_Y22_N20
\Selector17~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (!\enum_op.op_a_comp_b_1054~combout\ & (!\enum_op.op_sub_1072~combout\ & !\enum_op.op_subCarry_1078~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enum_op.op_a_comp_b_1054~combout\,
	datab => \enum_op.op_sub_1072~combout\,
	datad => \enum_op.op_subCarry_1078~combout\,
	combout => \Selector17~0_combout\);

-- Location: LCCOMB_X36_Y22_N16
\Selector17~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector17~1_combout\ = (regEntradaTesteFlags(16) & ((\enum_op.op_add_1096~combout\) # ((\enum_op.op_addCarry_1084~combout\) # (!\Selector17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enum_op.op_add_1096~combout\,
	datab => \enum_op.op_addCarry_1084~combout\,
	datac => regEntradaTesteFlags(16),
	datad => \Selector17~0_combout\,
	combout => \Selector17~1_combout\);

-- Location: LCCOMB_X36_Y22_N8
\Selector17~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector17~2_combout\ = (\Selector17~1_combout\) # ((\enum_op.op_nop_1060~combout\ & \flagCarry~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enum_op.op_nop_1060~combout\,
	datac => \flagCarry~reg0_q\,
	datad => \Selector17~1_combout\,
	combout => \Selector17~2_combout\);

-- Location: FF_X36_Y22_N9
\flagCarry~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector17~2_combout\,
	ena => \habilitaULA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flagCarry~reg0_q\);

-- Location: LCCOMB_X28_Y22_N12
\Selector1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\enum_op.op_a_or_b_1090~combout\ & (((regA(15)) # (regB(15))))) # (!\enum_op.op_a_or_b_1090~combout\ & (\enum_op.op_a_xor_b_1066~combout\ & (regA(15) $ (regB(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enum_op.op_a_xor_b_1066~combout\,
	datab => regA(15),
	datac => regB(15),
	datad => \enum_op.op_a_or_b_1090~combout\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X28_Y22_N30
\Selector1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (\enum_op.op_add_1096~combout\ & ((\Add0~30_combout\) # ((\enum_op.op_subCarry_1078~combout\ & \Add3~30_combout\)))) # (!\enum_op.op_add_1096~combout\ & (\enum_op.op_subCarry_1078~combout\ & (\Add3~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enum_op.op_add_1096~combout\,
	datab => \enum_op.op_subCarry_1078~combout\,
	datac => \Add3~30_combout\,
	datad => \Add0~30_combout\,
	combout => \Selector1~1_combout\);

-- Location: LCCOMB_X32_Y22_N18
\Selector1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector1~2_combout\ = (\Add1~30_combout\ & ((\regEntradaTesteFlags[1]~0_combout\) # ((\enum_op.op_addCarry_1084~combout\ & \Add2~30_combout\)))) # (!\Add1~30_combout\ & (\enum_op.op_addCarry_1084~combout\ & (\Add2~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~30_combout\,
	datab => \enum_op.op_addCarry_1084~combout\,
	datac => \Add2~30_combout\,
	datad => \regEntradaTesteFlags[1]~0_combout\,
	combout => \Selector1~2_combout\);

-- Location: LCCOMB_X28_Y22_N28
\Selector1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector1~3_combout\ = (\Selector1~0_combout\) # ((\Selector1~1_combout\) # (\Selector1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~0_combout\,
	datac => \Selector1~1_combout\,
	datad => \Selector1~2_combout\,
	combout => \Selector1~3_combout\);

-- Location: LCCOMB_X31_Y23_N8
\regEntradaTesteFlags[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regEntradaTesteFlags[1]~1_combout\ = (!\enum_op.op_nop_1060~combout\ & \habilitaULA~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \enum_op.op_nop_1060~combout\,
	datad => \habilitaULA~input_o\,
	combout => \regEntradaTesteFlags[1]~1_combout\);

-- Location: FF_X28_Y22_N29
\regEntradaTesteFlags[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector1~3_combout\,
	ena => \regEntradaTesteFlags[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regEntradaTesteFlags(15));

-- Location: LCCOMB_X31_Y22_N22
\flagOverflow~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \flagOverflow~0_combout\ = regB(15) $ (regEntradaTesteFlags(16) $ (regEntradaTesteFlags(15) $ (regA(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regB(15),
	datab => regEntradaTesteFlags(16),
	datac => regEntradaTesteFlags(15),
	datad => regA(15),
	combout => \flagOverflow~0_combout\);

-- Location: LCCOMB_X30_Y22_N28
\flagOverflow~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \flagOverflow~1_combout\ = \entradaB[15]~input_o\ $ (regEntradaTesteFlags(16) $ (\entradaA[15]~input_o\ $ (regEntradaTesteFlags(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradaB[15]~input_o\,
	datab => regEntradaTesteFlags(16),
	datac => \entradaA[15]~input_o\,
	datad => regEntradaTesteFlags(15),
	combout => \flagOverflow~1_combout\);

-- Location: LCCOMB_X31_Y22_N24
\Selector18~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector18~1_combout\ = (\flagOverflow~0_combout\ & ((\enum_op.op_addCarry_1084~combout\) # ((\enum_op.op_add_1096~combout\ & \flagOverflow~1_combout\)))) # (!\flagOverflow~0_combout\ & (((\enum_op.op_add_1096~combout\ & \flagOverflow~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flagOverflow~0_combout\,
	datab => \enum_op.op_addCarry_1084~combout\,
	datac => \enum_op.op_add_1096~combout\,
	datad => \flagOverflow~1_combout\,
	combout => \Selector18~1_combout\);

-- Location: LCCOMB_X31_Y22_N20
\Selector18~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (!\Selector17~0_combout\ & ((regB(15) & (!regA(15) & regEntradaTesteFlags(15))) # (!regB(15) & (regA(15) & !regEntradaTesteFlags(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regB(15),
	datab => regA(15),
	datac => regEntradaTesteFlags(15),
	datad => \Selector17~0_combout\,
	combout => \Selector18~0_combout\);

-- Location: LCCOMB_X31_Y22_N18
\Selector18~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector18~2_combout\ = (\Selector18~1_combout\) # ((\Selector18~0_combout\) # ((\enum_op.op_nop_1060~combout\ & \flagOverflow~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enum_op.op_nop_1060~combout\,
	datab => \Selector18~1_combout\,
	datac => \flagOverflow~reg0_q\,
	datad => \Selector18~0_combout\,
	combout => \Selector18~2_combout\);

-- Location: FF_X31_Y22_N19
\flagOverflow~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector18~2_combout\,
	ena => \habilitaULA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flagOverflow~reg0_q\);

-- Location: LCCOMB_X34_Y22_N30
\Selector8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\enum_op.op_a_or_b_1090~combout\ & (((regA(8)) # (regB(8))))) # (!\enum_op.op_a_or_b_1090~combout\ & (\enum_op.op_a_xor_b_1066~combout\ & (regA(8) $ (regB(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enum_op.op_a_xor_b_1066~combout\,
	datab => \enum_op.op_a_or_b_1090~combout\,
	datac => regA(8),
	datad => regB(8),
	combout => \Selector8~0_combout\);

-- Location: LCCOMB_X34_Y22_N26
\Selector8~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector8~2_combout\ = (\enum_op.op_addCarry_1084~combout\ & ((\Add2~16_combout\) # ((\regEntradaTesteFlags[1]~0_combout\ & \Add1~16_combout\)))) # (!\enum_op.op_addCarry_1084~combout\ & (\regEntradaTesteFlags[1]~0_combout\ & ((\Add1~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enum_op.op_addCarry_1084~combout\,
	datab => \regEntradaTesteFlags[1]~0_combout\,
	datac => \Add2~16_combout\,
	datad => \Add1~16_combout\,
	combout => \Selector8~2_combout\);

-- Location: LCCOMB_X34_Y22_N24
\Selector8~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector8~1_combout\ = (\Add0~16_combout\ & ((\enum_op.op_add_1096~combout\) # ((\enum_op.op_subCarry_1078~combout\ & \Add3~16_combout\)))) # (!\Add0~16_combout\ & (\enum_op.op_subCarry_1078~combout\ & (\Add3~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datab => \enum_op.op_subCarry_1078~combout\,
	datac => \Add3~16_combout\,
	datad => \enum_op.op_add_1096~combout\,
	combout => \Selector8~1_combout\);

-- Location: LCCOMB_X34_Y22_N8
\Selector8~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector8~3_combout\ = (\Selector8~0_combout\) # ((\Selector8~2_combout\) # (\Selector8~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector8~0_combout\,
	datac => \Selector8~2_combout\,
	datad => \Selector8~1_combout\,
	combout => \Selector8~3_combout\);

-- Location: FF_X34_Y22_N9
\regEntradaTesteFlags[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector8~3_combout\,
	ena => \regEntradaTesteFlags[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regEntradaTesteFlags(8));

-- Location: LCCOMB_X30_Y22_N30
\Selector5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\enum_op.op_a_or_b_1090~combout\ & ((regB(11)) # ((regA(11))))) # (!\enum_op.op_a_or_b_1090~combout\ & (\enum_op.op_a_xor_b_1066~combout\ & (regB(11) $ (regA(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regB(11),
	datab => \enum_op.op_a_xor_b_1066~combout\,
	datac => regA(11),
	datad => \enum_op.op_a_or_b_1090~combout\,
	combout => \Selector5~0_combout\);

-- Location: LCCOMB_X29_Y22_N30
\Selector5~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector5~1_combout\ = (\Add3~22_combout\ & ((\enum_op.op_subCarry_1078~combout\) # ((\enum_op.op_add_1096~combout\ & \Add0~22_combout\)))) # (!\Add3~22_combout\ & (\enum_op.op_add_1096~combout\ & (\Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~22_combout\,
	datab => \enum_op.op_add_1096~combout\,
	datac => \Add0~22_combout\,
	datad => \enum_op.op_subCarry_1078~combout\,
	combout => \Selector5~1_combout\);

-- Location: LCCOMB_X32_Y22_N26
\Selector5~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector5~2_combout\ = (\Add2~22_combout\ & ((\enum_op.op_addCarry_1084~combout\) # ((\Add1~22_combout\ & \regEntradaTesteFlags[1]~0_combout\)))) # (!\Add2~22_combout\ & (\Add1~22_combout\ & ((\regEntradaTesteFlags[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~22_combout\,
	datab => \Add1~22_combout\,
	datac => \enum_op.op_addCarry_1084~combout\,
	datad => \regEntradaTesteFlags[1]~0_combout\,
	combout => \Selector5~2_combout\);

-- Location: LCCOMB_X29_Y22_N22
\Selector5~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector5~3_combout\ = (\Selector5~0_combout\) # ((\Selector5~1_combout\) # (\Selector5~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector5~0_combout\,
	datac => \Selector5~1_combout\,
	datad => \Selector5~2_combout\,
	combout => \Selector5~3_combout\);

-- Location: FF_X29_Y22_N23
\regEntradaTesteFlags[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector5~3_combout\,
	ena => \regEntradaTesteFlags[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regEntradaTesteFlags(11));

-- Location: LCCOMB_X30_Y22_N24
\Selector7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\enum_op.op_a_or_b_1090~combout\ & ((regB(9)) # ((regA(9))))) # (!\enum_op.op_a_or_b_1090~combout\ & (\enum_op.op_a_xor_b_1066~combout\ & (regB(9) $ (regA(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regB(9),
	datab => \enum_op.op_a_xor_b_1066~combout\,
	datac => regA(9),
	datad => \enum_op.op_a_or_b_1090~combout\,
	combout => \Selector7~0_combout\);

-- Location: LCCOMB_X34_Y22_N14
\Selector7~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector7~2_combout\ = (\enum_op.op_addCarry_1084~combout\ & ((\Add2~18_combout\) # ((\Add1~18_combout\ & \regEntradaTesteFlags[1]~0_combout\)))) # (!\enum_op.op_addCarry_1084~combout\ & (\Add1~18_combout\ & (\regEntradaTesteFlags[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enum_op.op_addCarry_1084~combout\,
	datab => \Add1~18_combout\,
	datac => \regEntradaTesteFlags[1]~0_combout\,
	datad => \Add2~18_combout\,
	combout => \Selector7~2_combout\);

-- Location: LCCOMB_X34_Y22_N12
\Selector7~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector7~1_combout\ = (\enum_op.op_subCarry_1078~combout\ & ((\Add3~18_combout\) # ((\enum_op.op_add_1096~combout\ & \Add0~18_combout\)))) # (!\enum_op.op_subCarry_1078~combout\ & (\enum_op.op_add_1096~combout\ & (\Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enum_op.op_subCarry_1078~combout\,
	datab => \enum_op.op_add_1096~combout\,
	datac => \Add0~18_combout\,
	datad => \Add3~18_combout\,
	combout => \Selector7~1_combout\);

-- Location: LCCOMB_X34_Y22_N6
\Selector7~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector7~3_combout\ = (\Selector7~0_combout\) # ((\Selector7~2_combout\) # (\Selector7~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector7~0_combout\,
	datac => \Selector7~2_combout\,
	datad => \Selector7~1_combout\,
	combout => \Selector7~3_combout\);

-- Location: FF_X34_Y22_N7
\regEntradaTesteFlags[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector7~3_combout\,
	ena => \regEntradaTesteFlags[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regEntradaTesteFlags(9));

-- Location: LCCOMB_X31_Y22_N28
\Selector6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\enum_op.op_a_or_b_1090~combout\ & ((regB(10)) # ((regA(10))))) # (!\enum_op.op_a_or_b_1090~combout\ & (\enum_op.op_a_xor_b_1066~combout\ & (regB(10) $ (regA(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enum_op.op_a_or_b_1090~combout\,
	datab => regB(10),
	datac => regA(10),
	datad => \enum_op.op_a_xor_b_1066~combout\,
	combout => \Selector6~0_combout\);

-- Location: LCCOMB_X29_Y22_N28
\Selector6~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector6~1_combout\ = (\Add0~20_combout\ & ((\enum_op.op_add_1096~combout\) # ((\Add3~20_combout\ & \enum_op.op_subCarry_1078~combout\)))) # (!\Add0~20_combout\ & (((\Add3~20_combout\ & \enum_op.op_subCarry_1078~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~20_combout\,
	datab => \enum_op.op_add_1096~combout\,
	datac => \Add3~20_combout\,
	datad => \enum_op.op_subCarry_1078~combout\,
	combout => \Selector6~1_combout\);

-- Location: LCCOMB_X32_Y22_N28
\Selector6~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector6~2_combout\ = (\Add1~20_combout\ & ((\regEntradaTesteFlags[1]~0_combout\) # ((\enum_op.op_addCarry_1084~combout\ & \Add2~20_combout\)))) # (!\Add1~20_combout\ & (\enum_op.op_addCarry_1084~combout\ & (\Add2~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~20_combout\,
	datab => \enum_op.op_addCarry_1084~combout\,
	datac => \Add2~20_combout\,
	datad => \regEntradaTesteFlags[1]~0_combout\,
	combout => \Selector6~2_combout\);

-- Location: LCCOMB_X32_Y22_N30
\Selector6~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector6~3_combout\ = (\Selector6~0_combout\) # ((\Selector6~1_combout\) # (\Selector6~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector6~0_combout\,
	datac => \Selector6~1_combout\,
	datad => \Selector6~2_combout\,
	combout => \Selector6~3_combout\);

-- Location: FF_X32_Y22_N31
\regEntradaTesteFlags[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector6~3_combout\,
	ena => \regEntradaTesteFlags[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regEntradaTesteFlags(10));

-- Location: LCCOMB_X34_Y23_N12
\dParidade|saida~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dParidade|saida~2_combout\ = regEntradaTesteFlags(8) $ (regEntradaTesteFlags(11) $ (regEntradaTesteFlags(9) $ (regEntradaTesteFlags(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regEntradaTesteFlags(8),
	datab => regEntradaTesteFlags(11),
	datac => regEntradaTesteFlags(9),
	datad => regEntradaTesteFlags(10),
	combout => \dParidade|saida~2_combout\);

-- Location: LCCOMB_X32_Y23_N0
\Selector14~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector14~1_combout\ = (\enum_op.op_add_1096~combout\ & ((\Add0~4_combout\) # ((\Add3~4_combout\ & \enum_op.op_subCarry_1078~combout\)))) # (!\enum_op.op_add_1096~combout\ & (((\Add3~4_combout\ & \enum_op.op_subCarry_1078~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enum_op.op_add_1096~combout\,
	datab => \Add0~4_combout\,
	datac => \Add3~4_combout\,
	datad => \enum_op.op_subCarry_1078~combout\,
	combout => \Selector14~1_combout\);

-- Location: LCCOMB_X32_Y23_N14
\Selector14~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector14~2_combout\ = (\Add1~4_combout\ & ((\regEntradaTesteFlags[1]~0_combout\) # ((\Add2~4_combout\ & \enum_op.op_addCarry_1084~combout\)))) # (!\Add1~4_combout\ & (\Add2~4_combout\ & ((\enum_op.op_addCarry_1084~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~4_combout\,
	datab => \Add2~4_combout\,
	datac => \regEntradaTesteFlags[1]~0_combout\,
	datad => \enum_op.op_addCarry_1084~combout\,
	combout => \Selector14~2_combout\);

-- Location: LCCOMB_X30_Y23_N2
\Selector14~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (\enum_op.op_a_or_b_1090~combout\ & ((regA(2)) # ((regB(2))))) # (!\enum_op.op_a_or_b_1090~combout\ & (\enum_op.op_a_xor_b_1066~combout\ & (regA(2) $ (regB(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regA(2),
	datab => regB(2),
	datac => \enum_op.op_a_or_b_1090~combout\,
	datad => \enum_op.op_a_xor_b_1066~combout\,
	combout => \Selector14~0_combout\);

-- Location: LCCOMB_X32_Y23_N4
\Selector14~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector14~3_combout\ = (\Selector14~1_combout\) # ((\Selector14~2_combout\) # (\Selector14~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector14~1_combout\,
	datac => \Selector14~2_combout\,
	datad => \Selector14~0_combout\,
	combout => \Selector14~3_combout\);

-- Location: FF_X32_Y23_N5
\regEntradaTesteFlags[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector14~3_combout\,
	ena => \regEntradaTesteFlags[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regEntradaTesteFlags(2));

-- Location: LCCOMB_X34_Y22_N28
\Selector15~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector15~1_combout\ = (\Add0~2_combout\ & ((\enum_op.op_add_1096~combout\) # ((\enum_op.op_subCarry_1078~combout\ & \Add3~2_combout\)))) # (!\Add0~2_combout\ & (\enum_op.op_subCarry_1078~combout\ & (\Add3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \enum_op.op_subCarry_1078~combout\,
	datac => \Add3~2_combout\,
	datad => \enum_op.op_add_1096~combout\,
	combout => \Selector15~1_combout\);

-- Location: LCCOMB_X34_Y22_N22
\Selector15~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector15~2_combout\ = (\enum_op.op_addCarry_1084~combout\ & ((\Add2~2_combout\) # ((\Add1~2_combout\ & \regEntradaTesteFlags[1]~0_combout\)))) # (!\enum_op.op_addCarry_1084~combout\ & (\Add1~2_combout\ & (\regEntradaTesteFlags[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enum_op.op_addCarry_1084~combout\,
	datab => \Add1~2_combout\,
	datac => \regEntradaTesteFlags[1]~0_combout\,
	datad => \Add2~2_combout\,
	combout => \Selector15~2_combout\);

-- Location: LCCOMB_X30_Y22_N22
\Selector15~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (\enum_op.op_a_or_b_1090~combout\ & ((regA(1)) # ((regB(1))))) # (!\enum_op.op_a_or_b_1090~combout\ & (\enum_op.op_a_xor_b_1066~combout\ & (regA(1) $ (regB(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regA(1),
	datab => regB(1),
	datac => \enum_op.op_a_xor_b_1066~combout\,
	datad => \enum_op.op_a_or_b_1090~combout\,
	combout => \Selector15~0_combout\);

-- Location: LCCOMB_X34_Y22_N2
\Selector15~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector15~3_combout\ = (\Selector15~1_combout\) # ((\Selector15~2_combout\) # (\Selector15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector15~1_combout\,
	datac => \Selector15~2_combout\,
	datad => \Selector15~0_combout\,
	combout => \Selector15~3_combout\);

-- Location: FF_X34_Y22_N3
\regEntradaTesteFlags[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector15~3_combout\,
	ena => \regEntradaTesteFlags[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regEntradaTesteFlags(1));

-- Location: LCCOMB_X36_Y22_N12
\Selector16~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector16~1_combout\ = (\enum_op.op_a_or_b_1090~combout\ & ((regA(0)) # (regB(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => regA(0),
	datac => regB(0),
	datad => \enum_op.op_a_or_b_1090~combout\,
	combout => \Selector16~1_combout\);

-- Location: LCCOMB_X36_Y22_N22
\Selector16~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector16~2_combout\ = (\Selector16~1_combout\) # ((\Add0~0_combout\ & ((\enum_op.op_a_xor_b_1066~combout\) # (\enum_op.op_add_1096~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enum_op.op_a_xor_b_1066~combout\,
	datab => \Add0~0_combout\,
	datac => \enum_op.op_add_1096~combout\,
	datad => \Selector16~1_combout\,
	combout => \Selector16~2_combout\);

-- Location: LCCOMB_X36_Y22_N18
\Selector16~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (regEntradaTesteFlags(0) & ((\enum_op.op_nop_1060~combout\) # ((\Add3~0_combout\ & \enum_op.op_subCarry_1078~combout\)))) # (!regEntradaTesteFlags(0) & (\Add3~0_combout\ & ((\enum_op.op_subCarry_1078~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regEntradaTesteFlags(0),
	datab => \Add3~0_combout\,
	datac => \enum_op.op_nop_1060~combout\,
	datad => \enum_op.op_subCarry_1078~combout\,
	combout => \Selector16~0_combout\);

-- Location: LCCOMB_X36_Y22_N24
\Selector16~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector16~3_combout\ = (\Selector16~2_combout\) # ((\Selector16~0_combout\) # ((\regEntradaTesteFlags[1]~0_combout\ & \Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regEntradaTesteFlags[1]~0_combout\,
	datab => \Add1~0_combout\,
	datac => \Selector16~2_combout\,
	datad => \Selector16~0_combout\,
	combout => \Selector16~3_combout\);

-- Location: LCCOMB_X36_Y22_N30
\Selector16~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector16~4_combout\ = (\Selector16~3_combout\) # ((\Add2~0_combout\ & \enum_op.op_addCarry_1084~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~0_combout\,
	datac => \enum_op.op_addCarry_1084~combout\,
	datad => \Selector16~3_combout\,
	combout => \Selector16~4_combout\);

-- Location: FF_X36_Y22_N31
\regEntradaTesteFlags[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector16~4_combout\,
	ena => \habilitaULA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regEntradaTesteFlags(0));

-- Location: LCCOMB_X29_Y23_N12
\Selector13~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector13~1_combout\ = (\Add3~6_combout\ & ((\enum_op.op_subCarry_1078~combout\) # ((\Add0~6_combout\ & \enum_op.op_add_1096~combout\)))) # (!\Add3~6_combout\ & (\Add0~6_combout\ & (\enum_op.op_add_1096~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~6_combout\,
	datab => \Add0~6_combout\,
	datac => \enum_op.op_add_1096~combout\,
	datad => \enum_op.op_subCarry_1078~combout\,
	combout => \Selector13~1_combout\);

-- Location: LCCOMB_X30_Y23_N10
\Selector13~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (\enum_op.op_a_or_b_1090~combout\ & ((regA(3)) # ((regB(3))))) # (!\enum_op.op_a_or_b_1090~combout\ & (\enum_op.op_a_xor_b_1066~combout\ & (regA(3) $ (regB(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regA(3),
	datab => regB(3),
	datac => \enum_op.op_a_or_b_1090~combout\,
	datad => \enum_op.op_a_xor_b_1066~combout\,
	combout => \Selector13~0_combout\);

-- Location: LCCOMB_X29_Y23_N6
\Selector13~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector13~2_combout\ = (\Add2~6_combout\ & ((\enum_op.op_addCarry_1084~combout\) # ((\Add1~6_combout\ & \regEntradaTesteFlags[1]~0_combout\)))) # (!\Add2~6_combout\ & (\Add1~6_combout\ & (\regEntradaTesteFlags[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => \Add1~6_combout\,
	datac => \regEntradaTesteFlags[1]~0_combout\,
	datad => \enum_op.op_addCarry_1084~combout\,
	combout => \Selector13~2_combout\);

-- Location: LCCOMB_X29_Y23_N4
\Selector13~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector13~3_combout\ = (\Selector13~1_combout\) # ((\Selector13~0_combout\) # (\Selector13~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector13~1_combout\,
	datac => \Selector13~0_combout\,
	datad => \Selector13~2_combout\,
	combout => \Selector13~3_combout\);

-- Location: FF_X29_Y23_N5
\regEntradaTesteFlags[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector13~3_combout\,
	ena => \regEntradaTesteFlags[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regEntradaTesteFlags(3));

-- Location: LCCOMB_X34_Y23_N24
\dParidade|saida~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dParidade|saida~0_combout\ = regEntradaTesteFlags(2) $ (regEntradaTesteFlags(1) $ (regEntradaTesteFlags(0) $ (regEntradaTesteFlags(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regEntradaTesteFlags(2),
	datab => regEntradaTesteFlags(1),
	datac => regEntradaTesteFlags(0),
	datad => regEntradaTesteFlags(3),
	combout => \dParidade|saida~0_combout\);

-- Location: LCCOMB_X28_Y22_N8
\Selector2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\enum_op.op_a_or_b_1090~combout\ & (((regB(14)) # (regA(14))))) # (!\enum_op.op_a_or_b_1090~combout\ & (\enum_op.op_a_xor_b_1066~combout\ & (regB(14) $ (regA(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enum_op.op_a_xor_b_1066~combout\,
	datab => regB(14),
	datac => regA(14),
	datad => \enum_op.op_a_or_b_1090~combout\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X28_Y22_N22
\Selector2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (\enum_op.op_add_1096~combout\ & ((\Add0~28_combout\) # ((\enum_op.op_subCarry_1078~combout\ & \Add3~28_combout\)))) # (!\enum_op.op_add_1096~combout\ & (\enum_op.op_subCarry_1078~combout\ & (\Add3~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enum_op.op_add_1096~combout\,
	datab => \enum_op.op_subCarry_1078~combout\,
	datac => \Add3~28_combout\,
	datad => \Add0~28_combout\,
	combout => \Selector2~1_combout\);

-- Location: LCCOMB_X32_Y22_N24
\Selector2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector2~2_combout\ = (\Add1~28_combout\ & ((\regEntradaTesteFlags[1]~0_combout\) # ((\enum_op.op_addCarry_1084~combout\ & \Add2~28_combout\)))) # (!\Add1~28_combout\ & (\enum_op.op_addCarry_1084~combout\ & ((\Add2~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~28_combout\,
	datab => \enum_op.op_addCarry_1084~combout\,
	datac => \regEntradaTesteFlags[1]~0_combout\,
	datad => \Add2~28_combout\,
	combout => \Selector2~2_combout\);

-- Location: LCCOMB_X28_Y22_N26
\Selector2~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector2~3_combout\ = (\Selector2~0_combout\) # ((\Selector2~1_combout\) # (\Selector2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector2~0_combout\,
	datac => \Selector2~1_combout\,
	datad => \Selector2~2_combout\,
	combout => \Selector2~3_combout\);

-- Location: FF_X28_Y22_N27
\regEntradaTesteFlags[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector2~3_combout\,
	ena => \regEntradaTesteFlags[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regEntradaTesteFlags(14));

-- Location: LCCOMB_X29_Y22_N20
\Selector4~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector4~1_combout\ = (\Add0~24_combout\ & ((\enum_op.op_add_1096~combout\) # ((\Add3~24_combout\ & \enum_op.op_subCarry_1078~combout\)))) # (!\Add0~24_combout\ & (((\Add3~24_combout\ & \enum_op.op_subCarry_1078~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~24_combout\,
	datab => \enum_op.op_add_1096~combout\,
	datac => \Add3~24_combout\,
	datad => \enum_op.op_subCarry_1078~combout\,
	combout => \Selector4~1_combout\);

-- Location: LCCOMB_X30_Y22_N20
\Selector4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\enum_op.op_a_or_b_1090~combout\ & ((regA(12)) # ((regB(12))))) # (!\enum_op.op_a_or_b_1090~combout\ & (\enum_op.op_a_xor_b_1066~combout\ & (regA(12) $ (regB(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regA(12),
	datab => \enum_op.op_a_xor_b_1066~combout\,
	datac => regB(12),
	datad => \enum_op.op_a_or_b_1090~combout\,
	combout => \Selector4~0_combout\);

-- Location: LCCOMB_X32_Y22_N20
\Selector4~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector4~2_combout\ = (\Add1~24_combout\ & ((\regEntradaTesteFlags[1]~0_combout\) # ((\enum_op.op_addCarry_1084~combout\ & \Add2~24_combout\)))) # (!\Add1~24_combout\ & (\enum_op.op_addCarry_1084~combout\ & (\Add2~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~24_combout\,
	datab => \enum_op.op_addCarry_1084~combout\,
	datac => \Add2~24_combout\,
	datad => \regEntradaTesteFlags[1]~0_combout\,
	combout => \Selector4~2_combout\);

-- Location: LCCOMB_X29_Y22_N24
\Selector4~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector4~3_combout\ = (\Selector4~1_combout\) # ((\Selector4~0_combout\) # (\Selector4~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector4~1_combout\,
	datac => \Selector4~0_combout\,
	datad => \Selector4~2_combout\,
	combout => \Selector4~3_combout\);

-- Location: FF_X29_Y22_N25
\regEntradaTesteFlags[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector4~3_combout\,
	ena => \regEntradaTesteFlags[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regEntradaTesteFlags(12));

-- Location: LCCOMB_X30_Y22_N18
\Selector3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\enum_op.op_a_or_b_1090~combout\ & ((regB(13)) # ((regA(13))))) # (!\enum_op.op_a_or_b_1090~combout\ & (\enum_op.op_a_xor_b_1066~combout\ & (regB(13) $ (regA(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regB(13),
	datab => \enum_op.op_a_xor_b_1066~combout\,
	datac => regA(13),
	datad => \enum_op.op_a_or_b_1090~combout\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X28_Y22_N14
\Selector3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = (\enum_op.op_add_1096~combout\ & ((\Add0~26_combout\) # ((\Add3~26_combout\ & \enum_op.op_subCarry_1078~combout\)))) # (!\enum_op.op_add_1096~combout\ & (((\Add3~26_combout\ & \enum_op.op_subCarry_1078~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enum_op.op_add_1096~combout\,
	datab => \Add0~26_combout\,
	datac => \Add3~26_combout\,
	datad => \enum_op.op_subCarry_1078~combout\,
	combout => \Selector3~1_combout\);

-- Location: LCCOMB_X32_Y22_N22
\Selector3~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector3~2_combout\ = (\Add2~26_combout\ & ((\enum_op.op_addCarry_1084~combout\) # ((\Add1~26_combout\ & \regEntradaTesteFlags[1]~0_combout\)))) # (!\Add2~26_combout\ & (((\Add1~26_combout\ & \regEntradaTesteFlags[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~26_combout\,
	datab => \enum_op.op_addCarry_1084~combout\,
	datac => \Add1~26_combout\,
	datad => \regEntradaTesteFlags[1]~0_combout\,
	combout => \Selector3~2_combout\);

-- Location: LCCOMB_X28_Y22_N4
\Selector3~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector3~3_combout\ = (\Selector3~0_combout\) # ((\Selector3~1_combout\) # (\Selector3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~0_combout\,
	datac => \Selector3~1_combout\,
	datad => \Selector3~2_combout\,
	combout => \Selector3~3_combout\);

-- Location: FF_X28_Y22_N5
\regEntradaTesteFlags[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector3~3_combout\,
	ena => \regEntradaTesteFlags[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regEntradaTesteFlags(13));

-- Location: LCCOMB_X30_Y22_N26
\dParidade|saida~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dParidade|saida~3_combout\ = regEntradaTesteFlags(14) $ (regEntradaTesteFlags(12) $ (regEntradaTesteFlags(13) $ (regEntradaTesteFlags(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regEntradaTesteFlags(14),
	datab => regEntradaTesteFlags(12),
	datac => regEntradaTesteFlags(13),
	datad => regEntradaTesteFlags(15),
	combout => \dParidade|saida~3_combout\);

-- Location: LCCOMB_X29_Y23_N0
\Selector9~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector9~1_combout\ = (\Add3~14_combout\ & ((\enum_op.op_subCarry_1078~combout\) # ((\Add0~14_combout\ & \enum_op.op_add_1096~combout\)))) # (!\Add3~14_combout\ & (\Add0~14_combout\ & (\enum_op.op_add_1096~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~14_combout\,
	datab => \Add0~14_combout\,
	datac => \enum_op.op_add_1096~combout\,
	datad => \enum_op.op_subCarry_1078~combout\,
	combout => \Selector9~1_combout\);

-- Location: LCCOMB_X30_Y23_N14
\Selector9~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\enum_op.op_a_or_b_1090~combout\ & ((regB(7)) # ((regA(7))))) # (!\enum_op.op_a_or_b_1090~combout\ & (\enum_op.op_a_xor_b_1066~combout\ & (regB(7) $ (regA(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enum_op.op_a_or_b_1090~combout\,
	datab => regB(7),
	datac => regA(7),
	datad => \enum_op.op_a_xor_b_1066~combout\,
	combout => \Selector9~0_combout\);

-- Location: LCCOMB_X29_Y23_N10
\Selector9~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector9~2_combout\ = (\Add1~14_combout\ & ((\regEntradaTesteFlags[1]~0_combout\) # ((\Add2~14_combout\ & \enum_op.op_addCarry_1084~combout\)))) # (!\Add1~14_combout\ & (\Add2~14_combout\ & ((\enum_op.op_addCarry_1084~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~14_combout\,
	datab => \Add2~14_combout\,
	datac => \regEntradaTesteFlags[1]~0_combout\,
	datad => \enum_op.op_addCarry_1084~combout\,
	combout => \Selector9~2_combout\);

-- Location: LCCOMB_X29_Y23_N2
\Selector9~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector9~3_combout\ = (\Selector9~1_combout\) # ((\Selector9~0_combout\) # (\Selector9~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector9~1_combout\,
	datac => \Selector9~0_combout\,
	datad => \Selector9~2_combout\,
	combout => \Selector9~3_combout\);

-- Location: FF_X29_Y23_N3
\regEntradaTesteFlags[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector9~3_combout\,
	ena => \regEntradaTesteFlags[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regEntradaTesteFlags(7));

-- Location: LCCOMB_X31_Y23_N12
\Selector12~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\enum_op.op_a_or_b_1090~combout\ & (((regB(4)) # (regA(4))))) # (!\enum_op.op_a_or_b_1090~combout\ & (\enum_op.op_a_xor_b_1066~combout\ & (regB(4) $ (regA(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enum_op.op_a_xor_b_1066~combout\,
	datab => regB(4),
	datac => regA(4),
	datad => \enum_op.op_a_or_b_1090~combout\,
	combout => \Selector12~0_combout\);

-- Location: LCCOMB_X32_Y23_N12
\Selector12~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector12~2_combout\ = (\Add1~8_combout\ & ((\regEntradaTesteFlags[1]~0_combout\) # ((\Add2~8_combout\ & \enum_op.op_addCarry_1084~combout\)))) # (!\Add1~8_combout\ & (\Add2~8_combout\ & ((\enum_op.op_addCarry_1084~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~8_combout\,
	datab => \Add2~8_combout\,
	datac => \regEntradaTesteFlags[1]~0_combout\,
	datad => \enum_op.op_addCarry_1084~combout\,
	combout => \Selector12~2_combout\);

-- Location: LCCOMB_X31_Y23_N2
\Selector12~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector12~1_combout\ = (\enum_op.op_subCarry_1078~combout\ & ((\Add3~8_combout\) # ((\Add0~8_combout\ & \enum_op.op_add_1096~combout\)))) # (!\enum_op.op_subCarry_1078~combout\ & (\Add0~8_combout\ & (\enum_op.op_add_1096~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enum_op.op_subCarry_1078~combout\,
	datab => \Add0~8_combout\,
	datac => \enum_op.op_add_1096~combout\,
	datad => \Add3~8_combout\,
	combout => \Selector12~1_combout\);

-- Location: LCCOMB_X31_Y23_N4
\Selector12~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector12~3_combout\ = (\Selector12~0_combout\) # ((\Selector12~2_combout\) # (\Selector12~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector12~0_combout\,
	datac => \Selector12~2_combout\,
	datad => \Selector12~1_combout\,
	combout => \Selector12~3_combout\);

-- Location: FF_X31_Y23_N5
\regEntradaTesteFlags[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector12~3_combout\,
	ena => \regEntradaTesteFlags[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regEntradaTesteFlags(4));

-- Location: LCCOMB_X31_Y23_N6
\Selector10~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\enum_op.op_a_or_b_1090~combout\ & (((regB(6)) # (regA(6))))) # (!\enum_op.op_a_or_b_1090~combout\ & (\enum_op.op_a_xor_b_1066~combout\ & (regB(6) $ (regA(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enum_op.op_a_xor_b_1066~combout\,
	datab => regB(6),
	datac => regA(6),
	datad => \enum_op.op_a_or_b_1090~combout\,
	combout => \Selector10~0_combout\);

-- Location: LCCOMB_X32_Y23_N8
\Selector10~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector10~1_combout\ = (\enum_op.op_add_1096~combout\ & ((\Add0~12_combout\) # ((\enum_op.op_subCarry_1078~combout\ & \Add3~12_combout\)))) # (!\enum_op.op_add_1096~combout\ & (((\enum_op.op_subCarry_1078~combout\ & \Add3~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enum_op.op_add_1096~combout\,
	datab => \Add0~12_combout\,
	datac => \enum_op.op_subCarry_1078~combout\,
	datad => \Add3~12_combout\,
	combout => \Selector10~1_combout\);

-- Location: LCCOMB_X32_Y23_N10
\Selector10~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector10~2_combout\ = (\Add1~12_combout\ & ((\regEntradaTesteFlags[1]~0_combout\) # ((\Add2~12_combout\ & \enum_op.op_addCarry_1084~combout\)))) # (!\Add1~12_combout\ & (\Add2~12_combout\ & ((\enum_op.op_addCarry_1084~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~12_combout\,
	datab => \Add2~12_combout\,
	datac => \regEntradaTesteFlags[1]~0_combout\,
	datad => \enum_op.op_addCarry_1084~combout\,
	combout => \Selector10~2_combout\);

-- Location: LCCOMB_X32_Y23_N2
\Selector10~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector10~3_combout\ = (\Selector10~0_combout\) # ((\Selector10~1_combout\) # (\Selector10~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector10~0_combout\,
	datac => \Selector10~1_combout\,
	datad => \Selector10~2_combout\,
	combout => \Selector10~3_combout\);

-- Location: FF_X32_Y23_N3
\regEntradaTesteFlags[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector10~3_combout\,
	ena => \regEntradaTesteFlags[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regEntradaTesteFlags(6));

-- Location: LCCOMB_X31_Y23_N0
\Selector11~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\enum_op.op_a_or_b_1090~combout\ & (((regA(5)) # (regB(5))))) # (!\enum_op.op_a_or_b_1090~combout\ & (\enum_op.op_a_xor_b_1066~combout\ & (regA(5) $ (regB(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enum_op.op_a_xor_b_1066~combout\,
	datab => regA(5),
	datac => regB(5),
	datad => \enum_op.op_a_or_b_1090~combout\,
	combout => \Selector11~0_combout\);

-- Location: LCCOMB_X30_Y23_N0
\Selector11~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector11~1_combout\ = (\enum_op.op_add_1096~combout\ & ((\Add0~10_combout\) # ((\Add3~10_combout\ & \enum_op.op_subCarry_1078~combout\)))) # (!\enum_op.op_add_1096~combout\ & (((\Add3~10_combout\ & \enum_op.op_subCarry_1078~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enum_op.op_add_1096~combout\,
	datab => \Add0~10_combout\,
	datac => \Add3~10_combout\,
	datad => \enum_op.op_subCarry_1078~combout\,
	combout => \Selector11~1_combout\);

-- Location: LCCOMB_X32_Y23_N6
\Selector11~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector11~2_combout\ = (\Add2~10_combout\ & ((\enum_op.op_addCarry_1084~combout\) # ((\Add1~10_combout\ & \regEntradaTesteFlags[1]~0_combout\)))) # (!\Add2~10_combout\ & (\Add1~10_combout\ & (\regEntradaTesteFlags[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~10_combout\,
	datab => \Add1~10_combout\,
	datac => \regEntradaTesteFlags[1]~0_combout\,
	datad => \enum_op.op_addCarry_1084~combout\,
	combout => \Selector11~2_combout\);

-- Location: LCCOMB_X31_Y23_N14
\Selector11~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector11~3_combout\ = (\Selector11~0_combout\) # ((\Selector11~1_combout\) # (\Selector11~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector11~0_combout\,
	datac => \Selector11~1_combout\,
	datad => \Selector11~2_combout\,
	combout => \Selector11~3_combout\);

-- Location: FF_X31_Y23_N15
\regEntradaTesteFlags[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector11~3_combout\,
	ena => \regEntradaTesteFlags[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => regEntradaTesteFlags(5));

-- Location: LCCOMB_X34_Y23_N18
\dParidade|saida~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dParidade|saida~1_combout\ = regEntradaTesteFlags(7) $ (regEntradaTesteFlags(4) $ (regEntradaTesteFlags(6) $ (regEntradaTesteFlags(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regEntradaTesteFlags(7),
	datab => regEntradaTesteFlags(4),
	datac => regEntradaTesteFlags(6),
	datad => regEntradaTesteFlags(5),
	combout => \dParidade|saida~1_combout\);

-- Location: LCCOMB_X34_Y23_N22
\dParidade|saida~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dParidade|saida~4_combout\ = \dParidade|saida~2_combout\ $ (\dParidade|saida~0_combout\ $ (\dParidade|saida~3_combout\ $ (\dParidade|saida~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dParidade|saida~2_combout\,
	datab => \dParidade|saida~0_combout\,
	datac => \dParidade|saida~3_combout\,
	datad => \dParidade|saida~1_combout\,
	combout => \dParidade|saida~4_combout\);

-- Location: FF_X32_Y23_N31
\flagSinal~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => regEntradaTesteFlags(15),
	sload => VCC,
	ena => \regEntradaTesteFlags[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flagSinal~reg0_q\);

-- Location: LCCOMB_X34_Y23_N26
\dZeroFlag|saida~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dZeroFlag|saida~1_combout\ = (regEntradaTesteFlags(7)) # ((regEntradaTesteFlags(4)) # ((regEntradaTesteFlags(6)) # (regEntradaTesteFlags(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regEntradaTesteFlags(7),
	datab => regEntradaTesteFlags(4),
	datac => regEntradaTesteFlags(6),
	datad => regEntradaTesteFlags(5),
	combout => \dZeroFlag|saida~1_combout\);

-- Location: LCCOMB_X34_Y23_N0
\dZeroFlag|saida~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dZeroFlag|saida~2_combout\ = (regEntradaTesteFlags(8)) # ((regEntradaTesteFlags(11)) # ((regEntradaTesteFlags(9)) # (regEntradaTesteFlags(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regEntradaTesteFlags(8),
	datab => regEntradaTesteFlags(11),
	datac => regEntradaTesteFlags(9),
	datad => regEntradaTesteFlags(10),
	combout => \dZeroFlag|saida~2_combout\);

-- Location: LCCOMB_X35_Y22_N0
\dZeroFlag|saida~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dZeroFlag|saida~3_combout\ = (regEntradaTesteFlags(14)) # ((regEntradaTesteFlags(13)) # ((regEntradaTesteFlags(12)) # (regEntradaTesteFlags(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regEntradaTesteFlags(14),
	datab => regEntradaTesteFlags(13),
	datac => regEntradaTesteFlags(12),
	datad => regEntradaTesteFlags(15),
	combout => \dZeroFlag|saida~3_combout\);

-- Location: LCCOMB_X34_Y23_N16
\dZeroFlag|saida~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dZeroFlag|saida~0_combout\ = (regEntradaTesteFlags(2)) # ((regEntradaTesteFlags(1)) # ((regEntradaTesteFlags(0)) # (regEntradaTesteFlags(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => regEntradaTesteFlags(2),
	datab => regEntradaTesteFlags(1),
	datac => regEntradaTesteFlags(0),
	datad => regEntradaTesteFlags(3),
	combout => \dZeroFlag|saida~0_combout\);

-- Location: LCCOMB_X34_Y23_N10
\dZeroFlag|saida~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dZeroFlag|saida~4_combout\ = (\dZeroFlag|saida~1_combout\) # ((\dZeroFlag|saida~2_combout\) # ((\dZeroFlag|saida~3_combout\) # (\dZeroFlag|saida~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dZeroFlag|saida~1_combout\,
	datab => \dZeroFlag|saida~2_combout\,
	datac => \dZeroFlag|saida~3_combout\,
	datad => \dZeroFlag|saida~0_combout\,
	combout => \dZeroFlag|saida~4_combout\);

-- Location: LCCOMB_X35_Y22_N18
\resultado[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \resultado[0]~0_combout\ = (!\enum_op.op_a_comp_b_1054~combout\ & (\habilitaULA~input_o\ & !\enum_op.op_nop_1060~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enum_op.op_a_comp_b_1054~combout\,
	datab => \habilitaULA~input_o\,
	datad => \enum_op.op_nop_1060~combout\,
	combout => \resultado[0]~0_combout\);

-- Location: FF_X35_Y22_N19
\resultado[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => regEntradaTesteFlags(0),
	sload => VCC,
	ena => \resultado[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \resultado[0]~reg0_q\);

-- Location: LCCOMB_X35_Y22_N8
\resultado[1]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \resultado[1]~reg0feeder_combout\ = regEntradaTesteFlags(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => regEntradaTesteFlags(1),
	combout => \resultado[1]~reg0feeder_combout\);

-- Location: FF_X35_Y22_N9
\resultado[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \resultado[1]~reg0feeder_combout\,
	ena => \resultado[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \resultado[1]~reg0_q\);

-- Location: FF_X35_Y22_N11
\resultado[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => regEntradaTesteFlags(2),
	sload => VCC,
	ena => \resultado[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \resultado[2]~reg0_q\);

-- Location: LCCOMB_X35_Y22_N12
\resultado[3]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \resultado[3]~reg0feeder_combout\ = regEntradaTesteFlags(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => regEntradaTesteFlags(3),
	combout => \resultado[3]~reg0feeder_combout\);

-- Location: FF_X35_Y22_N13
\resultado[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \resultado[3]~reg0feeder_combout\,
	ena => \resultado[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \resultado[3]~reg0_q\);

-- Location: LCCOMB_X35_Y22_N22
\resultado[4]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \resultado[4]~reg0feeder_combout\ = regEntradaTesteFlags(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => regEntradaTesteFlags(4),
	combout => \resultado[4]~reg0feeder_combout\);

-- Location: FF_X35_Y22_N23
\resultado[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \resultado[4]~reg0feeder_combout\,
	ena => \resultado[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \resultado[4]~reg0_q\);

-- Location: LCCOMB_X35_Y22_N24
\resultado[5]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \resultado[5]~reg0feeder_combout\ = regEntradaTesteFlags(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => regEntradaTesteFlags(5),
	combout => \resultado[5]~reg0feeder_combout\);

-- Location: FF_X35_Y22_N25
\resultado[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \resultado[5]~reg0feeder_combout\,
	ena => \resultado[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \resultado[5]~reg0_q\);

-- Location: LCCOMB_X35_Y22_N30
\resultado[6]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \resultado[6]~reg0feeder_combout\ = regEntradaTesteFlags(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => regEntradaTesteFlags(6),
	combout => \resultado[6]~reg0feeder_combout\);

-- Location: FF_X35_Y22_N31
\resultado[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \resultado[6]~reg0feeder_combout\,
	ena => \resultado[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \resultado[6]~reg0_q\);

-- Location: LCCOMB_X35_Y22_N16
\resultado[7]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \resultado[7]~reg0feeder_combout\ = regEntradaTesteFlags(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => regEntradaTesteFlags(7),
	combout => \resultado[7]~reg0feeder_combout\);

-- Location: FF_X35_Y22_N17
\resultado[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \resultado[7]~reg0feeder_combout\,
	ena => \resultado[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \resultado[7]~reg0_q\);

-- Location: FF_X34_Y22_N19
\resultado[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => regEntradaTesteFlags(8),
	sload => VCC,
	ena => \resultado[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \resultado[8]~reg0_q\);

-- Location: FF_X35_Y22_N15
\resultado[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => regEntradaTesteFlags(9),
	sload => VCC,
	ena => \resultado[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \resultado[9]~reg0_q\);

-- Location: FF_X35_Y22_N5
\resultado[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => regEntradaTesteFlags(10),
	sload => VCC,
	ena => \resultado[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \resultado[10]~reg0_q\);

-- Location: LCCOMB_X35_Y22_N2
\resultado[11]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \resultado[11]~reg0feeder_combout\ = regEntradaTesteFlags(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => regEntradaTesteFlags(11),
	combout => \resultado[11]~reg0feeder_combout\);

-- Location: FF_X35_Y22_N3
\resultado[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \resultado[11]~reg0feeder_combout\,
	ena => \resultado[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \resultado[11]~reg0_q\);

-- Location: FF_X35_Y22_N21
\resultado[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => regEntradaTesteFlags(12),
	sload => VCC,
	ena => \resultado[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \resultado[12]~reg0_q\);

-- Location: FF_X35_Y22_N27
\resultado[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => regEntradaTesteFlags(13),
	sload => VCC,
	ena => \resultado[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \resultado[13]~reg0_q\);

-- Location: FF_X35_Y22_N29
\resultado[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => regEntradaTesteFlags(14),
	sload => VCC,
	ena => \resultado[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \resultado[14]~reg0_q\);

-- Location: FF_X35_Y22_N7
\resultado[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => regEntradaTesteFlags(15),
	sload => VCC,
	ena => \resultado[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \resultado[15]~reg0_q\);

ww_flagCarry <= \flagCarry~output_o\;

ww_flagOverflow <= \flagOverflow~output_o\;

ww_flagParidade <= \flagParidade~output_o\;

ww_flagSinal <= \flagSinal~output_o\;

ww_flagZero <= \flagZero~output_o\;

ww_flagAuxiliar <= \flagAuxiliar~output_o\;

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
END structure;


