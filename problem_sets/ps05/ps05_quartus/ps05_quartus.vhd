-----------------------------
-- Author - 			Linards Smeiksts
-- Date - 				20.06.2018.	
-- Project name - 	ps05_quartus.vhdl
--
-- Detailed module description
-- This code implements cascaded filter design -
-- lowpass and bandpass.
-- Filter structure is found at df1_iir_biquad.vhd
--
-----------------------------

library ieee;					
use ieee.std_logic_1164.all;	
use ieee.numeric_std.all;		

entity ps05_quartus is
port
(
	clk 							: in std_logic;	--sample clock
	rst							: in std_logic;	--rst
	x								: in std_logic_vector(17 downto 0); --x[n]
	y								: out std_Logic_vector(17 downto 0); --y[n]
	sample_coefs				: in std_logic;
	sample_coefs_bp			: in std_logic; 	-- extra sample input had been added for bandpass filter
	enable_filter				: in std_logic;
	b0_in							: in std_Logic_vector(31 downto 0);
	b1_in							: in std_Logic_vector(31 downto 0);
	b2_in							: in std_Logic_vector(31 downto 0);
	a1_in							: in std_Logic_vector(31 downto 0);
	a2_in							: in std_Logic_vector(31 downto 0);
	
	-- partial outputs of lowpass filter
	y1 							: inout std_Logic_vector(17 downto 0);
	y2 							: inout std_Logic_vector(17 downto 0);
	y3 							: inout std_Logic_vector(17 downto 0);
	
	-- partial outputs of bandpass filter
	y1_bp 						: inout std_Logic_vector(17 downto 0);
	y2_bp 						: inout std_Logic_vector(17 downto 0);
	y3_bp 						: inout std_Logic_vector(17 downto 0)
);
end ps05_quartus;

architecture behavioral of ps05_quartus is 
	
	component df1_iir_biquad is
	port
	(
		clk 							: in std_logic;	--sample clock
		rst							: in std_logic;	--rst
		x								: in std_logic_vector(17 downto 0); --x[n]
		y								: out std_Logic_vector(17 downto 0); --y[n]
		sample_coefs				: in std_logic;
		enable_filter				: in std_logic;
		b0_in							: in std_Logic_vector(31 downto 0);
		b1_in							: in std_Logic_vector(31 downto 0);
		b2_in							: in std_Logic_vector(31 downto 0);
		a1_in							: in std_Logic_vector(31 downto 0);
		a2_in							: in std_Logic_vector(31 downto 0)
	);
	end component;
	
begin

	-- filter1, filter2 and filter3 are lowpass filter parts
	filter1 : df1_iir_biquad
	port map
	(
		clk => clk,
		rst => rst,
		x => x,
		y => y1,
		sample_coefs => sample_coefs,
		enable_filter => enable_filter,
		b0_in => b0_in,
		b1_in => b1_in,
		b2_in => b2_in,
		a1_in => a1_in,
		a2_in => a2_in
	);
	
	filter2 : df1_iir_biquad
	port map
	(
		clk => clk,
		rst => rst,
		x => y1,
		y => y2,
		sample_coefs => sample_coefs,
		enable_filter => enable_filter,
		b0_in => b0_in,
		b1_in => b1_in,
		b2_in => b2_in,
		a1_in => a1_in,
		a2_in => a2_in
	);
	
	filter3 : df1_iir_biquad
	port map
	(
		clk => clk,
		rst => rst,
		x => y2,
		y => y3,
		sample_coefs => sample_coefs,
		enable_filter => enable_filter,
		b0_in => b0_in,
		b1_in => b1_in,
		b2_in => b2_in,
		a1_in => a1_in,
		a2_in => a2_in
	);
	
	-- filter1_bp, filter2_bp and filter3_bp are 
	-- lowpass filter parts
	filter1_bp : df1_iir_biquad
	port map
	(
		clk => clk,
		rst => rst,
		x => x,
		y => y1_bp,
		sample_coefs => sample_coefs_bp,
		enable_filter => enable_filter,
		b0_in => b0_in,
		b1_in => b1_in,
		b2_in => b2_in,
		a1_in => a1_in,
		a2_in => a2_in
	);
	
	filter2_bp : df1_iir_biquad
	port map
	(
		clk => clk,
		rst => rst,
		x => y1_bp,
		y => y2_bp,
		sample_coefs => sample_coefs_bp,
		enable_filter => enable_filter,
		b0_in => b0_in,
		b1_in => b1_in,
		b2_in => b2_in,
		a1_in => a1_in,
		a2_in => a2_in
	);
	
	filter3_bp : df1_iir_biquad
	port map
	(
		clk => clk,
		rst => rst,
		x => y2_bp,
		y => y3_bp,
		sample_coefs => sample_coefs_bp,
		enable_filter => enable_filter,
		b0_in => b0_in,
		b1_in => b1_in,
		b2_in => b2_in,
		a1_in => a1_in,
		a2_in => a2_in
	);
	
end behavioral;
