--------------------------------------------------------------------------------------
------------ Codigo que testa o Registro de Flags  do Microprocessador ---------------
--------------------------------------------------------------------------------------

-------- Bibliotecas e Pacotes -------
library ieee;
use ieee.std_logic_1164.all;
--------------------------------------

entity RegistroFlagsTB is
end RegistroFlagsTB;

architecture ArquiteturaRF of RegistroFlagsTB is

	-- Declaracao dos sinais de test bench
	signal   reset_tb        :  std_logic;
	signal   clock_tb        :  std_logic;
	signal 	Overflow_tb     :  std_logic;
	signal 	Direction_tb    :  std_logic;
	signal 	Interrupt_tb    :  std_logic;
	signal 	Trap_tb         :  std_logic;
	signal 	Sign_tb         :  std_logic;
	signal 	Zero_tb         :  std_logic;
	signal 	Adjust_tb       :  std_logic;
	signal 	Parity_tb       :  std_logic;
	signal 	Carry_tb        :  std_logic;
	signal   Flags_tb		    :  std_logic_vector(15 downto 0);
	
	-- Constante para o controle do tempo
	constant periodoClock : time := 50 ns;
	
	-- Instacia da Unidade de Controle
	component RegistroFlags is
	port (
		reset        : in std_logic;
		clock        : in std_logic;
		Overflow     : in std_logic;
		Direction    : in std_logic;
		Interrupt    : in std_logic;
		Trap         : in std_logic;
		Sign         : in std_logic;
		Zero         : in std_logic;
		Adjust       : in std_logic;
		Parity       : in std_logic;
		Carry        : in std_logic;
		Flags		    : out std_logic_vector(15 downto 0)
	);
	end component;
	
begin

	RF : RegistroFlags port map(reset_tb,
										 clock_tb,
										 Overflow_tb,
										 Direction_tb,
										 Interrupt_tb,
										 Trap_tb,
										 Sign_tb,
										 Zero_tb,
										 Adjust_tb,
										 Parity_tb,
										 Carry_tb,
										 Flags_tb);
	
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
		Overflow_tb     <= '0';
		Direction_tb    <= '0';
		Interrupt_tb    <= '0';
		Trap_tb         <= '0';
		Sign_tb         <= '0';
		Zero_tb         <= '0';
		Adjust_tb       <= '0';
		Parity_tb       <= '0';
		Carry_tb        <= '0';
		wait for periodoClock*3;
		reset_tb <= '1';
		----------------------------
		
		------ Desloca Sinais ------		
		wait for periodoClock/4;
		----------------------------
		
		------ Testa o Overflow ----
		Overflow_tb <= '1';
		wait for periodoClock;
		----------------------------
		
		----- Testa o Direction ----
		Direction_tb <= '1';
		wait for periodoClock;
		----------------------------
		
		----- Testa o Interrupt ----
		Interrupt_tb <= '1';
		wait for periodoClock;
		----------------------------
		
		------ Testa o Trap -------
		Trap_tb <= '1';
		wait for periodoClock;
		----------------------------
		
		------ Testa o Sign --------
		Sign_tb <= '1';
		wait for periodoClock;
		----------------------------
		
		------ Testa o Zero --------
		Zero_tb <= '1';
		wait for periodoClock;
		----------------------------
		
		------ Testa o Adjust ------
		Adjust_tb <= '1';
		wait for periodoClock;
		----------------------------
		
		------ Testa o Parity -----
		Parity_tb <= '1';
		wait for periodoClock;
		----------------------------
		
		------ Testa o Carry -------
		Carry_tb <= '1';
		wait for periodoClock;
		----------------------------
		
		------ Para de realizar o testbench -----
		wait;
		
	end process;

end ArquiteturaRF;