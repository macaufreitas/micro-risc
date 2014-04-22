--------------------------------------------------------------------------------------
-------------- Codigo que testa o Detector de Paridade do Microprocessador -----------
--------------------------------------------------------------------------------------

-------- Bibliotecas e Pacotes -------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
--------------------------------------

entity DetectorParidadeTB is
end DetectorParidadeTB;

architecture ArquiteturaDPTB of DetectorParidadeTB is

	-- Declaracao dos sinais do test bench
	signal entrada_tb : std_logic_vector (15 downto 0);
	signal saida_tb : std_logic;
	
	-- Constante para controle do tempo
	constant periodoClock : time := 50 ns;
	
	-- Instancia Detector de Paridade
	component DetectorParidade
		port (
			entrada   : in std_logic_vector (15 downto 0);
			saida     : out std_logic
		);
	end component;
	
begin
	DParidade : DetectorParidade port map(entrada_tb, saida_tb);
	
	process
	begin
		-----------------------
		entrada_tb <= X"0000";
		wait for periodoClock;
		-----------------------
		
		-----------------------
		entrada_tb <= X"0001";
		wait for periodoClock;
		-----------------------
		
		-----------------------
		entrada_tb <= X"F000";
		wait for periodoClock;
		-----------------------
		
		-----------------------
		entrada_tb <= X"0F40";
		wait for periodoClock;
		-----------------------
		
		-----------------------
		entrada_tb <= X"CE45";
		wait for periodoClock;
		-----------------------
		
		-----------------------
		entrada_tb <= X"5602";
		wait for periodoClock;
		-----------------------
		
		wait;
	end process;
end ArquiteturaDPTB;