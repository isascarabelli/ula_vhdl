library ieee;
use ieee.std_logic_1164.all;

entity somador1b is 
	port (a : in std_logic;
    	  b : in std_logic;
          carryIn : in std_logic;
          s1 : out std_logic;
          s2 : out std_logic;
          s3 : out std_logic;
          carryOut : out std_logic);
end somador1b;

architecture somador1b_arch of somador1b is
    component meio_somador is
	port( a : in std_logic;
    	  b : in std_logic;
          s1 : out std_logic;
          carry : out std_logic );
	end component meio_somador;
     
     signal S_primeira_soma : std_logic;
     signal S_primeiro_carry : std_logic;
     signal S_segundo_carry : std_logic;
     
     begin 
     	somador1 : meio_somador
        	port map (a => a, 
            		  b => b,
                      s1 => S_primeira_soma,
                      carry => S_primeiro_carry);
           
        somador2 : meio_somador
        	port map (a => S_primeira_soma, 
            		  b => S_primeiro_carry,
                      s1 => s1,
                      carry => S_segundo_carry);
                      
         carryOut <= S_primeiro_carry or S_segundo_carry;
         
         s2 <= a and b;
         s3 <= a or b;
         
end somador1b_arch;
