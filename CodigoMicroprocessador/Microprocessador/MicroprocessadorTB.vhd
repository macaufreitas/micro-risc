--------------------------------------------------------------------------------------
------------------ Codigo que testa a logica do Microprocessador ---------------------
--------------------------------------------------------------------------------------

-------- Bibliotecas e Pacotes -------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
--------------------------------------

entity MicroprocessadorTB is
end MicroprocessadorTB;

architecture ArquiteturaMicroTB of MicroprocessadorTB is

	-- Declaracao sinais do test bench
	signal clock_tb, reset_tb : std_logic;
	signal data_tb : std_logic_vector (15 downto 0);
	signal addr_tb : std_logic_vector (19 downto 0);
	
	-- Constante para controle do tempo
	constant periodoClock : time := 50 ns;
	
	-- Instancia do microprocessador
	component Microprocessador
		port (
			clk	 : in    std_logic;
			reset  : in    std_logic;
			data   : in    std_logic_vector(15 downto 0);
			addr   : out   std_logic_vector(19 downto 0)
		);
	end component;
	
begin

	Micro : Microprocessador port map (clock_tb, reset_tb, data_tb, addr_tb);
	
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
		wait for 20*periodoClock;
		wait for periodoClock/4;
		reset_tb <= '1';
		--------------------------------------
		
		---------- Desloca Sinais ------------
		wait for periodoClock/4;
		--------------------------------------
		
		-------- Exemplo de Operacoes --------
		-- Add Ax,Imed16 -> 81C0h
		-- Or  Ax,Imed16 -> 81C8h
		-- Adc Ax,Imed16 -> 81D0h
		-- Sbb Ax,Imed16 -> 81D8h
		-- And Ax,Imed16 -> 81E0h
		-- Sub Ax,Imed16 -> 81E8h
		-- Xor Ax,Imed16 -> 81F0h
		--------------------------------------
		
		------ Passa Dados para Operacao -----
		data_tb <= X"81C8";
		wait for 14*periodoClock; -- 14 periodos de clock sao necessarios para a realizacao completa de dois ciclos
		--------------------------------------

		wait;
	end process;

end ArquiteturaMicroTB;