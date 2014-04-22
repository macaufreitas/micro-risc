--------------------------------------------------------------------------------------
-------- Codigo que testa os Registros de Proposito Geral do Microprocessador --------
--------------------------------------------------------------------------------------

-------- Bibliotecas e Pacotes -------
library ieee;
use ieee.std_logic_1164.all;
--------------------------------------

entity RegistroPropositoGeralTB is
end RegistroPropositoGeralTB;

architecture ArquiteturaRPGTB of RegistroPropositoGeralTB is

	-- Declaracao dos sinais do test bench
	signal clock_tb, reset_tb, habilita_tb : std_logic;
	signal leitura_Escrita_tb : std_logic;
	signal seletor_tb : std_logic_vector(2 downto 0);
	signal entradaDados_tb, saidaDados_tb : std_logic_vector (15 downto 0);
	
	-- Constante para controle do tempo
	constant periodoClock : time := 50 ns;
	
	-- Instancia do Registro de Proposito Geral
	component RegistroPropositoGeral
		port (
			clock           : in std_logic;
			reset           : in std_logic;
			habilita        : in std_logic;
			leitura_Escrita : in std_logic;
			seletor         : in std_logic_vector (2 downto 0);
			entradaDados    : in std_logic_vector (15 downto 0);
			saidaDados      : out std_logic_vector (15 downto 0)
		);		
	end component;
	
begin

	RPG : RegistroPropositoGeral port map (clock_tb, reset_tb, habilita_tb, 
														leitura_Escrita_tb, seletor_tb,
														entradaDados_tb, saidaDados_tb);
														
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
		
		------ Desloca Sinais ------		
		wait for periodoClock/4;
		----------------------------
		
		--- Escreve Registro AX ----
		entradaDados_tb <= X"000A";
		habilita_tb <= '1';
		leitura_Escrita_tb <= '0';
		seletor_tb <= "000";
		wait for periodoClock;
		----------------------------
		
		--- Escreve Registro DX ----
		entradaDados_tb <= X"000D";
		habilita_tb <= '1';
		leitura_Escrita_tb <= '0';
		seletor_tb <= "010";
		wait for periodoClock;
		----------------------------
		
		--- Escreve Registro BP ----
		entradaDados_tb <= X"FE00";
		habilita_tb <= '0';
		leitura_Escrita_tb <= '0';
		seletor_tb <= "101";
		wait for periodoClock;
		----------------------------
		
		------ Le Registro AX ------
		habilita_tb <= '1';
		leitura_Escrita_tb <= '1';
		seletor_tb <= "000";
		wait for periodoClock;
		----------------------------
		
		------ Le Registro DX ------
		habilita_tb <= '1';
		leitura_Escrita_tb <= '1';
		seletor_tb <= "010";
		wait for periodoClock;
		----------------------------
		
		------ Le Registro BP ------
		habilita_tb <= '1';
		leitura_Escrita_tb <= '1';
		seletor_tb <= "101";
		wait for periodoClock;
		----------------------------
		
		wait for periodoClock;
	
	end process;

end ArquiteturaRPGTB;