-----------------------------
-- Author - 
-- Date - 2017-03-01
-- Project name - lecture 02
-- Module name - mux 4:1 if else
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
entity mux_4_1_if_else_sync is
port
(
  clk : in std_logic;
  x	: in std_logic_vector(3 downto 0);
  s 	: in std_logic_vector(1 downto 0);
  y 	: out std_logic
);
end mux_4_1_if_else_sync;

--define inside of the module
architecture behavioral of mux_4_1_if_else_sync is
begin

	process(clk)
	begin 
		if rising_edge(clk) then
		 if (s = "00") then 
		 y <= x(0); 
		 elsif (s = "01") then 
		 y <= x(1); 
		 elsif (s = "10") then 
		 y <= x(2); 
		 elsif (s = "11") then 
		 y <= x(3); 
		 else 
		 y <= '0'; 
		 end if; 
		end if;
	end process;


end behavioral;





