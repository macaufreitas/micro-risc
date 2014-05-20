-----------
----------- Codigo que implementa o Demultiplexador do Microprocessador
-----------

-------- Bibliotecas e Pacotes -------
library ieee;
use ieee.std_logic_1164.all;
--------------------------------------

entity Demultiplexador is
	port (
		entrada : in std_logic_vector (15 downto 0);
		saida_01 : out std_logic_vector (15 downto 0);
		saida_02 : out std_logic_vector (15 downto 0);
		seletor : in std_logic
	);
end Demultiplexador;

architecture ArquiteturaDemux of Demultiplexador is
begin
	-- Processo que verifica mudanca na chave seletora
	process (seletor,entrada)
	begin
		if (seletor = '0') then
			saida_01 <= entrada;
		else
			saida_02 <= entrada;
		end if;
	end process;
end ArquiteturaDemux;