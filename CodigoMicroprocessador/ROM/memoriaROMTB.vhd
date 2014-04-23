--------------------------------------------------------------------------------------
----------------------- Codigo que testa a memória ROM -------------------------------
--------------------------------------------------------------------------------------

-------- Bibliotecas e Pacotes -------
library ieee;
use ieee.std_logic_1164.all;
--------------------------------------

entity memoriaROMTB is
end memoriaROMTB;

architecture Arquitetura of memoriaROMTB is

	-- Declaracao dos sinais do test bench
	signal clock_tb,chipenable_tb : std_logic;
	signal saida_tb 	 : std_logic_vector(15 downto 0);
	signal endereco_tb : std_logic_vector(19 downto 0);
	
	-- Constante para controle do tempo
	constant periodoClock : time := 50 ns;
	
	-- Instancia da Memoria RAM
	component memoriaROM is
	PORT (       clk          : IN  STD_LOGIC;
                endereco     : in  STD_LOGIC_VECTOR(19 downto 0);
                chipenable   : IN  STD_LOGIC;
                saida        : OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
	end component;

	
begin
	memROM : memoriaROM port map(clock_tb,endereco_tb,chipenable_tb,saida_tb);
	
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
		-----------------------
		chipenable_tb <= '1';
		endereco_tb <= X"00000";
		wait for periodoClock;
		-----------------------
		
		-----------------------
		endereco_tb <= X"00001";
		wait for periodoClock;
		-----------------------
		
		-----------------------
		endereco_tb <= X"00002";
		wait for periodoClock;
		-----------------------
		
		-----------------------
		endereco_tb <= X"00003";
		wait for periodoClock;
		-----------------------
		
		-----------------------
		endereco_tb <= X"000FF";
		wait for periodoClock;
		-----------------------
		
		wait;
	end process;
end Arquitetura;