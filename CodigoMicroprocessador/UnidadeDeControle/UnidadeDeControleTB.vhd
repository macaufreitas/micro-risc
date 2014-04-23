--------------------------------------------------------------------------------------
------------ Codigo que testa a Unidade de Controle do Microprocessador --------------
--------------------------------------------------------------------------------------

-------- Bibliotecas e Pacotes -------
library ieee;
use ieee.std_logic_1164.all;
--------------------------------------

entity UnidadeDeControleTB is
end UnidadeDeControleTB;

architecture ArquiteturaUC of UnidadeDeControleTB is

	-- Declaracao dos sinais de test bench
	signal clock_tb,reset_tb,sitEnd_tb,leEnd_tb,habULA_tb,
			 regDataLe_tb,habRegData_tb,ctrlDemuxData_tb : std_logic;
	signal opcode_tb : std_logic_vector(15 downto 0);
	signal ctrlULA_tb,ctrlRegData_tb : std_logic_vector(2 downto 0);
	
	-- Constante para o controle do tempo
	constant periodoClock : time := 50 ns;
	
	-- Instacia da Unidade de Controle
	component UnidadeDeControle
		port(
			clock       	: in  std_logic;
			reset       	: in  std_logic;
			opcode      	: in  std_logic_vector(15 downto 0);
			sitEnd      	: in  std_logic;
			leEnd       	: out std_logic;
			habULA	   	: out std_logic;
			ctrlULA     	: out std_logic_vector(2 downto 0);
			regDataLe  	   : out std_logic;
			habRegData	   : out std_logic;
			ctrlRegData 	: out std_logic_vector(2 downto 0);
			ctrlDemuxData  : out std_logic
	);
	end component;
	
begin

	UC : UnidadeDeControle port map(clock_tb,reset_tb,opcode_tb,sitEnd_tb,
											  leEnd_tb,habULA_tb,ctrlULA_tb,RegDataLe_tb,
											  habRegData_tb,ctrlRegData_tb,ctrlDemuxData_tb);
	
	-- Cria processo do clock
   Clock : process
	variable cont : integer := 0;
	begin
		if (cont /= 40) then
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
	
		------ Escreve o Opcode de Soma -------
		opcode_tb <= X"81C0";
		---------------------------------------
	
		---- Resetar componentes ---
		reset_tb <= '0';
		sitEnd_tb <= '0';
		wait for periodoClock*3;
		reset_tb <= '1';
		----------------------------
		
		------ Desloca Sinais ------		
		wait for periodoClock/4;
		----------------------------
		
		---- Simulando que a Fila de Instrucao possui dados ----
		sitEnd_tb <= '1';
		wait for periodoClock;
		---------------------------------------------------------
		
		----- Espera para a maquina de estados funcionar por completo --------
		wait for periodoClock*10;
		----------------------------------------------------------------------
		
		wait for periodoClock;
		
		------ Para de realizar o testbench -----
		wait;
		
	end process;

end ArquiteturaUC;