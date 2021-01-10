-----------------------------
-- Author -  
-- Date - 2016-03-08
-- Project name FSM demo - seifa atslegsana
-- Module name - fsm
--
-- Detailed module description
--	rises lock_out to high when binary sequence has been 0110 in binary stream
--
-- Revision:
-- A - initial design
-- B - 
--
-----------------------------
library ieee;					--always use this library
use ieee.std_logic_1164.all;	--always use this library

--use ieee.numeric_std.all;		--use this library if arithmetic required


--define connections to outside
entity fsm_training_decision_branch is
port
(
	clk 			: in std_logic;
	rst			: in std_logic;
	stream_in	: in std_logic;
	lock_out 	: out std_logic
);
end fsm_training_decision_branch;

--define inside of the module
architecture behavioral of fsm_training_decision_branch is
	--define inside use signals
	signal state : std_logic_vector(3 downto 0) := x"0";
	
	
	--define components to use



begin
	--define the operation of the module!
	process(clk)
	begin
	if rising_edge(clk) then
		if rst = '1' then
			state <= x"0";
		else
			case state is
				when x"0" =>  -- idle					
					if stream_in = '0' then 
						state <= x"1";
					else 
						state <= x"0";
					end if;
					
				when x"1" =>  -- "0"		
					if stream_in = '0' then
						state <= x"1";
					else
						state <= x"2";
					end if;
					
				when x"2" =>  -- "01"
					if stream_in = '0' then
						state <= x"1";
					else
						state <= x"3";
					end if;
			
				when x"3" =>  -- "011"	
					if stream_in = '0' then
						state <= x"4";
					else
						state <= x"0";
					end if;
									
				when x"4" =>  -- "0110"	
					if stream_in = '0' then
						state <= x"1";
					else
						state <= x"2";
					end if;
				
				when others =>
			end case;
		end if;
	end if;
	end process;

	--assign output as function of current state
	lock_out <= '1' when state = x"4" else '0';


end behavioral;
