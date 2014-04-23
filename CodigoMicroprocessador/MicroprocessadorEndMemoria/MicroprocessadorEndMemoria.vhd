--------------------------------------------------------------------------------------
---------------- Codigo que implementa a interface Microprocessador/Memória ----------
--------------------------------------------------------------------------------------

-------- Bibliotecas e Pacotes -------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
--------------------------------------

entity MicroprocessadorEndMemoria is
	port(
		clk	   : in    std_logic;
		reset    : in    std_logic;
		endereco : out 	std_logic_vector(19 downto 0)
	);
end MicroprocessadorEndMemoria;

architecture ArquiteturaMicro of MicroprocessadorEndMemoria is
	
	--Sinais da unidade de controle de enderecos
	signal habUCESig      : std_logic;
	signal habCalcSig     : std_logic;
	signal habRegSegSig   : std_logic;
	signal leRegSegSig    : std_logic;
	signal ctrlRegSegSig  : std_logic_vector(2 downto 0);
	signal incIPSig	    : std_logic;
	signal selecSegSig  	 : std_logic;
	signal habSaidaEndSig : std_logic;
	signal habMemoria		 : std_logic;
	signal habUnidCtrl	 : std_logic;

	--Sinais do registro de segmentos
	signal saidaRegSegSig : std_logic_vector(15 downto 0);
	
	--Sinais do multiplexador
	signal entradaIPCalcSig  : std_logic_vector(15 downto 0);
	signal entradaSegCalcSig : std_logic_vector(15 downto 0);
	
	--Declaracao dos componentes a serem utilizados
	
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

	--Demultiplexador
	component Demultiplexador is
	port (
		entrada  : in std_logic_vector  (15 downto 0);
		saida_01 : out std_logic_vector (15 downto 0);
		saida_02 : out std_logic_vector (15 downto 0);
		seletor  : in std_logic
	);
	end component;
	
	--ROM para a simulação
	component memoriaROM IS
	PORT (       clk          : IN  STD_LOGIC;
                endereco     : in  STD_LOGIC_VECTOR(19 downto 0);
                chipenable   : IN  STD_LOGIC;
                saida        : OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
	END component;

--Inicio do código de comportamento
begin
	--Definindo as ligações entre as unidades
	
	--Unidade de Controle de Enderecos
	UCE   : UnidadeDeControleDeEnderecos port map(clk,reset,'1',habCalcSig,habRegSegSig,leRegSegSig,
															  ctrlRegSegSig,incIPSig,selecSegSig,habSaidaEndSig,
															  habMemoria,habUnidCtrl);
	
	--Registro de Segmentos
	RegS  : RegistroSegmento port map (clk,reset,habRegSegSig,leRegSegSig,incIPSig,
												  ctrlRegSegSig,x"0000",saidaRegSegSig);
	
	--Demultiplexador
	Demux : Demultiplexador port map (saidaRegSegSig,entradaSegCalcSig,entradaIPCalcSig,selecSegSig);
	
	--CalculadoraEndereco
	Calc  : CalculadoraEndereco port map (clk,habCalcSig,habSaidaEndSig,entradaIPCalcSig,entradaSegCalcSig,endereco);
	
	--ROM
	--ROM	: memoriaROM port map (clk,addrSig,habMemoria,dados);
	
end ArquiteturaMicro;