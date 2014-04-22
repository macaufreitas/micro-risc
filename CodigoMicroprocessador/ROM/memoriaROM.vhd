--------------------------------------------------------------------------------------
----------------------- Codigo que implementa uma memória ROM ------------------------
--------------------------------------------------------------------------------------

-------- Bibliotecas e Pacotes -------
library ieee;
use ieee.std_logic_1164.all;
--------------------------------------

entity memoriaROM is
	port (
		clk          : in std_logic;
      endereco     : integer range 0 to 255;
      habilita     : in  std_logic;
      saida        : out std_logic_vector(15 downto 0)
		  );
end memoriaROM;

architecture arch of memoriaROM is
--                                    faixa nao limitada
--                                           |
    type formato_mem is array(natural range <>) of std_logic_vector(15 downto 0);
    constant dados : formato_mem(0 to 255) :=
                     (X"81C0", X"00FF", OTHERS => X"FFFF");

begin
	Registro: process(clk)
   begin
		if clk'event and clk = '1' then
			if habilita = '1' then
				saida <= dados(endereco);
			end if;
		end if;
	end process;
end arch;