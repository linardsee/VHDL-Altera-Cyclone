--------------------------------------------
-- Author: 				Linards Shmeiksts
-- Date: 				25.03.2018.
-- Project name: 		FSM_linards
--
-- Description
-- Test bench code to verify FSM_linards.vhd 
--  
--
--------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity FSM_linards_tb is 
end FSM_linards_tb;

architecture behavioral of FSM_linards_tb is 

	signal clk : std_logic := '0';
	signal rst : std_logic := '0';
	signal MR_cars : std_logic_vector(7 downto 0) := x"00";
	signal MR_ctl : std_logic_vector(1 downto 0) := "00";
	signal SR_ctl : std_logic_vector(1 downto 0) := "00";

	type light_colors_MR is (dark, red, yellow, green);
	signal light_colorstate_signal_MR : light_colors_MR;

	type light_colors_SR is (dark, red, yellow, green);
	signal light_colorstate_signal_SR : light_colors_SR;


	component FSM_linards is 
	port
	(
		clk : in std_logic;
		rst : in std_logic;
		MR_cars 		: in std_logic_vector(7 downto 0);
		MR_ctl 		: out std_logic_vector(1 downto 0);
		SR_ctl 		: out std_logic_vector(1 downto 0)
	);
	end component;

	constant clk_period : time := 1 ns;

begin

	uut : FSM_linards
	port map
	(
		clk => clk,
		rst => rst,
		MR_cars => MR_cars,
		MR_ctl => MR_ctl,
		SR_ctl => SR_ctl
	);

	clk <= not clk after clk_period/2;
	
	process
	begin
		-- let's generate signal to force our FSM move to state C through state D (extra green on MR)
		wait for 30ns;
		
		MR_cars <= x"02"; -- this is for few cars on the secondary road
		wait for 40ns;
		MR_cars <= x"00"; -- sensor must see that vehicles have left the SR
		
		-- now directly to C
		wait for 15ns;
		MR_cars <= x"F0"; -- this is for many cars on the secondary road
		wait for 40ns;		-- let's suppose that cars will leave the intersection within 10ns
		MR_cars <= x"00"; -- sensor must see that vehicles have left the SR
		
		-- and finally, check the reset function
		wait for 20ns;
		rst <= '1';
		wait for 20ns;
		rst <= '0';
		
	wait;
	end process;
	
	process(MR_ctl)
	begin
		if MR_ctl = "00" then
			light_colorstate_signal_MR <= dark;
		elsif MR_ctl = "01" then
			light_colorstate_signal_MR <= red;
		elsif MR_ctl = "10" then
			light_colorstate_signal_MR <= yellow;
		elsif MR_ctl = "11" then
			light_colorstate_signal_MR <= green;
		else 
		end if;
	end process;
	
	process(SR_ctl)
	begin
		if SR_ctl = "00" then
			light_colorstate_signal_SR <= dark;
		elsif SR_ctl = "01" then
			light_colorstate_signal_SR <= red;
		elsif SR_ctl = "10" then
			light_colorstate_signal_SR <= yellow;
		elsif SR_ctl = "11" then
			light_colorstate_signal_SR <= green;
		else 
		end if;
	end process;

end behavioral;