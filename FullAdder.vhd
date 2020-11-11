Library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity FullAdder is 

port (
	a : in std_logic; 
	b: in std_logic;
	ci:in std_logic;
   s: out std_logic;
   co:out std_logic);

end entity;

architecture behavioral of FullAdder is
--signal data : std_logic;
begin 
    s<=a xor b xor ci;
    co<=((a xor b)and ci)or (a and b);

end behavioral;

