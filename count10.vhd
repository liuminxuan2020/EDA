library ieee;
use ieee.std_logic_1164.all;
entity count10 is
port (cp:in std_logic;
		LED:out std_logic_vector(6 downto 0);
		OUTPUT:out std_logic);
end count10;

architecture rtl of count10 is
component fenpin
port(clk:in std_logic;
		clk_1:out std_logic);
end component;

component cnt10
   port(CLK: in std_logic;
        DOUT : out std_logic_vector (3 downto 0);
        COUT : out std_logic);
end component;

component led7
port(a:in std_logic_vector(3 downto 0);
	  y:out std_logic_vector(6 downto 0));
end component;
signal temp1,temp3:std_logic;
signal temp2:std_logic_vector(3 downto 0);
begin
u1:fenpin port map(cp,temp1);
u2:cnt10 port map(temp1,temp2,temp3);
u3:led7 port map(temp2,LED);
OUTPUT<=temp3;
end rtl;