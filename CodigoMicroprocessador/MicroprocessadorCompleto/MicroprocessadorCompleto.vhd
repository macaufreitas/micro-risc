--------------------------------------------------------------------------------------
---------------- Codigo que implementa a logica do Microprocessador ------------------
--------------------------------------------------------------------------------------

-------- Bibliotecas e Pacotes -------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
--------------------------------------

entity MicroprocessadorCompleto is
	port(
		clk	     : in    std_logic;
		reset      : in    std_logic;
		data       : in    std_logic_vector(15 downto 0);
		endereco   : out   std_logic_vector(19 downto 0);
		habMemoria : out   std_logic
	);
end MicroprocessadorCompleto;

architecture ArquiteturaMicro of MicroprocessadorCompleto is
	--declaração dos sinais
	
	--sinal que relaciona as unidades de controle de dados e endereço
	signal sitEndSig    : std_logic;
	signal leEndSig     : std_logic;
	
	--sinal que habilita a fila
	signal habFilaSig    : std_logic;

	--controles da ALU
	signal ctrlULASig    : std_logic_vector(2  downto 0);
	signal habULASig     : std_logic;
	signal fimCalcSig		: std_logic;
	
	--controles do registro de proposito geral
	signal regDataLeSig  : std_logic;
	signal ctrlRegDataSig: std_logic_vector(2  downto 0);
	signal habRegDataSig	: std_logic;
	
	--sinal de saida do registro de dados
	signal regDataOutSig : std_logic_vector(15 downto 0);
	
	--sinal do Multiplexador de entrada do Registro de Proposito Geral
	signal regDataEntradaSig : std_logic_vector(15 downto 0);
	signal selMovSig			 : std_logic;
	
	--sinais do Demultiplexador
	signal saidaDemuxULA : std_logic_vector(15 downto 0);
	signal saidaDemuxUC  : std_logic_vector(15 downto 0);
	signal ctrlDemux		: std_logic;
	
	--sinais da Unidade Logica
	signal flagAuxiliarSig : std_logic;
	signal flagCarrySig	  : std_logic;
	signal flagOverflowSig : std_logic;
	signal flagParidadeSig : std_logic;
	signal flagSinalSig    : std_logic;
	signal flagZeroSig     : std_logic;
	signal resultSig	     : std_logic_vector(15 downto 0);
	
	--sinal de saída dos Flags
	signal flagsSig    : std_logic_vector(15 downto 0);

	--Sinais da unidade de controle de enderecos
	signal habUCESig      : std_logic;
	signal habCalcSig     : std_logic;
	signal habRegSegSig   : std_logic;
	signal leRegSegSig    : std_logic;
	signal ctrlRegSegSig  : std_logic_vector(2 downto 0);
	signal incIPSig	    : std_logic;
	signal selecSegSig  	 : std_logic;
	signal habSaidaEndSig : std_logic;
	signal habUnidCtrl	 : std_logic;

	--Sinais do registro de segmentos
	signal saidaRegSegSig : std_logic_vector(15 downto 0);
	
	--Sinais do multiplexador
	signal entradaIPCalcSig  : std_logic_vector(15 downto 0);
	signal entradaSegCalcSig : std_logic_vector(15 downto 0);

	--declaracao dos componentes a serem utilizados
	
	--Unidade Logica Aritmetica
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
		resultado        : out std_logic_vector(15 downto 0);
		fimCalculo		  : out std_logic);
	end component;
	
	--Unidade de controle
	component UnidadeDeControle
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
			ctrlDemuxData  : out std_logic;
			fimCalculoULA	: in  std_logic;
			ctrlMuxMov		: out std_logic);
	end component;
	
	--Registro de Proposito Geral
	component RegistroPropositoGeral
		port (
			clock           : in std_logic;
			reset           : in std_logic;
			habilita        : in std_logic;
			leitura_Escrita : in std_logic;
			seletor         : in std_logic_vector  (2 downto 0);
			entradaDados    : in std_logic_vector  (15 downto 0);
			saidaDados      : out std_logic_vector (15 downto 0)
		);
	end component;
	
	--Demultiplexador
	component Demultiplexador is
		port (
			entrada  : in std_logic_vector (15 downto 0);
			saida_01 : out std_logic_vector (15 downto 0);
			saida_02 : out std_logic_vector (15 downto 0);
			seletor  : in std_logic
		);
	end component;
	
	--Multiplexador
	component Multiplexador is
	port (
		entrada_01 : in  std_logic_vector (15 downto 0);
		entrada_02 : in  std_logic_vector (15 downto 0);
		saida		  : out std_logic_vector (15 downto 0);
		seletor    : in  std_logic
	);
	end component;
	
	--Registro de Flags
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
		
		--Registro de Segmentos
	component RegistroSegmento is
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
	end component;
	
	--Unidade de Controle de Enderecos
	component UnidadeDeControleDeEnderecos is
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
	end component;
	
	--Calculadora de Enderecos
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

--Inicio do código de comportamento
begin
	--Definindo as ligações entre as unidades
	
	--Demultiplexador que define se o dado vai para a Unidade de Controle ou diretamente para a ALU
	D1: Demultiplexador port map(data,
								 saidaDemuxULA,
								 saidaDemuxUC,
								 ctrlDemux);

	
	--Unidade de Controle
	UC: UnidadeDeControle port map(clk,
								   reset,
								   saidaDemuxUC,
								   sitEndSig,
								   leEndSig,
								   habULASig,
								   ctrlULASig,
								   regDataLeSig,
								   habRegDataSig,
									ctrlRegDataSig,
								   ctrlDemux,
									fimCalcSig,
									selMovSig);
	--ULA
	UnidadeLogicaArit: ULA port map(clk,
									ctrlULASig,
									flagsSig(0),
									saidaDemuxULA,
									regDataOutSig,
									habULASig,
									flagCarrySig,
								   flagOverflowSig,
									flagParidadeSig,
									flagSinalSig,
									flagZeroSig,
									flagAuxiliarSig,
									resultSig,
									fimCalcSig);
									
	--Multiplexador que define se a entrada no Registro de dados vem direto do barramento ou da ULA
	Mux: Multiplexador port map(resultSig,
										 data,
										 regDataEntradaSig,
										 selMovSig);
										 
										 
	
	--Registro de Dados
	RegistroDados: RegistroPropositoGeral port map(clk,
												   reset,
												   habRegDataSig,
												   regDataLeSig,
													ctrlRegDataSig,
													regDataEntradaSig,
												   regDataOutSig);
	--Registro de Flags
	RegFlags:	RegistroFlags port map(reset,
												  clk,
												  flagOverflowSig,
												  '0',
												  '0',
												  '0',
												  flagSinalSig,
												  flagZeroSig,
												  flagAuxiliarSig,
												  flagParidadeSig,
												  flagCarrySig,
												  flagsSig);

		--Unidade de Controle de Enderecos
	UCE   : UnidadeDeControleDeEnderecos port map(clk,
																 reset,
																 leEndSig,
																 habCalcSig,
																 habRegSegSig,
																 leRegSegSig,
															    ctrlRegSegSig,
																 incIPSig,
																 selecSegSig,
																 habSaidaEndSig,
															    habMemoria,
																 sitEndSig);
	
	--Registro de Segmentos
	RegS  : RegistroSegmento port map (clk,
												  reset,
												  habRegSegSig,
												  leRegSegSig,
												  incIPSig,
												  ctrlRegSegSig,
												  x"0000",
												  saidaRegSegSig);
	
	--Demultiplexador
	D2 : Demultiplexador port map (saidaRegSegSig,
											 entradaSegCalcSig,
											 entradaIPCalcSig,
											 selecSegSig);
	
	--CalculadoraEndereco
	Calc  : CalculadoraEndereco port map (clk,
													  habCalcSig,
													  habSaidaEndSig,
													  entradaIPCalcSig,
													  entradaSegCalcSig,
													  endereco);

end ArquiteturaMicro;