-----------------------------
-- Author 
-- Date	
-- Project name	
-- Module testbench 
--
-- Detailed module description
--
-- Revision:
-- A - initial design
-- B - 
--
-----------------------------
library ieee;						--always use this library
use ieee.std_logic_1164.all;	--always use this library
use ieee.numeric_std.all;		--use this library if arithmetic required

--testbench vhd file needs entity - with NO ports, but can have Generic
entity spi_core_tb is
end spi_core_tb;


architecture behavioral of spi_core_tb is

	--define unit under test UUT (module to be tested)
	component spi_core is
	port
	(
		clk 							: in std_logic;	--spi clock
		rst								: in std_logic;	--rst
		start							: in std_logic;	--start
		DATA							: in std_logic_vector(7 downto 0);	
		CMD								: in std_logic_vector(7 downto 0);
		RET								: out std_logic_vector(15 downto 0);
		miso							: in std_logic;
		mosi							: out std_logic;
		scl								: out std_logic;
		cs								: out std_logic;	
		running							: out std_logic
	);
	end component;

	--define signals for UUT inputs / outputs and INITIALIZE them!
	--inputs to UUT
	signal clk : std_logic := '0';
	signal rst : std_logic := '0';
	signal start : std_logic := '0';
	signal miso : std_logic := '1';
	signal CMD : std_logic_vector(7 downto 0) := x"DE";
	signal DATA : std_logic_vector(7 downto 0) := x"AB";
	
	--outsputs from UUT
	signal running, scl, mosi, cs : std_logic := '0';
	signal ret : std_logic_vector(15 downto 0) := (others => '0');
	
	constant clk_per : time := 100 ns;
begin

	--instantiate unit under test
	uut : spi_core 
	port map
	(
		clk => clk,
		rst => rst,
		start => start,
		miso => miso,
		mosi => mosi,
		scl => scl,
		cs => cs,
		CMD => CMD,
		DATA => DATA,
		RET => RET,
		running => running
	);	

	--generate clock. after period/2 (mind the name of the clock signal)
	clk <= not clk after clk_per/2;

	stimulus_process : process
	begin
		--assert rst to high for a 100 ns to ensure stable start-up
		rst <= '1';
		wait for 100 ns;
		rst <= '0';
		
		--signal stimulus
		start <= '1';
		wait for 200 ns;
		start <= '0';
		
		wait;
	end process;



end behavioral;





