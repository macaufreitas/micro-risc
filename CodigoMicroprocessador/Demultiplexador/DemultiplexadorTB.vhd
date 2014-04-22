--------------------------------------------------------------------------------------
-------------- Codigo que testa o Demultiplexador do Microprocessador ----------------
--------------------------------------------------------------------------------------

-------- Bibliotecas e Pacotes -------
library ieee;
use ieee.std_logic_1164.all;
--------------------------------------

entity DemultiplexadorTB is
end DemultiplexadorTB;

architecture ArquiteturaDemuxTB of DemultiplexadorTB is

	-- Declaracao dos Sinais do Test Bench
	signal entrada_tb, saidaTB_01, saidaTB_02 : std_logic_vector (15 downto 0);
	signal seletor_tb : std_logic;
	
	-- Instancia do Demultiplexador
	component Demultiplexador
	port (
		entrada : in std_logic_vector (15 downto 0);
		saida_01 : out std_logic_vector (15 downto 0);
		saida_02 : out std_logic_vector (15 downto 0);
		seletor : in std_logic
	);
	end component;
	
begin

	Demux: Demultiplexador port map (entrada_tb, saidaTB_01, saidaTB_02, seletor_tb);
	process
	begin
		-- Seleciona saida 01 --
		entrada_tb <= X"1234";
		seletor_tb <= '0';
		wait for 30 ns;
		------------------------
		
		-- Seleciona saida 02 --
		entrada_tb <= X"ABCD";
		seletor_tb <= '1';
		wait for 30 ns;
		------------------------
		
		-- Seleciona saida 01 --
		entrada_tb <= X"FEDC";
		seletor_tb <= '0';
		wait for 30 ns;
		------------------------
		
		-- Seleciona saida 02 --
		entrada_tb <= X"56AB";
		seletor_tb <= '1';
		wait for 30 ns;
		------------------------
	end process;

end ArquiteturaDemuxTB;