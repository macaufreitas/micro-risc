-------- Bibliotecas e Pacotes -------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
--------------------------------------

entity RegistroSegmento is
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
end RegistroSegmento;

architecture ArquiteturaRS of RegistroSegmento is
	
	-- Declaracao Registros
	signal ES, CS, SS, DS, IP : std_logic_vector (15 downto 0);
	
begin

	-- Processo de Reset - Escrita - Incremento IP
	ProcessoResetEscrita : process (clock, reset, soma_IP)
	begin
		if (reset = '0') then
			ES <= X"0000";
			CS <= X"0000";
			SS <= X"0000";
			DS <= X"0000";
			IP <= X"0001";
		elsif (rising_edge (clock) and soma_IP = '1' and habilita = '1') then
			--Soma o IP em 4 posicoes 
			IP <= IP + X"0001";
		elsif (rising_edge (clock) and leitura_Escrita = '0' and habilita = '1') then
			case seletor is
				when "000" => ES <= entradaDados;
				when "001" => CS <= entradaDados;
				when "010" => SS <= entradaDados;
				when "011" => DS <= entradaDados;
				when "100" => IP <= entradaDados;
				when others => 
					ES <= (others => 'Z');
					CS <= (others => 'Z');
					SS <= (others => 'Z');
					DS <= (others => 'Z');
					IP <= (others => 'Z');
			end case;
		end if;
	end process;
	
	-- Processo de Leitura
	ProcessoLeitura : process (clock)
	begin
		if (rising_edge (clock) and leitura_Escrita = '1' and habilita = '1') then
			case seletor is
				when "000" => saidaDados <= ES;
				when "001" => saidaDados <= CS;
				when "010" => saidaDados <= SS;
				when "011" => saidaDados <= DS;
				when "100" => saidaDados <= IP;
				when others => saidaDados <= (others => 'Z');
			end case;
		end if;
	end process;
	
end ArquiteturaRS;