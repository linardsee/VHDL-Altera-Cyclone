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
entity df1_iir_biquad_tb is
end df1_iir_biquad_tb;


architecture behavioral of df1_iir_biquad_tb is

	--define unit under test UUT (module to be tested)
	component df1_iir_biquad is
	port
	(
		clk 							: in std_logic;	--sample clock
		rst							: in std_logic;	--rst
		x								: in std_logic_vector(17 downto 0); --x[n]
		y								: out std_Logic_vector(17 downto 0) --y[n]
	);
	end component;

	--define signals for UUT inputs / outputs and INITIALIZE them!
	--inputs to UUT
	signal x : std_logic_Vector(17 downto 0) := (others => '0');
	signal clk : std_logic := '0';
	signal rst : std_logic := '0';
	
	--outsputs from UUT
	signal y,y_casc : std_logic_Vector(17 downto 0) := (others => '0');

	constant clk_per : time := 20833 ns;
begin

	--instantiate unit under test
	uut : df1_iir_biquad 
	port map
	(
		clk => clk,
		rst => rst,
		x => x,
		y => y
	);	

	uut_casc : df1_iir_biquad 
	port map
	(
		clk => clk,
		rst => rst,
		x => y,
		y => y_casc
	);	
	
	--generate clock. after period/2 (mind the name of the clock signal)
	clk <= not clk after clk_per/2;

	x_process:process
	begin
		--x <= std_logic_Vector(to_signed(131071, 18));
		x <= std_logic_Vector(to_signed((2**15)-1, 18));
		wait for 1250 us;
		x <= std_logic_Vector(to_signed(-2**15, 18));
		wait for 1250 us;
	end process;

	stimulus_process : process
	begin
		--assert rst to high for a 100 ns to ensure stable start-up
		wait for 100 ns;

		--signal stimulus
		
		wait;
	end process;



end behavioral;





