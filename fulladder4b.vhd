library ieee;
use ieee.std_logic_1164.all;
entity fulladder4b is
port (x,y:in std_logic_vector(3 downto 0);
		c:in std_logic;
		sum:out std_logic_vector(3 downto 0);
		col:out std_logic);
end fulladder4b;

architecture rtl of fulladder4b is
component fulladder
port(a,b,cin: in std_logic;
	  s,cout:out std_logic);
end component;
signal temp1,temp2,temp3,temp4:std_logic;
begin
u1:fulladder port map(x(0),y(0),c,sum(0),temp1);
u2:fulladder port map(x(1),y(1),temp1,sum(1),temp2);
u3:fulladder port map(x(2),y(2),temp2,sum(2),temp3);
u4:fulladder port map(x(3),y(3),temp3,sum(3),temp4);
col<=temp4;
end rtl;