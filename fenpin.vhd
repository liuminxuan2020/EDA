library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity fenpin is
port(clk:in std_logic;
		clk_1:out std_logic);
end fenpin;

architecture rtl of fenpin is
signal clk_1_reg: std_logic := '1';
begin
clk_1<=clk_1_reg;
process(clk)
variable count :integer range 0 to 25000000;
begin
	if rising_edge(clk) then
		if count = 25000000 then
			count:=0;
			clk_1_reg<=not clk_1_reg;
		else
			count:=count+1;
		end if;
	end if;
 end process;
 end rtl;