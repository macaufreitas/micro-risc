-----------------------------------------------------------
--                Descricao de Memoria                   --
--             utilizando comando Generic                --
--                                                       --
--     OBS:      Vetores muito pequenos sao              --
--            implementados com registradores            --
--                                                       --
--               Teste numero de linhas = 4              --
--               (Utilize linhas comentadas)             --
--                                                       --
--        Verifique o relatorio "Compilation Report"     --
--          analisando o numero de elementos lógico      --
--                    e bits de memória                  --
-----------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

entity teste_memoria is
	port (
		clkr, clkw      : in  std_logic;
		dados_in		: in  std_logic_vector(31 downto 0);
		end_write		: in  integer range 0 to 1048575;
		end_read		: in  integer range 0 to 1048575;
		hab_write		: in  std_logic;
		hab_read		: in  std_logic;
		dados_out		: out std_logic_vector(31 downto 0)
	      );
end teste_memoria;

architecture arq of teste_memoria is
-- declaracao de componentes
component memoriaRAM
        generic ( posicoes  : natural;
                  bits_end  : natural;
                  bits      : natural);
	port (
		clkr, clkw      : in  std_logic;
		dados_in		: in  std_logic_vector(bits-1 downto 0);
		end_write		: in  integer range 0 to 2**bits_end-1;
		end_read		: in  integer range 0 to 2**bits_end-1;
		hab_write		: in  std_logic;
		hab_read		: in  std_logic;
		dados_out		: out std_logic_vector(bits-1 downto 0)
              );
end component;

begin
circuito: memoriaRAM
          generic map (
--                       posicoes              => 4, -- quantidade de linhas
--                       bits_end              => 2,   -- numero de bits de endereço
--                       bits                  => 8)   -- numero de bits da memoria
                       posicoes              => 1048576, -- quantidade de linhas FFFFFh
                       bits_end              => 20,   -- numero de bits de endereço
                       bits                  => 32)   -- numero de bits da memoria

          port map (clkr=> clkr,
                    clkw=> clkw,
                    dados_in=> dados_in,
                    end_write=> end_write,
                    end_read=> end_read,
                    hab_write=> hab_write,
                    hab_read=> hab_read,
                    dados_out=> dados_out);
end arq;