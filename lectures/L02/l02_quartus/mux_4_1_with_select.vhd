-----------------------------
-- Author - 
-- Date - 2017-03-01
-- Project name - lecture 02
-- Module name - mux 4:1 with select
--
-- Detailed module description
--
-- Revision:
--
-----------------------------
library ieee;					--always use this library
use ieee.std_logic_1164.all;	--always use this library
--use ieee.numeric_std.all;		--use this library if arithmetic required

--define connections to outside
entity mux_4_1_with_select is
port
(
  x	: in std_logic_vector(3 downto 0);
  s 	: in std_logic_vector(1 downto 0);
  y 	: out std_logic
);
end mux_4_1_with_select;

--define inside of the module
architecture behavioral of mux_4_1_with_select is
begin

	--define the operation of the module!
   with s select 
   y <=  x(0) when "00", 
			x(1) when "01", 
			x(2) when "10", 
			x(3) when "11", 
			'0'  when others; 


end behavioral;





