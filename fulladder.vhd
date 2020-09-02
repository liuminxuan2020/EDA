library ieee;
use ieee.std_logic_1164.all;
entity fulladder is 
	port(a,b,cin:in std_logic;
		   s,cout:out std_logic);
end fulladder;

architecture rtl of fulladder is 

component halfadder
	port(a,b:in std_logic;
		  s,co:out std_logic);
end component;

signal temp1,temp2,temp3:std_logic;
begin
u0:halfadder port map(a,b,temp1,temp2);
u1:halfadder port map(temp1,cin,s,temp3);
cout<=temp2 or temp3;
end rtl;