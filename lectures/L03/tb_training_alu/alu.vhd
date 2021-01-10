-----------------------------
-- Author Toms Stūrmanis
-- Date	26.02.2017
-- Project name	ps02
-- Module name ALU
--
-- Detailed module description
--
--
-- ALU operates with two n-bit size vectors 
--	
--
-- Outputs flag high if overflow.
--
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
use ieee.numeric_std.all;		--use this library if arithmetic required


--define connections to outside
entity alu is
port
(
	clk 		: in std_logic;
	A 			: in std_Logic_vector(15 downto 0);
	B 			: in std_logic_vector(15 downto 0);
	op 		: in std_logic_vector(3 downto 0);
	R 			: out std_logic_vector(15 downto 0);
	flag		: out std_logic
);
end alu;

--define inside of the module
architecture behavioral of alu is
	--define inside use signals
	signal R_next : signed(15 downto 0) := (others => '0');
	
begin
	--define the operation of the module!
	
	do_operation : process(clk)
		
	begin
		if rising_edge(clk) then
			if op = x"0" then
				R_next <= signed(A) + signed(B);
				
			elsif op = x"1" then
				R_next <= signed(A) - signed(B);
				
			elsif op = x"2" then
				R_next <= signed(A and B);
				
			elsif op = x"3" then
				R_next <= signed(A nand B) ;
				
			elsif op = x"4" then
				R_next <= signed(A or B);
				
			elsif op = x"5" then
				R_next <= signed(A nor B);
				
			elsif op =x"6" then
				R_next <= signed(A xor B);
				
			elsif op = x"7" then
				R_next <= signed(not A);
				
			elsif op = x"8" then 
				R_next <= signed(not B);
				
			elsif op = x"9" then
				R_next <= signed(A) + 1;
				
			elsif op = x"A" then
				R_next <= signed(B) + 1;
				
			elsif op = x"B" then
				R_next <= signed(A) - 1;
				
			elsif op = x"C" then
				R_next <= signed(B) - 1;
				
			elsif op = x"D" then
				R_next <= shift_left(signed(A), 1);
				
			elsif op = x"E" then
				R_next <= shift_left(signed(B), 1);
			
			else
				R_next <= (others => '0');	
				
			end if;
			
		end if;	
	end process;
	
	update_flag : process(clk)
	begin
		
	end process;
R 		<= std_logic_vector(R_next);

flag 	<= '1' when signed(A) > 0 and op = x"0" and signed(B) > 0 and R_next(15) = '1' else -- posA + posB = neg
			'1' when signed(A) < 0 and op = x"0" and signed(B) < 0 and R_next(15) = '0' else -- negA + negB = pos
			'1' when signed(A) > 0 and op = x"1" and signed(B) < 0 and R_next(15) = '0' else -- posA - negB = pos
			'1' when signed(A) < 0 and op = x"1" and signed(B) > 0 and R_next(15) = '0' else -- negA - posB = pos
			
			'1' when signed(A) > 0 and op = x"9" and R_next(15) = '1' else -- posA + 1 = neg
			'1' when signed(B) > 0 and op = x"A" and R_next(15) = '1' else -- posB + 1 = neg
			'1' when signed(A) < 0 and op = x"B" and R_next(15) = '0' else -- negA - 1 = pos
			'1' when signed(B) < 0 and op = x"C" and R_next(15) = '0' else -- negB - 1 = pos

			'0';
			
end behavioral;





