library ieee;
use ieee.std_logic_1164.all;

entity halfadder is 
	port(a,b:in std_logic;
		  s,co:out std_logic);
end halfadder;

architecture rtl of halfadder is 
signal c,d:std_logic;
begin
	c<=a or b;
	d<=a nand b;
	co<= not d;
	s<=c and d;
end rtl;