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
library ieee;					--always use this library
use ieee.std_logic_1164.all;	--always use this library

use ieee.numeric_std.all;		--use this library if arithmetic required


--define connections to outside
entity fsm_training_traffic_tb is
end fsm_training_traffic_tb;

--define inside of the module
architecture behavioral of fsm_training_traffic_tb is

	--define inside use signals
	signal clk 		: std_logic := '0';
	signal rst 		: std_Logic := '0';
	signal light: std_logic_vector(1 downto 0) := "00";
	
   type light_colors IS (red, yellow, green, error);
   SIGNAL light_colorstate_signal : light_colors;
	
	--define components to use
	component fsm_training_traffic is
	port
	(
		clk 		: in std_logic;
		rst 		: in std_Logic;
		light: out std_logic_vector(1 downto 0)
	);
	end component;

	constant clk_period : time := 10 ns;

begin
	--define the operation of the module!
	uut : fsm_training_traffic 
	port map
	(
		clk => clk,
		rst => rst,
		light => light
	);
	
	clk <= not clk after clk_period/2;
	
	process
	begin
		rst <= '1';
		wait for 100ns;
		rst <= '0';
		
			
	
	wait;
	end process;
	
	

	
	--testbench process, maps traffic light control signal "light" to actual colors as defined in task
	process(light)
	begin
		if light = "00" then
			light_colorstate_signal <= red;
		elsif light = "01" then
			light_colorstate_signal <= yellow;
		elsif light = "10" then
			light_colorstate_signal <= green;
		elsif light = "11" then
			light_colorstate_signal <= error;
		else 
			light_colorstate_signal <= error;
		end if;
	end process;



end behavioral;





