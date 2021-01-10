-----------------------------
-- Author: 					Linard Shmeikst
-- Date: 					13.03.2018.
-- Project name:			ps02
-- Module name:
--
-- Detailed module description
-- Homework
--	Sub-entity alu.vhd had been integrated into top-level-entity 
-- ps02.vhd.
-- Some code added to alu.vhd to pass requirements of the homework.
--
--
--
-- Revision:
-- A - initial design
-- B - 
--
-----------------------------
library ieee;						--always use this library
use ieee.std_logic_1164.all;	--always use this library

--use ieee.numeric_std.all;		--use this library if arithmetic required


--define connections to outside
entity ps02 is
generic
(
	data_width : integer := 32
);
port
(
	clk 		: in std_logic;
	rst		: in std_logic;
	R 			: out std_logic_vector(data_width - 1 downto 0);
	flag		: out std_logic
);
end ps02;

--define inside of the module
architecture behavioral of ps02 is
	--define inside use signals
	signal A 							: std_Logic_vector(data_width - 1 downto 0);
	signal B 							: std_Logic_vector(data_width - 1 downto 0);
	signal op 							: std_logic_vector(3 downto 0);
	
	--component declaration for A, B, op signal generator
	component ps02_siggen is
	generic
	(
		data_width : integer := 32
	);
	port
	(
		clk 		: in std_logic;
		rst		: in std_logic;
		A 			: out std_Logic_vector(data_width - 1 downto 0);
		B 			: out std_logic_vector(data_width - 1 downto 0);
		op 		: out std_logic_vector(3 downto 0)
	);
	end component;	
	
	
	--component declaration for alu
	component alu is 
	generic
	(
		data_width : integer := 32
	);
	port
	(
		clk 		: in std_logic;
		A 			: in std_Logic_vector(data_width - 1 downto 0);
		B 			: in std_logic_vector(data_width - 1 downto 0);
		op 		: in std_logic_vector(3 downto 0);
		R 			: out std_logic_vector(data_width - 1 downto 0);
		flag		: out std_logic
	);
	end component;

begin
	
	
	--port map for A, B, op signal generator
	signal_generator : ps02_siggen 
	generic map
	(
		data_width => data_width
	)
	port map
	(
		clk => clk,
		rst => rst,
		A => A,
		B => B,
		op => op
	);
	
	
	--port map for ALU
	arithmetic_logic_unit : alu 
	generic map
	(
		data_width => data_width
	)
	port map
	(
		clk => clk,
		A => A,
		B => B,
		op => op,
		R => R,
		flag => flag
	);


end behavioral;





