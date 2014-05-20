-- Desenvolvido por:
-- Dênis Araújo da Silva - 18698
-- Marcos Aurélio Freitas de Almeida Costa - 18726
-- Trabalho Final de Graduação
-- Engenharia de Computação
-- Universidade Federal de Itajubá

library ieee;
use ieee.std_logic_1164.all;

-- Pacote auxiliar a unidade de controle, facilitar a escrita e visualizacao do codigo

package uc_aux is

	--Possiveis estados da unidade de controle
	type Tipo_estado is ( Busca, Fetch, OpRegImed16, 
								 Add_regImed_16, Sub_regImed_16, Erro,
								 Or_regImed_16,Adc_regImed_16,Sbb_regImed_16,
								 And_regImed_16,Xor_regImed_16,
								 FimInstrucao,ResultRegImed, Compara_Reg_16, Move_To_Reg, Fim_Move_To_Reg);
end uc_aux;

