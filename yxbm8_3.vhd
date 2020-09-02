library ieee;
use ieee.std_logic_1164.all;

entity yxbm8_3 is 

port (i:in std_logic_vector(7 downto 0);
		s:in std_logic;
		y:out std_logic_vector(2 downto 0);
		ys,yex:out std_logic);
end yxbm8_3;

architecture rtl of yxbm8_3 is 
begin
	process(i,s)
	begin
	if s='1' then 
		y<="111";
		ys<='1';
		yex<='1';
	else
		if i(7)='0' then
			y<="000";
			ys<='1';
			yex<='0';
		elsif i(6)='0' then
			y<="001";
			ys<='1';
			yex<='0';
		elsif i(5)='0' then
			y<="010";
			ys<='1';
			yex<='0';
		elsif i(4)='0' then 
			y<="011";
			ys<='1';
			yex<='0';
		elsif i(3)='0' then
			y<="100";
			ys<='1';
			yex<='0';
		elsif i(2)='0' then
			y<="101";
			ys<='1';
			yex<='0';
		elsif i(1)='0' then
			y<="110";
			ys<='1';
			yex<='0';
		elsif i(0)='0' then
			y<="111";
			ys<='1';
			yex<='0';
		elsif i="11111111" then 
			y<="111";
			ys<='0';
			yex<='1';
		end if;
	end if;
 end process;
 end rtl;