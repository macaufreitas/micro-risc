--------------------------------------------------------------------------------------
-- Codigo que testa a Unidade de Controle de Enderecos do Microprocessador -----------
--------------------------------------------------------------------------------------

-------- Bibliotecas e Pacotes -------
library ieee;
use ieee.std_logic_1164.all;
--------------------------------------

entity UnidadeDeControleDeEnderecosTB is
end UnidadeDeControleDeEnderecosTB;

architecture ArquiteturaUC of UnidadeDeControleDeEnderecosTB is

	-- Declaracao dos sinais de test bench
	signal clock_tb,reset_tb,habilita_tb,habilitaCalc_tb,
			 leRegSeg_tb, incIP_tb, selecSeg_tb,habRegSeg_tb,habSaidaEnd_tb: std_logic;
	signal ctrlRegSeg_tb : std_logic_vector(2 downto 0);
	
	-- Constante para o controle do tempo
	constant periodoClock : time := 50 ns;
	
	-- Instacia da Unidade de Controle
	component UnidadeDeControleDeEnderecos is
	port(
			clock       	: in  std_logic;
			reset       	: in  std_logic;
			habilita			: in  std_logic;
			habilitaCalc	: out std_logic;
			habRegSeg		: out std_logic;
			leRegSeg			: out std_logic;
			ctrlRegSeg		: out std_logic_vector(2 downto 0);
			incIP				: out std_logic;
			selecSeg			: out std_logic;
			habSaidaEnd		: out std_logic
	);
	end component;
	
begin

	UCE : UnidadeDeControleDeEnderecos port map( clock_tb,reset_tb,habilita_tb,habRegSeg_tb,
														      habilitaCalc_tb,leRegSeg_tb,
																ctrlRegSeg_tb,incIP_tb,selecSeg_tb,
																habSaidaEnd_tb);
	
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
		---- Resetar componentes ---
		reset_tb <= '0';
		habilita_tb <= '0';
		wait for periodoClock*20;
		reset_tb <= '1';
		
		---- Inicia o ciclo de calculo ----
		habilita_tb <= '1';
		
		------ Para de realizar o testbench -----
		wait;
		
	end process;

end ArquiteturaUC;