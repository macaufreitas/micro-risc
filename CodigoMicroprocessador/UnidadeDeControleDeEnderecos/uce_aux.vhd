library ieee;
use ieee.std_logic_1164.all;

-- Pacote auxiliar a unidade de controle de memoria, facilitar a escrita e visualização do código

package uce_aux is

	--Possiveis estados da unidade de controle
	type Tipo_estado is ( Espera, HabilitaSegmento, HabilitaIP,
								 CalculoEndereco, ColocaEndBarramentoIncIP,
								 TerminaCalculo, Erro);
end uce_aux;