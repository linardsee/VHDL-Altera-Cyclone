-----------------------------
-- Author Linards Smeiksts
-- Date	 18.02.2018.	
-- Project name ps01q.vhdl
-- Module name	psq01q
--
-- Detailed module description
-- Module implements 3 basic logic gates  
-- given by lecturer

-- Revision:
-- A - initial design
-- B - 
--
-----------------------------
library ieee;					--always use this library
use ieee.std_logic_1164.all;	--always use this library

--use ieee.numeric_std.all;		--use this library if arithmetic required

entity ps01q is
port
(
	A				: in std_logic;
	B				: in std_logic;
	C				: in std_logic;
	Y1				: out std_logic;
	Y2				: out std_logic
	
);
end ps01q;


architecture behavioral of ps01q is
	
	signal xor_out : std_logic;
	
begin
	xor_out <= a xor b;
	Y2 <= xor_out nor c;
	Y1 <= a nand b;
end behavioral;





