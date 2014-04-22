--------------------------------------------------------------------------------------
----------- Codigo que implementa um buffer tri-state do Microprocessador ------------
--------------------------------------------------------------------------------------

-------------------------- Autoria ----------------------
-- Este código foi retirado do site de exemplos da Altera
-- Mas foi modificado para ser um componente generico
---------------------------------------------------------

-------- Bibliotecas e Pacotes -------
LIBRARY IEEE;
    USE ieee.std_logic_1164.ALL;
--------------------------------------

ENTITY PreBus IS
	GENERIC ( width : integer := 16 );
    PORT(
        my_in  : IN STD_LOGIC_VECTOR(width-1 DOWNTO 0);
        sel    : IN STD_LOGIC;
        my_out : OUT STD_LOGIC_VECTOR(width-1 DOWNTO 0));
END PreBus;

ARCHITECTURE maxpld OF PreBus IS
BEGIN
    my_out <= (others => 'Z')
    WHEN (sel = '1')
    ELSE my_in;
END maxpld;