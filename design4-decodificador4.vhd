library ieee;

use ieee.std_logic_1164.all;

entity mult3x1 is

  port (e1, e2, e3: in std_logic;
  		sel1: in std_logic;
        sel2: in std_logic;
		s: out std_logic);

end mult3x1;

architecture arch_mult3x1 of mult3x1 is

begin

  s <= e1 when (sel1 = '0' and sel2 = '0') else
       e2 when (sel1 = '0' and sel2 = '1') else
       e3;

end arch_mult3x1;
