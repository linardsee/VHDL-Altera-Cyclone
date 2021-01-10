-----------------------------
-- Author 
-- Date
-- Project name
-- Module name
--
-- Detailed module description
--
--
--
--
--
--
--
-- Revision:
-- A - initial design
-- B - 
--
-----------------------------
library ieee;					--always use this library
use ieee.std_logic_1164.all;	--always use this library

--use ieee.numeric_std.all;		--use this library if arithmetic required


--define connections to outside
entity ENTITY_NAME is
port
(
	clk 		: in std_logic;
	a 			: in std_Logic;
	b 			: in std_logic;
	sel 		: in std_logic;
	y 			: out std_logic
);
end ENTITY_NAME;

--define inside of the module
architecture behavioral of ENTITY_NAME is
	--define inside use signals

	
	
	--define components to use



begin
	--define the operation of the module!
	
	y <= (not sel and a) or (sel and b);





end behavioral;





