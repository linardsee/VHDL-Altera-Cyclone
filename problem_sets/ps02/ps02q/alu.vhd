-----------------------------
-- Author: 					Linard Shmeikst
-- Date: 					13.03.2018.
-- Project name:			alu.vhdl
-- Module name:
--
-- Detailed module description
-- Homework
--	
-- alu.vhdl
-- Code contains clocked ALU operations which was required by homework. 
-- Additional code written for flag pin.
--
--
-- Revision:
-- A - initial design
-- B - 
--
-----------------------------
library ieee;						--always use this library
use ieee.std_logic_1164.all;	--always use this library
use ieee.numeric_std.all;		--use this library if arithmetic required


--define connections to outside
entity alu is
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
end alu;

--define inside of the module
architecture behavioral of alu is
	--define inside use signal
	signal R_async : std_logic_vector(data_width - 1 downto 0) := (others => '0');

begin
	--define the operation of the module!
	with op select
		R_async <= std_Logic_vector(signed(A) + signed(B)) when "0000",
				  std_Logic_vector(signed(A) - signed(B)) when "0001",
				  A and B when "0010",
		        A nand B when "0011",
		        A or B when "0100",
		        A nor B when "0101",
		        A xor B when "0110",
		        not A when "0111",
		        not B when "1000",
		        std_Logic_vector(signed(A) + 1) when "1001",
		        std_Logic_vector(signed(B) + 1) when "1010",
		        std_Logic_vector(signed(A) - 1) when "1011",
		        std_Logic_vector(signed(B) - 1) when "1100",
			     std_Logic_vector(signed(A) sll 1) when "1101",
			     std_Logic_vector(signed(A) srl 1) when "1110",			  
		        (others => '0') when others;
	
	-- Overflow checking operation
	-- My assumptions:
	-- Considering MSB of A and B;
	-- for signed numbers, MSB is '1' when negative
	-- or '0' if positive number
	process(clk)
	begin
		-- addition overflow rules
		if (op = "0000") then
			if (R_async(31) = '1') then
				if ((A(31) = '0') and (B(31) = '0')) then
					flag <= '1';
				else 
					flag <= '0';
				end if;
			else
				if((A(31) = '1') and (B(31) = '1')) then
					flag <= '1';
				else
					flag <= '0';
				end if;
			end if;
		-- subtraction overflow rules
		elsif (op = "0001") then
			if (R_async(31) = '1') then
				if ((A(31) = '0') and (B(31) = '1')) then
					flag <= '1';
				else 
					flag <= '0';
				end if;
			else
				if((A(31) = '1') and (B(31) = '0')) then
					flag <= '1';
				else
					flag <= '0';
				end if;
			end if;
		end if;
	end process;

	process(clk)
	begin
		if rising_edge(clk) then
			R <= R_async;
		end if;
	end process;


end behavioral;





