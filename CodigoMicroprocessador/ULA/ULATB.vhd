--------------------------------------------------------------------------------------
-------- Codigo que testa a Unidade Aritmetica e Logica do Microprocessador ----------
--------------------------------------------------------------------------------------

-------- Bibliotecas e Pacotes -------
library ieee;
library work;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
--------------------------------------

entity ULATB is
end ULATB;

architecture ArquiteturaULATB of ULATB is
	
	-- Declaracao dos sinais do test bench
	signal clock_tb, carryIn_tb, habilitaULA_tb : std_logic;
	signal flagParidade_tb, flagZero_tb : std_logic;
	signal flagCarry_tb, flagOverflow_tb : std_logic;
	signal flagSinal_tb, flagAuxiliar_tb : std_logic;
	signal seletor_tb : std_logic_vector (2 downto 0);
	signal entradaA_tb, entradaB_tb, resultado_tb : std_logic_vector (15 downto 0);
	
	-- Constante para controle do tempo
	constant periodoClock : time := 10 us;
	
	-- Instancia da ULA
	component ULA
		port (
			clock	           : in  std_logic;
			seletor 	        : in  std_logic_vector(2 downto 0); -- seletor de operações
			carryIn	        : in  std_logic;
			entradaA			  : in  std_logic_vector(15 downto 0); -- entrada de dados A
			entradaB			  : in  std_logic_vector(15 downto 0); -- entrada de dados B
			habilitaULA		  : in  std_logic;
			flagCarry	     : out std_logic;
			flagOverflow     : out std_logic;
			flagParidade     : out std_logic;
			flagSinal        : out std_logic;
			flagZero			  : out std_logic;
			flagAuxiliar     : out std_logic;
			resultado        : out std_logic_vector(15 downto 0)
		);
	end component;
	
begin

	ULA_MAP : ULA port map (clock_tb, seletor_tb, carryIn_tb, entradaA_tb, 
									entradaB_tb, habilitaULA_tb, flagCarry_tb, flagOverflow_tb,
									flagParidade_tb, flagSinal_tb, flagZero_tb, flagAuxiliar_tb,
									resultado_tb);
									
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
		
		----------------------------
		--- Deslocamento no tempo --
		-- para setar sinais antes -
		--- da borda do clock ------
		wait for periodoClock/4;
		----------------------------
		
		------ Carrega RegA --------
		entradaA_tb <= X"0012";
		habilitaULA_tb <= '1';
		wait for periodoClock;
		----------------------------
		
		------ Carrega RegB --------
		entradaB_tb <= X"0090";
		habilitaULA_tb <= '1';
		carryIn_tb <= '1';
		wait for periodoClock;
		----------------------------
		
		--- Soma RegA com RegB -----
		seletor_tb <= "000";
		habilitaULA_tb <= '1';
		wait for periodoClock;
		----------------------------
		
		------ Carrega RegA --------
		entradaA_tb <= X"12AB";
		habilitaULA_tb <= '1';
		wait for periodoClock;
		----------------------------
		
		------ Carrega RegB --------
		entradaB_tb <= X"12AB";
		habilitaULA_tb <= '1';
		carryIn_tb <= '0';
		wait for periodoClock;
		----------------------------
		
		-- Subtrai RegA com RegB ---
		seletor_tb <= "100";
		habilitaULA_tb <= '1';
		wait for periodoClock;
		----------------------------
		
		wait for periodoClock;
		
		assert false report "NONE. End of simulation." severity failure;
		
		wait;
		
		wait;
		
	end process;
	
end ArquiteturaULATB;