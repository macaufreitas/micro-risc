------
------ Codigo que implementa uma Calculadora de Enderecos do Microprocessador
------

-------- Bibliotecas e Pacotes -------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
--------------------------------------

entity CalculadoraEndereco is
	port 
	(
		clock         : in std_logic;
		habilita      : in std_logic;
		habResultado  : in std_logic;
		entradaIndice : in std_logic_vector(15 downto 0);
		entradaSegmen : in std_logic_vector(15 downto 0);
		resultado     : out std_logic_vector(19 downto 0)
	);

end entity;

architecture rtl of CalculadoraEndereco is

	--Declaração dos registros
	signal regS,regI,regResult : std_logic_vector(19 downto 0) := (others => '0');

begin

	ProcessoCalculo : process(clock,habilita)
	begin
		if(rising_edge(clock) and (habilita ='1')) then
			regI <= ("0000" & entradaIndice);
			regS <= (entradaSegmen & "0000");
			regResult <= regS + regI;
		end if;
	end process;

	resultado <= regResult when habResultado = '1';
	
end rtl;
