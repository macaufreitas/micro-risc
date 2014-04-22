--------------------------------------------------------------------------------------
------ Codigo que implementa a Unidade Aritmetica e Logica do Microprocessador -------
--------------------------------------------------------------------------------------

-------- Bibliotecas e Pacotes -------
library ieee;
library work;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
--------------------------------------

entity ULA is
	port (
		clock	           : in  std_logic;
		seletor 	        : in  std_logic_vector(2 downto 0); -- seletor de operações
		carryIn	        : in  std_logic;
		entradaA			  : in  std_logic_vector(15 downto 0); -- entrada de dados A
		entradaB			  : in  std_logic_vector(15 downto 0); -- entrada de dados B
		habilitaULA		  : in  std_logic;
		flagCarry	     : out std_logic;
		flagOverflow     : out std_logic;
		flagParidade     : out std_logic;
		flagSinal        : out std_logic;
		flagZero			  : out std_logic;
		flagAuxiliar     : out std_logic;
		resultado        : out std_logic_vector(15 downto 0)
	);
end ULA;

architecture arquiteturaULA of ULA is

	-- tipos possíveis de operações
	type op_type is (op_add,op_a_or_b,op_addCarry,op_subCarry,
						  op_sub,op_a_xor_b,op_nop, op_a_comp_b);
						  
	signal enum_op : op_type;
	signal op : std_logic_vector(2 downto 0);
	
	--sinais de registro dos valores de entrada e calculado
   signal reg, regEntradaTesteFlags : std_logic_vector(16 downto 0);
	signal regA,regB : std_logic_vector(15 downto 0);
	
	component DetectorZeroFlag
		port(
			resultado : in std_logic_vector(15 downto 0);
			saida : out std_logic
		);
	end component;
	
	component DetectorParidade
		port (
			entrada : in std_logic_vector(15 downto 0);
			saida : out std_logic
		);
	end component;
	
	component DetectorAuxiliarFlag
		port(
			entrada_01 : in std_logic_vector(15 downto 0);
			entrada_02 : in std_logic_vector(15 downto 0);
			carry : in std_logic;
			seletorOperacao : in std_logic_vector(2 downto 0);
			estadoFlagAuxiliar : out std_logic
		);
	end component;

begin

	--Processo que determina qual operacao deve ser realizada
	ProcessoDetermina : process(seletor)
   begin
		if(habilitaULA = '1') then
			case seletor is
				when "000"  => enum_op <= op_add;
				when "001"  => enum_op <= op_a_or_b;
				when "010"  => enum_op <= op_addCarry;
				when "011"  => enum_op <= op_subCarry;
				when "100"  => enum_op <= op_sub;
				when "101"  => enum_op <= op_a_xor_b;
				when "110"  => enum_op <= op_a_comp_b;				
				when others => enum_op <= op_nop;
			end case;
		end if;
   end process;

	--Processo que efetivamente realiza as operacoes
   ProcessoCalcula : process(clock)
   begin
      if (rising_edge(clock) and (habilitaULA = '1')) then
			regA <= entradaA;
			regB <= entradaB;
         case enum_op is
				when op_add => 
					regEntradaTesteFlags <= ('0' & regA) + regB;
					flagCarry <= regEntradaTesteFlags(16);
					flagOverflow <= (regEntradaTesteFlags(16) xor entradaA(15) xor entradaB(15) xor 
										  regEntradaTesteFlags(15)) ;
					flagSinal <= regEntradaTesteFlags(15);
					op <= "000";
					resultado <= regEntradaTesteFlags(15 downto 0);
				when op_sub => 
					regEntradaTesteFlags <= ('0' & regA) - regB;
					flagCarry <= regEntradaTesteFlags(16);
					flagOverflow <= ((not regA(15)) and regB(15) and regEntradaTesteFlags(15)) or 
										 (regA(15) and (not regB(15)) and (not regEntradaTesteFlags(15)));
					flagSinal <= regEntradaTesteFlags(15);
					op <= "001";
					resultado <= regEntradaTesteFlags(15 downto 0);
				when op_a_or_b => 
					regEntradaTesteFlags <= '0' & (regA or regB);
					flagCarry <= '0';
					flagOverflow <= '0';
					flagSinal <= regEntradaTesteFlags(15);
					op <= "010";
					resultado <= regEntradaTesteFlags(15 downto 0);
				when op_addCarry => 
					regEntradaTesteFlags <= ('0' & regA) + regB + carryIn;
					flagCarry <= regEntradaTesteFlags(16);
					flagOverflow <= regEntradaTesteFlags(16) xor regA(15) xor regB(15) xor regEntradaTesteFlags(15);
					flagSinal <= regEntradaTesteFlags(15);
					op <= "000";
					resultado <= regEntradaTesteFlags(15 downto 0);
				when op_subCarry => 
					regEntradaTesteFlags <= ('0' & regA) - regB - carryIn;
					flagCarry <= regEntradaTesteFlags(16);
					flagOverflow <= ((not regA(15)) and regB(15) and regEntradaTesteFlags(15)) or 
										 (regA(15) and (not regB(15)) and (not regEntradaTesteFlags(15)));
					flagSinal <= regEntradaTesteFlags(15);
					op <= "001";
					resultado <= regEntradaTesteFlags(15 downto 0);
				when op_a_xor_b =>
					regEntradaTesteFlags <= '0' & (regA xor regB);
					flagCarry <= '0';
					flagOverflow <= '0';
					flagSinal <= regEntradaTesteFlags(15);
					op <= "011";
					resultado <= regEntradaTesteFlags(15 downto 0);
				when op_nop => 
					reg(15) <= '0';
				when op_a_comp_b =>
					regEntradaTesteFlags <= ('0' & regA) - regB;
					flagCarry <= regEntradaTesteFlags(16);
					flagOverflow <= ((not regA(15)) and regB(15) and regEntradaTesteFlags(15)) or 
										 (regA(15) and (not regB(15)) and (not regEntradaTesteFlags(15)));
					flagSinal <= regEntradaTesteFlags(15);
					op <= "100";
				when others => 
					reg <= (others => 'Z');
			end case;
      end if;
   end process;	

	--atribuicao dos resultados finais
	dParidade : DetectorParidade port map (regEntradaTesteFlags(15 downto 0), flagParidade);
	dAuxiliarFlag : DetectorAuxiliarFlag port map (entradaA, entradaB, carryIn, op, flagAuxiliar);
	dZeroFlag : DetectorZeroFlag port map (regEntradaTesteFlags(15 downto 0), flagZero);
	
end arquiteturaULA;