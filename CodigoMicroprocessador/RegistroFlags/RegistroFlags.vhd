--------------------------------------------------------------------------------------
---------- Codigo que implementa o Registro de Flags  do Microprocessador ------------
--------------------------------------------------------------------------------------

-------- Bibliotecas e Pacotes -------
library ieee;
use ieee.std_logic_1164.all;
--------------------------------------

entity RegistroFlags is
	port (
		reset        : in std_logic;
		clock        : in std_logic;
		Overflow     : in std_logic;
		Direction    : in std_logic;
		Interrupt    : in std_logic;
		Trap         : in std_logic;
		Sign         : in std_logic;
		Zero         : in std_logic;
		Adjust       : in std_logic;
		Parity       : in std_logic;
		Carry        : in std_logic;
		Flags		    : out std_logic_vector(15 downto 0)
	);
end RegistroFlags;

architecture ArquiteturaRF of RegistroFlags is
begin
	-- Processo de Escrita e Reset
	ProcessoResetEscrita : process (reset, clock)
	begin
		if (reset = '0') then
			Flags <= (others => '0');
		elsif (rising_edge(clock)) then
			Flags(11) <= Overflow;
			Flags(10) <= Direction;
			Flags(9)  <= Interrupt;
			Flags(8)  <= Trap;
			Flags(7)  <= Sign;
			Flags(6)  <= Zero;
			Flags(4)  <= Adjust;
			Flags(2)  <= Parity;
			Flags(0)  <= Carry;
		end if;
	end process;
end ArquiteturaRF;