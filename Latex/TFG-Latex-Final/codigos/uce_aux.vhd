-- Desenvolvido por:
-- Dênis Araújo da Silva - 18698
-- Marcos Aurélio Freitas de Almeida Costa - 18726
-- Trabalho Final de Graduação
-- Engenharia de Computação
-- Universidade Federal de Itajubá

library ieee;
use ieee.std_logic_1164.all;

-- Pacote auxiliar a unidade de controle de memoria, facilitar a escrita e visualizacao do codigo

package uce_aux is

	--Possiveis estados da unidade de controle
	type Tipo_estado is ( Espera, HabilitaSegmento, HabilitaIP,
								 CalculoEndereco, ColocaEndBarramentoIncIP,
								 TerminaCalculo, Erro);
end uce_aux;