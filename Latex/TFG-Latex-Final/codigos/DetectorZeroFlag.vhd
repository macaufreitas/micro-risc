-------- Bibliotecas e Pacotes -------
library ieee;
use ieee.std_logic_1164.all;
--------------------------------------

entity DetectorZeroFlag is
	port(
		resultado : in std_logic_vector(15 downto 0);
		saida : out std_logic
	);
end DetectorZeroFlag;

architecture ArquiteturaDZF of DetectorZeroFlag is
begin
	process(resultado)
	begin
		saida <= not(resultado(0) or resultado(1) or resultado(2) or resultado(3) or resultado(4) or 
						 resultado(5) or resultado(6) or resultado(7) or resultado(8) or resultado(9) or
						 resultado(10) or resultado(11) or resultado(12) or resultado(13) or 
						 resultado(14) or resultado(15));
	end process;
end ArquiteturaDZF;