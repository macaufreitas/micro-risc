--------------------------------------------------------------------------------------
-------------- Codigo que testa o Multiplexador do Microprocessador ------------------
--------------------------------------------------------------------------------------

-------- Bibliotecas e Pacotes -------
library ieee;
use ieee.std_logic_1164.all;
--------------------------------------

entity MultiplexadorTB is
end MultiplexadorTB;

architecture ArquiteturaMuxTB of MultiplexadorTB is

	-- Declaracao dos Sinais do Test Bench
	signal entradaTB_01, entradaTB_02, saida_tb : std_logic_vector (15 downto 0);
	signal seletor_tb : std_logic;
	
	-- Instancia do Demultiplexador
	component Multiplexador
	port (
		entrada_01 : in  std_logic_vector (15 downto 0);
		entrada_02 : in  std_logic_vector (15 downto 0);
		saida		  : out std_logic_vector (15 downto 0);
		seletor    : in  std_logic
	);
	end component;
	
begin

	Mux: Multiplexador port map (entradaTB_01, entradaTB_02, saida_tb, seletor_tb);
	process
	begin
		-- Seleciona entrada 01 --
		entradaTB_01 <= X"1234";
		seletor_tb <= '0';
		wait for 30 ns;
		------------------------
		
		-- Seleciona entrada 02 --
		entradaTB_02 <= X"ABCD";
		seletor_tb <= '1';
		wait for 30 ns;
		------------------------
		
		-- Seleciona saida 01 --
		entradaTB_01 <= X"FEDC";
		seletor_tb <= '0';
		wait for 30 ns;
		------------------------
		
		-- Seleciona saida 02 --
		entradaTB_02 <= X"56AB";
		seletor_tb <= '1';
		wait for 30 ns;
		------------------------
		wait;
	end process;

end ArquiteturaMuxTB;