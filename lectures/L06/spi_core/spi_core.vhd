-----------------------------
-- Author Kriss Osmanis
-- Date 2018-05-03
-- Project name L06 spi core
-- Module name spi_core
--
-- Detailed module description
--
--
--
--
--
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
entity spi_core is
port
(
	clk 		: in std_logic;
	rst		: in std_Logic;
	start		: in std_Logic;	
	CMD		: in std_Logic_vector(7 downto 0);
	DATA		: in std_Logic_vector(7 downto 0);
	RET		: out std_Logic_vector(15 downto 0);
	running	: out std_logic;
	
	--spi signals
	scl		: out std_logic;
	cs 		: out std_logic;
	mosi 		: out std_logic;
	miso 		: in std_logic
);
end spi_core;

--define inside of the module
architecture behavioral of spi_core is
	--define inside use signals
	signal cnt : integer range 0 to 32; --counts 0 to 32
	--0 to 31 count spi outputs
	--32 idle count value
	
	signal start_q : std_logic := '0';
	signal start_rising_edge : std_logic := '0';

begin

	--start frontes detektors
	process(Clk)
	begin
	if rising_edge(Clk) then
		start_q <= start;
		if start_q = '0' and start = '1' then
			start_rising_edge <= '1';
		else
			start_rising_edge <= '0';
		end if;
	end if;
	end process;

	--SPI izejas formetajs
	process(Clk)
	begin
	if rising_edge(Clk) then
		if rst = '1' then
			cnt <= 32;
			mosi <= '0';
			cs <= '1';
			RET <= (others => '0');
		elsif cnt < 8 then
			cnt <= cnt + 1;
			mosi <= CMD(cnt);
			cs <= '0';
			RET <= (others => '0');
		elsif cnt < 16 then
			cnt <= cnt + 1;
			mosi <= DATA(cnt-8);
			cs <= '0';
			RET <= (others => '0');
		elsif cnt < 32 then
			cnt <= cnt + 1;
			RET(cnt-16) <= miso;
			cs <= '0';
			mosi <= '0';
		elsif start_rising_edge = '1' then
			cnt <= 0;
			cs <= '1';
			mosi <= '0';
			RET <= (others => '0');
		else
			cnt <= 32;
			cs <= '1';
			mosi <= '0';
		end if;
	end if;
	end process;
	
	-- running
	running <= '1' when cnt < 32 else '0';
	
	--scl
	scl <= clk;
	
end behavioral;





