--------------------------------------------
-- Author: 				Linards Shmeiksts
-- Date: 				04.04.2018.
-- Project name: 		DDS_linards
--
-- Description
-- VHDL code for implementing sinus generation
-- using DDS algorithm. 
--
--------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity DDS_linards is
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
end DDS_linards;

architecture behavioral of DDS_linards is

	type rom_table is array (0 to 2**phase_width - 1) of std_logic_vector(data_width - 1 downto 0);
	constant signal_rom_table : rom_table :=
	(
		-- there is offset to 0x80 to also implement negtive part of sinus
		0 => x"80",
		1 => x"8D",
		2 => x"9A",
		3 => x"A7",
		4 => x"B4",
		5 => x"C0",
		6 => x"CB",
		7 => x"D5",
		8 => x"DE",
		9 => x"E7",
		10 => x"EE",
		11 => x"F4",
		12 => x"F9",
		13 => x"FC",
		14 => x"FE",
		15 => x"FF"
	);
	
	signal phase_cnt : unsigned(phase_width - 1 downto 0) := (others => '0');
	signal control_state : unsigned(1 downto 0) := "00";
	constant phase_incr : unsigned(phase_width - 1 downto 0) := "0001";
	
begin
	
	phase_out <= std_logic_vector(phase_cnt);
	control_state <= unsigned(control);
	
	process(clk)
	begin
		if rising_edge(clk) then
			if rst = '1' then
				phase_cnt <= (others => '0');
			else 
				phase_cnt <= phase_cnt + phase_incr;
			end if;
		end if;
	end process;
	
	process(clk)
	variable cycle : integer := 0;
	begin
		if rising_edge(clk) then
			
			if rst = '1' then
				signal_out <= x"00";
			else
				case control_state is 
					when "00" => 
						signal_out <= x"00";
						
					when "01" => 
						signal_out <= signal_rom_table(to_integer(phase_cnt));
						
					when "10" => 
						if cycle = 0 then
							signal_out <= signal_rom_table(to_integer(phase_cnt));
						else
							signal_out <= signal_rom_table(to_integer(15 - phase_cnt)); -- to the opposite direction
						end if;
						
						-- to generate half-periodic sinusiod, we have to double the size of phase cnt
						-- so we introduce 'cycle' variable to count phase_cnt 
						if phase_cnt = x"0F" then
							cycle := cycle + 1;
							if cycle >= 2 then
								cycle := 0;
							end if;
						end if;
						
					when "11" => 
						if cycle = 0 then
							signal_out <= signal_rom_table(to_integer(phase_cnt));
						elsif cycle = 1 then
							-- here is the positive part II quadrant
							signal_out <= signal_rom_table(to_integer(15 - phase_cnt)); -- to the opposite direction
						elsif cycle = 2 then
							-- here is the negative part III quadrant
							signal_out <= std_logic_vector(x"FF" - unsigned(signal_rom_table(to_integer(phase_cnt))));
						else
							-- here is the negative part IV quadrant
							signal_out <= std_logic_vector(x"FF" - unsigned(signal_rom_table(to_integer(15 - phase_cnt))));
						end if;
						
					   if phase_cnt = x"0F" then
							cycle := cycle + 1;
						end if;
						
					when others => 
				end case;
			end if;
		end if;
	end process;

end behavioral;
	
	