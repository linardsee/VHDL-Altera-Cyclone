-----------------------------
-- Author 
-- Date	
-- Project name	
-- Module testbench 
--
-- Detailed module description
--
-- Revision:
-- A - initial design
-- B - 
--
-----------------------------
library ieee;						--always use this library
use ieee.std_logic_1164.all;	--always use this library
use ieee.numeric_std.all;		--use this library if arithmetic required

--testbench vhd file needs entity - with NO ports, but can have Generic
entity <ENTITY_NAME>_tb is
generic
(
	--data_width : integer := 32
);
end <ENTITY_NAME>_tb;


architecture behavioral of <ENTITY_NAME>_tb is

	--define unit under test UUT (module to be tested)
	component <ENTITY_NAME> is
	generic
	(
	
	);
	port
	(

	);
	end component;

	--define signals for UUT inputs / outputs and INITIALIZE them!
	--inputs to UUT

	--outsputs from UUT


begin

	--instantiate unit under test
	uut : <ENTITY_NAME> 
	generic map
	(	
	
	)
	port map
	(
	
	);	

	--generate clock. after period/2 (mind the name of the clock signal)
	clk <= not clk after 5 ns; --100MHz period 10ns

	stimulus_process : process
	begin
		--assert rst to high for a 100 ns to ensure stable start-up
		wait for 100 ns;

		--signal stimulus
		
		wait;
	end process;



end behavioral;





