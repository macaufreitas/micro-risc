library ieee;
use ieee.std_logic_1164.all;

entity memoriaRAM is
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
end memoriaRAM;

architecture arch of memoriaRAM is
    type formato_mem is array(0 to posicoes-1) of std_logic_vector(bits-1 downto 0);
    signal memo        : formato_mem;
begin
	escrita: process(clkw,hab_write,end_write,dados_in)
	begin
		if rising_edge(clkw) and hab_write = '1' then
			memo(end_write) <= dados_in;
		end if;
	end process;

	leitura: process(clkr,hab_read,end_read)
	begin
	    if rising_edge(clkr) and hab_read = '1' then
	        dados_out <= memo(end_read);
	    end if;
	end process;
end arch;o