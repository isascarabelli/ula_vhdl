library ieee;

use ieee.std_logic_1164.all;

entity decodificador is

    port (opcode: in std_logic_vector(3 downto 0);
          sSel1, sSel2, sSel3: out std_logic);
          
end decodificador;

architecture archDecode of decodificador is
    signal a1: in std_logic;
    signal b1: in std_logic;
    signal c1: in std_logic;

begin
    a1 <= opcode(0);
    c1 <= opcode(1);
    b1 <= opcode(2);

    sSel1 <= (b1 or c1) and (a1 or b1);
    sSel2 <= b1;
    sSel3 <= c1;
          
end archDecode;
