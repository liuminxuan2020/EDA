library ieee;
use ieee.std_logic_1164.all;
entity yihuo is
	port (x1,x2: in std_logic;
				 y: out std_logic);
end yihuo;

architecture rtl of yihuo is
begin	
	y<= x1 nor x2;
end rtl;
