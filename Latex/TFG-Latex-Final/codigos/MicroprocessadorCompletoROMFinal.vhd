--------------------------------------------------------------------------------------
-- Codigo que implementa a logica do Microprocessador com a ROM de Testes ------------
-- Desenvolvido por:
-- Dênis Araújo da Silva - 18698
-- Marcos Aurélio Freitas de Almeida Costa - 18726
-- Trabalho Final de Graduação
-- Engenharia de Computação
-- Universidade Federal de Itajubá
--------------------------------------------------------------------------------------

-------- Bibliotecas e Pacotes -------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
--------------------------------------

entity MicroprocessadorCompletoROMFinal is
	port(
		clk	     : in    std_logic;
		reset      : in    std_logic
	);
end MicroprocessadorCompletoROMFinal;

architecture ArquiteturaMicro of MicroprocessadorCompletoROMFinal is
	--declaração dos sinais
	signal dataSig		   : std_logic_vector(15 downto 0);
	signal endeSig 	   : std_logic_vector(19 downto 0);
	signal habMemoriaSig : std_logic;
	
	--declaracao dos componentes a serem utilizados
	--memoria ROM
	component memoriaROM is
	port (       clk          : in  std_logic;
                endereco     : in  std_logic_vector(19 downto 0);
                chipenable   : in  std_logic;
                saida        : out std_logic_vector(15 DOWNTO 0));
	end component;
	
	--Microprocessador
	component MicroprocessadorCompleto is
	port(
		clk	     : in    std_logic;
		reset      : in    std_logic;
		data       : in    std_logic_vector(15 downto 0);
		endereco   : out   std_logic_vector(19 downto 0);
		habMemoria : out   std_logic
	);
	end component;
	
--Inicio do código de comportamento
begin
	--Definindo as ligações entre as unidades
	--Microprocessador
	Micro: MicroprocessadorCompleto port map(clk,
														  reset,
														  dataSig,
														  endeSig,
														  habMemoriaSig);
	--Memoria ROM										  
	ROM: MemoriaROM port map (clk,
									  endeSig,
									  habMemoriaSig,
									  dataSig);
						 
end ArquiteturaMicro;