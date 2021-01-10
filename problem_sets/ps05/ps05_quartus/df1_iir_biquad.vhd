-----------------------------
-- Author - 			Linards Smeiksts
-- Date - 				20.06.2018.	
-- Project name - 	df1_iir_biquad.vhdl
--
-- Detailed module description
-- This module implements simple biquad iir filter
-- design. 
--
-----------------------------

library ieee;				
use ieee.std_logic_1164.all;	
use ieee.numeric_std.all;		


entity df1_iir_biquad is
port
(
	clk 							: in std_logic;	--sample clock
	rst							: in std_logic;	--rst
	x								: in std_logic_vector(17 downto 0); --x[n]
	y								: out std_Logic_vector(17 downto 0); --y[n]
	sample_coefs				: in std_logic;
	enable_filter				: in std_logic;	
	-- coefficients' inputs
	b0_in							: in std_Logic_vector(31 downto 0);
	b1_in							: in std_Logic_vector(31 downto 0);
	b2_in							: in std_Logic_vector(31 downto 0);
	a1_in							: in std_Logic_vector(31 downto 0);
	a2_in							: in std_Logic_vector(31 downto 0)
);
end df1_iir_biquad;

architecture behavioral of df1_iir_biquad is

--	-- low pass  2nd order butt  fl = 500Hz, Fs = 48000Hz, PBR = .08 dB, SBR = .03 dB
--	--------------------------------------------------------------------------
----	
----			           b0 + b1*Z^-1 + b2*Z^-2
----				H[z] = -------------------------
----						  1 + a1*Z^-1 + a2*Z^-2
----
--	--------------------------------------------------------------------------	
	-- I have commented class example just in case
	--constant	b0	:	signed(31 downto 0) := B"00_00_0000_0001_0000_1100_0011_1001_1100";				-- b0		~ +0.0010232
	--constant	b1	:	signed(31 downto 0) := B"00_00_0000_0010_0001_1000_0111_0011_1001";				-- b1		~ +0.0020464
	--constant	b2	:	signed(31 downto 0) := B"00_00_0000_0001_0000_1100_0011_1001_1100";				-- b2		~ +0.0010232	

	--constant	a1	:	signed(31 downto 0) := B"10_00_0101_1110_1011_0111_1110_0110_1000";				-- a1		~ -1.9075016 	
	--constant	a2	:	signed(31 downto 0) := B"00_11_1010_0101_0111_1001_0000_0111_0101";				-- a2		~ +0.9115945
	
	-- internal buffers to store coefficients
	signal b0 :	signed(31 downto 0) := (others => '0');
	signal b1 :	signed(31 downto 0) := (others => '0');
	signal b2 :	signed(31 downto 0) := (others => '0');
	
	signal a1 :	signed(31 downto 0) := (others => '0');
	signal a2 :	signed(31 downto 0) := (others => '0');
		
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
	
	signal rst_array : signed(49 downto 0) := (others => '0');
	signal enable_array : signed(y'range) := (others => '0');

begin
	-- fill rst_array variable with the corresponding reset bits
	rst_array <= (others => not rst);
	enable_array <= (others => enable_filter);
	
	--cast input / output data type
	y <= std_logic_vector(y_out);
	
	--multipliers
	-- doing "and" operation with multipliers and 
	-- reset bits we can perform reset outside the process
	
	x_in_b0 <= (x_in * b0) and rst_array;
	x_z_b1 <= (x_z * b1) and rst_array;
	x_zz_b2 <= (x_zz * b2) and rst_array; 
	
	y_z_a1 <= (y_z * (-a1)) and rst_array;
	y_zz_a2 <= (y_zz * (-a2)) and rst_array;
	
	--accumulator	
	y_out <= 	(x_in_b0(47 downto 30) + 
					x_z_b1(47 downto 30) + 
					x_zz_b2(47 downto 30) + 
					y_z_a1(47 downto 30) + 
					y_zz_a2(47 downto 30)) and enable_array;
	
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
			-- I did not understand the purpose of the code line 
			-- commented below, so I just assigned x directly
			--x_in <= signed(x(x'left) & x(x'left downto 1));
			
			x_in <= signed(x);
			x_z <= x_in;
			x_zz <= x_z;
			
			y_z <= y_out;
			y_zz <= y_z;
			
		end if;
	end if;
	end process;
	
	process(sample_coefs)
	begin
	if rising_edge(sample_coefs) then
		b0 <= signed(b0_in);
		b1 <= signed(b1_in);
		b2 <= signed(b2_in);
		a1 <= signed(a1_in);
		a2 <= signed(a2_in);
	end if;
	end process;
	
end behavioral;





