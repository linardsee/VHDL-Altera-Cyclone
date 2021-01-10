-----------------------------
-- Author 					Linards Smeiksts
-- Date						20.06.2018.
-- Project name			df1_iir_biquad_tb.vhd
-- Module testbench 		
--
-- Detailed module description
-- Module tests both filter designs implemented in
-- ps05_quartus.vhd and df1_iir_biquad.vhd. Square wave
-- with frequency below lowpass cutoff has been generated
-- and passed through the low pass. All control pins has
-- been tested. Starting at 6.1ms module checks the bandpass
-- filter, changing input signal to central frequency of 
-- the bandpass filter. 
--
-----------------------------
library ieee;						
use ieee.std_logic_1164.all;	
use ieee.numeric_std.all;		


entity df1_iir_biquad_tb is
end df1_iir_biquad_tb;


architecture behavioral of df1_iir_biquad_tb is

	component df1_iir_biquad is
	port
	(
		clk 							: in std_logic;	--sample clock
		rst							: in std_logic;	--rst
		x								: in std_logic_vector(17 downto 0); --x[n]
		y								: out std_Logic_vector(17 downto 0); --y[n]
		
		sample_coefs				: in std_logic;
		enable_filter				: in std_logic;
		
		-- coefficients
		b0_in 						: in std_Logic_vector(31 downto 0);
		b1_in 						: in std_Logic_vector(31 downto 0);
		b2_in 						: in std_Logic_vector(31 downto 0);
		a1_in 						: in std_Logic_vector(31 downto 0);
		a2_in 						: in std_Logic_vector(31 downto 0)
	);
	end component;
	
	component ps05_quartus is
	port
	(
		clk 							: in std_logic;	--sample clock
		rst							: in std_logic;	--rst
		x								: in std_logic_vector(17 downto 0); --x[n]
		y								: out std_Logic_vector(17 downto 0); --y[n]
		sample_coefs				: in std_logic;
		sample_coefs_bp			: in std_logic;
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
	end component;
	
	signal x : std_logic_Vector(17 downto 0) := (others => '0');
	signal clk : std_logic := '0';
	signal rst : std_logic := '0';
	signal sample_coefs : std_logic := '0';
	signal sample_coefs_bp: std_logic := '0';
	signal enable_filter : std_logic := '1';
	
	-- initial coefficients for lowpass filter
	signal b0_in : std_Logic_vector(31 downto 0) := B"00_01_0010_1011_1110_1100_0011_0011_0011";
	signal b1_in : std_Logic_vector(31 downto 0) := B"00_10_0101_0111_1101_1000_0110_0110_0110";
	signal b2_in : std_Logic_vector(31 downto 0) := B"00_01_0010_1011_1110_1100_0011_0011_0011";
	signal a1_in : std_Logic_vector(31 downto 0) := B"00_00_0000_0000_0000_0000_0000_0000_0000";
	signal a2_in : std_Logic_vector(31 downto 0) := B"00_00_0000_0000_0000_0101_0111_1101_1000";
	
	--outputs from UUT
	signal y,y_casc : std_logic_Vector(17 downto 0) := (others => '0');
	
	-- partial outputs of the lowpass filter
	signal y1 : std_logic_vector(17 downto 0) := (others => '0');
	signal y2 : std_logic_vector(17 downto 0) := (others => '0');
	signal y3 : std_logic_vector(17 downto 0) := (others => '0');
	
	-- partial outputs of the bandpass filter
	signal y1_bp : std_Logic_vector(17 downto 0) := (others => '0');
	signal y2_bp : std_Logic_vector(17 downto 0) := (others => '0');
	signal y3_bp : std_Logic_vector(17 downto 0) := (others => '0');
	
	constant clk_per : time := 20833 ns;
	
begin

	--instantiate unit under test
	uut : df1_iir_biquad 
	port map
	(
		clk => clk,
		rst => rst,
		sample_coefs => sample_coefs,
		enable_filter => enable_filter,
		x => x,
		y => y,
		b0_in => b0_in,
		b1_in => b1_in,
		b2_in => b2_in,
		a1_in => a1_in,
		a2_in => a2_in
	);	

	uut_casc : df1_iir_biquad 
	port map
	(
		clk => clk,
		rst => rst,
		sample_coefs => sample_coefs,
		enable_filter => enable_filter,
		x => y,
		y => y_casc,
		b0_in => b0_in,
		b1_in => b1_in,
		b2_in => b2_in,
		a1_in => a1_in,
		a2_in => a2_in
	);	
	
	uut_ps05 : ps05_quartus
	port map
	(
		clk => clk,
		rst => rst,
		sample_coefs => sample_coefs,
		sample_coefs_bp => sample_coefs_bp,
		enable_filter => enable_filter,
		x => x,
		y => y,
		b0_in => b0_in,
		b1_in => b1_in,
		b2_in => b2_in,
		a1_in => a1_in,
		a2_in => a2_in,
		
		y1 => y1,
		y2 => y2,
		y3 => y3,
		
		y1_bp => y1_bp,
		y2_bp => y2_bp,
		y3_bp => y3_bp
	);
	
	--generate clock. after period/2 (mind the name of the clock signal)
	clk <= not clk after clk_per/2;

	x_process:process
	begin
	
		-- 5 initial periods 
		-- output should be zero because coeffcients are
		-- not sampled
		for I in 1 to 5 loop
			x <= std_logic_Vector(to_signed((2**15)-1, 18));
			wait for 100 us;
			x <= std_logic_Vector(to_signed(-2**15, 18));
			wait for 100 us;
		end loop;
	
		-- verify "sample_coefs" 
		-- output should be normal
		sample_coefs <= '1';
		wait for 50 us;
		sample_coefs <= '0';
		
		for I in 1 to 5 loop
			x <= std_logic_Vector(to_signed((2**15)-1, 18));
			wait for 100 us;
			x <= std_logic_Vector(to_signed(-2**15, 18));
			wait for 100 us;
		end loop;
		
		-- verify "rst"
		-- output should be zero
		rst <= '1';
		
		for I in 1 to 5 loop
			x <= std_logic_Vector(to_signed((2**15)-1, 18));
			wait for 100 us;
			x <= std_logic_Vector(to_signed(-2**15, 18));
			wait for 100 us;
		end loop;
		
		-- output should be back normal
		rst <= '0';
		
		for I in 1 to 5 loop
			x <= std_logic_Vector(to_signed((2**15)-1, 18));
			wait for 100 us;
			x <= std_logic_Vector(to_signed(-2**15, 18));
			wait for 100 us;
		end loop;
		
		-- verify "enable_filter"
		-- output should be zero
		enable_filter <= '0';
		
		for I in 1 to 5 loop
			x <= std_logic_Vector(to_signed((2**15)-1, 18));
			wait for 100 us;
			x <= std_logic_Vector(to_signed(-2**15, 18));
			wait for 100 us;
		end loop;
		
		-- output should be back normal
		enable_filter <= '1';
		
		for I in 1 to 5 loop
			x <= std_logic_Vector(to_signed((2**15)-1, 18));
			wait for 100 us;
			x <= std_logic_Vector(to_signed(-2**15, 18));
			wait for 100 us;
		end loop;
		
		-- lets sample coefficients for bandpass filter
		b0_in <= B"00_00_0011_1110_1111_1100_1111_0000_1111";
		b1_in <= B"00_00_0000_0000_0000_0000_0000_0000_0000";
		b2_in <= B"11_11_1100_0001_0000_0011_0000_1111_0001";
		a1_in <= B"10_00_1011_1011_0111_1011_1110_0101_0111";
		a2_in <= B"00_11_1000_0010_0000_0110_0001_1110_0010";
		
	   sample_coefs_bp <= '1';
		wait for 50 us;
		sample_coefs_bp <= '0';
		
		-- change frequency of input square wave to see
		-- if bandpass filter works properly
		for I in 1 to 10 loop
			x <= std_logic_Vector(to_signed((2**15)-1, 18));
			wait for 250 us;
			x <= std_logic_Vector(to_signed(-2**15, 18));
			wait for 250 us;
		end loop;
		
		
	end process;

	stimulus_process : process
	begin
		--assert rst to high for a 100 ns to ensure stable start-up
		wait for 100 ns;

		--signal stimulus
		
		wait;
	end process;



end behavioral;





