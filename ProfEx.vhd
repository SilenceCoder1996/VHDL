Library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity example is 
port (A: in std_logic_vector(31 downto 0);
     B: in std_logic_vector(31 downto 0);
     Y: out std_logic_vector(63 downto 0));
end entity;

architecture behavioral of example is
begin 

	Y <=A ·B;

end behavioral;
