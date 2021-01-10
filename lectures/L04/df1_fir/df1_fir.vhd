-----------------------------
-- Author - 
-- Date - 
-- Project name - 
-- Module name - 
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
entity df1_fir is
port
(
	clk 								: in std_logic;	--sample clock
	rst									: in std_logic;	--rst
	sig_in								: in std_logic_vector(7 downto 0); --x[n]
	sig_out								: out std_Logic_vector(17 downto 0) --y[n]
);
end df1_fir;

--define inside of the module
architecture behavioral of df1_fir is

	--define inside use signals
	constant coef_b0		: signed(7 downto 0) := to_signed(64 ,8); -- 0.5*127=64
	constant coef_b1		: signed(7 downto 0) := to_signed(95 ,8); -- 0.75*127=95
	constant coef_b2		: signed(7 downto 0) := to_signed(-38,8); -- -0.3*128=

	--delay taps
	signal sig_in_q		: signed(7 downto 0) := (others => '0');
	signal sig_in_qq		: signed(7 downto 0) := (others => '0');
	
	-- coef mult result
	signal c0_mult 		: signed(15 downto 0) := (others => '0');
	signal c1_mult 		: signed(15 downto 0) := (others => '0');
	signal c2_mult 		: signed(15 downto 0) := (others => '0');

	-- accumulator coef mult result coef2+coef1, and coef2 + coef1;
	signal c2c1_accum		: signed(16 downto 0) := (others => '0');
	signal c2c1_c0_accum	: signed(17 downto 0) := (others => '0');


begin

	process(clk)
	begin
	if rising_edge(clk) then
		if rst = '1' then
			c0_mult <= (others => '0');
			c1_mult <= (others => '0');
			c2_mult <= (others => '0');
			c2c1_accum <= (others => '0');
			c2c1_c0_accum <= (others => '0');
			sig_in_q <= (others => '0');
			sig_in_qq <= (others => '0');
			
		else
		
			--delay taps
			sig_in_q <= signed(sig_in);
			sig_in_qq <= sig_in_q;
	
			--multipliers
			c0_mult <= signed(sig_in) * coef_b0; 
			c1_mult <= sig_in_q * coef_b1; 
			c2_mult <= sig_in_qq * coef_b2;
			
			--accumulator
			--vienkarsais variants
			--sig_out <= std_logic_vector(c0_mult + c1_mult + c2_mult);
			
			--garais variants
			c2c1_accum <= (c2_mult(15) & c2_mult) + (c1_mult(15) & c1_mult); 
			--punkts atrodas 2.14 abiem ieejaa
			--punkts atrodas 3.14 izejaa
			
			--c2c1_accum punkts atrodas 3.14
			--c0_mult punkts atrodas 2.14
			c2c1_c0_accum <= (c2c1_accum(16) & c2c1_accum) + (c0_mult(15) & c0_mult(15) & c0_mult);
			--c2c1_c0_accum punkts atrodas 4.14
			
			sig_out <= std_Logic_vector(c2c1_c0_accum);
		
		end if;
	end if;
	end process;

	
end behavioral;





