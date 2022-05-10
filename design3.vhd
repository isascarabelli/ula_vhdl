library ieee;

use ieee.std_logic_1164.all;

entity mult3x1 is

  port (e1, e2, e3 in std_logic; 
  		sel: in std_logic_vector(1 downto 0);
		s: out std_logic);

end mult3x1;

architecture arch_mult3x1 of mult3x1 is

begin

  with sel select

  s <= e1 when '00',
       e2 when '01',
       e3 when others;

end arch_mult3x1;
