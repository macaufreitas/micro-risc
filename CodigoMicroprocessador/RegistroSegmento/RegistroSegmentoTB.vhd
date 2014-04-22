--------------------------------------------------------------------------------------
------------- Codigo que testa o Registro de Segmentos do Microprocessador -----------
--------------------------------------------------------------------------------------

-------- Bibliotecas e Pacotes -------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
--------------------------------------

entity RegistroSegmentoTB is
end RegistroSegmentoTB;

architecture ArquiteturaRSTB of RegistroSegmentoTB is

	-- Declaracao dos sinais do test bench
	signal clock_tb, reset_tb, habilita_tb : std_logic;
	signal leitura_Escrita_tb, soma_IP_tb : std_logic;
	signal seletor_tb : std_logic_vector(2 downto 0);
	signal entradaDados_tb, saidaDados_tb : std_logic_vector (15 downto 0);
	
	-- Constante para controle do tempo
	constant periodoClock : time := 50 ns;
	
	-- Instancia do Registro de Segmentos
	component RegistroSegmento
		port (
			clock           : in std_logic;
			reset           : in std_logic;
			habilita        : in std_logic;
			leitura_Escrita : in std_logic;
			soma_IP			 : in std_logic;
			seletor         : in std_logic_vector (2 downto 0);
			entradaDados    : in std_logic_vector (15 downto 0);
			saidaDados      : out std_logic_vector (15 downto 0)
		);
	end component;
	
begin

	RegSegmento : RegistroSegmento port map (clock_tb, reset_tb, habilita_tb,
														  leitura_Escrita_tb, soma_IP_tb,
														  seletor_tb, entradaDados_tb,
														  saidaDados_tb);
														  
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
		
		------ Inicializa CS -------
		habilita_tb <= '1';
		leitura_Escrita_tb <= '0';
		soma_IP_tb <= '0';
		seletor_tb <= "001";
		entradaDados_tb <= X"2A00";
		wait for periodoClock;
		----------------------------
		
		------ Inicializa IP -------
		habilita_tb <= '1';
		leitura_Escrita_tb <= '0';
		soma_IP_tb <= '0';
		seletor_tb <= "100";
		entradaDados_tb <= X"1200";
		wait for periodoClock;
		----------------------------
		
		------ Incrementa IP -------
		habilita_tb <= '1';
		leitura_Escrita_tb <= '1';
		soma_IP_tb <= '1';
		wait for periodoClock;
		----------------------------
		
		------ Inicializa SS -------
		habilita_tb <= '1';
		leitura_Escrita_tb <= '0';
		soma_IP_tb <= '0';
		seletor_tb <= "010";
		entradaDados_tb <= X"FE00";
		wait for periodoClock;
		----------------------------
		
		---------- Le IP -----------
		habilita_tb <= '1';
		leitura_Escrita_tb <= '1';
		soma_IP_tb <= '0';
		seletor_tb <= "100";
		wait for periodoClock;
		----------------------------
		
	
	wait for periodoClock;
	
	end process;

end ArquiteturaRSTB;