library ieee;
use ieee.std_logic_1164.all;

entity yufei is 
	port(x1,x2: in std_logic;
				y: out std_logic);
end yufei;

architecture rtl of yufei is 
	begin
		y<=x1 nand x2;
	end rtl;