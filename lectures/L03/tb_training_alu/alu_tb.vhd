-----------------------------
-- Author 
-- Date	
-- Project name	
-- Module name 
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
entity alu_tb is
end alu_tb;


architecture behavioral of alu_tb is

--define unit under test UUT (module to be tested)
	component alu is
	port
	(
		clk 		: in std_logic;
		A 			: in std_Logic_vector(15 downto 0);
		B 			: in std_logic_vector(15 downto 0);
		op 		: in std_logic_vector(3 downto 0);
		R 			: out std_logic_vector(15 downto 0);
		flag		: out std_logic
	);
	end component;

	--define signals for UUT inputs / outputs and INITIALIZE them!
	--inputs to UUT
	signal clk 	: std_logic := '0';
	signal A 	: std_logic_vector(15 downto 0) := (others => '0');
	signal B 	: std_logic_vector(15 downto 0) := (others => '0');
	signal op 	: std_logic_vector(3 downto 0) := (others => '0');

	--outsputs from UUT
	signal R 	: std_logic_vector(15 downto 0) := (others => '0');
	signal flag	: std_logic := '0';


begin

	uut : alu 
	port map
	(
		clk => clk,
		A => A,
		B => B,
		op => op,
		R => R,
		flag => flag
	);	

	
	--generate clock. after period/2
	-- 43 ghz clock generator (23 ps)
	clk <= not clk after 12 ps;
	
	--stimulus_process
	stimulus_process : process
	begin

		wait for 100 ps;
		A <= std_logic_vector(to_unsigned(16,16)); --16 bit
		B <= std_logic_vector(to_unsigned(7023,16));
		op <= x"0";
		
		wait for 24 ps;
		op <= x"1";
	
		wait for 24 ps;
		op <= x"2";
		
		wait until rising_edge(clk);
		op <= x"3";
		
		
		wait;
	end process;





end behavioral;





