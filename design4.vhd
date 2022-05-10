library ieee;

use ieee.std_logic_1164.all;

entity ula is
	port (a : in std_logic;
    	  b : in std_logic;
          c : in std_logic;
          sel : in std_logic;
          carryOut : out std_logic;
          saida : out std_logic);
end ula;

architecture ula_arch of ula is
	component somador1b is
    	port(a : in std_logic;
             b : in std_logic;
             modo : in std_logic;
             s1 : out std_logic;
             carry : out std_logic);
     end component;
     
     component mult4x1 is
     	port (e1, e2, e3 in std_logic; 
  		sel: in std_logic_vector(1 downto 0);
		s: out std_logic);
     end component;
     
     signal S_signal4 : std_logic;
 	 
     begin 
     somador : somador1b
     	port map(a => a, 
        		 b => b,
                 modo => c,
                 s1 => S_signal4,
                 carry => carryOut);
      mux : mult3x1
     	port map(e1 => S_signal4,
        	  e2 => s2,
              e3 => s3,
              sel => sel,
              s => saida);
      
end ula_arch;
