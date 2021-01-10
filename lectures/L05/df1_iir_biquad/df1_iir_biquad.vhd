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
entity df1_iir_biquad is
port
(
	clk 							: in std_logic;	--sample clock
	rst							: in std_logic;	--rst
	x								: in std_logic_vector(17 downto 0); --x[n]
	y								: out std_Logic_vector(17 downto 0) --y[n]
);
end df1_iir_biquad;

--define inside of the module
architecture behavioral of df1_iir_biquad is


--	-- low pass  2nd order butt  fl = 500Hz, Fs = 48000Hz, PBR = .08 dB, SBR = .03 dB
--	--------------------------------------------------------------------------
----	
----			           b0 + b1*Z^-1 + b2*Z^-2
----				H[z] = -------------------------
----						  1 + a1*Z^-1 + a2*Z^-2
----
--	--------------------------------------------------------------------------	
--
--	-- define biquad coefficients
	constant	b0	:	signed(31 downto 0) := B"00_00_0000_0001_0000_1100_0011_1001_1100";				-- b0		~ +0.0010232
	constant	b1	:	signed(31 downto 0) := B"00_00_0000_0010_0001_1000_0111_0011_1001";				-- b1		~ +0.0020464
	constant	b2	:	signed(31 downto 0) := B"00_00_0000_0001_0000_1100_0011_1001_1100";				-- b2		~ +0.0010232	

	constant	a1	:	signed(31 downto 0) := B"10_00_0101_1110_1011_0111_1110_0110_1000";				-- a1		~ -1.9075016 	
	constant	a2	:	signed(31 downto 0) := B"00_11_1010_0101_0111_1001_0000_0111_0101";				-- a2		~ +0.9115945

	--signals in module
	signal x_in		: signed(x'range) := (others => '0');
	signal x_z		: signed(x'range) := (others => '0');
	signal x_zz		: signed(x'range) := (others => '0');
	
	signal y_out	: signed(y'range) := (others => '0');
	signal y_z		: signed(y'range) := (others => '0');
	signal y_zz		: signed(y'range) := (others => '0');
	
	signal x_in_b0	: Signed(49 downto 0) := (others => '0');
	signal x_z_b1	: Signed(49 downto 0) := (others => '0');
	signal x_zz_b2	: Signed(49 downto 0) := (others => '0');
	
	signal y_z_a1	: signed(49 downto 0) := (others => '0');
	signal y_zz_a2	: signed(49 downto 0) := (others => '0');	

begin
	
	--cast input / output data type

	y <= std_logic_vector(y_out);

	
	--multipliers
	x_in_b0 <= x_in * b0;
	x_z_b1 <= x_z * b1;
	x_zz_b2 <= x_zz * b2;
	
	y_z_a1 <= y_z * (a1);
	y_zz_a2 <= y_zz * (a2);
	
	--accumulator	
	y_out <= 	x_in_b0(47 downto 30) + 
					x_z_b1(47 downto 30) + 
					x_zz_b2(47 downto 30) + 
					y_z_a1(47 downto 30) + 
					y_zz_a2(47 downto 30);
	
	process(clk)
	begin
	if rising_edge(clk) then
		if rst = '1' then	
			x_z <= (others => '0');
			x_zz <= (others => '0');
			
			y_z <= (others => '0');
			y_zz <= (others => '0');
			
		else
			--delay taps
			x_in <= signed(x(x'left) & x(x'left downto 1));
			x_z <= x_in;
			x_zz <= x_z;
			
			y_z <= y_out;
			y_zz <= y_z;
			
		end if;
	end if;
	end process;

	
end behavioral;





