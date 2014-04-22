--------------------------------------------------------------------------------------
---- Codigo que implementa Subtrator para Teste de Overflow do Microprocessador ------
--------------------------------------------------------------------------------------

-------- Bibliotecas e Pacotes -------
library ieee;
use ieee.std_logic_1164.all;
--------------------------------------

entity Subtrator is
	port(
		entradaA  : in std_logic;
		entradaB  : in std_logic;
		borrowIn  : in std_logic;
		borrowOut : out std_logic;
		saida     : out std_logic
	);
end Subtrator;

architecture ArquiteturaSubtrator of Subtrator is
begin
	Subtracao : process(entradaA, entradaB, borrowIn)
	begin
		saida <= (entradaA xor entradaB) xor borrowIn;
		borrowOut <= (((not(entradaA xor entradaB)) and borrowIn) or ((not entradaA) and entradaB));
	end process;
end ArquiteturaSubtrator;