--------------------------------------------------------------------------------------
---------- Codigo que testa o Detector de Zero Flag do Microprocessador --------------
--------------------------------------------------------------------------------------

-------- Bibliotecas e Pacotes -------
library ieee;
use ieee.std_logic_1164.all;
--------------------------------------

entity DetectorZeroFlagTB is
end DetectorZeroFlagTB;

architecture ArquiteturaDZFTB of DetectorZeroFlagTB is

	-- Declaracao Sinais do test bench
	signal resultado_tb : std_logic_vector(15 downto 0);
	signal saida_tb : std_logic;
	
	-- Instancia do Detector de Zero Flag
	component DetectorZeroFlag
		port(
			resultado : in std_logic_vector(15 downto 0);
			saida : out std_logic
		);
	end component;
	
	-- Constante para controle do tempo
	constant periodo : time := 50 ns;

begin

	DZFlag : DetectorZeroFlag port map(resultado_tb, saida_tb);
	
	process
	begin
		
		------------------------------
		resultado_tb <= X"AB02";
		wait for periodo;
		------------------------------
		
		------------------------------
		resultado_tb <= X"0000";
		wait for periodo;
		------------------------------
		
		------------------------------
		resultado_tb <= X"FF0A";
		wait for periodo;
		------------------------------
		
		------------------------------
		resultado_tb <= X"AC2A";
		wait for periodo;
		------------------------------
		
		------------------------------
		resultado_tb <= X"0000";
		wait for periodo;
		------------------------------
		
		------------------------------
		resultado_tb <= X"FF00";
		wait for periodo;
		------------------------------
		
		wait;
		
	end process;

end ArquiteturaDZFTB;