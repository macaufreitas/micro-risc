--------------------------------------------------------------------------------------
-----    Codigo que implementa a Unidade de Controle do Microprocessador        ------
--------------------------------------------------------------------------------------

-------- Bibliotecas e Pacotes -------
library ieee;
use ieee.std_logic_1164.all;
use work.uc_aux.all;
--------------------------------------

entity UnidadeDeControle is
	port(
			clock       	: in  std_logic;
			reset       	: in  std_logic;
			opcode      	: in  std_logic_vector(15 downto 0);
			sitEnd      	: in  std_logic;
			leEnd       	: out std_logic;
			habULA	   	: out std_logic;
			ctrlULA     	: out std_logic_vector(2 downto 0);
			regDataLe  	   : out std_logic;
			habRegData	   : out std_logic;
			ctrlRegData 	: out std_logic_vector(2 downto 0);
			ctrlDemuxData  : out std_logic
	);
end UnidadeDeControle;

architecture Arquitetura of UnidadeDeControle is
	signal Estado         : Tipo_estado; --Estado da unidade de controle
	signal opcodeFetch    : std_logic_vector(15 downto 0); --Opcode a ser decodificado

begin

--Definicao do processo de borda de subida que altera os sinais
borda_subida : process(clock, reset)
begin
	
	if reset = '0' then
	
	-- todas saidas zeradas
		leEnd      	<= '0';
		habULA	   	<= '0';
		ctrlULA     	<= "000";
		regDataLe    	<= '0';
		habRegData	   <= '0';
		ctrlRegData 	<= "000";
		ctrlDemuxData  <= '0';   --Dado vai direto para a ULA
	
	elsif rising_edge(clock) then

		case Estado is
		
			when Busca =>
				-- Pede para a Unidade de Controle de Enderecos um opcode valido
				leEnd  <= '1';
				-- Direciona o dado da fila de instrucoes para a Unidade de Controle
				ctrlDemuxData <= '1';
				
			when Fetch =>
				-- Seta o opcode a ser decodificado
				opcodeFetch <= opcode;
				-- Para de ler a fila
				leEnd      <= '0';
				
			when OpRegImed16 =>
				-- Operacao de Reg/Imediato de 16 bits
				-- Habilita a leitura da fila para ler mais 16 bits
				leEnd        <= '1';
				-- Seta o controle do Demux para direcionar o dado direto para a ALU
				ctrlDemuxData <= '0';
				-- Habilita a ALU para gravar o dado
				habULA        <= '1';
						
			when Add_regImed_16 =>
				-- Operacao de adicao
				ctrlULA     <= b"000"; --ADD
				-- Habilita o registro de Dados
				habRegData <= '1';
				-- Seta o registro para ler o dado
				regDataLe  <= '1';
				-- Passa para o controle do registro de dados o registro a ser utilizado
				ctrlRegData <= opcodeFetch(2 downto 0);
				-- Fila para de enviar o valor
				leEnd     <= '0';
			
			when Or_regImed_16 =>
				-- Operacao de ou
				ctrlULA     <= b"001"; --OR
				-- Habilita o registro de Dados
				habRegData <= '1';
				-- Seta o registro para ler o dado
				regDataLe  <= '1';
				-- Passa para o controle do registro de dados o registro a ser utilizado
				ctrlRegData <= opcodeFetch(2 downto 0);
				-- Fila para de enviar o valor
				leEnd     <= '0';
			
			when Adc_regImed_16 =>
				-- Operacao de adicao com carry
				ctrlULA     <= b"010"; --ADC
				-- Habilita o registro de Dados
				habRegData <= '1';
				-- Seta o registro para ler o dado
				regDataLe  <= '1';
				-- Passa para o controle do registro de dados o registro a ser utilizado
				ctrlRegData <= opcodeFetch(2 downto 0);
				-- Fila para de enviar o valor
				leEnd     <= '0';
			
			when Sbb_regImed_16 =>
				-- Operacao de subtracao com borrow
				ctrlULA     <= b"011"; --SBB
				-- Habilita o registro de Dados
				habRegData <= '1';
				-- Seta o registro para ler o dado
				regDataLe  <= '1';
				-- Passa para o controle do registro de dados o registro a ser utilizado
				ctrlRegData <= opcodeFetch(2 downto 0);
				-- Fila para de enviar o valor
				leEnd     <= '0';
			
			when Sub_regImed_16 =>
				-- Operacao de subtracao
				ctrlULA     <= b"100"; --SUB
				-- Habilita o registro de Dados
				habRegData <= '1';
				-- Seta o registro para ler o dado
				regDataLe  <= '1';
				-- Passa para o controle do registro de dados o registro a ser utilizado
				ctrlRegData <= opcodeFetch(2 downto 0);
				-- Fila para de enviar o valor
				leEnd     <= '0';
			
			when Xor_regImed_16 =>
				-- Operacao de ou exclusivo
				ctrlULA     <= b"101"; --XOR
				-- Habilita o registro de Dados
				habRegData <= '1';
				-- Seta o registro para ler o dado
				regDataLe  <= '1';
				-- Passa para o controle do registro de dados o registro a ser utilizado
				ctrlRegData <= opcodeFetch(2 downto 0);
				-- Fila para de enviar o valor
				leEnd     <= '0';
				
			when And_regImed_16 =>
				-- Operacao de and
				ctrlULA     <= b"110"; --AND
				-- Habilita o registro de Dados
				habRegData <= '1';
				-- Seta o registro para ler o dado
				regDataLe  <= '1';
				-- Passa para o controle do registro de dados o registro a ser utilizado
				ctrlRegData <= opcodeFetch(2 downto 0);
				-- Fila para de enviar o valor
				leEnd     <= '0';
			
			when ResultRegImed =>
				-- Captura o resultado e salva no registro
				regDataLe   <= '0';	
				
			when Compara_Reg_16 =>
				--ctrlULA <=
			
			when Move_To_Reg =>
				
			when fimInstrucao =>
				--Fim da interpretacao da instrucao!
				habRegData  <= '0';
				habULA      <= '0';
				ctrlULA     <= (others => '0');
				ctrlRegData <= (others => '0');
				
			when Erro =>
				-- todas saidas zeradas
				leEnd      	<= '0';
				habULA	   	<= '0';
				ctrlULA     	<= "000";
				regDataLe    	<= '0';
				habRegData	   <= '0';
				ctrlRegData 	<= "000";
				ctrlDemuxData  <= '0';   --Dado vai direto para a ULA
				--Trava a Máquina de Estados

		end case;
	end if;
end process;

--definicao do processo de borda de descida que toma a decisao para o proximo estado
borda_descida : process(clock,reset)
begin

	if (reset = '0') then
	  
		--Mantem em estado de busca
		Estado <= Busca;
		
	elsif falling_edge(clock) then
		
		--Troca os estados
		case Estado is
			
			--Caso estado de Busca, passa para a decodificao ( Fecth )
			when Busca => 
			 if (sitEnd = '0') then
					Estado <= Busca;
			 --elsif (sitFila = '1' and opcodeFetch /= "XXXX") then
			 else
					Estado <= Fetch;
			 end if;
			
			--Caso estado de Fetch descobrir para qual estado a maquina ira, de acordo com os
			--16 primeiro  bits
			--Operacao com Imediato de 16 = 1000 0001 = 81h
			when Fetch => 
				case opcodeFetch(15 downto 8) is
					when x"81"  => Estado <= OpRegImed16;
					when others => Estado <= Erro;
				end case;
			
			--Caso seja uma operacao de Registro,Imediato de 16 bits
			--Analisa os 5 proximos bits para verificar qual operacao a ser realizada
			-- 11000 = Add
			when OpRegImed16 =>
				if (sitEnd = '0') then
					Estado <= OpRegImed16;
				else
					case opcodeFetch(7 downto 3) is
						when b"11000" => Estado <= Add_regImed_16;
						when b"11001" => Estado <= Or_regImed_16;
						when b"11010" => Estado <= Adc_regImed_16;
						when b"11011" => Estado <= Sbb_regImed_16;
						when b"11100" => Estado <= And_regImed_16;
						when b"11101" => Estado <= Sub_regImed_16;
						when b"11110" => Estado <= Xor_regImed_16;
						when others   => Estado <= Erro;
					end case;
				end if;
			
			--Apos a adicao pula para o resultado de Registro Imediato e escreve o valor no registro
			when Add_regImed_16 => Estado <= ResultRegImed;
			
			--Apos a operação ou pula para o resultado de Registro Imediato e escreve o valor no registro
			when Or_regImed_16 => Estado <= ResultRegImed;
			
			--Apos a adicao com carry pula para o resultado de Registro Imediato e escreve o valor no registro
			when Adc_regImed_16 => Estado <= ResultRegImed;
			
			--Apos a subtracao com borrow pula para o resultado de Registro Imediato e escreve o valor no registro
			when Sbb_regImed_16 => Estado <= ResultRegImed;
			
			--Apos a operacao and pula para o resultado de Registro Imediato e escreve o valor no registro
			when And_regImed_16 => Estado <= ResultRegImed;
			
			--Apos a subtracao pula para o resultado de Registro Imediato e escreve o valor no registro
			when Sub_regImed_16 => Estado <= ResultRegImed;
			
			--Apos a operacao ou exclusivo pula para o resultado de Registro Imediato e escreve o valor no registro
			when Xor_regImed_16 => Estado <= ResultRegImed;
			
			--Apos salvo o registro Imediato, passa para a finalizacao
			when ResultRegImed => Estado <= FimInstrucao;
			
			--Quando e o fim da instrucao verifica se a fila nao esta vazia e volta para a Busca
			when FimInstrucao => Estado <= Busca;
				
			--Caso algum erro ocorra no percorrer da instrucao a maquina trava
			when Erro   => Estado <= Erro;	
			
			when Compara_Reg_16 =>
			
			When Move_To_Reg =>
		end case;
	end if;
end process;

end Arquitetura;