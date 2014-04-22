--------------------------------------------------------------------------------------
-------------- Codigo que testa a Fila de Instrucoes do Microprocessador -------------
--------------------------------------------------------------------------------------

-------- Bibliotecas e Pacotes -------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
--------------------------------------

entity FilaInstrucoesTB is
end FilaInstrucoesTB;

architecture ArquiteturaFITB of FilaInstrucoesTB is

	-- Declaracao dos sinais do test bench
	signal entradaDados_tb, saidaDados_tb : std_logic_vector (15 downto 0);
	signal clock_tb, reset_tb, leituraEscrita_tb : std_logic;
	signal estaCheio_tb, estaVazio_tb : std_logic;
	
	-- Constante para controle do tempo
	constant periodoClock : time := 50 ns;
	
	-- Instancia da Fila de Instrucoes
	component FilaInstrucoes
		port (
			entradaDados   : in std_logic_vector (15 downto 0);
			saidaDados     : out std_logic_vector (15 downto 0);
			clock          : in std_logic;
			reset          : in std_logic;
			leituraEscrita : in std_logic;
			estaCheio      : out std_logic;
			estaVazio      : out std_logic
		);
	end component;
	
begin

	Fila : FilaInstrucoes port map (entradaDados_tb, saidaDados_tb, clock_tb, reset_tb,
						  leituraEscrita_tb, estaCheio_tb, estaVazio_tb);
						  
	-- Cria processo do clock
   Clock : process
	begin
        clock_tb <= '0';
        wait for periodoClock/2;
        clock_tb <= '1';
        wait for periodoClock/2;
   end process;
	
	process
	begin
		---- Resetar componentes ---
		reset_tb <= '0';
		wait for periodoClock*3;
		reset_tb <= '1';
		----------------------------
		
		----------------------------
		--- Deslocamento no tempo --
		-- para setar sinais antes -
		--- da borda do clock ------
		wait for periodoClock/4;
		----------------------------
		
		--- Guarda uma Instrucao ---
		entradaDados_tb <= X"ABCD";
		leituraEscrita_tb <= '0';
		wait for periodoClock;
		----------------------------
		
		----- Le uma Instrucao -----
		leituraEscrita_tb <= '1';
		wait for periodoClock;
		----------------------------
		
		--- Guarda uma Instrucao ---
		entradaDados_tb <= X"FFE0";
		leituraEscrita_tb <= '0';
		wait for periodoClock;
		----------------------------
		
		----- Le uma Instrucao -----
		leituraEscrita_tb <= '1';
		wait for periodoClock;
		----------------------------
		
		--- Guarda uma Instrucao ---
		entradaDados_tb <= X"007F";
		leituraEscrita_tb <= '0';
		wait for periodoClock;
		----------------------------
		
		----- Le uma Instrucao -----
		leituraEscrita_tb <= '1';
		wait for periodoClock;
		----------------------------
		
		--- Guarda uma Instrucao ---
		entradaDados_tb <= X"12F7";
		leituraEscrita_tb <= '0';
		wait for periodoClock;
		----------------------------
		
		----- Le uma Instrucao -----
		leituraEscrita_tb <= '1';
		wait for periodoClock;
		----------------------------
		
		wait for periodoClock;

		end process;

end ArquiteturaFITB;