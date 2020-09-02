library ieee;
use ieee.std_logic_1164.all;
entity mux4 is
  port(d0,d1,d2,d3: in bit;
         sel:in bit_vector(0 to 1);
         y:out bit);
end mux4;
architecture rtl of mux4 is
begin
mux4_p1:process(d0,d1,d2,d3,sel)
  			 begin
   				 if sel = "00" then y <= d0;
   				 elsif sel = "01" then y <= d1;
    			    elsif sel = "10" then y <= d2;
    			    else y <= d3;
    			 end if;
  			end process mux4_p1;
end rtl;