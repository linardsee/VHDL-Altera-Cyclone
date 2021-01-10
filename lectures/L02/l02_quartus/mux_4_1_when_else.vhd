-----------------------------
-- Author - 
-- Date - 2017-03-01
-- Project name - lecture 02
-- Module name - mux 4:1 when else
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
entity mux_4_1_when_else is
port
(
  x	: in std_logic_vector(3 downto 0);
  s 	: in std_logic_vector(1 downto 0);
  y 	: out std_logic
);
end mux_4_1_when_else;

--define inside of the module
architecture behavioral of mux_4_1_when_else is
begin

	--define the operation of the module!
	y <=  x(0) when s = "00" else 
			x(1) when s = "01" else 
			x(2) when s = "10" else 
			x(3) when s = "11" else 
			'0'; 

end behavioral;





