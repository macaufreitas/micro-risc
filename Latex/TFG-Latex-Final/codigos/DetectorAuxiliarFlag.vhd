-------- Bibliotecas e Pacotes -------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
--------------------------------------

----------------------------------------------------
-- seletorOperacao = 0 ==> Operacao de Adicao ------
-- seletorOperacao = 1 ==> Operacao de Subtracao ---
----------------------------------------------------

entity DetectorAuxiliarFlag is
	port(
		entrada_01 : in std_logic_vector(15 downto 0);
		entrada_02 : in std_logic_vector(15 downto 0);
		carry : in std_logic;
		seletorOperacao : in std_logic_vector(2 downto 0);
		estadoFlagAuxiliar : out std_logic
	);
end DetectorAuxiliarFlag;

architecture ArquiteturaDAF of DetectorAuxiliarFlag is

	-- Instancia do Somador
	component Somador
		port(
			entradaA : in std_logic;
			entradaB : in std_logic;
			carryIn  : in std_logic;
			carryOut : out std_logic;
			saida    : out std_logic
		);
	end component;
	
	-- Instancia do Subtrator
	component Subtrator
		port(
			entradaA  : in std_logic;
			entradaB  : in std_logic;
			borrowIn  : in std_logic;
			borrowOut : out std_logic;
			saida     : out std_logic
		);
	end component;
	
	-- Sinais auxiliares
	signal c0, c1, c2, c3, c4 : std_logic;
	signal b0, b1, b2, b3, b4 : std_logic;
	signal ra0, ra1, ra2, ra3, ra4 : std_logic;
	signal rs0, rs1, rs2, rs3, rs4 : std_logic;

begin

	Add0: Somador port map(entrada_01(0), entrada_02(0), carry, c0, ra0);
	Add1: Somador port map(entrada_01(1), entrada_02(1), c0, c1, ra1);
	Add2: Somador port map(entrada_01(2), entrada_02(2), c1, c2, ra2);
	Add3: Somador port map(entrada_01(3), entrada_02(3), c2, c3, ra3);
	Add4: Somador port map(entrada_01(4), entrada_02(4), c3, c4, ra4);
	
	Sub0: Subtrator port map(entrada_01(0), entrada_02(0), carry, b0, rs0);
	Sub1: Subtrator port map(entrada_01(1), entrada_02(1), b0, b1, rs1);
	Sub2: Subtrator port map(entrada_01(2), entrada_02(2), b1, b2, rs2);
	Sub3: Subtrator port map(entrada_01(3), entrada_02(3), b2, b3, rs3);
	Sub4: Subtrator port map(entrada_01(4), entrada_02(4), b3, b4, rs4);

	process(entrada_01, entrada_02, seletorOperacao, b3, c3)
	begin
		case seletorOperacao is
			when "000" =>
				estadoFlagAuxiliar <= c3;
			when "001" =>
				estadoFlagAuxiliar <= b3;
			when others =>
				estadoFlagAuxiliar <= 'Z';
		end case;
	end process;

end ArquiteturaDAF;

