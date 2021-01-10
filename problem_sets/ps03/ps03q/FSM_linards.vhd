--------------------------------------------
-- Author: 				Linards Shmeiksts
-- Date: 				25.03.2018.
-- Project name: 		FSM_linards
--
-- Description
-- VHDL code for implementing smart traffic
-- light control. 
--
--------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity FSM_linards is
generic
(
	bus_width : integer := 8
);
port
(
	clk 			: in std_logic;
	rst 			: in std_logic;
	MR_cars 		: in std_logic_vector(7 downto 0);
	MR_ctl 		: out std_logic_vector(1 downto 0);
	SR_ctl 		: out std_logic_vector(1 downto 0)
);
end FSM_linards;

architecture behavioral of FSM_linards is
	signal MR_cars_cnt: unsigned(7 downto 0) := x"00";
	signal state: std_logic_vector(1 downto 0) := "00";
	
	
begin
	MR_cars_cnt <= unsigned(MR_cars);

	process(clk)
	variable clk_cnt : integer := 0;
	begin
		if rising_edge(clk) then
			if rst = '1' then
				MR_ctl <= "00";
				SR_ctl <= "00";
				clk_cnt := 0;
				state <= "00";
			else
				case state is 
					when "00" =>	-- A case (Green light on the Main Road)
					-----------------Begin State A---------------------
						if MR_cars_cnt = x"00" then
							clk_cnt := clk_cnt + 1; 
							MR_ctl <= "11"; -- if no cars are present at the secondary road, just blink the green light	
							SR_ctl <= "01";
						elsif (MR_cars_cnt > 0) and (MR_cars_cnt < x"04") then -- if a few cars are at the secondary road
							if clk_cnt >= 30 then -- finish 30 ns delay for main road's green light
								clk_cnt := 0;
								state <= "11";
							else 
								clk_cnt := clk_cnt + 1;
								MR_ctl <= "11";
								SR_ctl <= "01";
							end if;
						else --if many cars are present at the secondary road
							if clk_cnt >= 30 then
								clk_cnt := 0;
								state <= "01";
							else 
								clk_cnt := clk_cnt + 1;
								MR_ctl <= "11";
								SR_ctl <= "01";
							end if;
						end if;
					------------------End State A---------------------
					when "01" =>	-- B case (Transition - yellow light on both roads)
					-----------------Begin State B---------------------
						if MR_cars_cnt = x"00" then -- if cars have just crossed the intersection, MR_cars_cnt should be x"00" so we are able to know the next state (green or red) after the yellow light 
							if clk_cnt >= 3 then
								clk_cnt := 0;
								state <= "00";
							else 
								clk_cnt := clk_cnt + 1;
								MR_ctl <= "10";
								SR_ctl <= "10";
							end if;
						else
							if clk_cnt >= 3 then
								clk_cnt := 0;
								state <= "10";
							else 
								clk_cnt := clk_cnt + 1;
								MR_ctl <= "10";
								SR_ctl <= "10";
							end if;
						end if;
					------------------End State B---------------------
					when "10" =>	-- C case (Red light on the Main Road)
					-----------------Begin State C---------------------
						if clk_cnt >= 10 then -- just blink for 10s, because next state will always be yellow light
							clk_cnt := 0;
							state <= "01";
						else 
							clk_cnt := clk_cnt + 1;
							MR_ctl <= "01";
							SR_ctl <= "11";
						end if;		
					------------------End State C---------------------	
					when "11" =>	-- D case (Extra Green light on the Main Road)
					-----------------Begin State D---------------------
						if clk_cnt >= 30 then --extra 30s of green light on the main road. we could integrate this state in the state A, but it is used to correspond the state machine
							clk_cnt := 0;
							state <= "01";
						else 
							clk_cnt := clk_cnt + 1;
							MR_ctl <= "11";
							SR_ctl <= "01";
						end if;	
					------------------End State D---------------------	
					when others =>
				end case;
			end if;
		end if;
	end process;
end behavioral;