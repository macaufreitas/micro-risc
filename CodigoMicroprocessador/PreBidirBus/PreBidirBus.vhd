--------------------------------------------------------------------------------------
--Código que implementa um buffer Tri-state Bidirecional do Microprocessador ---------
--------------------------------------------------------------------------------------

-------------------------- Autoria ----------------------
-- Este código foi retirado do site de exemplos da Altera
-- Mas foi modificado para ser um componente generico
---------------------------------------------------------

-------- Bibliotecas e Pacotes -------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
--------------------------------------

ENTITY PreBidirBus IS
	 GENERIC( width : integer := 16 );
    PORT(
        bidir   : INOUT STD_LOGIC_VECTOR (width-1 DOWNTO 0);
        oe, clk : IN STD_LOGIC;
        inp     : IN STD_LOGIC_VECTOR (width-1 DOWNTO 0);
        outp    : OUT STD_LOGIC_VECTOR (width-1 DOWNTO 0));
END PreBidirBus;

ARCHITECTURE maxpld OF PreBidirBus IS
SIGNAL  a  : STD_LOGIC_VECTOR (width-1 DOWNTO 0);  -- DFF that stores 
                                             -- value from input.
SIGNAL  b  : STD_LOGIC_VECTOR (width-1 DOWNTO 0);  -- DFF that stores 
BEGIN                                        -- feedback value.
    PROCESS(clk)
    BEGIN
    IF clk = '1' AND clk'EVENT THEN  -- Creates the flipflops
        a <= inp;                    
        outp <= b;                  
        END IF;
    END PROCESS;    
    PROCESS (oe, bidir)          -- Behavioral representation 
        BEGIN                    -- of tri-states.
        IF( oe = '0') THEN
            bidir <= (others => 'Z');
            b <= bidir;
        ELSE
            bidir <= a; 
            b <= bidir;
        END IF;
    END PROCESS;
END maxpld;