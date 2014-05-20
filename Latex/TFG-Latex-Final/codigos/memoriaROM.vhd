--------------------------------------------------------------------------------------
----------------------- Codigo que implementa uma memoria ROM ------------------------
-- Desenvolvido por:
-- Dênis Araújo da Silva - 18698
-- Marcos Aurélio Freitas de Almeida Costa - 18726
-- Trabalho Final de Graduação
-- Engenharia de Computação
-- Universidade Federal de Itajubá
--------------------------------------------------------------------------------------

-------- Bibliotecas e Pacotes -------
LIBRARY IEEE;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
--------------------------------------

ENTITY memoriaROM IS
	PORT (       clk          : IN  STD_LOGIC;
                endereco     : in  STD_LOGIC_VECTOR(19 downto 0);
                chipenable   : IN  STD_LOGIC;
                saida        : OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
END memoriaROM;

ARCHITECTURE arch OF memoriaROM IS
--                                    faixa nao limitada
--                                           |
    TYPE formato_mem IS ARRAY(NATURAL RANGE <>) OF STD_LOGIC_VECTOR(15 DOWNTO 0);
    CONSTANT dados : formato_mem(0 TO 255) :=
                     (X"81D8",
							 X"1234",
							 X"81F8",
							 X"FF00",
							 OTHERS => X"FFFF");

BEGIN
     Registro: PROCESS(clk)
	  variable j: integer;
     BEGIN
          IF clk'EVENT AND clk = '0' THEN
                   IF chipenable = '1' THEN
                       j := conv_integer(endereco);
							  saida <= dados(j);
                   END IF;
          END IF;
     END PROCESS;
end arch;

