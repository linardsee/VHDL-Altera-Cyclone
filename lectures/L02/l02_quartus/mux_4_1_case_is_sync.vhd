-----------------------------
-- Author - 
-- Date - 2017-03-01
-- Project name - lecture 02
-- Module name - mux 4:1 case sync
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
entity mux_4_1_case_sync is
port
(
  clk : in std_logic;
  x	: in std_logic_vector(3 downto 0);
  s 	: in std_logic_vector(1 downto 0);
  y 	: out std_logic
);
end mux_4_1_case_sync;

--define inside of the module
architecture behavioral of mux_4_1_case_sync is
begin

	process(clk) 
	begin 
	if rising_edge(clk) then
		case (s) is 
			when "00" => 
			y <= x(0); 
			  
			when "01" => 
			y <= x(1); 
			  
			when "10" => 
			y <= x(2); 

			when "11" => 
			y <= x(3); 

			when others => 
			y <= '0'; 
		end case; 
	end if;
	end process;



end behavioral;





