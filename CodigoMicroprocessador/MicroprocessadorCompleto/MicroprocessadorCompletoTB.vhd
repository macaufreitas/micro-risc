--------------------------------------------------------------------------------------
----------------- Codigo que testa o Microprocessador Completo -----------------------
--------------------------------------------------------------------------------------

-------- Bibliotecas e Pacotes -------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
--------------------------------------

entity MicroprocessadorCompletoTB is
end MicroprocessadorCompletoTB;

architecture ArquiteturaMicroTB of MicroprocessadorCompletoTB is

	-- Declaracao sinais do test bench
	signal clock_tb, reset_tb, habMemoria_tb : std_logic;
	signal end_tb  : std_logic_vector (19 downto 0);
	signal data_tb : std_logic_vector(15 downto 0);
	
	-- Constante para controle do tempo
	constant periodoClock : time := 50 ns;
	
	-- Instancia do microprocessador
	component MicroprocessadorCompleto is
	port(
		clk	     : in    std_logic;
		reset      : in    std_logic;
		data       : in    std_logic_vector(15 downto 0);
		endereco   : out   std_logic_vector(19 downto 0);
		habMemoria : out   std_logic
	);
	end component;
	
begin

	Micro : MicroprocessadorCompleto port map (clock_tb,reset_tb,data_tb,end_tb,habMemoria_tb);
	
	-- Cria processo do clock
	Clock : process
	variable cont : integer := 0;
	begin
		if cont /= 60 then
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
		wait for 60*periodoClock;
		reset_tb <= '1';
		--------------------------------------
		wait;
	end process;

end ArquiteturaMicroTB;