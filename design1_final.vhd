library ieee;
use ieee.std_logic_1164.all;

entity meio_somador is
	port( a : in std_logic;
    	  b : in std_logic;
          s1 : out std_logic;
          carry : out std_logic );
end meio_somador;

architecture meio_somador_arch of meio_somador is
begin
	s1 <= a xor b;
    carry <= a and b;
end meio_somador_arch;
