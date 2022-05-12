library IEEE;
use IEEE.std_logic_1164.all;
 
entity testbench is
end testbench; 

architecture tb of testbench is

component ula is
	port (a : in std_logic;
    	  b : in std_logic;
          carryIn : in std_logic;
          sel : in std_logic_vector (1 downto 0);
          less : in std_logic;
          bInvert : in std_logic;
          carryOut : out std_logic;
          saida : out std_logic);
end component;

signal a: std_logic;
signal b: std_logic;
signal carryIn: std_logic;
signal sel: std_logic_vector (1 downto 0);
signal less: std_logic;
signal bInvert: std_logic;
signal carryOut: std_logic;
signal saida: std_logic;

begin

  DUT: ula port map (a => a,
  					b => b,
                    carryIn => carryIn,
                    sel => sel,
                    carryOut => carryOut,
                    saida => saida,
                    less => less,
                    bInvert => bInvert);

  process
  begin
    
    a <= '1';
    b <= '1';
    carryIn <= '1';
    sel <= "01";
    bInvert <= '0';
    less <= '0';
    wait for 10 ns;
    
    a <= '0';
    b <= '0';
    carryIn <= '0';
    sel <= "01";
    bInvert <= '1';
    less <= '0';
    wait for 10 ns;
    
    a <= '1';
    b <= '1';
    carryIn <= '0';
    sel <= "10";
    bInvert <= '1';
    less <= '0';
    wait for 10 ns;
    
    a <= '0';
    b <= '1';
    carryIn <= '1';
    sel <= "11";
    bInvert <= '0';
    less <= '0';
    wait for 10 ns;
   
    wait;
  end process;
end tb;
