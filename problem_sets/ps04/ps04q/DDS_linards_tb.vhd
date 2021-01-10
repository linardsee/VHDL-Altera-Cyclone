--------------------------------------------
-- Author: 				Linards Shmeiksts
-- Date: 				08.04.2018.
-- Project name: 		DDS_linards_tb
--
-- Description
-- VHDL test-bench to check DDS_linrds.vhdl
-- 
--
--------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity DDS_linards_tb is 
generic
(
	phase_width : integer := 4;
	data_width : integer := 8
);
end DDS_linards_tb;

architecture behavioral of DDS_linards_tb is 

	signal clk 				: 		std_logic := '0';
	signal rst 				: 		std_logic := '0';
	signal control 		: 		std_logic_vector(1 downto 0) := (others => '0');
	signal phase_out 		: 		std_logic_vector(phase_width - 1 downto 0) := (others => '0');
	signal signal_out 	:  	std_logic_vector(data_width - 1 downto 0) := (others => '0');

	component DDS_linards is
	generic
	(
		phase_width : integer := 4;
		data_width : integer := 8
	);
	port
	(
		clk : in std_logic;
		rst : in std_logic;
		control : in std_logic_vector(1 downto 0);
		phase_out : out std_logic_vector(phase_width - 1 downto 0);
		signal_out : out std_logic_vector(data_width - 1 downto 0)
	);
	end component;
	
	constant clk_period : time := 10ns;
	
begin

	clk <= not clk after clk_period/2;
	
	uut : DDS_linards
	generic map
	(
		phase_width => phase_width,
		data_width => data_width
	)
	port map
	(
		clk => clk,
		rst => rst,
		control => control,
		phase_out => phase_out,
		signal_out => signal_out
	);
	
	-- change control bits from 00 to 11 and observe the output signal
	control <= "01";
	
	process
	begin
		wait for clk_period/2;
		wait;
	end process;

end behavioral;