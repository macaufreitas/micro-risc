--------------------------------------------------------------------------------------
---------- Codigo que testa a Calculadora de Enderecos do Microprocessador -----------
--------------------------------------------------------------------------------------

-------- Bibliotecas e Pacotes -------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
--------------------------------------

entity CalculadoraEnderecoTB is
end entity;

architecture rtl of CalculadoraEnderecoTB is


	--Declaração dos registros
	signal clock_tb,habilita_tb,habResultado_tb : std_logic;
	signal entradaIndice_tb,entradaSegmen_tb : std_logic_vector(15 downto 0);
	signal resultado_tb : std_logic_vector(19 downto 0);

	-- Constante para o controle do tempo
	constant periodoClock : time := 50 ns;
	
	component CalculadoraEndereco is	
	 port 
	 (
		clock         : in std_logic;
		habilita      : in std_logic;
		habResultado  : in std_logic;
		entradaIndice : in std_logic_vector(15 downto 0);
		entradaSegmen : in std_logic_vector(15 downto 0);
		resultado     : out std_logic_vector(19 downto 0)
	 );
	end component;
	
begin

	CalcEnd : CalculadoraEndereco port map (clock_tb,habilita_tb,habResultado_tb,entradaIndice_tb,
														 entradaSegmen_tb,resultado_tb);
														 
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
		habilita_tb <= '0';
		habResultado_tb <= '0';
		wait for 5*periodoClock;
		
		habilita_tb <= '1';
		entradaIndice_tb <= X"FFC1";
		entradaSegmen_tb <= X"103D";
		wait for 10*periodoClock;
		
		entradaIndice_tb <= X"00F1";
		habResultado_tb <= '1';
		wait for 10*periodoClock;
		
		habilita_tb <= '0';
		entradaSegmen_tb <= X"F0F0";
		
		wait;
		
	end process;
														 
	
end rtl;