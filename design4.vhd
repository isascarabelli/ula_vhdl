library ieee;

use ieee.std_logic_1164.all;

entity ula is
	port (a : in std_logic;
    	  b : in std_logic;
          carryIn : in std_logic;
          sel : in std_logic;
          less : in std_logic;
          bInvert : in std_logic;
          carryOut : out std_logic;
          saida : out std_logic);
end ula;

architecture ula_arch of ula is
	component somador1b is
    	port(a : in std_logic;
    	  b : in std_logic;
          carryIn : out std_logic;
          s1 : out std_logic;
          s2 : out std_logic;
          s3 : out std_logic;
          carryOut : out std_logic);
     end component;
     
     component mult3x1 is
     	port (e1, e2, e3 in std_logic; 
  		sel: in std_logic_vector(1 downto 0);
		s: out std_logic);
     end component;
     
     signal S_signal4 : std_logic;
     signal S_e1 : std_logic;
     signal S_e2 : std_logic;
     signal S_e3 : std_logic;
 	 
     begin 
     with bInvert select

  		S_signal4 <= b when '0',
       				(not b) when others;
       
     somador : somador1b
     	port map(a => a, 
        		 b => S_signal4,
                 carryIn => carryIn,
                 s1 => S_e1,
                 s2 => S_e2,
                 s3 => S_e3,
                 carryOut => carryOut);
      mux : mult3x1
     	port map(e1 => S_e1,
        	  e2 => S_e2,
              e3 => S_e3,
              sel => sel,
              s => saida);
      
end ula_arch;
