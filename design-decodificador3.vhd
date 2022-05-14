library ieee;

use ieee.std_logic_1164.all;

entity decodificador is

    port (a1, b1, c1: in std_logic;
          sSel1, sSel2, sSel3: out std_logic);
          
end decodificador;

architecture archDecode of decodificador is
begin

    sSel1 <= (b1 or c1) and (a1 or b1);
    sSel2 <= b1;
    sSel3 <= c1;
          
end archDecode;
