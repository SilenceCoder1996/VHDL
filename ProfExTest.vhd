library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FullAdderTest is     
end FullAdderTest;

architecture test of FullAdderTest is

component example is
	port (A: in std_logic_vector(31 downto 0);
     	B: in std_logic_vector(31 downto 0);
     	Y: out std_logic_vector(63 downto 0));
end component;

signal A_i: std_logic_vector(31 downto 0) := (others => "0");
signal B_i: std_logic_vector (31 downto 0) := (others => "0");
signal Y_i: std_logic_vector (63 downto 0) := (others => "0");

begin

dut: example port map (A => A_i,B => B_i,Y => Y_i);

process
begin

A_i <= "00000000000000000000000000000000";
B_i <= "00000000000000000000000000000000";
wait for 1 ns;

A_i <= "00000000000000000000000000000001";
B_i <= "00000000000000000000000000000001";
wait for 1 ns;

A_i <= "00000000000000000000000000000010";
B_i <= "00000000000000000000000000000010";
wait for 1 ns;

A_i <= "00000000000000000000000000000011";
B_i <= "00000000000000000000000000000011";
wait for 1 ns;

wait;

end process;

end test;
