
--------------------------------------------------------------------------------------
----  Codigo que implementa a Unidade de Controle de Memoria do Microprocessador  ----
--------------------------------------------------------------------------------------

-------- Bibliotecas e Pacotes -------
library ieee;
use ieee.std_logic_1164.all;
use work.uce_aux.all;
--------------------------------------

entity UnidadeDeControleDeEnderecos is
	port(
			clock       	: in  std_logic;
			reset       	: in  std_logic;
			habilita			: in  std_logic;
			habilitaCalc	: out std_logic;
			habRegSeg		: out std_logic;
			leRegSeg			: out std_logic;
			ctrlRegSeg		: out std_logic_vector(2 downto 0);
			incIP				: out std_logic;
			selecSeg			: out std_logic;
			habSaidaEnd		: out std_logic;
			habMemoria		: out std_logic;
			habUnidCtrl		: out std_logic
	);
end UnidadeDeControleDeEnderecos;

architecture Arquitetura of UnidadeDeControleDeEnderecos is
	signal Estado         : Tipo_estado; --Estado da unidade de controle
	
begin

--Definicao do processo de borda de subida que altera os sinais
borda_subida : process(clock, reset)
begin
	
	if reset = '0' then
	-- todas saidas zeradas
		habilitaCalc <= '0';
		leRegSeg 	 <= '1';
		ctrlRegSeg	 <= "000";
		incIP			 <= '0';
		selecSeg		 <= '0';
		habSaidaEnd  <= '0';
		habRegSeg 	 <= '1';
		habMemoria	 <= '0';
		habUnidCtrl	 <= '0';
	
	elsif rising_edge(clock) then

		case Estado is
		
			when Espera =>
			-- Estado nao modifica seus sinais, somente aguarda
				habUnidCtrl <= '0'; -- Faz a unidade de controle esperar também
			
			when HabilitaSegmento =>
			-- Estado habilita o valor do segmento para ser calculado o endereco pela calculadora de enderecos
				habilitaCalc <= '1'; -- Habilita a calculado de enderecos
				habRegSeg	 <= '1'; -- Habilita o registro de segmentos
				selecSeg     <= '1'; -- Seleciona o registro de segmento para ir para a calculadora de endereco
				ctrlRegSeg   <= "001"; -- Seleciona como registro de segmento o CS
				leRegSeg		 <= '1'; -- Le o registro de segmento
				
			
			when HabilitaIP =>
			--Estado que habilida o valor do registro IP para ser calculado o endereco pela calculadora de enderecos
				selecSeg   <= '0'; -- seleciona a outra entrada da calculadora
				ctrlRegSeg <= "100"; -- seleciona o IP do registro de segmento
			
			when CalculoEndereco =>
			--Estado que realiza o calculo do endereco
			
			when ColocaEndBarramentoIncIP =>
			--Estado em que a unidade coloca o endereco no barramento
				habSaidaEnd <= '1'; -- habilita a saida da calculadora de endereco para o IP
				leRegSeg	   <= 'Z'; -- para de ler a unidade de registro
				incIP       <= '1'; -- Envia o sinal para incrementar o IP
				habUnidCtrl <= '1'; -- Avisa a Unidade de Controle que o dado que vai ser colocado no barramento de dados pela memória é um dado válido
				habMemoria	 <= '1'; -- Habilita a memória
				
			when TerminaCalculo =>
			--Estado em que termina o calculo do endereco
				habilitaCalc <= '0';
				habSaidaEnd  <= '0';
				incIP 		 <= '0';
				habRegSeg	 <= '0';
				habMemoria	 <= '0';
				
			when Erro =>
				-- todas saidas em alta impedancia
				habilitaCalc <= 'Z';
			   leRegSeg 	 <= 'Z';
			   ctrlRegSeg	 <= "ZZZ";
			   incIP			 <= 'Z';
				selecSeg		 <= 'Z';
				--Trava a Máquina de Estados 
		end case;
	end if;
end process;

--definicao do processo de borda de descida que toma a decisao para o proximo estado
borda_descida : process(clock,reset)
begin

	if (reset = '0') then
	  
		--Mantem em estado de busca
		Estado <= Espera;
		
	elsif falling_edge(clock) then
		
		--Troca os estados
		case Estado is
			
			--Caso estado de Busca, passa para a decodificao ( Fecth )
			when Espera => 
			 if (habilita = '0') then
					Estado <= Espera;
			 else
					Estado <= HabilitaSegmento;
			 end if;
			
			--Apos habilitar o Segmento, habilita o IP
			when HabilitaSegmento => Estado <= HabilitaIP;
			
			--Apos habilitar o IP, realiza o calculo do endereco
			when HabilitaIP => Estado <= CalculoEndereco;
			
			--Apos o calculo do endereco coloca o valor no barramento de endereco
			when CalculoEndereco => Estado <= ColocaEndBarramentoIncIP;
			
			--Apos colocar o endereco no barramento, termina o ciclo de calculo do Endereco
			when ColocaEndBarramentoIncIP => Estado <= TerminaCalculo;
			
			--Apos calculo terminado, retorna para o estado de espera
			when TerminaCalculo => Estado <= Espera;
				
			--Caso algum erro ocorra no percorrer da instrucao a maquina trava
			when Erro   => Estado <= Erro;	
			
		end case;
	end if;
end process;

end Arquitetura;