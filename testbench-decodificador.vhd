library IEEE;
use IEEE.std_logic_1164.all;
 
entity testbench is
end testbench; 

architecture tb of testbench is

component ula is
	port (a : in std_logic;
    	  b : in std_logic;
          carryIn : in std_logic;
          less : in std_logic;
          carryOut : out std_logic;
          saida : out std_logic);
end component;

signal a: std_logic;
signal b: std_logic;
signal a1: std_logic;
signal b1: std_logic;
signal c1: std_logic;
signal carryIn: std_logic;
signal less: std_logic;
signal carryOut: std_logic;
signal saida: std_logic;

begin

  DUT: ula port map (a => a,
  					b => b,
                    carryIn => carryIn,
                    carryOut => carryOut,
                    saida => saida,
                    less => less);

  process
  begin
    
    a <= '1';
    b <= '1';
    a1 <= '0';
    b1 <= '1';
    c1 <= '0';
    carryIn <= '1';
    less <= '0';
    wait for 10 ns;
    
    a <= '1';
    b <= '1';
    a1 <= '0';
    b1 <= '1';
    c1 <= '0';
    carryIn <= '1';
    less <= '0';
    wait for 10 ns;
    
    a <= '1';
    b <= '1';
    a1 <= '0';
    b1 <= '1';
    c1 <= '0';
    carryIn <= '1';
    less <= '0';
    wait for 10 ns;
    
    wait;
  end process;
end tb;
