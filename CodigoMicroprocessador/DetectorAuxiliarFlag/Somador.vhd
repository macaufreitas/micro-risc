--------------------------------------------------------------------------------------
----- Codigo que implementa Somador para Teste de Overflow do Microprocessador -------
--------------------------------------------------------------------------------------

-------- Bibliotecas e Pacotes -------
library ieee;
use ieee.std_logic_1164.all;
--------------------------------------

entity Somador is
	port(
		entradaA : in std_logic;
		entradaB : in std_logic;
		carryIn  : in std_logic;
		carryOut : out std_logic;
		saida    : out std_logic
	);
end Somador;

architecture ArquiteturaSomador of Somador is
begin
	Soma : process(entradaA, entradaB, carryIn)
	begin
		saida <= ((entradaA xor entradaB) xor carryIn);
		carryOut <= ((entradaA and entradaB) or ((entradaA xor entradaB) and carryIn));
	end process;
end ArquiteturaSomador;