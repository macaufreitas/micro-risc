--------------------------------------------------------------------------------------
------------ Codigo que implementa o Multiplexador do Microprocessador ---------------
--------------------------------------------------------------------------------------

-------- Bibliotecas e Pacotes -------
library ieee;
use ieee.std_logic_1164.all;
--------------------------------------

entity Multiplexador is
	port (
		entrada_01 : in  std_logic_vector (15 downto 0);
		entrada_02 : in  std_logic_vector (15 downto 0);
		saida		  : out std_logic_vector (15 downto 0);
		seletor    : in  std_logic
	);
end Multiplexador;

architecture ArquiteturaMux of Multiplexador is
begin
	-- Processo que verifica mudanca na chave seletora
	process (seletor)
	begin
		if (seletor = '0') then
			saida <= entrada_01;
		else
			saida <= entrada_02;
		end if;
	end process;
end ArquiteturaMux;