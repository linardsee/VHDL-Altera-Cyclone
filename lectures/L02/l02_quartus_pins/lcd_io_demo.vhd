-----------------------------
-- Author - Kriss Osmanis
-- Date - 2016-02-08
-- Module description - demo top level project to show pin planner
-- Revision:
-- A - initial
--
--
-----------------------------
library ieee;
use ieee.std_logic_1164.all;

--define connections to outside
entity lcd_io_demo is
port
(
	clk 									: in std_logic; 	 --clock 10 ns
	rst									: in std_logic;
	
	lcd_data 							: out std_logic_vector(7 downto 0);
	lcd_rw								: out std_logic;
	lcd_en								: out std_logic;
	lcd_rs								: out std_logic;
	lcd_on								: out std_logic;
	lcd_blon								: out std_logic
);
end lcd_io_demo;

--define inside of the module
architecture behavioral of lcd_io_demo is
	--define inside use signals
	--n/a for this module
	
	
	--define components to use
	--n/a for this module

begin

	
	process(clk)
	begin
	if rising_edge(clk) then
		if rst = '1' then
		
		else
			lcd_data <= x"00";
			lcd_rw <= '0';
			lcd_en <= '0';
			lcd_rs <= '0';
			lcd_on <= '0';
			lcd_blon <= '0';
		end if;
	end if;
	end process;

	
end behavioral;



