--------------------------------------------------------------------------------------
----- Codigo que implementa os Registros de Proposito Geral do Microprocessador ------
--------------------------------------------------------------------------------------

-------- Bibliotecas e Pacotes -------
library ieee;
use ieee.std_logic_1164.all;
--------------------------------------

entity RegistroPropositoGeral is
	port (
		clock           : in std_logic;
		reset           : in std_logic;
		habilita        : in std_logic;
		leitura_Escrita : in std_logic;
		seletor         : in std_logic_vector (2 downto 0);
		entradaDados    : in std_logic_vector (15 downto 0);
		saidaDados      : out std_logic_vector (15 downto 0)
	);
end RegistroPropositoGeral;

architecture ArquiteturaRPG of RegistroPropositoGeral is
	
	-- Declaracao Registros
	signal AX, BX, CX, DX, SP, BP, SI, DI : std_logic_vector (15 downto 0);
	
begin

	-- Processo de Reset ou Escrita
	ProcessoResetEscrita : process (reset, clock)
	begin
		if (reset = '0') then
			AX <= X"0000";
			BX <= X"0000";
			CX <= X"0000";
			DX <= X"0000";
			SP <= X"0000";
			BP <= X"0000";
			SI <= X"0000";
			DI <= X"0000";
		elsif (rising_edge(clock) and leitura_Escrita = '0' and habilita = '1') then
			case seletor is
				when "000" => AX <= entradaDados;
				when "011" => BX <= entradaDados;
				when "001" => CX <= entradaDados;
				when "010" => DX <= entradaDados;
				when "100" => SP <= entradaDados;
				when "101" => BP <= entradaDados;
				when "110" => SI <= entradaDados;
				when "111" => DI <= entradaDados;
				when others =>
					AX <= (others => 'Z');
					BX <= (others => 'Z');
					CX <= (others => 'Z');
					DX <= (others => 'Z');
					SP <= (others => 'Z');
					BP <= (others => 'Z');
					SI <= (others => 'Z');
					DI <= (others => 'Z');
			end case;
		end if;
	end process;
	
	-- Processo de Leitura
	ProcessoLeitura : process (clock, leitura_Escrita)
	begin
		if (rising_edge (clock) and leitura_Escrita = '1' and habilita = '1') then
			case seletor is
				when "000" => saidaDados <= AX;
				when "011" => saidaDados <= BX;
				when "001" => saidaDados <= CX;
				when "010" => saidaDados <= DX;
				when "100" => saidaDados <= SP;
				when "101" => saidaDados <= BP;
				when "110" => saidaDados <= SI;
				when "111" => saidaDados <= DI;
				when others => saidaDados <= (others => 'Z');
			end case;
		end if;
	end process;
	
end ArquiteturaRPG;