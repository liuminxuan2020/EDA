library ieee;
use ieee.std_logic_1164.all;
entity led7 is
port(a:in std_logic_vector(3 downto 0);
	  y:out std_logic_vector(6 downto 0));
end led7;  

architecture rtl of led7 is

begin
process(a)
begin
	case a is
		when "0000" => y <="0111111";
	   when "0001" => y <="0000110";
		when "0010" => y <="1011011";
		when "0011" => y <="1001111";
		when "0100" => y <="1100110";
		when "0101" => y <="1101101";
		when "0110" => y <="1111101";
		when "0111" => y <="0100111";
		when "1000" => y <="1111111";
		when "1001" => y <="1101111";
		when "1010" => y <="1110111";
		when "1011" => y <="1111100";
		when "1100" => y <="0111001";
		when "1101" => y <="1011110";
		when "1110" => y <="1111001";
		when others => y <="1110001";
	end case;
 end process;
end rtl;
		