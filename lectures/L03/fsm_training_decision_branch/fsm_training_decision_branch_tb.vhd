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

--use ieee.numeric_std.all;		--use this library if arithmetic required


--define connections to outside
entity fsm_training_decision_branch_tb is
end fsm_training_decision_branch_tb;

--define inside of the module
architecture behavioral of fsm_training_decision_branch_tb is

	--define components to use
	component fsm_training_decision_branch is
	port
	(
		clk 				: in std_logic;
		rst				: in std_logic;
		stream_in		: in std_logic;
		lock_out 		: out std_logic
	);
	end component;
	
	--define inside use signals
	signal clk 			: std_logic := '0';
	signal rst			: std_logic := '0';
	signal stream_in	: std_logic := '0';
	signal lock_out 	: std_logic := '0';
	


	constant clk_period : time := 10 ns;
	
begin
	
	uut: fsm_training_decision_branch 
	port map 
	(
		clk => clk,
		rst => rst,
		stream_in => stream_in,
		lock_out => lock_out
	);

	--clock generation
	clk <= not clk after clk_period/2;

	--define the operation of the module!
	process
	begin
	
		rst <= '1';
		wait for 100 ns;
		rst <= '0';
		wait for 100 ns;		
		wait for clk_period/2;		
		
		stream_in <= '1';
		wait for clk_period;
		stream_in <= '0';
		wait for clk_period;
		stream_in <= '1';
		wait for clk_period;
		stream_in <= '0';
		wait for clk_period;
		stream_in <= '1';
		wait for clk_period;
		stream_in <= '1';
		wait for clk_period;
		stream_in <= '0';
		wait for clk_period;		
		stream_in <= '1';
		wait for clk_period;
		stream_in <= '0';
		wait for clk_period;
		stream_in <= '1';
		wait for clk_period;
		stream_in <= '0';
		wait for clk_period;
		stream_in <= '1';
		wait for clk_period;
		stream_in <= '1';
		wait for clk_period;
		stream_in <= '0';
		wait for clk_period;		
	
	wait;
	end process;



end behavioral;
