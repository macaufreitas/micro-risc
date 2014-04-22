--------------------------------------------------------------------------------------
----------- Codigo que implementa a Fila de Instrucoes do Microprocessador -----------
--------------------------------------------------------------------------------------

-------- Bibliotecas e Pacotes -------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
--------------------------------------

------- Funcionamento da Fila -----------
-- A fila de instrucoes escreve quando --
-- o sinal de leituraEscrita esta em 0 --
-- e le quando o sinal esta em 1 --------
-----------------------------------------

entity FilaInstrucoes is
	port (
		entradaDados   : in std_logic_vector (15 downto 0);
		saidaDados     : out std_logic_vector (15 downto 0);
		clock          : in std_logic;
		reset          : in std_logic;
		leituraEscrita : in std_logic;
		estaCheio      : out std_logic;
		estaVazio      : out std_logic
	);
end FilaInstrucoes;

architecture ArquiteturaFI of FilaInstrucoes is

	-- Declaracao da Fila de Instrucoes
	type Fila is array (0 to 5) of std_logic_vector (7 downto 0);
	
	-- Memoria para a Fila
	signal memoria : Fila := (others => (others => '0'));
	
	-- Ponteiros de Leitura e Escrita
	signal ponteiroLeituraMSB, ponteiroEscritaMSB : std_logic_vector(2 downto 0) := "000";
	signal ponteiroLeituraLSB, ponteiroEscritaLSB : std_logic_vector(2 downto 0) := "000";
	signal ponteiroLeitura, ponteiroEscrita : std_logic_vector(2 downto 0) := "000";
	
	-- Sinais para reset do Processo de Leitura
	signal resetPtrLeitura : std_logic;
	signal rstProcLeitura : std_logic;
	
	
begin

	-- Inicializa os ponteiros de leitura e escrita do LSB
	ponteiroLeituraLSB <= ponteiroLeituraMSB + '1';
	ponteiroEscritaLSB <= ponteiroEscritaMSB + '1';
	ponteiroLeituraMSB <= ponteiroLeitura(1 downto 0) & '0';
	ponteiroEscritaMSB <= ponteiroEscrita(1 downto 0) & '0';
		
	-- Reset ponteiroLeituraMSB
	rstProcLeitura <= resetPtrLeitura and reset;
	resetPtrLeitura <= '0' when ponteiroLeitura = "011" else '1';
		
	ProcessoLeitura : process(clock, rstProcLeitura, ponteiroLeitura)
	begin
		-- Reseta a Leitura
		if (rstProcLeitura = '0') then
			ponteiroLeitura <= "000";
		elsif (rising_edge(clock) and leituraEscrita = '1') then
			saidaDados(15 downto 8) <= memoria(conv_integer(ponteiroLeituraMSB));
			saidaDados(7 downto 0) <= memoria(conv_integer(ponteiroLeituraLSB));		
			ponteiroLeitura <= ponteiroLeitura + '1';
		else
			ponteiroLeitura <= ponteiroLeitura;
		end if;
	end process;
	
	
	ProcessoEscrita : process(clock, reset, ponteiroEscrita)
	begin
		-- Reseta a Escrita
		if (reset = '0') then
			ponteiroEscrita <= "000";
		elsif (rising_edge(clock) and leituraEscrita = '0') then
			memoria(conv_integer(ponteiroEscritaMSB)) <= entradaDados(15 downto 8);
			memoria(conv_integer(ponteiroEscritaLSB)) <= entradaDados(7 downto 0);		
			ponteiroEscrita <= ponteiroEscrita + '1';
		else
			ponteiroEscrita <= ponteiroEscrita;
		end if;
	end process;
	
	-- Verifica se a fila esta vazia ou cheia
	estaVazio <= '1' when ponteiroEscrita = "000" else '0';
	estaCheio <= '1' when ponteiroEscrita = "011" else '0';
	
end ArquiteturaFI;