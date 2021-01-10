-----------------------------
-- Author - 
-- Date - 2017-02-22
-- Project name - lecture 02
-- Module name - counter 8b
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
entity l02_counter is
port
(
	clk 				: in std_logic;
	rst				: in std_Logic;
	cnt_value		: out std_logic_Vector(7 downto 0);
	cnt_50_high 	: out std_logic
);
end l02_counter;

--define inside of the module
architecture behavioral of l02_counter is
	--define inside use signals
	signal cnt_signal : unsigned(7 downto 0) := x"00";

	--define components to use



begin
	
	--define the operation of the module!
	process(clk, rst)
	begin
		if rst = '1' then --active high reset
			cnt_signal <= to_unsigned(0,8);
		elsif rising_edge(clk) then
			-- cnt_signal increment 0 to 255
			cnt_signal <= cnt_signal + 1;
		end if;
	end process;
	
	process(clk)
	begin
		if rising_edge(clk) then
			if cnt_signal > 128 then
				cnt_50_high <= '1';
			else
				cnt_50_high <= '0';
			end if;
		end if;
	end process;
	
	--cnt_50_high <= '1' when cnt_signal > 128 else '0';
	--cnt_50_high <= cnt_signal(7);
	--cnt_50_high <= cnt_signal(cnt_signal'high);

end behavioral;





