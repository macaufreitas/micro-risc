-------- Bibliotecas e Pacotes -------
library ieee;
use ieee.std_logic_1164.all;
--------------------------------------

entity DetectorParidade is
	port (
		entrada : in std_logic_vector(15 downto 0);
		saida : out std_logic
	);
end DetectorParidade;

architecture ArquiteturaDP of DetectorParidade is
begin
	ProcessoParidade : process(entrada)
	begin
		saida <= not(entrada(15) xor entrada(14) xor entrada(13) xor entrada(12) xor entrada(11) xor entrada(10) xor
						entrada(9) xor entrada(8) xor entrada(7) xor entrada(6) xor entrada(5) xor entrada(4) xor
						entrada(3) xor entrada(2) xor entrada(1) xor entrada(0));
	end process;
end ArquiteturaDP;