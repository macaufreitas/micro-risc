--------------------------------------------------------------------------------------
----------- Codigo que testa o Microprocessador Completo com a ROM -------------------
--------------------------------------------------------------------------------------

-------- Bibliotecas e Pacotes -------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
--------------------------------------

entity MicroprocessadorCompletoROMFinalTB is
end MicroprocessadorCompletoROMFinalTB;

architecture ArquiteturaMicroTB of MicroprocessadorCompletoROMFinalTB is

	-- Declaracao sinais do test bench
	signal clock_tb, reset_tb : std_logic;
	
	-- Constante para controle do tempo
	constant periodoClock : time := 50 ns;
	
	-- Instancia do microprocessador
	component MicroprocessadorCompletoROMFinal is
	port(
		clk	     : in    std_logic;
		reset      : in    std_logic
	);
	end component;
	
begin

	Micro : MicroprocessadorCompletoROMFinal port map (clock_tb,reset_tb);
	
	-- Cria processo do clock
	Clock : process
	variable cont : integer := 0;
	begin
		if cont /= 100 then
			clock_tb <= '0';
			wait for periodoClock/2;
			clock_tb <= '1';
			wait for periodoClock/2;
			cont := cont + 1;
		else
			wait;
		end if;
	end process;
	
	process
	begin
		
		------ Reseta o Microprocessador -----
		reset_tb <= '0';	
		wait for 40*periodoClock;
		reset_tb <= '1';
		--------------------------------------
		
		wait;
	end process;

end ArquiteturaMicroTB;