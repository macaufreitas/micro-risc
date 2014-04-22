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
	signal clock_tb,habilita_tb : std_logic;
	signal saida_tb 	 : std_logic_vector(15 downto 0);
	signal endereco_tb : INTEGER RANGE 0 TO 255;
	
	-- Constante para controle do tempo
	constant periodoClock : time := 100 us;
	
	-- Instancia da Memoria RAM
	component memoriaROM is
	port (       clk          : IN  STD_LOGIC;
                endereco     : INTEGER RANGE 0 TO 255;
                habilita   : IN  STD_LOGIC;
                saida        : OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
	end component;

	
begin
	memROM : memoriaROM port map(clock_tb,endereco_tb,habilita_tb,saida_tb);
	
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
		-----------------------
		habilita_tb <= '1';
		endereco_tb <= 0;
		wait for periodoClock;
		-----------------------
		
		-----------------------
		endereco_tb <= 1;
		wait for periodoClock;
		-----------------------
		
		-----------------------
		endereco_tb <= 2;
		wait for periodoClock;
		-----------------------
		
		-----------------------
		endereco_tb <= 3;
		wait for periodoClock;
		-----------------------
		
		-----------------------
		endereco_tb <= 254;
		wait for periodoClock;
		-----------------------
		
		wait for periodoClock;
		
		assert false report "NONE. End of simulation." severity failure;
		
		wait;
		
		wait;
		
	end process;
end Arquitetura;