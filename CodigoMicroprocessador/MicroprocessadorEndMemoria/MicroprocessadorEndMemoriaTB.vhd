--------------------------------------------------------------------------------------
----------- Codigo que testa a interface Microprocessador/Memória --------------------
--------------------------------------------------------------------------------------

-------- Bibliotecas e Pacotes -------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
--------------------------------------

entity MicroprocessadorEndMemoriaTB is
end MicroprocessadorEndMemoriaTB;

architecture ArquiteturaMicroEndMTB of MicroprocessadorEndMemoriaTB is

	-- Declaracao sinais do test bench
	signal clock_tb, reset_tb : std_logic;
	signal data_tb : std_logic_vector (15 downto 0);
	signal addr_tb : std_logic_vector (19 downto 0);
	
	-- Constante para controle do tempo
	constant periodoClock : time := 50 ns;
	
	-- Instancia do microprocessador
	component MicroprocessadorEndMemoria is
	port(
		clk	 : in    std_logic;
		reset  : in    std_logic;
		data   : in 	std_logic_vector(15 downto 0);
		addr   : out   std_logic_vector(19 downto 0)
	);
	end component;
	
begin

	Micro : MicroprocessadorEndMemoria port map (clock_tb, reset_tb, data_tb, addr_tb);
	
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
		data_tb <= X"FFFF";		
		wait for 20*periodoClock;
		reset_tb <= '1';
		--------------------------------------
		wait;
	end process;

end ArquiteturaMicroEndMTB;