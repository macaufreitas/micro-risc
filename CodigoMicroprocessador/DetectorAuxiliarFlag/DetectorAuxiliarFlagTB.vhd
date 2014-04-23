--------------------------------------------------------------------------------------
------------ Codigo que testa a Interface de FlagAuxiliar do Microprocessador --------
--------------------------------------------------------------------------------------

-------- Bibliotecas e Pacotes -------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
--------------------------------------

entity DetectorAuxiliarFlagTB is
end DetectorAuxiliarFlagTB;

architecture ArquiteturaDAFTB of DetectorAuxiliarFlagTB is

	-- Declaracao Sinais do test bench
	signal entrada_01_tb, entrada_02_tb : std_logic_vector(15 downto 0);
	signal carry_tb, seletorOperacao_tb : std_logic;
	signal estadoFlagAuxiliar_tb : std_logic;
	
	-- Constante para controle do tempo
	constant periodoClock : time := 50 ns;
	
	-- Instancia da Interface dos Flags
	component DetectorAuxiliarFlag
		port(
			entrada_01 : in std_logic_vector(15 downto 0);
			entrada_02 : in std_logic_vector(15 downto 0);
			carry : in std_logic;
			seletorOperacao : in std_logic;
			estadoFlagAuxiliar : out std_logic
		);
	end component;
	
begin
	
	DetAFlag : DetectorAuxiliarFlag port map(entrada_01_tb, entrada_02_tb, carry_tb, 
														  seletorOperacao_tb, estadoFlagAuxiliar_tb);
	
	process
	begin
		
		-------------------------
		entrada_01_tb <= X"000A";
		entrada_02_tb <= X"000D";
		seletorOperacao_tb <= '0';
		carry_tb <= '0';
		wait for periodoClock;
		-------------------------
		
		-------------------------
		entrada_01_tb <= X"101A";
		entrada_02_tb <= X"0A02";
		seletorOperacao_tb <= '1';
		carry_tb <= '0';
		wait for periodoClock;
		-------------------------
		
		-------------------------
		entrada_01_tb <= X"00FC";
		entrada_02_tb <= X"00EA";
		seletorOperacao_tb <= '0';
		carry_tb <= '1';
		wait for periodoClock;
		-------------------------
		
		-------------------------
		entrada_01_tb <= X"FF0A";
		entrada_02_tb <= X"FE0D";
		seletorOperacao_tb <= '1';
		carry_tb <= '1';
		wait for periodoClock;
		-------------------------
		
		-------------------------
		entrada_01_tb <= X"F00A";
		entrada_02_tb <= X"000D";
		seletorOperacao_tb <= '0';
		carry_tb <= '0';
		wait for periodoClock;
		-------------------------
		
		-------------------------
		entrada_01_tb <= X"FFFF";
		entrada_02_tb <= X"FFFF";
		seletorOperacao_tb <= '1';
		carry_tb <= '0';
		wait for periodoClock;
		-------------------------
		
		wait;
		
	end process;
	
end ArquiteturaDAFTB;