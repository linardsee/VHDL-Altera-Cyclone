-----------------------------
-- Author - Kriss Osmanis
-- Date - 2018-03-01
-- Project name - lecture 02 top level
-- Module name - 
--
-- Detailed module description
--	counter 8b
-- reset input
-- clock input
-- counter value output
-- counter 50% value output
--
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
entity l02 is
port
(
	clk 				: in std_logic;
	rst				: in std_Logic;
	--mux i/o
	x_in				: in std_logic_vector(3 downto 0);
	sel				: in std_logic_vector(1 downto 0);
	y_vec				: out std_logic_vector(5 downto 0); --6 outputs for all mux'es
	--for counter
	cnt_value		: out std_logic_Vector(7 downto 0);
	cnt_50_high 	: out std_logic
);
end l02;

--define inside of the module
architecture behavioral of l02 is

	--define inside use signals

	--define components to use (in lecture)
	--mux 4:1 when else
	component mux_4_1_when_else is
	port
	(
	  x	: in std_logic_vector(3 downto 0);
	  s 	: in std_logic_vector(1 downto 0);
	  y 	: out std_logic
	);
	end component;
	
	--mux 4:1 with select
	component mux_4_1_with_select is
	port
	(
	  x	: in std_logic_vector(3 downto 0);
	  s 	: in std_logic_vector(1 downto 0);
	  y 	: out std_logic
	);
	end component;
	
	--mux 4:1 if else
	component mux_4_1_if_else is
	port
	(
	  x	: in std_logic_vector(3 downto 0);
	  s 	: in std_logic_vector(1 downto 0);
	  y 	: out std_logic
	);
	end component;
	
	--mux 4:1 case
	component mux_4_1_case is
	port
	(
	  x	: in std_logic_vector(3 downto 0);
	  s 	: in std_logic_vector(1 downto 0);
	  y 	: out std_logic
	);
	end component;
	
	--mux 4:1 if else sync
	component mux_4_1_if_else_sync is
	port
	(
	  clk : in std_logic;
	  x	: in std_logic_vector(3 downto 0);
	  s 	: in std_logic_vector(1 downto 0);
	  y 	: out std_logic
	);
	end component;
	
	--mux 4:1 case is sync
	component mux_4_1_case_sync is
	port
	(
	  clk : in std_logic;
	  x	: in std_logic_vector(3 downto 0);
	  s 	: in std_logic_vector(1 downto 0);
	  y 	: out std_logic
	);
	end component;
	
	--l02_counter
	component l02_counter is
	port
	(
		clk 				: in std_logic;
		rst				: in std_Logic;
		cnt_value		: out std_logic_Vector(7 downto 0);
		cnt_50_high 	: out std_logic
	);
	end component;

	signal cnt_value_1 : std_Logic_Vector(7 downto 0) := x"00";
	signal cnt_value_2 : std_Logic_Vector(7 downto 0) := x"00";

begin
	--define the operation of the module!
	
	
	--port map submodules
		--mux 4:1 when else
	mux_0 : mux_4_1_when_else port map
	(
	  x => x_in,
	  s => sel,
	  y => y_vec(0)
	);
	
	--mux 4:1 with select
	mux_1 : mux_4_1_with_select port map
	(
	  x => x_in,
	  s => sel,
	  y => y_vec(1)
	);
	
	--mux 4:1 if else
	mux_2 : mux_4_1_if_else port map
	(
	  x => x_in,
	  s => sel,
	  y => y_vec(2)
	);
	
	--mux 4:1 case
	mux_3 : mux_4_1_case port map
	(
	  x => x_in,
	  s => sel,
	  y => y_vec(3)
	);
	
	--mux 4:1 if else sync
	mux_4 : mux_4_1_if_else_sync port map
	(
	  clk => clk,
	  x => x_in,
	  s => sel,
	  y => y_vec(4)
	);
	
	--mux 4:1 case is sync
	mux_5 : mux_4_1_case_sync port map
	(
	  clk => clk,
	  x => x_in,
	  s => sel,
	  y => y_vec(5)
	);
	
	--l02_counter
	cnt_0 : l02_counter port map
	(
	  clk => clk,
	  rst => rst,
	  cnt_value => cnt_value_1,
	  cnt_50_high => open
	);
	
	cnt_1 : l02_counter port map
	(
	  clk => clk,
	  rst => rst,
	  cnt_value => cnt_value_2,
	  cnt_50_high => open
	);	


end behavioral;





