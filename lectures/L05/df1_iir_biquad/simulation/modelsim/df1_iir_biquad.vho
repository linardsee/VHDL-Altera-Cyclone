-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 15.0.0 Build 145 04/22/2015 SJ Web Edition"

-- DATE "05/24/2018 11:33:19"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	df1_iir_biquad IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	x : IN std_logic_vector(17 DOWNTO 0);
	y : OUT std_logic_vector(17 DOWNTO 0)
	);
END df1_iir_biquad;

-- Design Ports Information
-- x[0]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[0]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[1]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[2]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[3]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[4]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[5]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[6]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[7]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[8]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[9]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[10]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[11]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[12]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[13]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[14]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[15]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[16]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[17]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[1]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[2]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[3]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[4]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[5]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[6]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[7]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[8]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[9]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[10]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[11]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[12]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[13]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[14]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[15]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[16]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[17]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF df1_iir_biquad IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_x : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_y : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult4~80_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Mult4~80_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Mult4~80_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Mult4~80_AX_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \Mult4~80_AY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \Mult4~80_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Mult4~421_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Mult4~421_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Mult4~421_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Mult4~421_AX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult4~421_AY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult4~421_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Mult3~80_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Mult3~80_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Mult3~80_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Mult3~80_AX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult3~80_AY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \Mult3~80_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Mult3~421_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Mult3~421_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Mult3~421_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Mult3~421_AX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult3~421_AY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult3~421_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Mult1~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Mult1~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Mult1~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Mult1~8_AX_bus\ : std_logic_vector(21 DOWNTO 0);
SIGNAL \Mult1~8_AY_bus\ : std_logic_vector(26 DOWNTO 0);
SIGNAL \Mult1~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Mult2~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Mult2~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Mult2~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Mult2~8_AX_bus\ : std_logic_vector(20 DOWNTO 0);
SIGNAL \Mult2~8_AY_bus\ : std_logic_vector(26 DOWNTO 0);
SIGNAL \Mult2~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Mult0~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Mult0~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Mult0~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Mult0~8_AX_bus\ : std_logic_vector(20 DOWNTO 0);
SIGNAL \Mult0~8_AY_bus\ : std_logic_vector(26 DOWNTO 0);
SIGNAL \Mult0~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Mult4~110\ : std_logic;
SIGNAL \Mult4~111\ : std_logic;
SIGNAL \Mult4~112\ : std_logic;
SIGNAL \Mult4~113\ : std_logic;
SIGNAL \Mult4~114\ : std_logic;
SIGNAL \Mult4~115\ : std_logic;
SIGNAL \Mult4~116\ : std_logic;
SIGNAL \Mult4~117\ : std_logic;
SIGNAL \Mult4~118\ : std_logic;
SIGNAL \Mult4~119\ : std_logic;
SIGNAL \Mult4~120\ : std_logic;
SIGNAL \Mult4~121\ : std_logic;
SIGNAL \Mult4~122\ : std_logic;
SIGNAL \Mult4~123\ : std_logic;
SIGNAL \Mult4~124\ : std_logic;
SIGNAL \Mult4~125\ : std_logic;
SIGNAL \Mult4~126\ : std_logic;
SIGNAL \Mult4~127\ : std_logic;
SIGNAL \Mult4~128\ : std_logic;
SIGNAL \Mult4~129\ : std_logic;
SIGNAL \Mult4~130\ : std_logic;
SIGNAL \Mult4~131\ : std_logic;
SIGNAL \Mult4~132\ : std_logic;
SIGNAL \Mult4~133\ : std_logic;
SIGNAL \Mult4~134\ : std_logic;
SIGNAL \Mult4~135\ : std_logic;
SIGNAL \Mult4~136\ : std_logic;
SIGNAL \Mult4~137\ : std_logic;
SIGNAL \Mult4~138\ : std_logic;
SIGNAL \Mult4~139\ : std_logic;
SIGNAL \Mult4~140\ : std_logic;
SIGNAL \Mult4~141\ : std_logic;
SIGNAL \Mult4~142\ : std_logic;
SIGNAL \Mult4~143\ : std_logic;
SIGNAL \Mult4~421_resulta\ : std_logic;
SIGNAL \Mult4~422\ : std_logic;
SIGNAL \Mult4~423\ : std_logic;
SIGNAL \Mult4~424\ : std_logic;
SIGNAL \Mult4~425\ : std_logic;
SIGNAL \Mult4~426\ : std_logic;
SIGNAL \Mult4~427\ : std_logic;
SIGNAL \Mult4~428\ : std_logic;
SIGNAL \Mult4~429\ : std_logic;
SIGNAL \Mult4~430\ : std_logic;
SIGNAL \Mult4~431\ : std_logic;
SIGNAL \Mult4~432\ : std_logic;
SIGNAL \Mult4~433\ : std_logic;
SIGNAL \Mult4~434\ : std_logic;
SIGNAL \Mult4~435\ : std_logic;
SIGNAL \Mult4~436\ : std_logic;
SIGNAL \Mult4~437\ : std_logic;
SIGNAL \Mult4~438\ : std_logic;
SIGNAL \Mult4~457\ : std_logic;
SIGNAL \Mult4~458\ : std_logic;
SIGNAL \Mult4~459\ : std_logic;
SIGNAL \Mult4~460\ : std_logic;
SIGNAL \Mult4~461\ : std_logic;
SIGNAL \Mult4~462\ : std_logic;
SIGNAL \Mult4~463\ : std_logic;
SIGNAL \Mult4~464\ : std_logic;
SIGNAL \Mult4~465\ : std_logic;
SIGNAL \Mult4~466\ : std_logic;
SIGNAL \Mult4~467\ : std_logic;
SIGNAL \Mult4~468\ : std_logic;
SIGNAL \Mult4~469\ : std_logic;
SIGNAL \Mult4~470\ : std_logic;
SIGNAL \Mult4~471\ : std_logic;
SIGNAL \Mult4~472\ : std_logic;
SIGNAL \Mult4~473\ : std_logic;
SIGNAL \Mult4~474\ : std_logic;
SIGNAL \Mult4~475\ : std_logic;
SIGNAL \Mult4~476\ : std_logic;
SIGNAL \Mult4~477\ : std_logic;
SIGNAL \Mult4~478\ : std_logic;
SIGNAL \Mult4~479\ : std_logic;
SIGNAL \Mult4~480\ : std_logic;
SIGNAL \Mult4~481\ : std_logic;
SIGNAL \Mult4~482\ : std_logic;
SIGNAL \Mult4~483\ : std_logic;
SIGNAL \Mult4~484\ : std_logic;
SIGNAL \Mult3~110\ : std_logic;
SIGNAL \Mult3~111\ : std_logic;
SIGNAL \Mult3~112\ : std_logic;
SIGNAL \Mult3~113\ : std_logic;
SIGNAL \Mult3~114\ : std_logic;
SIGNAL \Mult3~115\ : std_logic;
SIGNAL \Mult3~116\ : std_logic;
SIGNAL \Mult3~117\ : std_logic;
SIGNAL \Mult3~118\ : std_logic;
SIGNAL \Mult3~119\ : std_logic;
SIGNAL \Mult3~120\ : std_logic;
SIGNAL \Mult3~121\ : std_logic;
SIGNAL \Mult3~122\ : std_logic;
SIGNAL \Mult3~123\ : std_logic;
SIGNAL \Mult3~124\ : std_logic;
SIGNAL \Mult3~125\ : std_logic;
SIGNAL \Mult3~126\ : std_logic;
SIGNAL \Mult3~127\ : std_logic;
SIGNAL \Mult3~128\ : std_logic;
SIGNAL \Mult3~129\ : std_logic;
SIGNAL \Mult3~130\ : std_logic;
SIGNAL \Mult3~131\ : std_logic;
SIGNAL \Mult3~132\ : std_logic;
SIGNAL \Mult3~133\ : std_logic;
SIGNAL \Mult3~134\ : std_logic;
SIGNAL \Mult3~135\ : std_logic;
SIGNAL \Mult3~136\ : std_logic;
SIGNAL \Mult3~137\ : std_logic;
SIGNAL \Mult3~138\ : std_logic;
SIGNAL \Mult3~139\ : std_logic;
SIGNAL \Mult3~140\ : std_logic;
SIGNAL \Mult3~141\ : std_logic;
SIGNAL \Mult3~142\ : std_logic;
SIGNAL \Mult3~143\ : std_logic;
SIGNAL \Mult3~421_resulta\ : std_logic;
SIGNAL \Mult3~422\ : std_logic;
SIGNAL \Mult3~423\ : std_logic;
SIGNAL \Mult3~424\ : std_logic;
SIGNAL \Mult3~425\ : std_logic;
SIGNAL \Mult3~426\ : std_logic;
SIGNAL \Mult3~427\ : std_logic;
SIGNAL \Mult3~428\ : std_logic;
SIGNAL \Mult3~429\ : std_logic;
SIGNAL \Mult3~430\ : std_logic;
SIGNAL \Mult3~431\ : std_logic;
SIGNAL \Mult3~432\ : std_logic;
SIGNAL \Mult3~433\ : std_logic;
SIGNAL \Mult3~434\ : std_logic;
SIGNAL \Mult3~435\ : std_logic;
SIGNAL \Mult3~436\ : std_logic;
SIGNAL \Mult3~437\ : std_logic;
SIGNAL \Mult3~438\ : std_logic;
SIGNAL \Mult3~457\ : std_logic;
SIGNAL \Mult3~458\ : std_logic;
SIGNAL \Mult3~459\ : std_logic;
SIGNAL \Mult3~460\ : std_logic;
SIGNAL \Mult3~461\ : std_logic;
SIGNAL \Mult3~462\ : std_logic;
SIGNAL \Mult3~463\ : std_logic;
SIGNAL \Mult3~464\ : std_logic;
SIGNAL \Mult3~465\ : std_logic;
SIGNAL \Mult3~466\ : std_logic;
SIGNAL \Mult3~467\ : std_logic;
SIGNAL \Mult3~468\ : std_logic;
SIGNAL \Mult3~469\ : std_logic;
SIGNAL \Mult3~470\ : std_logic;
SIGNAL \Mult3~471\ : std_logic;
SIGNAL \Mult3~472\ : std_logic;
SIGNAL \Mult3~473\ : std_logic;
SIGNAL \Mult3~474\ : std_logic;
SIGNAL \Mult3~475\ : std_logic;
SIGNAL \Mult3~476\ : std_logic;
SIGNAL \Mult3~477\ : std_logic;
SIGNAL \Mult3~478\ : std_logic;
SIGNAL \Mult3~479\ : std_logic;
SIGNAL \Mult3~480\ : std_logic;
SIGNAL \Mult3~481\ : std_logic;
SIGNAL \Mult3~482\ : std_logic;
SIGNAL \Mult3~483\ : std_logic;
SIGNAL \Mult3~484\ : std_logic;
SIGNAL \Mult1~8_resulta\ : std_logic;
SIGNAL \Mult1~9\ : std_logic;
SIGNAL \Mult1~10\ : std_logic;
SIGNAL \Mult1~11\ : std_logic;
SIGNAL \Mult1~12\ : std_logic;
SIGNAL \Mult1~13\ : std_logic;
SIGNAL \Mult1~14\ : std_logic;
SIGNAL \Mult1~15\ : std_logic;
SIGNAL \Mult1~16\ : std_logic;
SIGNAL \Mult1~17\ : std_logic;
SIGNAL \Mult1~18\ : std_logic;
SIGNAL \Mult1~19\ : std_logic;
SIGNAL \Mult1~20\ : std_logic;
SIGNAL \Mult1~21\ : std_logic;
SIGNAL \Mult1~22\ : std_logic;
SIGNAL \Mult1~23\ : std_logic;
SIGNAL \Mult1~24\ : std_logic;
SIGNAL \Mult1~25\ : std_logic;
SIGNAL \Mult1~26\ : std_logic;
SIGNAL \Mult1~27\ : std_logic;
SIGNAL \Mult1~28\ : std_logic;
SIGNAL \Mult1~29\ : std_logic;
SIGNAL \Mult1~30\ : std_logic;
SIGNAL \Mult1~31\ : std_logic;
SIGNAL \Mult1~32\ : std_logic;
SIGNAL \Mult1~33\ : std_logic;
SIGNAL \Mult1~34\ : std_logic;
SIGNAL \Mult1~35\ : std_logic;
SIGNAL \Mult1~36\ : std_logic;
SIGNAL \Mult1~37\ : std_logic;
SIGNAL \Mult1~38\ : std_logic;
SIGNAL \Mult1~39\ : std_logic;
SIGNAL \Mult1~40\ : std_logic;
SIGNAL \Mult1~41\ : std_logic;
SIGNAL \Mult1~42\ : std_logic;
SIGNAL \Mult1~43\ : std_logic;
SIGNAL \Mult1~44\ : std_logic;
SIGNAL \Mult1~45\ : std_logic;
SIGNAL \Mult1~46\ : std_logic;
SIGNAL \Mult1~47\ : std_logic;
SIGNAL \Mult1~48\ : std_logic;
SIGNAL \Mult1~49\ : std_logic;
SIGNAL \Mult1~50\ : std_logic;
SIGNAL \Mult1~51\ : std_logic;
SIGNAL \Mult1~52\ : std_logic;
SIGNAL \Mult1~53\ : std_logic;
SIGNAL \Mult1~54\ : std_logic;
SIGNAL \Mult1~55\ : std_logic;
SIGNAL \Mult1~56\ : std_logic;
SIGNAL \Mult1~57\ : std_logic;
SIGNAL \Mult1~58\ : std_logic;
SIGNAL \Mult1~59\ : std_logic;
SIGNAL \Mult1~60\ : std_logic;
SIGNAL \Mult1~61\ : std_logic;
SIGNAL \Mult2~8_resulta\ : std_logic;
SIGNAL \Mult2~9\ : std_logic;
SIGNAL \Mult2~10\ : std_logic;
SIGNAL \Mult2~11\ : std_logic;
SIGNAL \Mult2~12\ : std_logic;
SIGNAL \Mult2~13\ : std_logic;
SIGNAL \Mult2~14\ : std_logic;
SIGNAL \Mult2~15\ : std_logic;
SIGNAL \Mult2~16\ : std_logic;
SIGNAL \Mult2~17\ : std_logic;
SIGNAL \Mult2~18\ : std_logic;
SIGNAL \Mult2~19\ : std_logic;
SIGNAL \Mult2~20\ : std_logic;
SIGNAL \Mult2~21\ : std_logic;
SIGNAL \Mult2~22\ : std_logic;
SIGNAL \Mult2~23\ : std_logic;
SIGNAL \Mult2~24\ : std_logic;
SIGNAL \Mult2~25\ : std_logic;
SIGNAL \Mult2~26\ : std_logic;
SIGNAL \Mult2~27\ : std_logic;
SIGNAL \Mult2~28\ : std_logic;
SIGNAL \Mult2~29\ : std_logic;
SIGNAL \Mult2~30\ : std_logic;
SIGNAL \Mult2~31\ : std_logic;
SIGNAL \Mult2~32\ : std_logic;
SIGNAL \Mult2~33\ : std_logic;
SIGNAL \Mult2~34\ : std_logic;
SIGNAL \Mult2~35\ : std_logic;
SIGNAL \Mult2~36\ : std_logic;
SIGNAL \Mult2~37\ : std_logic;
SIGNAL \Mult2~38\ : std_logic;
SIGNAL \Mult2~39\ : std_logic;
SIGNAL \Mult2~40\ : std_logic;
SIGNAL \Mult2~41\ : std_logic;
SIGNAL \Mult2~42\ : std_logic;
SIGNAL \Mult2~43\ : std_logic;
SIGNAL \Mult2~44\ : std_logic;
SIGNAL \Mult2~45\ : std_logic;
SIGNAL \Mult2~46\ : std_logic;
SIGNAL \Mult2~47\ : std_logic;
SIGNAL \Mult2~48\ : std_logic;
SIGNAL \Mult2~49\ : std_logic;
SIGNAL \Mult2~50\ : std_logic;
SIGNAL \Mult2~51\ : std_logic;
SIGNAL \Mult2~52\ : std_logic;
SIGNAL \Mult2~53\ : std_logic;
SIGNAL \Mult2~54\ : std_logic;
SIGNAL \Mult2~55\ : std_logic;
SIGNAL \Mult2~56\ : std_logic;
SIGNAL \Mult2~57\ : std_logic;
SIGNAL \Mult2~58\ : std_logic;
SIGNAL \Mult2~59\ : std_logic;
SIGNAL \Mult2~60\ : std_logic;
SIGNAL \Mult2~61\ : std_logic;
SIGNAL \Mult2~62\ : std_logic;
SIGNAL \Mult0~8_resulta\ : std_logic;
SIGNAL \Mult0~9\ : std_logic;
SIGNAL \Mult0~10\ : std_logic;
SIGNAL \Mult0~11\ : std_logic;
SIGNAL \Mult0~12\ : std_logic;
SIGNAL \Mult0~13\ : std_logic;
SIGNAL \Mult0~14\ : std_logic;
SIGNAL \Mult0~15\ : std_logic;
SIGNAL \Mult0~16\ : std_logic;
SIGNAL \Mult0~17\ : std_logic;
SIGNAL \Mult0~18\ : std_logic;
SIGNAL \Mult0~19\ : std_logic;
SIGNAL \Mult0~20\ : std_logic;
SIGNAL \Mult0~21\ : std_logic;
SIGNAL \Mult0~22\ : std_logic;
SIGNAL \Mult0~23\ : std_logic;
SIGNAL \Mult0~24\ : std_logic;
SIGNAL \Mult0~25\ : std_logic;
SIGNAL \Mult0~26\ : std_logic;
SIGNAL \Mult0~27\ : std_logic;
SIGNAL \Mult0~28\ : std_logic;
SIGNAL \Mult0~29\ : std_logic;
SIGNAL \Mult0~30\ : std_logic;
SIGNAL \Mult0~31\ : std_logic;
SIGNAL \Mult0~32\ : std_logic;
SIGNAL \Mult0~33\ : std_logic;
SIGNAL \Mult0~34\ : std_logic;
SIGNAL \Mult0~35\ : std_logic;
SIGNAL \Mult0~36\ : std_logic;
SIGNAL \Mult0~37\ : std_logic;
SIGNAL \Mult0~38\ : std_logic;
SIGNAL \Mult0~39\ : std_logic;
SIGNAL \Mult0~40\ : std_logic;
SIGNAL \Mult0~41\ : std_logic;
SIGNAL \Mult0~42\ : std_logic;
SIGNAL \Mult0~43\ : std_logic;
SIGNAL \Mult0~44\ : std_logic;
SIGNAL \Mult0~45\ : std_logic;
SIGNAL \Mult0~46\ : std_logic;
SIGNAL \Mult0~47\ : std_logic;
SIGNAL \Mult0~48\ : std_logic;
SIGNAL \Mult0~49\ : std_logic;
SIGNAL \Mult0~50\ : std_logic;
SIGNAL \Mult0~51\ : std_logic;
SIGNAL \Mult0~52\ : std_logic;
SIGNAL \Mult0~53\ : std_logic;
SIGNAL \Mult0~54\ : std_logic;
SIGNAL \Mult0~55\ : std_logic;
SIGNAL \Mult0~56\ : std_logic;
SIGNAL \Mult0~57\ : std_logic;
SIGNAL \Mult0~58\ : std_logic;
SIGNAL \Mult0~59\ : std_logic;
SIGNAL \Mult0~60\ : std_logic;
SIGNAL \Mult0~61\ : std_logic;
SIGNAL \Mult0~62\ : std_logic;
SIGNAL \x[0]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \y_z[0]~SCLR_LUT_combout\ : std_logic;
SIGNAL \y_z[0]~_Duplicate_2_q\ : std_logic;
SIGNAL \y_zz[0]~SCLR_LUT_combout\ : std_logic;
SIGNAL \y_z[9]~_Duplicate_2_q\ : std_logic;
SIGNAL \y_zz[9]~SCLR_LUT_combout\ : std_logic;
SIGNAL \y_z[11]~_Duplicate_2_q\ : std_logic;
SIGNAL \y_zz[11]~SCLR_LUT_combout\ : std_logic;
SIGNAL \y_z[12]~_Duplicate_2_q\ : std_logic;
SIGNAL \y_zz[12]~SCLR_LUT_combout\ : std_logic;
SIGNAL \y_z[16]~_Duplicate_2_q\ : std_logic;
SIGNAL \y_zz[16]~SCLR_LUT_combout\ : std_logic;
SIGNAL \Mult4~109\ : std_logic;
SIGNAL \Mult3~109\ : std_logic;
SIGNAL \x[1]~input_o\ : std_logic;
SIGNAL \x_in[0]~_Duplicate_1_q\ : std_logic;
SIGNAL \x_z[0]~SCLR_LUT_combout\ : std_logic;
SIGNAL \x[2]~input_o\ : std_logic;
SIGNAL \x_in[1]~_Duplicate_1_q\ : std_logic;
SIGNAL \x_z[1]~SCLR_LUT_combout\ : std_logic;
SIGNAL \x[3]~input_o\ : std_logic;
SIGNAL \x_in[2]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \x_in[2]~_Duplicate_1_q\ : std_logic;
SIGNAL \x_z[2]~SCLR_LUT_combout\ : std_logic;
SIGNAL \x[4]~input_o\ : std_logic;
SIGNAL \x_in[3]~_Duplicate_1_q\ : std_logic;
SIGNAL \x_z[3]~SCLR_LUT_combout\ : std_logic;
SIGNAL \x[5]~input_o\ : std_logic;
SIGNAL \x_in[4]~_Duplicate_1_q\ : std_logic;
SIGNAL \x_z[4]~SCLR_LUT_combout\ : std_logic;
SIGNAL \x[6]~input_o\ : std_logic;
SIGNAL \x_in[5]~_Duplicate_1_q\ : std_logic;
SIGNAL \x_z[5]~SCLR_LUT_combout\ : std_logic;
SIGNAL \x[7]~input_o\ : std_logic;
SIGNAL \x_in[6]~_Duplicate_1_q\ : std_logic;
SIGNAL \x_z[6]~SCLR_LUT_combout\ : std_logic;
SIGNAL \x[8]~input_o\ : std_logic;
SIGNAL \x_in[7]~_Duplicate_1_q\ : std_logic;
SIGNAL \x_z[7]~SCLR_LUT_combout\ : std_logic;
SIGNAL \x[9]~input_o\ : std_logic;
SIGNAL \x_in[8]~_Duplicate_1_q\ : std_logic;
SIGNAL \x_z[8]~SCLR_LUT_combout\ : std_logic;
SIGNAL \x[10]~input_o\ : std_logic;
SIGNAL \x_in[9]~_Duplicate_1_q\ : std_logic;
SIGNAL \x_z[9]~SCLR_LUT_combout\ : std_logic;
SIGNAL \x[11]~input_o\ : std_logic;
SIGNAL \x_in[10]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \x_in[10]~_Duplicate_1_q\ : std_logic;
SIGNAL \x_z[10]~SCLR_LUT_combout\ : std_logic;
SIGNAL \x[12]~input_o\ : std_logic;
SIGNAL \x_in[11]~_Duplicate_1_q\ : std_logic;
SIGNAL \x_z[11]~SCLR_LUT_combout\ : std_logic;
SIGNAL \x[13]~input_o\ : std_logic;
SIGNAL \x_in[12]~_Duplicate_1_q\ : std_logic;
SIGNAL \x_z[12]~SCLR_LUT_combout\ : std_logic;
SIGNAL \x[14]~input_o\ : std_logic;
SIGNAL \x_in[13]~_Duplicate_1_q\ : std_logic;
SIGNAL \x_z[13]~SCLR_LUT_combout\ : std_logic;
SIGNAL \x[15]~input_o\ : std_logic;
SIGNAL \x_in[14]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \x_in[14]~_Duplicate_1_q\ : std_logic;
SIGNAL \x_z[14]~SCLR_LUT_combout\ : std_logic;
SIGNAL \x[16]~input_o\ : std_logic;
SIGNAL \x_in[15]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \x_in[15]~_Duplicate_1_q\ : std_logic;
SIGNAL \x_z[15]~SCLR_LUT_combout\ : std_logic;
SIGNAL \x[17]~input_o\ : std_logic;
SIGNAL \x_in[16]~_Duplicate_2_q\ : std_logic;
SIGNAL \x_z[16]~SCLR_LUT_combout\ : std_logic;
SIGNAL \x_z[0]~_Duplicate_1_q\ : std_logic;
SIGNAL \x_zz[0]~SCLR_LUT_combout\ : std_logic;
SIGNAL \x_z[1]~_Duplicate_1_q\ : std_logic;
SIGNAL \x_zz[1]~SCLR_LUT_combout\ : std_logic;
SIGNAL \x_z[2]~_Duplicate_1_q\ : std_logic;
SIGNAL \x_zz[2]~SCLR_LUT_combout\ : std_logic;
SIGNAL \x_z[3]~_Duplicate_1_q\ : std_logic;
SIGNAL \x_zz[3]~SCLR_LUT_combout\ : std_logic;
SIGNAL \x_z[4]~_Duplicate_1_q\ : std_logic;
SIGNAL \x_zz[4]~SCLR_LUT_combout\ : std_logic;
SIGNAL \x_z[5]~_Duplicate_1_q\ : std_logic;
SIGNAL \x_zz[5]~SCLR_LUT_combout\ : std_logic;
SIGNAL \x_z[6]~_Duplicate_1_q\ : std_logic;
SIGNAL \x_zz[6]~SCLR_LUT_combout\ : std_logic;
SIGNAL \x_z[7]~_Duplicate_1_q\ : std_logic;
SIGNAL \x_zz[7]~SCLR_LUT_combout\ : std_logic;
SIGNAL \x_z[8]~_Duplicate_1_q\ : std_logic;
SIGNAL \x_zz[8]~SCLR_LUT_combout\ : std_logic;
SIGNAL \x_z[9]~_Duplicate_1_q\ : std_logic;
SIGNAL \x_zz[9]~SCLR_LUT_combout\ : std_logic;
SIGNAL \x_z[10]~_Duplicate_1_q\ : std_logic;
SIGNAL \x_zz[10]~SCLR_LUT_combout\ : std_logic;
SIGNAL \x_z[11]~_Duplicate_1_q\ : std_logic;
SIGNAL \x_zz[11]~SCLR_LUT_combout\ : std_logic;
SIGNAL \x_z[12]~_Duplicate_1_q\ : std_logic;
SIGNAL \x_zz[12]~SCLR_LUT_combout\ : std_logic;
SIGNAL \x_z[13]~_Duplicate_1_q\ : std_logic;
SIGNAL \x_zz[13]~SCLR_LUT_combout\ : std_logic;
SIGNAL \x_z[14]~_Duplicate_1_q\ : std_logic;
SIGNAL \x_zz[14]~SCLR_LUT_combout\ : std_logic;
SIGNAL \x_z[15]~_Duplicate_1_q\ : std_logic;
SIGNAL \x_zz[15]~SCLR_LUT_combout\ : std_logic;
SIGNAL \x_z[16]~_Duplicate_2_q\ : std_logic;
SIGNAL \x_zz[16]~SCLR_LUT_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \Mult3~108\ : std_logic;
SIGNAL \Mult3~106\ : std_logic;
SIGNAL \Mult3~105\ : std_logic;
SIGNAL \Mult3~104\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \Mult3~101\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \Mult3~100\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Mult3~99\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Mult3~98\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Mult3~97\ : std_logic;
SIGNAL \Mult3~96\ : std_logic;
SIGNAL \Mult3~455\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Mult3~454\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Mult3~95\ : std_logic;
SIGNAL \Mult3~453\ : std_logic;
SIGNAL \Mult3~94\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Mult3~93\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Mult3~452\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Mult3~451\ : std_logic;
SIGNAL \Mult3~92\ : std_logic;
SIGNAL \Mult3~450\ : std_logic;
SIGNAL \Mult3~91\ : std_logic;
SIGNAL \Mult3~90\ : std_logic;
SIGNAL \Mult3~449\ : std_logic;
SIGNAL \Mult3~89\ : std_logic;
SIGNAL \Mult3~448\ : std_logic;
SIGNAL \Mult3~88\ : std_logic;
SIGNAL \Mult3~447\ : std_logic;
SIGNAL \Mult3~87\ : std_logic;
SIGNAL \Mult3~446\ : std_logic;
SIGNAL \Mult3~86\ : std_logic;
SIGNAL \Mult3~445\ : std_logic;
SIGNAL \Mult3~444\ : std_logic;
SIGNAL \Mult3~85\ : std_logic;
SIGNAL \Mult3~84\ : std_logic;
SIGNAL \Mult3~443\ : std_logic;
SIGNAL \Mult3~442\ : std_logic;
SIGNAL \Mult3~83\ : std_logic;
SIGNAL \Mult3~82\ : std_logic;
SIGNAL \Mult3~441\ : std_logic;
SIGNAL \Mult3~440\ : std_logic;
SIGNAL \Mult3~81\ : std_logic;
SIGNAL \Mult3~439\ : std_logic;
SIGNAL \Mult3~80_resulta\ : std_logic;
SIGNAL \Mult3~800_cout\ : std_logic;
SIGNAL \Mult3~801\ : std_logic;
SIGNAL \Mult3~796_cout\ : std_logic;
SIGNAL \Mult3~797\ : std_logic;
SIGNAL \Mult3~792_cout\ : std_logic;
SIGNAL \Mult3~793\ : std_logic;
SIGNAL \Mult3~788_cout\ : std_logic;
SIGNAL \Mult3~789\ : std_logic;
SIGNAL \Mult3~784_cout\ : std_logic;
SIGNAL \Mult3~785\ : std_logic;
SIGNAL \Mult3~780_cout\ : std_logic;
SIGNAL \Mult3~781\ : std_logic;
SIGNAL \Mult3~776_cout\ : std_logic;
SIGNAL \Mult3~777\ : std_logic;
SIGNAL \Mult3~772_cout\ : std_logic;
SIGNAL \Mult3~773\ : std_logic;
SIGNAL \Mult3~768_cout\ : std_logic;
SIGNAL \Mult3~769\ : std_logic;
SIGNAL \Mult3~764_cout\ : std_logic;
SIGNAL \Mult3~765\ : std_logic;
SIGNAL \Mult3~760_cout\ : std_logic;
SIGNAL \Mult3~761\ : std_logic;
SIGNAL \Mult3~756_cout\ : std_logic;
SIGNAL \Mult3~757\ : std_logic;
SIGNAL \Mult3~2\ : std_logic;
SIGNAL \Mult3~3\ : std_logic;
SIGNAL \Mult3~6\ : std_logic;
SIGNAL \Mult3~7\ : std_logic;
SIGNAL \Mult3~10\ : std_logic;
SIGNAL \Mult3~11\ : std_logic;
SIGNAL \Mult3~14\ : std_logic;
SIGNAL \Mult3~15\ : std_logic;
SIGNAL \Mult3~18\ : std_logic;
SIGNAL \Mult3~19\ : std_logic;
SIGNAL \Mult3~22\ : std_logic;
SIGNAL \Mult3~23\ : std_logic;
SIGNAL \Mult3~26\ : std_logic;
SIGNAL \Mult3~27\ : std_logic;
SIGNAL \Mult3~30\ : std_logic;
SIGNAL \Mult3~31\ : std_logic;
SIGNAL \Mult3~34\ : std_logic;
SIGNAL \Mult3~35\ : std_logic;
SIGNAL \Mult3~38\ : std_logic;
SIGNAL \Mult3~39\ : std_logic;
SIGNAL \Mult3~42\ : std_logic;
SIGNAL \Mult3~43\ : std_logic;
SIGNAL \Mult3~46\ : std_logic;
SIGNAL \Mult3~47\ : std_logic;
SIGNAL \Mult3~50\ : std_logic;
SIGNAL \Mult3~51\ : std_logic;
SIGNAL \Mult3~54\ : std_logic;
SIGNAL \Mult3~55\ : std_logic;
SIGNAL \Mult3~58\ : std_logic;
SIGNAL \Mult3~59\ : std_logic;
SIGNAL \Mult3~62\ : std_logic;
SIGNAL \Mult3~63\ : std_logic;
SIGNAL \Mult3~66\ : std_logic;
SIGNAL \Mult3~67\ : std_logic;
SIGNAL \Mult3~69_sumout\ : std_logic;
SIGNAL \Mult3~65_sumout\ : std_logic;
SIGNAL \Mult4~107\ : std_logic;
SIGNAL \Mult3~57_sumout\ : std_logic;
SIGNAL \Mult3~53_sumout\ : std_logic;
SIGNAL \Mult3~49_sumout\ : std_logic;
SIGNAL \Mult4~103\ : std_logic;
SIGNAL \Mult4~102\ : std_logic;
SIGNAL \Mult3~37_sumout\ : std_logic;
SIGNAL \Mult4~100\ : std_logic;
SIGNAL \Mult3~29_sumout\ : std_logic;
SIGNAL \Mult4~98\ : std_logic;
SIGNAL \Mult3~25_sumout\ : std_logic;
SIGNAL \Mult3~21_sumout\ : std_logic;
SIGNAL \Mult4~455\ : std_logic;
SIGNAL \Mult3~17_sumout\ : std_logic;
SIGNAL \Mult4~95\ : std_logic;
SIGNAL \Mult3~13_sumout\ : std_logic;
SIGNAL \Mult4~453\ : std_logic;
SIGNAL \Mult3~9_sumout\ : std_logic;
SIGNAL \Mult4~452\ : std_logic;
SIGNAL \Mult3~5_sumout\ : std_logic;
SIGNAL \Mult3~1_sumout\ : std_logic;
SIGNAL \Mult4~92\ : std_logic;
SIGNAL \Mult4~91\ : std_logic;
SIGNAL \Mult4~450\ : std_logic;
SIGNAL \Mult4~449\ : std_logic;
SIGNAL \Mult4~90\ : std_logic;
SIGNAL \Mult4~89\ : std_logic;
SIGNAL \Mult4~448\ : std_logic;
SIGNAL \Mult4~447\ : std_logic;
SIGNAL \Mult4~88\ : std_logic;
SIGNAL \Mult4~446\ : std_logic;
SIGNAL \Mult4~87\ : std_logic;
SIGNAL \Mult4~86\ : std_logic;
SIGNAL \Mult4~445\ : std_logic;
SIGNAL \Mult4~85\ : std_logic;
SIGNAL \Mult4~444\ : std_logic;
SIGNAL \Mult4~443\ : std_logic;
SIGNAL \Mult4~84\ : std_logic;
SIGNAL \Mult4~442\ : std_logic;
SIGNAL \Mult4~83\ : std_logic;
SIGNAL \Mult4~441\ : std_logic;
SIGNAL \Mult4~82\ : std_logic;
SIGNAL \Mult4~81\ : std_logic;
SIGNAL \Mult4~440\ : std_logic;
SIGNAL \Mult4~80_resulta\ : std_logic;
SIGNAL \Mult4~439\ : std_logic;
SIGNAL \Mult4~800_cout\ : std_logic;
SIGNAL \Mult4~801\ : std_logic;
SIGNAL \Mult4~796_cout\ : std_logic;
SIGNAL \Mult4~797\ : std_logic;
SIGNAL \Mult4~792_cout\ : std_logic;
SIGNAL \Mult4~793\ : std_logic;
SIGNAL \Mult4~788_cout\ : std_logic;
SIGNAL \Mult4~789\ : std_logic;
SIGNAL \Mult4~784_cout\ : std_logic;
SIGNAL \Mult4~785\ : std_logic;
SIGNAL \Mult4~780_cout\ : std_logic;
SIGNAL \Mult4~781\ : std_logic;
SIGNAL \Mult4~776_cout\ : std_logic;
SIGNAL \Mult4~777\ : std_logic;
SIGNAL \Mult4~772_cout\ : std_logic;
SIGNAL \Mult4~773\ : std_logic;
SIGNAL \Mult4~768_cout\ : std_logic;
SIGNAL \Mult4~769\ : std_logic;
SIGNAL \Mult4~764_cout\ : std_logic;
SIGNAL \Mult4~765\ : std_logic;
SIGNAL \Mult4~760_cout\ : std_logic;
SIGNAL \Mult4~761\ : std_logic;
SIGNAL \Mult4~756_cout\ : std_logic;
SIGNAL \Mult4~757\ : std_logic;
SIGNAL \Mult4~2\ : std_logic;
SIGNAL \Mult4~3\ : std_logic;
SIGNAL \Mult4~6\ : std_logic;
SIGNAL \Mult4~7\ : std_logic;
SIGNAL \Mult4~10\ : std_logic;
SIGNAL \Mult4~11\ : std_logic;
SIGNAL \Mult4~14\ : std_logic;
SIGNAL \Mult4~15\ : std_logic;
SIGNAL \Mult4~18\ : std_logic;
SIGNAL \Mult4~19\ : std_logic;
SIGNAL \Mult4~22\ : std_logic;
SIGNAL \Mult4~23\ : std_logic;
SIGNAL \Mult4~26\ : std_logic;
SIGNAL \Mult4~27\ : std_logic;
SIGNAL \Mult4~30\ : std_logic;
SIGNAL \Mult4~31\ : std_logic;
SIGNAL \Mult4~34\ : std_logic;
SIGNAL \Mult4~35\ : std_logic;
SIGNAL \Mult4~38\ : std_logic;
SIGNAL \Mult4~39\ : std_logic;
SIGNAL \Mult4~42\ : std_logic;
SIGNAL \Mult4~43\ : std_logic;
SIGNAL \Mult4~46\ : std_logic;
SIGNAL \Mult4~47\ : std_logic;
SIGNAL \Mult4~50\ : std_logic;
SIGNAL \Mult4~51\ : std_logic;
SIGNAL \Mult4~54\ : std_logic;
SIGNAL \Mult4~55\ : std_logic;
SIGNAL \Mult4~58\ : std_logic;
SIGNAL \Mult4~59\ : std_logic;
SIGNAL \Mult4~62\ : std_logic;
SIGNAL \Mult4~63\ : std_logic;
SIGNAL \Mult4~66\ : std_logic;
SIGNAL \Mult4~67\ : std_logic;
SIGNAL \Mult4~69_sumout\ : std_logic;
SIGNAL \y_z[17]~SCLR_LUT_combout\ : std_logic;
SIGNAL \y_z[17]~_Duplicate_2_q\ : std_logic;
SIGNAL \y_zz[17]~SCLR_LUT_combout\ : std_logic;
SIGNAL \Mult4~108\ : std_logic;
SIGNAL \Mult4~65_sumout\ : std_logic;
SIGNAL \y_z[16]~SCLR_LUT_combout\ : std_logic;
SIGNAL \Mult3~107\ : std_logic;
SIGNAL \Mult3~61_sumout\ : std_logic;
SIGNAL \Mult4~61_sumout\ : std_logic;
SIGNAL \y_z[15]~SCLR_LUT_combout\ : std_logic;
SIGNAL \y_z[15]~_Duplicate_2_q\ : std_logic;
SIGNAL \y_zz[15]~SCLR_LUT_combout\ : std_logic;
SIGNAL \Mult4~106\ : std_logic;
SIGNAL \Mult4~57_sumout\ : std_logic;
SIGNAL \y_z[14]~SCLR_LUT_combout\ : std_logic;
SIGNAL \y_z[14]~_Duplicate_2_q\ : std_logic;
SIGNAL \y_zz[14]~SCLR_LUT_combout\ : std_logic;
SIGNAL \Mult4~105\ : std_logic;
SIGNAL \Mult4~53_sumout\ : std_logic;
SIGNAL \y_z[13]~SCLR_LUT_combout\ : std_logic;
SIGNAL \y_z[13]~_Duplicate_2_q\ : std_logic;
SIGNAL \y_zz[13]~SCLR_LUT_combout\ : std_logic;
SIGNAL \Mult4~104\ : std_logic;
SIGNAL \Mult4~49_sumout\ : std_logic;
SIGNAL \y_z[12]~SCLR_LUT_combout\ : std_logic;
SIGNAL \Mult3~103\ : std_logic;
SIGNAL \Mult3~45_sumout\ : std_logic;
SIGNAL \Mult4~45_sumout\ : std_logic;
SIGNAL \y_z[11]~SCLR_LUT_combout\ : std_logic;
SIGNAL \Mult3~102\ : std_logic;
SIGNAL \Mult3~41_sumout\ : std_logic;
SIGNAL \Mult4~41_sumout\ : std_logic;
SIGNAL \y_z[10]~SCLR_LUT_combout\ : std_logic;
SIGNAL \y_z[10]~_Duplicate_2_q\ : std_logic;
SIGNAL \y_zz[10]~SCLR_LUT_combout\ : std_logic;
SIGNAL \Mult4~101\ : std_logic;
SIGNAL \Mult4~37_sumout\ : std_logic;
SIGNAL \y_z[9]~SCLR_LUT_combout\ : std_logic;
SIGNAL \Mult3~456\ : std_logic;
SIGNAL \Mult3~33_sumout\ : std_logic;
SIGNAL \Mult4~33_sumout\ : std_logic;
SIGNAL \y_z[8]~SCLR_LUT_combout\ : std_logic;
SIGNAL \y_z[8]~_Duplicate_2_q\ : std_logic;
SIGNAL \y_zz[8]~SCLR_LUT_combout\ : std_logic;
SIGNAL \Mult4~99\ : std_logic;
SIGNAL \Mult4~29_sumout\ : std_logic;
SIGNAL \y_z[7]~SCLR_LUT_combout\ : std_logic;
SIGNAL \y_z[7]~_Duplicate_2_q\ : std_logic;
SIGNAL \y_zz[7]~SCLR_LUT_combout\ : std_logic;
SIGNAL \Mult4~456\ : std_logic;
SIGNAL \Mult4~25_sumout\ : std_logic;
SIGNAL \y_z[6]~SCLR_LUT_combout\ : std_logic;
SIGNAL \y_z[6]~_Duplicate_2_q\ : std_logic;
SIGNAL \y_zz[6]~SCLR_LUT_combout\ : std_logic;
SIGNAL \Mult4~97\ : std_logic;
SIGNAL \Mult4~21_sumout\ : std_logic;
SIGNAL \y_z[5]~SCLR_LUT_combout\ : std_logic;
SIGNAL \y_z[5]~_Duplicate_2_q\ : std_logic;
SIGNAL \y_zz[5]~SCLR_LUT_combout\ : std_logic;
SIGNAL \Mult4~96\ : std_logic;
SIGNAL \Mult4~17_sumout\ : std_logic;
SIGNAL \y_z[4]~SCLR_LUT_combout\ : std_logic;
SIGNAL \y_z[4]~_Duplicate_2_q\ : std_logic;
SIGNAL \y_zz[4]~SCLR_LUT_combout\ : std_logic;
SIGNAL \Mult4~454\ : std_logic;
SIGNAL \Mult4~13_sumout\ : std_logic;
SIGNAL \y_z[3]~SCLR_LUT_combout\ : std_logic;
SIGNAL \y_z[3]~_Duplicate_2_q\ : std_logic;
SIGNAL \y_zz[3]~SCLR_LUT_combout\ : std_logic;
SIGNAL \Mult4~94\ : std_logic;
SIGNAL \Mult4~9_sumout\ : std_logic;
SIGNAL \y_z[2]~SCLR_LUT_combout\ : std_logic;
SIGNAL \y_z[2]~_Duplicate_2_q\ : std_logic;
SIGNAL \y_zz[2]~SCLR_LUT_combout\ : std_logic;
SIGNAL \Mult4~93\ : std_logic;
SIGNAL \Mult4~5_sumout\ : std_logic;
SIGNAL \y_z[1]~SCLR_LUT_combout\ : std_logic;
SIGNAL \y_z[1]~_Duplicate_2_q\ : std_logic;
SIGNAL \y_zz[1]~SCLR_LUT_combout\ : std_logic;
SIGNAL \Mult4~451\ : std_logic;
SIGNAL \Mult4~1_sumout\ : std_logic;
SIGNAL x_z_b1 : std_logic_vector(49 DOWNTO 0);
SIGNAL x_zz_b2 : std_logic_vector(49 DOWNTO 0);
SIGNAL x_in_b0 : std_logic_vector(49 DOWNTO 0);
SIGNAL \ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult3~456\ : std_logic;
SIGNAL \ALT_INV_Mult3~455\ : std_logic;
SIGNAL \ALT_INV_Mult3~454\ : std_logic;
SIGNAL \ALT_INV_Mult3~453\ : std_logic;
SIGNAL \ALT_INV_Mult3~452\ : std_logic;
SIGNAL \ALT_INV_Mult3~451\ : std_logic;
SIGNAL \ALT_INV_Mult3~450\ : std_logic;
SIGNAL \ALT_INV_Mult3~449\ : std_logic;
SIGNAL \ALT_INV_Mult3~448\ : std_logic;
SIGNAL \ALT_INV_Mult3~447\ : std_logic;
SIGNAL \ALT_INV_Mult3~446\ : std_logic;
SIGNAL \ALT_INV_Mult3~445\ : std_logic;
SIGNAL \ALT_INV_Mult3~444\ : std_logic;
SIGNAL \ALT_INV_Mult3~443\ : std_logic;
SIGNAL \ALT_INV_Mult3~442\ : std_logic;
SIGNAL \ALT_INV_Mult3~441\ : std_logic;
SIGNAL \ALT_INV_Mult3~440\ : std_logic;
SIGNAL \ALT_INV_Mult3~439\ : std_logic;
SIGNAL \ALT_INV_Mult3~109\ : std_logic;
SIGNAL \ALT_INV_Mult3~108\ : std_logic;
SIGNAL \ALT_INV_Mult3~107\ : std_logic;
SIGNAL \ALT_INV_Mult3~106\ : std_logic;
SIGNAL \ALT_INV_Mult3~105\ : std_logic;
SIGNAL \ALT_INV_Mult3~104\ : std_logic;
SIGNAL \ALT_INV_Mult3~103\ : std_logic;
SIGNAL \ALT_INV_Mult3~102\ : std_logic;
SIGNAL \ALT_INV_Mult3~101\ : std_logic;
SIGNAL \ALT_INV_Mult3~100\ : std_logic;
SIGNAL \ALT_INV_Mult3~99\ : std_logic;
SIGNAL \ALT_INV_Mult3~98\ : std_logic;
SIGNAL \ALT_INV_Mult3~97\ : std_logic;
SIGNAL \ALT_INV_Mult3~96\ : std_logic;
SIGNAL \ALT_INV_Mult3~95\ : std_logic;
SIGNAL \ALT_INV_Mult3~94\ : std_logic;
SIGNAL \ALT_INV_Mult3~93\ : std_logic;
SIGNAL \ALT_INV_Mult3~92\ : std_logic;
SIGNAL \ALT_INV_Mult3~91\ : std_logic;
SIGNAL \ALT_INV_Mult3~90\ : std_logic;
SIGNAL \ALT_INV_Mult3~89\ : std_logic;
SIGNAL \ALT_INV_Mult3~88\ : std_logic;
SIGNAL \ALT_INV_Mult3~87\ : std_logic;
SIGNAL \ALT_INV_Mult3~86\ : std_logic;
SIGNAL \ALT_INV_Mult3~85\ : std_logic;
SIGNAL \ALT_INV_Mult3~84\ : std_logic;
SIGNAL \ALT_INV_Mult3~83\ : std_logic;
SIGNAL \ALT_INV_Mult3~82\ : std_logic;
SIGNAL \ALT_INV_Mult3~81\ : std_logic;
SIGNAL \ALT_INV_Mult3~80_resulta\ : std_logic;
SIGNAL \ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult3~69_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult3~65_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult3~61_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult3~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult3~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult3~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult3~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult3~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult3~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult3~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult3~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult3~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult3~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult3~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult3~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult3~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult3~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult4~456\ : std_logic;
SIGNAL \ALT_INV_Mult4~455\ : std_logic;
SIGNAL \ALT_INV_Mult4~454\ : std_logic;
SIGNAL \ALT_INV_Mult4~453\ : std_logic;
SIGNAL \ALT_INV_Mult4~452\ : std_logic;
SIGNAL \ALT_INV_Mult4~451\ : std_logic;
SIGNAL \ALT_INV_Mult4~450\ : std_logic;
SIGNAL \ALT_INV_Mult4~449\ : std_logic;
SIGNAL \ALT_INV_Mult4~448\ : std_logic;
SIGNAL \ALT_INV_Mult4~447\ : std_logic;
SIGNAL \ALT_INV_Mult4~446\ : std_logic;
SIGNAL \ALT_INV_Mult4~445\ : std_logic;
SIGNAL \ALT_INV_Mult4~444\ : std_logic;
SIGNAL \ALT_INV_Mult4~443\ : std_logic;
SIGNAL \ALT_INV_Mult4~442\ : std_logic;
SIGNAL \ALT_INV_Mult4~441\ : std_logic;
SIGNAL \ALT_INV_Mult4~440\ : std_logic;
SIGNAL \ALT_INV_Mult4~439\ : std_logic;
SIGNAL \ALT_INV_Mult4~109\ : std_logic;
SIGNAL \ALT_INV_Mult4~108\ : std_logic;
SIGNAL \ALT_INV_Mult4~107\ : std_logic;
SIGNAL \ALT_INV_Mult4~106\ : std_logic;
SIGNAL \ALT_INV_Mult4~105\ : std_logic;
SIGNAL \ALT_INV_Mult4~104\ : std_logic;
SIGNAL \ALT_INV_Mult4~103\ : std_logic;
SIGNAL \ALT_INV_Mult4~102\ : std_logic;
SIGNAL \ALT_INV_Mult4~101\ : std_logic;
SIGNAL \ALT_INV_Mult4~100\ : std_logic;
SIGNAL \ALT_INV_Mult4~99\ : std_logic;
SIGNAL \ALT_INV_Mult4~98\ : std_logic;
SIGNAL \ALT_INV_Mult4~97\ : std_logic;
SIGNAL \ALT_INV_Mult4~96\ : std_logic;
SIGNAL \ALT_INV_Mult4~95\ : std_logic;
SIGNAL \ALT_INV_Mult4~94\ : std_logic;
SIGNAL \ALT_INV_Mult4~93\ : std_logic;
SIGNAL \ALT_INV_Mult4~92\ : std_logic;
SIGNAL \ALT_INV_Mult4~91\ : std_logic;
SIGNAL \ALT_INV_Mult4~90\ : std_logic;
SIGNAL \ALT_INV_Mult4~89\ : std_logic;
SIGNAL \ALT_INV_Mult4~88\ : std_logic;
SIGNAL \ALT_INV_Mult4~87\ : std_logic;
SIGNAL \ALT_INV_Mult4~86\ : std_logic;
SIGNAL \ALT_INV_Mult4~85\ : std_logic;
SIGNAL \ALT_INV_Mult4~84\ : std_logic;
SIGNAL \ALT_INV_Mult4~83\ : std_logic;
SIGNAL \ALT_INV_Mult4~82\ : std_logic;
SIGNAL \ALT_INV_Mult4~81\ : std_logic;
SIGNAL \ALT_INV_Mult4~80_resulta\ : std_logic;
SIGNAL \ALT_INV_Mult3~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult4~69_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult4~65_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult4~61_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult4~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult4~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult4~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult4~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult4~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult4~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult4~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult4~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult4~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult4~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult4~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult4~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult4~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult4~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult4~1_sumout\ : std_logic;
SIGNAL \ALT_INV_x[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_x[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_x[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_x[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_rst~input_o\ : std_logic;
SIGNAL \ALT_INV_x_in[16]~_Duplicate_2_q\ : std_logic;
SIGNAL \ALT_INV_x_in[15]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_x_in[14]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_x_in[13]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_x_in[12]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_x_in[11]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_x_in[10]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_x_in[9]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_x_in[8]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_x_in[7]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_x_in[6]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_x_in[5]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_x_in[4]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_x_in[3]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_x_in[2]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_x_in[1]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_x_in[0]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_x_z[16]~_Duplicate_2_q\ : std_logic;
SIGNAL \ALT_INV_x_z[15]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_x_z[14]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_x_z[13]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_x_z[12]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_x_z[11]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_x_z[10]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_x_z[9]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_x_z[8]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_x_z[7]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_x_z[6]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_x_z[5]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_x_z[4]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_x_z[3]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_x_z[2]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_x_z[1]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_x_z[0]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALT_INV_y_z[17]~_Duplicate_2_q\ : std_logic;
SIGNAL \ALT_INV_y_z[16]~_Duplicate_2_q\ : std_logic;
SIGNAL \ALT_INV_y_z[15]~_Duplicate_2_q\ : std_logic;
SIGNAL \ALT_INV_y_z[14]~_Duplicate_2_q\ : std_logic;
SIGNAL \ALT_INV_y_z[13]~_Duplicate_2_q\ : std_logic;
SIGNAL \ALT_INV_y_z[12]~_Duplicate_2_q\ : std_logic;
SIGNAL \ALT_INV_y_z[11]~_Duplicate_2_q\ : std_logic;
SIGNAL \ALT_INV_y_z[10]~_Duplicate_2_q\ : std_logic;
SIGNAL \ALT_INV_y_z[9]~_Duplicate_2_q\ : std_logic;
SIGNAL \ALT_INV_y_z[8]~_Duplicate_2_q\ : std_logic;
SIGNAL \ALT_INV_y_z[7]~_Duplicate_2_q\ : std_logic;
SIGNAL \ALT_INV_y_z[6]~_Duplicate_2_q\ : std_logic;
SIGNAL \ALT_INV_y_z[5]~_Duplicate_2_q\ : std_logic;
SIGNAL \ALT_INV_y_z[4]~_Duplicate_2_q\ : std_logic;
SIGNAL \ALT_INV_y_z[3]~_Duplicate_2_q\ : std_logic;
SIGNAL \ALT_INV_y_z[2]~_Duplicate_2_q\ : std_logic;
SIGNAL \ALT_INV_y_z[1]~_Duplicate_2_q\ : std_logic;
SIGNAL \ALT_INV_y_z[0]~_Duplicate_2_q\ : std_logic;
SIGNAL ALT_INV_x_in_b0 : std_logic_vector(38 DOWNTO 30);
SIGNAL ALT_INV_x_zz_b2 : std_logic_vector(38 DOWNTO 30);
SIGNAL ALT_INV_x_z_b1 : std_logic_vector(39 DOWNTO 30);
SIGNAL \ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~17_sumout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_x <= x;
y <= ww_y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Mult4~80_ACLR_bus\ <= (gnd & gnd);

\Mult4~80_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\Mult4~80_ENA_bus\ <= (vcc & vcc & vcc);

\Mult4~80_AX_bus\ <= (vcc & vcc & vcc & gnd & vcc & gnd & gnd & vcc & gnd & vcc & gnd & vcc);

\Mult4~80_AY_bus\ <= (\y_zz[17]~SCLR_LUT_combout\ & \y_zz[17]~SCLR_LUT_combout\ & \y_zz[16]~SCLR_LUT_combout\ & \y_zz[15]~SCLR_LUT_combout\ & \y_zz[14]~SCLR_LUT_combout\ & \y_zz[13]~SCLR_LUT_combout\ & \y_zz[12]~SCLR_LUT_combout\ & 
\y_zz[11]~SCLR_LUT_combout\ & \y_zz[10]~SCLR_LUT_combout\ & \y_zz[9]~SCLR_LUT_combout\ & \y_zz[8]~SCLR_LUT_combout\ & \y_zz[7]~SCLR_LUT_combout\ & \y_zz[6]~SCLR_LUT_combout\ & \y_zz[5]~SCLR_LUT_combout\ & \y_zz[4]~SCLR_LUT_combout\ & 
\y_zz[3]~SCLR_LUT_combout\ & \y_zz[2]~SCLR_LUT_combout\ & \y_zz[1]~SCLR_LUT_combout\ & \y_zz[0]~SCLR_LUT_combout\);

\Mult4~80_resulta\ <= \Mult4~80_RESULTA_bus\(0);
\Mult4~81\ <= \Mult4~80_RESULTA_bus\(1);
\Mult4~82\ <= \Mult4~80_RESULTA_bus\(2);
\Mult4~83\ <= \Mult4~80_RESULTA_bus\(3);
\Mult4~84\ <= \Mult4~80_RESULTA_bus\(4);
\Mult4~85\ <= \Mult4~80_RESULTA_bus\(5);
\Mult4~86\ <= \Mult4~80_RESULTA_bus\(6);
\Mult4~87\ <= \Mult4~80_RESULTA_bus\(7);
\Mult4~88\ <= \Mult4~80_RESULTA_bus\(8);
\Mult4~89\ <= \Mult4~80_RESULTA_bus\(9);
\Mult4~90\ <= \Mult4~80_RESULTA_bus\(10);
\Mult4~91\ <= \Mult4~80_RESULTA_bus\(11);
\Mult4~92\ <= \Mult4~80_RESULTA_bus\(12);
\Mult4~93\ <= \Mult4~80_RESULTA_bus\(13);
\Mult4~94\ <= \Mult4~80_RESULTA_bus\(14);
\Mult4~95\ <= \Mult4~80_RESULTA_bus\(15);
\Mult4~96\ <= \Mult4~80_RESULTA_bus\(16);
\Mult4~97\ <= \Mult4~80_RESULTA_bus\(17);
\Mult4~98\ <= \Mult4~80_RESULTA_bus\(18);
\Mult4~99\ <= \Mult4~80_RESULTA_bus\(19);
\Mult4~100\ <= \Mult4~80_RESULTA_bus\(20);
\Mult4~101\ <= \Mult4~80_RESULTA_bus\(21);
\Mult4~102\ <= \Mult4~80_RESULTA_bus\(22);
\Mult4~103\ <= \Mult4~80_RESULTA_bus\(23);
\Mult4~104\ <= \Mult4~80_RESULTA_bus\(24);
\Mult4~105\ <= \Mult4~80_RESULTA_bus\(25);
\Mult4~106\ <= \Mult4~80_RESULTA_bus\(26);
\Mult4~107\ <= \Mult4~80_RESULTA_bus\(27);
\Mult4~108\ <= \Mult4~80_RESULTA_bus\(28);
\Mult4~109\ <= \Mult4~80_RESULTA_bus\(29);
\Mult4~110\ <= \Mult4~80_RESULTA_bus\(30);
\Mult4~111\ <= \Mult4~80_RESULTA_bus\(31);
\Mult4~112\ <= \Mult4~80_RESULTA_bus\(32);
\Mult4~113\ <= \Mult4~80_RESULTA_bus\(33);
\Mult4~114\ <= \Mult4~80_RESULTA_bus\(34);
\Mult4~115\ <= \Mult4~80_RESULTA_bus\(35);
\Mult4~116\ <= \Mult4~80_RESULTA_bus\(36);
\Mult4~117\ <= \Mult4~80_RESULTA_bus\(37);
\Mult4~118\ <= \Mult4~80_RESULTA_bus\(38);
\Mult4~119\ <= \Mult4~80_RESULTA_bus\(39);
\Mult4~120\ <= \Mult4~80_RESULTA_bus\(40);
\Mult4~121\ <= \Mult4~80_RESULTA_bus\(41);
\Mult4~122\ <= \Mult4~80_RESULTA_bus\(42);
\Mult4~123\ <= \Mult4~80_RESULTA_bus\(43);
\Mult4~124\ <= \Mult4~80_RESULTA_bus\(44);
\Mult4~125\ <= \Mult4~80_RESULTA_bus\(45);
\Mult4~126\ <= \Mult4~80_RESULTA_bus\(46);
\Mult4~127\ <= \Mult4~80_RESULTA_bus\(47);
\Mult4~128\ <= \Mult4~80_RESULTA_bus\(48);
\Mult4~129\ <= \Mult4~80_RESULTA_bus\(49);
\Mult4~130\ <= \Mult4~80_RESULTA_bus\(50);
\Mult4~131\ <= \Mult4~80_RESULTA_bus\(51);
\Mult4~132\ <= \Mult4~80_RESULTA_bus\(52);
\Mult4~133\ <= \Mult4~80_RESULTA_bus\(53);
\Mult4~134\ <= \Mult4~80_RESULTA_bus\(54);
\Mult4~135\ <= \Mult4~80_RESULTA_bus\(55);
\Mult4~136\ <= \Mult4~80_RESULTA_bus\(56);
\Mult4~137\ <= \Mult4~80_RESULTA_bus\(57);
\Mult4~138\ <= \Mult4~80_RESULTA_bus\(58);
\Mult4~139\ <= \Mult4~80_RESULTA_bus\(59);
\Mult4~140\ <= \Mult4~80_RESULTA_bus\(60);
\Mult4~141\ <= \Mult4~80_RESULTA_bus\(61);
\Mult4~142\ <= \Mult4~80_RESULTA_bus\(62);
\Mult4~143\ <= \Mult4~80_RESULTA_bus\(63);

\Mult4~421_ACLR_bus\ <= (gnd & gnd);

\Mult4~421_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\Mult4~421_ENA_bus\ <= (vcc & vcc & vcc);

\Mult4~421_AX_bus\ <= (\y_zz[17]~SCLR_LUT_combout\ & \y_zz[16]~SCLR_LUT_combout\ & \y_zz[15]~SCLR_LUT_combout\ & \y_zz[14]~SCLR_LUT_combout\ & \y_zz[13]~SCLR_LUT_combout\ & \y_zz[12]~SCLR_LUT_combout\ & \y_zz[11]~SCLR_LUT_combout\ & 
\y_zz[10]~SCLR_LUT_combout\ & \y_zz[9]~SCLR_LUT_combout\ & \y_zz[8]~SCLR_LUT_combout\ & \y_zz[7]~SCLR_LUT_combout\ & \y_zz[6]~SCLR_LUT_combout\ & \y_zz[5]~SCLR_LUT_combout\ & \y_zz[4]~SCLR_LUT_combout\ & \y_zz[3]~SCLR_LUT_combout\ & 
\y_zz[2]~SCLR_LUT_combout\ & \y_zz[1]~SCLR_LUT_combout\ & \y_zz[0]~SCLR_LUT_combout\);

\Mult4~421_AY_bus\ <= (vcc & vcc & vcc & gnd & gnd & vcc & gnd & gnd & gnd & gnd & gnd & vcc & vcc & vcc & gnd & vcc & gnd & vcc);

\Mult4~421_resulta\ <= \Mult4~421_RESULTA_bus\(0);
\Mult4~422\ <= \Mult4~421_RESULTA_bus\(1);
\Mult4~423\ <= \Mult4~421_RESULTA_bus\(2);
\Mult4~424\ <= \Mult4~421_RESULTA_bus\(3);
\Mult4~425\ <= \Mult4~421_RESULTA_bus\(4);
\Mult4~426\ <= \Mult4~421_RESULTA_bus\(5);
\Mult4~427\ <= \Mult4~421_RESULTA_bus\(6);
\Mult4~428\ <= \Mult4~421_RESULTA_bus\(7);
\Mult4~429\ <= \Mult4~421_RESULTA_bus\(8);
\Mult4~430\ <= \Mult4~421_RESULTA_bus\(9);
\Mult4~431\ <= \Mult4~421_RESULTA_bus\(10);
\Mult4~432\ <= \Mult4~421_RESULTA_bus\(11);
\Mult4~433\ <= \Mult4~421_RESULTA_bus\(12);
\Mult4~434\ <= \Mult4~421_RESULTA_bus\(13);
\Mult4~435\ <= \Mult4~421_RESULTA_bus\(14);
\Mult4~436\ <= \Mult4~421_RESULTA_bus\(15);
\Mult4~437\ <= \Mult4~421_RESULTA_bus\(16);
\Mult4~438\ <= \Mult4~421_RESULTA_bus\(17);
\Mult4~439\ <= \Mult4~421_RESULTA_bus\(18);
\Mult4~440\ <= \Mult4~421_RESULTA_bus\(19);
\Mult4~441\ <= \Mult4~421_RESULTA_bus\(20);
\Mult4~442\ <= \Mult4~421_RESULTA_bus\(21);
\Mult4~443\ <= \Mult4~421_RESULTA_bus\(22);
\Mult4~444\ <= \Mult4~421_RESULTA_bus\(23);
\Mult4~445\ <= \Mult4~421_RESULTA_bus\(24);
\Mult4~446\ <= \Mult4~421_RESULTA_bus\(25);
\Mult4~447\ <= \Mult4~421_RESULTA_bus\(26);
\Mult4~448\ <= \Mult4~421_RESULTA_bus\(27);
\Mult4~449\ <= \Mult4~421_RESULTA_bus\(28);
\Mult4~450\ <= \Mult4~421_RESULTA_bus\(29);
\Mult4~451\ <= \Mult4~421_RESULTA_bus\(30);
\Mult4~452\ <= \Mult4~421_RESULTA_bus\(31);
\Mult4~453\ <= \Mult4~421_RESULTA_bus\(32);
\Mult4~454\ <= \Mult4~421_RESULTA_bus\(33);
\Mult4~455\ <= \Mult4~421_RESULTA_bus\(34);
\Mult4~456\ <= \Mult4~421_RESULTA_bus\(35);
\Mult4~457\ <= \Mult4~421_RESULTA_bus\(36);
\Mult4~458\ <= \Mult4~421_RESULTA_bus\(37);
\Mult4~459\ <= \Mult4~421_RESULTA_bus\(38);
\Mult4~460\ <= \Mult4~421_RESULTA_bus\(39);
\Mult4~461\ <= \Mult4~421_RESULTA_bus\(40);
\Mult4~462\ <= \Mult4~421_RESULTA_bus\(41);
\Mult4~463\ <= \Mult4~421_RESULTA_bus\(42);
\Mult4~464\ <= \Mult4~421_RESULTA_bus\(43);
\Mult4~465\ <= \Mult4~421_RESULTA_bus\(44);
\Mult4~466\ <= \Mult4~421_RESULTA_bus\(45);
\Mult4~467\ <= \Mult4~421_RESULTA_bus\(46);
\Mult4~468\ <= \Mult4~421_RESULTA_bus\(47);
\Mult4~469\ <= \Mult4~421_RESULTA_bus\(48);
\Mult4~470\ <= \Mult4~421_RESULTA_bus\(49);
\Mult4~471\ <= \Mult4~421_RESULTA_bus\(50);
\Mult4~472\ <= \Mult4~421_RESULTA_bus\(51);
\Mult4~473\ <= \Mult4~421_RESULTA_bus\(52);
\Mult4~474\ <= \Mult4~421_RESULTA_bus\(53);
\Mult4~475\ <= \Mult4~421_RESULTA_bus\(54);
\Mult4~476\ <= \Mult4~421_RESULTA_bus\(55);
\Mult4~477\ <= \Mult4~421_RESULTA_bus\(56);
\Mult4~478\ <= \Mult4~421_RESULTA_bus\(57);
\Mult4~479\ <= \Mult4~421_RESULTA_bus\(58);
\Mult4~480\ <= \Mult4~421_RESULTA_bus\(59);
\Mult4~481\ <= \Mult4~421_RESULTA_bus\(60);
\Mult4~482\ <= \Mult4~421_RESULTA_bus\(61);
\Mult4~483\ <= \Mult4~421_RESULTA_bus\(62);
\Mult4~484\ <= \Mult4~421_RESULTA_bus\(63);

\Mult3~80_ACLR_bus\ <= (gnd & gnd);

\Mult3~80_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\Mult3~80_ENA_bus\ <= (vcc & vcc & vcc);

\Mult3~80_AX_bus\ <= (vcc & vcc & vcc & vcc & vcc & gnd & gnd & gnd & gnd & vcc & gnd & vcc & vcc & vcc & vcc & gnd & vcc & gnd);

\Mult3~80_AY_bus\ <= (\y_z[17]~SCLR_LUT_combout\ & \y_z[17]~SCLR_LUT_combout\ & \y_z[16]~SCLR_LUT_combout\ & \y_z[15]~SCLR_LUT_combout\ & \y_z[14]~SCLR_LUT_combout\ & \y_z[13]~SCLR_LUT_combout\ & \y_z[12]~SCLR_LUT_combout\ & \y_z[11]~SCLR_LUT_combout\ & 
\y_z[10]~SCLR_LUT_combout\ & \y_z[9]~SCLR_LUT_combout\ & \y_z[8]~SCLR_LUT_combout\ & \y_z[7]~SCLR_LUT_combout\ & \y_z[6]~SCLR_LUT_combout\ & \y_z[5]~SCLR_LUT_combout\ & \y_z[4]~SCLR_LUT_combout\ & \y_z[3]~SCLR_LUT_combout\ & \y_z[2]~SCLR_LUT_combout\ & 
\y_z[1]~SCLR_LUT_combout\ & \y_z[0]~SCLR_LUT_combout\);

\Mult3~80_resulta\ <= \Mult3~80_RESULTA_bus\(0);
\Mult3~81\ <= \Mult3~80_RESULTA_bus\(1);
\Mult3~82\ <= \Mult3~80_RESULTA_bus\(2);
\Mult3~83\ <= \Mult3~80_RESULTA_bus\(3);
\Mult3~84\ <= \Mult3~80_RESULTA_bus\(4);
\Mult3~85\ <= \Mult3~80_RESULTA_bus\(5);
\Mult3~86\ <= \Mult3~80_RESULTA_bus\(6);
\Mult3~87\ <= \Mult3~80_RESULTA_bus\(7);
\Mult3~88\ <= \Mult3~80_RESULTA_bus\(8);
\Mult3~89\ <= \Mult3~80_RESULTA_bus\(9);
\Mult3~90\ <= \Mult3~80_RESULTA_bus\(10);
\Mult3~91\ <= \Mult3~80_RESULTA_bus\(11);
\Mult3~92\ <= \Mult3~80_RESULTA_bus\(12);
\Mult3~93\ <= \Mult3~80_RESULTA_bus\(13);
\Mult3~94\ <= \Mult3~80_RESULTA_bus\(14);
\Mult3~95\ <= \Mult3~80_RESULTA_bus\(15);
\Mult3~96\ <= \Mult3~80_RESULTA_bus\(16);
\Mult3~97\ <= \Mult3~80_RESULTA_bus\(17);
\Mult3~98\ <= \Mult3~80_RESULTA_bus\(18);
\Mult3~99\ <= \Mult3~80_RESULTA_bus\(19);
\Mult3~100\ <= \Mult3~80_RESULTA_bus\(20);
\Mult3~101\ <= \Mult3~80_RESULTA_bus\(21);
\Mult3~102\ <= \Mult3~80_RESULTA_bus\(22);
\Mult3~103\ <= \Mult3~80_RESULTA_bus\(23);
\Mult3~104\ <= \Mult3~80_RESULTA_bus\(24);
\Mult3~105\ <= \Mult3~80_RESULTA_bus\(25);
\Mult3~106\ <= \Mult3~80_RESULTA_bus\(26);
\Mult3~107\ <= \Mult3~80_RESULTA_bus\(27);
\Mult3~108\ <= \Mult3~80_RESULTA_bus\(28);
\Mult3~109\ <= \Mult3~80_RESULTA_bus\(29);
\Mult3~110\ <= \Mult3~80_RESULTA_bus\(30);
\Mult3~111\ <= \Mult3~80_RESULTA_bus\(31);
\Mult3~112\ <= \Mult3~80_RESULTA_bus\(32);
\Mult3~113\ <= \Mult3~80_RESULTA_bus\(33);
\Mult3~114\ <= \Mult3~80_RESULTA_bus\(34);
\Mult3~115\ <= \Mult3~80_RESULTA_bus\(35);
\Mult3~116\ <= \Mult3~80_RESULTA_bus\(36);
\Mult3~117\ <= \Mult3~80_RESULTA_bus\(37);
\Mult3~118\ <= \Mult3~80_RESULTA_bus\(38);
\Mult3~119\ <= \Mult3~80_RESULTA_bus\(39);
\Mult3~120\ <= \Mult3~80_RESULTA_bus\(40);
\Mult3~121\ <= \Mult3~80_RESULTA_bus\(41);
\Mult3~122\ <= \Mult3~80_RESULTA_bus\(42);
\Mult3~123\ <= \Mult3~80_RESULTA_bus\(43);
\Mult3~124\ <= \Mult3~80_RESULTA_bus\(44);
\Mult3~125\ <= \Mult3~80_RESULTA_bus\(45);
\Mult3~126\ <= \Mult3~80_RESULTA_bus\(46);
\Mult3~127\ <= \Mult3~80_RESULTA_bus\(47);
\Mult3~128\ <= \Mult3~80_RESULTA_bus\(48);
\Mult3~129\ <= \Mult3~80_RESULTA_bus\(49);
\Mult3~130\ <= \Mult3~80_RESULTA_bus\(50);
\Mult3~131\ <= \Mult3~80_RESULTA_bus\(51);
\Mult3~132\ <= \Mult3~80_RESULTA_bus\(52);
\Mult3~133\ <= \Mult3~80_RESULTA_bus\(53);
\Mult3~134\ <= \Mult3~80_RESULTA_bus\(54);
\Mult3~135\ <= \Mult3~80_RESULTA_bus\(55);
\Mult3~136\ <= \Mult3~80_RESULTA_bus\(56);
\Mult3~137\ <= \Mult3~80_RESULTA_bus\(57);
\Mult3~138\ <= \Mult3~80_RESULTA_bus\(58);
\Mult3~139\ <= \Mult3~80_RESULTA_bus\(59);
\Mult3~140\ <= \Mult3~80_RESULTA_bus\(60);
\Mult3~141\ <= \Mult3~80_RESULTA_bus\(61);
\Mult3~142\ <= \Mult3~80_RESULTA_bus\(62);
\Mult3~143\ <= \Mult3~80_RESULTA_bus\(63);

\Mult3~421_ACLR_bus\ <= (gnd & gnd);

\Mult3~421_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\Mult3~421_ENA_bus\ <= (vcc & vcc & vcc);

\Mult3~421_AX_bus\ <= (\y_z[17]~SCLR_LUT_combout\ & \y_z[16]~SCLR_LUT_combout\ & \y_z[15]~SCLR_LUT_combout\ & \y_z[14]~SCLR_LUT_combout\ & \y_z[13]~SCLR_LUT_combout\ & \y_z[12]~SCLR_LUT_combout\ & \y_z[11]~SCLR_LUT_combout\ & \y_z[10]~SCLR_LUT_combout\ & 
\y_z[9]~SCLR_LUT_combout\ & \y_z[8]~SCLR_LUT_combout\ & \y_z[7]~SCLR_LUT_combout\ & \y_z[6]~SCLR_LUT_combout\ & \y_z[5]~SCLR_LUT_combout\ & \y_z[4]~SCLR_LUT_combout\ & \y_z[3]~SCLR_LUT_combout\ & \y_z[2]~SCLR_LUT_combout\ & \y_z[1]~SCLR_LUT_combout\ & 
\y_z[0]~SCLR_LUT_combout\);

\Mult3~421_AY_bus\ <= (vcc & vcc & gnd & vcc & vcc & vcc & vcc & vcc & vcc & gnd & gnd & vcc & vcc & gnd & vcc & gnd & gnd & gnd);

\Mult3~421_resulta\ <= \Mult3~421_RESULTA_bus\(0);
\Mult3~422\ <= \Mult3~421_RESULTA_bus\(1);
\Mult3~423\ <= \Mult3~421_RESULTA_bus\(2);
\Mult3~424\ <= \Mult3~421_RESULTA_bus\(3);
\Mult3~425\ <= \Mult3~421_RESULTA_bus\(4);
\Mult3~426\ <= \Mult3~421_RESULTA_bus\(5);
\Mult3~427\ <= \Mult3~421_RESULTA_bus\(6);
\Mult3~428\ <= \Mult3~421_RESULTA_bus\(7);
\Mult3~429\ <= \Mult3~421_RESULTA_bus\(8);
\Mult3~430\ <= \Mult3~421_RESULTA_bus\(9);
\Mult3~431\ <= \Mult3~421_RESULTA_bus\(10);
\Mult3~432\ <= \Mult3~421_RESULTA_bus\(11);
\Mult3~433\ <= \Mult3~421_RESULTA_bus\(12);
\Mult3~434\ <= \Mult3~421_RESULTA_bus\(13);
\Mult3~435\ <= \Mult3~421_RESULTA_bus\(14);
\Mult3~436\ <= \Mult3~421_RESULTA_bus\(15);
\Mult3~437\ <= \Mult3~421_RESULTA_bus\(16);
\Mult3~438\ <= \Mult3~421_RESULTA_bus\(17);
\Mult3~439\ <= \Mult3~421_RESULTA_bus\(18);
\Mult3~440\ <= \Mult3~421_RESULTA_bus\(19);
\Mult3~441\ <= \Mult3~421_RESULTA_bus\(20);
\Mult3~442\ <= \Mult3~421_RESULTA_bus\(21);
\Mult3~443\ <= \Mult3~421_RESULTA_bus\(22);
\Mult3~444\ <= \Mult3~421_RESULTA_bus\(23);
\Mult3~445\ <= \Mult3~421_RESULTA_bus\(24);
\Mult3~446\ <= \Mult3~421_RESULTA_bus\(25);
\Mult3~447\ <= \Mult3~421_RESULTA_bus\(26);
\Mult3~448\ <= \Mult3~421_RESULTA_bus\(27);
\Mult3~449\ <= \Mult3~421_RESULTA_bus\(28);
\Mult3~450\ <= \Mult3~421_RESULTA_bus\(29);
\Mult3~451\ <= \Mult3~421_RESULTA_bus\(30);
\Mult3~452\ <= \Mult3~421_RESULTA_bus\(31);
\Mult3~453\ <= \Mult3~421_RESULTA_bus\(32);
\Mult3~454\ <= \Mult3~421_RESULTA_bus\(33);
\Mult3~455\ <= \Mult3~421_RESULTA_bus\(34);
\Mult3~456\ <= \Mult3~421_RESULTA_bus\(35);
\Mult3~457\ <= \Mult3~421_RESULTA_bus\(36);
\Mult3~458\ <= \Mult3~421_RESULTA_bus\(37);
\Mult3~459\ <= \Mult3~421_RESULTA_bus\(38);
\Mult3~460\ <= \Mult3~421_RESULTA_bus\(39);
\Mult3~461\ <= \Mult3~421_RESULTA_bus\(40);
\Mult3~462\ <= \Mult3~421_RESULTA_bus\(41);
\Mult3~463\ <= \Mult3~421_RESULTA_bus\(42);
\Mult3~464\ <= \Mult3~421_RESULTA_bus\(43);
\Mult3~465\ <= \Mult3~421_RESULTA_bus\(44);
\Mult3~466\ <= \Mult3~421_RESULTA_bus\(45);
\Mult3~467\ <= \Mult3~421_RESULTA_bus\(46);
\Mult3~468\ <= \Mult3~421_RESULTA_bus\(47);
\Mult3~469\ <= \Mult3~421_RESULTA_bus\(48);
\Mult3~470\ <= \Mult3~421_RESULTA_bus\(49);
\Mult3~471\ <= \Mult3~421_RESULTA_bus\(50);
\Mult3~472\ <= \Mult3~421_RESULTA_bus\(51);
\Mult3~473\ <= \Mult3~421_RESULTA_bus\(52);
\Mult3~474\ <= \Mult3~421_RESULTA_bus\(53);
\Mult3~475\ <= \Mult3~421_RESULTA_bus\(54);
\Mult3~476\ <= \Mult3~421_RESULTA_bus\(55);
\Mult3~477\ <= \Mult3~421_RESULTA_bus\(56);
\Mult3~478\ <= \Mult3~421_RESULTA_bus\(57);
\Mult3~479\ <= \Mult3~421_RESULTA_bus\(58);
\Mult3~480\ <= \Mult3~421_RESULTA_bus\(59);
\Mult3~481\ <= \Mult3~421_RESULTA_bus\(60);
\Mult3~482\ <= \Mult3~421_RESULTA_bus\(61);
\Mult3~483\ <= \Mult3~421_RESULTA_bus\(62);
\Mult3~484\ <= \Mult3~421_RESULTA_bus\(63);

\Mult1~8_ACLR_bus\ <= (gnd & gnd);

\Mult1~8_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\Mult1~8_ENA_bus\ <= (vcc & vcc & vcc);

\Mult1~8_AX_bus\ <= (vcc & gnd & gnd & gnd & gnd & vcc & vcc & gnd & gnd & gnd & gnd & vcc & vcc & vcc & gnd & gnd & vcc & vcc & vcc & gnd & gnd & vcc);

\Mult1~8_AY_bus\ <= (\x_z[16]~SCLR_LUT_combout\ & \x_z[16]~SCLR_LUT_combout\ & \x_z[16]~SCLR_LUT_combout\ & \x_z[16]~SCLR_LUT_combout\ & \x_z[16]~SCLR_LUT_combout\ & \x_z[16]~SCLR_LUT_combout\ & \x_z[16]~SCLR_LUT_combout\ & \x_z[16]~SCLR_LUT_combout\ & 
\x_z[16]~SCLR_LUT_combout\ & \x_z[16]~SCLR_LUT_combout\ & \x_z[16]~SCLR_LUT_combout\ & \x_z[15]~SCLR_LUT_combout\ & \x_z[14]~SCLR_LUT_combout\ & \x_z[13]~SCLR_LUT_combout\ & \x_z[12]~SCLR_LUT_combout\ & \x_z[11]~SCLR_LUT_combout\ & 
\x_z[10]~SCLR_LUT_combout\ & \x_z[9]~SCLR_LUT_combout\ & \x_z[8]~SCLR_LUT_combout\ & \x_z[7]~SCLR_LUT_combout\ & \x_z[6]~SCLR_LUT_combout\ & \x_z[5]~SCLR_LUT_combout\ & \x_z[4]~SCLR_LUT_combout\ & \x_z[3]~SCLR_LUT_combout\ & \x_z[2]~SCLR_LUT_combout\ & 
\x_z[1]~SCLR_LUT_combout\ & \x_z[0]~SCLR_LUT_combout\);

\Mult1~8_resulta\ <= \Mult1~8_RESULTA_bus\(0);
\Mult1~9\ <= \Mult1~8_RESULTA_bus\(1);
\Mult1~10\ <= \Mult1~8_RESULTA_bus\(2);
\Mult1~11\ <= \Mult1~8_RESULTA_bus\(3);
\Mult1~12\ <= \Mult1~8_RESULTA_bus\(4);
\Mult1~13\ <= \Mult1~8_RESULTA_bus\(5);
\Mult1~14\ <= \Mult1~8_RESULTA_bus\(6);
\Mult1~15\ <= \Mult1~8_RESULTA_bus\(7);
\Mult1~16\ <= \Mult1~8_RESULTA_bus\(8);
\Mult1~17\ <= \Mult1~8_RESULTA_bus\(9);
\Mult1~18\ <= \Mult1~8_RESULTA_bus\(10);
\Mult1~19\ <= \Mult1~8_RESULTA_bus\(11);
\Mult1~20\ <= \Mult1~8_RESULTA_bus\(12);
\Mult1~21\ <= \Mult1~8_RESULTA_bus\(13);
\Mult1~22\ <= \Mult1~8_RESULTA_bus\(14);
\Mult1~23\ <= \Mult1~8_RESULTA_bus\(15);
\Mult1~24\ <= \Mult1~8_RESULTA_bus\(16);
\Mult1~25\ <= \Mult1~8_RESULTA_bus\(17);
\Mult1~26\ <= \Mult1~8_RESULTA_bus\(18);
\Mult1~27\ <= \Mult1~8_RESULTA_bus\(19);
\Mult1~28\ <= \Mult1~8_RESULTA_bus\(20);
\Mult1~29\ <= \Mult1~8_RESULTA_bus\(21);
\Mult1~30\ <= \Mult1~8_RESULTA_bus\(22);
\Mult1~31\ <= \Mult1~8_RESULTA_bus\(23);
\Mult1~32\ <= \Mult1~8_RESULTA_bus\(24);
\Mult1~33\ <= \Mult1~8_RESULTA_bus\(25);
\Mult1~34\ <= \Mult1~8_RESULTA_bus\(26);
\Mult1~35\ <= \Mult1~8_RESULTA_bus\(27);
\Mult1~36\ <= \Mult1~8_RESULTA_bus\(28);
\Mult1~37\ <= \Mult1~8_RESULTA_bus\(29);
x_z_b1(30) <= \Mult1~8_RESULTA_bus\(30);
x_z_b1(31) <= \Mult1~8_RESULTA_bus\(31);
x_z_b1(32) <= \Mult1~8_RESULTA_bus\(32);
x_z_b1(33) <= \Mult1~8_RESULTA_bus\(33);
x_z_b1(34) <= \Mult1~8_RESULTA_bus\(34);
x_z_b1(35) <= \Mult1~8_RESULTA_bus\(35);
x_z_b1(36) <= \Mult1~8_RESULTA_bus\(36);
x_z_b1(37) <= \Mult1~8_RESULTA_bus\(37);
x_z_b1(38) <= \Mult1~8_RESULTA_bus\(38);
x_z_b1(39) <= \Mult1~8_RESULTA_bus\(39);
\Mult1~38\ <= \Mult1~8_RESULTA_bus\(40);
\Mult1~39\ <= \Mult1~8_RESULTA_bus\(41);
\Mult1~40\ <= \Mult1~8_RESULTA_bus\(42);
\Mult1~41\ <= \Mult1~8_RESULTA_bus\(43);
\Mult1~42\ <= \Mult1~8_RESULTA_bus\(44);
\Mult1~43\ <= \Mult1~8_RESULTA_bus\(45);
\Mult1~44\ <= \Mult1~8_RESULTA_bus\(46);
\Mult1~45\ <= \Mult1~8_RESULTA_bus\(47);
\Mult1~46\ <= \Mult1~8_RESULTA_bus\(48);
\Mult1~47\ <= \Mult1~8_RESULTA_bus\(49);
\Mult1~48\ <= \Mult1~8_RESULTA_bus\(50);
\Mult1~49\ <= \Mult1~8_RESULTA_bus\(51);
\Mult1~50\ <= \Mult1~8_RESULTA_bus\(52);
\Mult1~51\ <= \Mult1~8_RESULTA_bus\(53);
\Mult1~52\ <= \Mult1~8_RESULTA_bus\(54);
\Mult1~53\ <= \Mult1~8_RESULTA_bus\(55);
\Mult1~54\ <= \Mult1~8_RESULTA_bus\(56);
\Mult1~55\ <= \Mult1~8_RESULTA_bus\(57);
\Mult1~56\ <= \Mult1~8_RESULTA_bus\(58);
\Mult1~57\ <= \Mult1~8_RESULTA_bus\(59);
\Mult1~58\ <= \Mult1~8_RESULTA_bus\(60);
\Mult1~59\ <= \Mult1~8_RESULTA_bus\(61);
\Mult1~60\ <= \Mult1~8_RESULTA_bus\(62);
\Mult1~61\ <= \Mult1~8_RESULTA_bus\(63);

\Mult2~8_ACLR_bus\ <= (gnd & gnd);

\Mult2~8_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\Mult2~8_ENA_bus\ <= (vcc & vcc & vcc);

\Mult2~8_AX_bus\ <= (vcc & gnd & gnd & gnd & gnd & vcc & vcc & gnd & gnd & gnd & gnd & vcc & vcc & vcc & gnd & gnd & vcc & vcc & vcc & gnd & gnd);

\Mult2~8_AY_bus\ <= (\x_zz[16]~SCLR_LUT_combout\ & \x_zz[16]~SCLR_LUT_combout\ & \x_zz[16]~SCLR_LUT_combout\ & \x_zz[16]~SCLR_LUT_combout\ & \x_zz[16]~SCLR_LUT_combout\ & \x_zz[16]~SCLR_LUT_combout\ & \x_zz[16]~SCLR_LUT_combout\ & 
\x_zz[16]~SCLR_LUT_combout\ & \x_zz[16]~SCLR_LUT_combout\ & \x_zz[16]~SCLR_LUT_combout\ & \x_zz[16]~SCLR_LUT_combout\ & \x_zz[15]~SCLR_LUT_combout\ & \x_zz[14]~SCLR_LUT_combout\ & \x_zz[13]~SCLR_LUT_combout\ & \x_zz[12]~SCLR_LUT_combout\ & 
\x_zz[11]~SCLR_LUT_combout\ & \x_zz[10]~SCLR_LUT_combout\ & \x_zz[9]~SCLR_LUT_combout\ & \x_zz[8]~SCLR_LUT_combout\ & \x_zz[7]~SCLR_LUT_combout\ & \x_zz[6]~SCLR_LUT_combout\ & \x_zz[5]~SCLR_LUT_combout\ & \x_zz[4]~SCLR_LUT_combout\ & 
\x_zz[3]~SCLR_LUT_combout\ & \x_zz[2]~SCLR_LUT_combout\ & \x_zz[1]~SCLR_LUT_combout\ & \x_zz[0]~SCLR_LUT_combout\);

\Mult2~8_resulta\ <= \Mult2~8_RESULTA_bus\(0);
\Mult2~9\ <= \Mult2~8_RESULTA_bus\(1);
\Mult2~10\ <= \Mult2~8_RESULTA_bus\(2);
\Mult2~11\ <= \Mult2~8_RESULTA_bus\(3);
\Mult2~12\ <= \Mult2~8_RESULTA_bus\(4);
\Mult2~13\ <= \Mult2~8_RESULTA_bus\(5);
\Mult2~14\ <= \Mult2~8_RESULTA_bus\(6);
\Mult2~15\ <= \Mult2~8_RESULTA_bus\(7);
\Mult2~16\ <= \Mult2~8_RESULTA_bus\(8);
\Mult2~17\ <= \Mult2~8_RESULTA_bus\(9);
\Mult2~18\ <= \Mult2~8_RESULTA_bus\(10);
\Mult2~19\ <= \Mult2~8_RESULTA_bus\(11);
\Mult2~20\ <= \Mult2~8_RESULTA_bus\(12);
\Mult2~21\ <= \Mult2~8_RESULTA_bus\(13);
\Mult2~22\ <= \Mult2~8_RESULTA_bus\(14);
\Mult2~23\ <= \Mult2~8_RESULTA_bus\(15);
\Mult2~24\ <= \Mult2~8_RESULTA_bus\(16);
\Mult2~25\ <= \Mult2~8_RESULTA_bus\(17);
\Mult2~26\ <= \Mult2~8_RESULTA_bus\(18);
\Mult2~27\ <= \Mult2~8_RESULTA_bus\(19);
\Mult2~28\ <= \Mult2~8_RESULTA_bus\(20);
\Mult2~29\ <= \Mult2~8_RESULTA_bus\(21);
\Mult2~30\ <= \Mult2~8_RESULTA_bus\(22);
\Mult2~31\ <= \Mult2~8_RESULTA_bus\(23);
\Mult2~32\ <= \Mult2~8_RESULTA_bus\(24);
\Mult2~33\ <= \Mult2~8_RESULTA_bus\(25);
\Mult2~34\ <= \Mult2~8_RESULTA_bus\(26);
\Mult2~35\ <= \Mult2~8_RESULTA_bus\(27);
\Mult2~36\ <= \Mult2~8_RESULTA_bus\(28);
\Mult2~37\ <= \Mult2~8_RESULTA_bus\(29);
x_zz_b2(30) <= \Mult2~8_RESULTA_bus\(30);
x_zz_b2(31) <= \Mult2~8_RESULTA_bus\(31);
x_zz_b2(32) <= \Mult2~8_RESULTA_bus\(32);
x_zz_b2(33) <= \Mult2~8_RESULTA_bus\(33);
x_zz_b2(34) <= \Mult2~8_RESULTA_bus\(34);
x_zz_b2(35) <= \Mult2~8_RESULTA_bus\(35);
x_zz_b2(36) <= \Mult2~8_RESULTA_bus\(36);
x_zz_b2(37) <= \Mult2~8_RESULTA_bus\(37);
x_zz_b2(38) <= \Mult2~8_RESULTA_bus\(38);
\Mult2~38\ <= \Mult2~8_RESULTA_bus\(39);
\Mult2~39\ <= \Mult2~8_RESULTA_bus\(40);
\Mult2~40\ <= \Mult2~8_RESULTA_bus\(41);
\Mult2~41\ <= \Mult2~8_RESULTA_bus\(42);
\Mult2~42\ <= \Mult2~8_RESULTA_bus\(43);
\Mult2~43\ <= \Mult2~8_RESULTA_bus\(44);
\Mult2~44\ <= \Mult2~8_RESULTA_bus\(45);
\Mult2~45\ <= \Mult2~8_RESULTA_bus\(46);
\Mult2~46\ <= \Mult2~8_RESULTA_bus\(47);
\Mult2~47\ <= \Mult2~8_RESULTA_bus\(48);
\Mult2~48\ <= \Mult2~8_RESULTA_bus\(49);
\Mult2~49\ <= \Mult2~8_RESULTA_bus\(50);
\Mult2~50\ <= \Mult2~8_RESULTA_bus\(51);
\Mult2~51\ <= \Mult2~8_RESULTA_bus\(52);
\Mult2~52\ <= \Mult2~8_RESULTA_bus\(53);
\Mult2~53\ <= \Mult2~8_RESULTA_bus\(54);
\Mult2~54\ <= \Mult2~8_RESULTA_bus\(55);
\Mult2~55\ <= \Mult2~8_RESULTA_bus\(56);
\Mult2~56\ <= \Mult2~8_RESULTA_bus\(57);
\Mult2~57\ <= \Mult2~8_RESULTA_bus\(58);
\Mult2~58\ <= \Mult2~8_RESULTA_bus\(59);
\Mult2~59\ <= \Mult2~8_RESULTA_bus\(60);
\Mult2~60\ <= \Mult2~8_RESULTA_bus\(61);
\Mult2~61\ <= \Mult2~8_RESULTA_bus\(62);
\Mult2~62\ <= \Mult2~8_RESULTA_bus\(63);

\Mult0~8_ACLR_bus\ <= (gnd & gnd);

\Mult0~8_CLK_bus\ <= (gnd & gnd & \clk~inputCLKENA0_outclk\);

\Mult0~8_ENA_bus\ <= (vcc & vcc & NOT \rst~input_o\);

\Mult0~8_AX_bus\ <= (vcc & gnd & gnd & gnd & gnd & vcc & vcc & gnd & gnd & gnd & gnd & vcc & vcc & vcc & gnd & gnd & vcc & vcc & vcc & gnd & gnd);

\Mult0~8_AY_bus\ <= (\x[17]~input_o\ & \x[17]~input_o\ & \x[17]~input_o\ & \x[17]~input_o\ & \x[17]~input_o\ & \x[17]~input_o\ & \x[17]~input_o\ & \x[17]~input_o\ & \x[17]~input_o\ & \x[17]~input_o\ & \x[17]~input_o\ & \x[16]~input_o\ & \x[15]~input_o\ & 
\x[14]~input_o\ & \x[13]~input_o\ & \x[12]~input_o\ & \x[11]~input_o\ & \x[10]~input_o\ & \x[9]~input_o\ & \x[8]~input_o\ & \x[7]~input_o\ & \x[6]~input_o\ & \x[5]~input_o\ & \x[4]~input_o\ & \x[3]~input_o\ & \x[2]~input_o\ & \x[1]~input_o\);

\Mult0~8_resulta\ <= \Mult0~8_RESULTA_bus\(0);
\Mult0~9\ <= \Mult0~8_RESULTA_bus\(1);
\Mult0~10\ <= \Mult0~8_RESULTA_bus\(2);
\Mult0~11\ <= \Mult0~8_RESULTA_bus\(3);
\Mult0~12\ <= \Mult0~8_RESULTA_bus\(4);
\Mult0~13\ <= \Mult0~8_RESULTA_bus\(5);
\Mult0~14\ <= \Mult0~8_RESULTA_bus\(6);
\Mult0~15\ <= \Mult0~8_RESULTA_bus\(7);
\Mult0~16\ <= \Mult0~8_RESULTA_bus\(8);
\Mult0~17\ <= \Mult0~8_RESULTA_bus\(9);
\Mult0~18\ <= \Mult0~8_RESULTA_bus\(10);
\Mult0~19\ <= \Mult0~8_RESULTA_bus\(11);
\Mult0~20\ <= \Mult0~8_RESULTA_bus\(12);
\Mult0~21\ <= \Mult0~8_RESULTA_bus\(13);
\Mult0~22\ <= \Mult0~8_RESULTA_bus\(14);
\Mult0~23\ <= \Mult0~8_RESULTA_bus\(15);
\Mult0~24\ <= \Mult0~8_RESULTA_bus\(16);
\Mult0~25\ <= \Mult0~8_RESULTA_bus\(17);
\Mult0~26\ <= \Mult0~8_RESULTA_bus\(18);
\Mult0~27\ <= \Mult0~8_RESULTA_bus\(19);
\Mult0~28\ <= \Mult0~8_RESULTA_bus\(20);
\Mult0~29\ <= \Mult0~8_RESULTA_bus\(21);
\Mult0~30\ <= \Mult0~8_RESULTA_bus\(22);
\Mult0~31\ <= \Mult0~8_RESULTA_bus\(23);
\Mult0~32\ <= \Mult0~8_RESULTA_bus\(24);
\Mult0~33\ <= \Mult0~8_RESULTA_bus\(25);
\Mult0~34\ <= \Mult0~8_RESULTA_bus\(26);
\Mult0~35\ <= \Mult0~8_RESULTA_bus\(27);
\Mult0~36\ <= \Mult0~8_RESULTA_bus\(28);
\Mult0~37\ <= \Mult0~8_RESULTA_bus\(29);
x_in_b0(30) <= \Mult0~8_RESULTA_bus\(30);
x_in_b0(31) <= \Mult0~8_RESULTA_bus\(31);
x_in_b0(32) <= \Mult0~8_RESULTA_bus\(32);
x_in_b0(33) <= \Mult0~8_RESULTA_bus\(33);
x_in_b0(34) <= \Mult0~8_RESULTA_bus\(34);
x_in_b0(35) <= \Mult0~8_RESULTA_bus\(35);
x_in_b0(36) <= \Mult0~8_RESULTA_bus\(36);
x_in_b0(37) <= \Mult0~8_RESULTA_bus\(37);
x_in_b0(38) <= \Mult0~8_RESULTA_bus\(38);
\Mult0~38\ <= \Mult0~8_RESULTA_bus\(39);
\Mult0~39\ <= \Mult0~8_RESULTA_bus\(40);
\Mult0~40\ <= \Mult0~8_RESULTA_bus\(41);
\Mult0~41\ <= \Mult0~8_RESULTA_bus\(42);
\Mult0~42\ <= \Mult0~8_RESULTA_bus\(43);
\Mult0~43\ <= \Mult0~8_RESULTA_bus\(44);
\Mult0~44\ <= \Mult0~8_RESULTA_bus\(45);
\Mult0~45\ <= \Mult0~8_RESULTA_bus\(46);
\Mult0~46\ <= \Mult0~8_RESULTA_bus\(47);
\Mult0~47\ <= \Mult0~8_RESULTA_bus\(48);
\Mult0~48\ <= \Mult0~8_RESULTA_bus\(49);
\Mult0~49\ <= \Mult0~8_RESULTA_bus\(50);
\Mult0~50\ <= \Mult0~8_RESULTA_bus\(51);
\Mult0~51\ <= \Mult0~8_RESULTA_bus\(52);
\Mult0~52\ <= \Mult0~8_RESULTA_bus\(53);
\Mult0~53\ <= \Mult0~8_RESULTA_bus\(54);
\Mult0~54\ <= \Mult0~8_RESULTA_bus\(55);
\Mult0~55\ <= \Mult0~8_RESULTA_bus\(56);
\Mult0~56\ <= \Mult0~8_RESULTA_bus\(57);
\Mult0~57\ <= \Mult0~8_RESULTA_bus\(58);
\Mult0~58\ <= \Mult0~8_RESULTA_bus\(59);
\Mult0~59\ <= \Mult0~8_RESULTA_bus\(60);
\Mult0~60\ <= \Mult0~8_RESULTA_bus\(61);
\Mult0~61\ <= \Mult0~8_RESULTA_bus\(62);
\Mult0~62\ <= \Mult0~8_RESULTA_bus\(63);
\ALT_INV_Add0~13_sumout\ <= NOT \Add0~13_sumout\;
\ALT_INV_Add0~9_sumout\ <= NOT \Add0~9_sumout\;
\ALT_INV_Add0~5_sumout\ <= NOT \Add0~5_sumout\;
\ALT_INV_Mult3~456\ <= NOT \Mult3~456\;
\ALT_INV_Mult3~455\ <= NOT \Mult3~455\;
\ALT_INV_Mult3~454\ <= NOT \Mult3~454\;
\ALT_INV_Mult3~453\ <= NOT \Mult3~453\;
\ALT_INV_Mult3~452\ <= NOT \Mult3~452\;
\ALT_INV_Mult3~451\ <= NOT \Mult3~451\;
\ALT_INV_Mult3~450\ <= NOT \Mult3~450\;
\ALT_INV_Mult3~449\ <= NOT \Mult3~449\;
\ALT_INV_Mult3~448\ <= NOT \Mult3~448\;
\ALT_INV_Mult3~447\ <= NOT \Mult3~447\;
\ALT_INV_Mult3~446\ <= NOT \Mult3~446\;
\ALT_INV_Mult3~445\ <= NOT \Mult3~445\;
\ALT_INV_Mult3~444\ <= NOT \Mult3~444\;
\ALT_INV_Mult3~443\ <= NOT \Mult3~443\;
\ALT_INV_Mult3~442\ <= NOT \Mult3~442\;
\ALT_INV_Mult3~441\ <= NOT \Mult3~441\;
\ALT_INV_Mult3~440\ <= NOT \Mult3~440\;
\ALT_INV_Mult3~439\ <= NOT \Mult3~439\;
\ALT_INV_Mult3~109\ <= NOT \Mult3~109\;
\ALT_INV_Mult3~108\ <= NOT \Mult3~108\;
\ALT_INV_Mult3~107\ <= NOT \Mult3~107\;
\ALT_INV_Mult3~106\ <= NOT \Mult3~106\;
\ALT_INV_Mult3~105\ <= NOT \Mult3~105\;
\ALT_INV_Mult3~104\ <= NOT \Mult3~104\;
\ALT_INV_Mult3~103\ <= NOT \Mult3~103\;
\ALT_INV_Mult3~102\ <= NOT \Mult3~102\;
\ALT_INV_Mult3~101\ <= NOT \Mult3~101\;
\ALT_INV_Mult3~100\ <= NOT \Mult3~100\;
\ALT_INV_Mult3~99\ <= NOT \Mult3~99\;
\ALT_INV_Mult3~98\ <= NOT \Mult3~98\;
\ALT_INV_Mult3~97\ <= NOT \Mult3~97\;
\ALT_INV_Mult3~96\ <= NOT \Mult3~96\;
\ALT_INV_Mult3~95\ <= NOT \Mult3~95\;
\ALT_INV_Mult3~94\ <= NOT \Mult3~94\;
\ALT_INV_Mult3~93\ <= NOT \Mult3~93\;
\ALT_INV_Mult3~92\ <= NOT \Mult3~92\;
\ALT_INV_Mult3~91\ <= NOT \Mult3~91\;
\ALT_INV_Mult3~90\ <= NOT \Mult3~90\;
\ALT_INV_Mult3~89\ <= NOT \Mult3~89\;
\ALT_INV_Mult3~88\ <= NOT \Mult3~88\;
\ALT_INV_Mult3~87\ <= NOT \Mult3~87\;
\ALT_INV_Mult3~86\ <= NOT \Mult3~86\;
\ALT_INV_Mult3~85\ <= NOT \Mult3~85\;
\ALT_INV_Mult3~84\ <= NOT \Mult3~84\;
\ALT_INV_Mult3~83\ <= NOT \Mult3~83\;
\ALT_INV_Mult3~82\ <= NOT \Mult3~82\;
\ALT_INV_Mult3~81\ <= NOT \Mult3~81\;
\ALT_INV_Mult3~80_resulta\ <= NOT \Mult3~80_resulta\;
\ALT_INV_Add0~1_sumout\ <= NOT \Add0~1_sumout\;
\ALT_INV_Mult3~69_sumout\ <= NOT \Mult3~69_sumout\;
\ALT_INV_Mult3~65_sumout\ <= NOT \Mult3~65_sumout\;
\ALT_INV_Mult3~61_sumout\ <= NOT \Mult3~61_sumout\;
\ALT_INV_Mult3~57_sumout\ <= NOT \Mult3~57_sumout\;
\ALT_INV_Mult3~53_sumout\ <= NOT \Mult3~53_sumout\;
\ALT_INV_Mult3~49_sumout\ <= NOT \Mult3~49_sumout\;
\ALT_INV_Mult3~45_sumout\ <= NOT \Mult3~45_sumout\;
\ALT_INV_Mult3~41_sumout\ <= NOT \Mult3~41_sumout\;
\ALT_INV_Mult3~37_sumout\ <= NOT \Mult3~37_sumout\;
\ALT_INV_Mult3~33_sumout\ <= NOT \Mult3~33_sumout\;
\ALT_INV_Mult3~29_sumout\ <= NOT \Mult3~29_sumout\;
\ALT_INV_Mult3~25_sumout\ <= NOT \Mult3~25_sumout\;
\ALT_INV_Mult3~21_sumout\ <= NOT \Mult3~21_sumout\;
\ALT_INV_Mult3~17_sumout\ <= NOT \Mult3~17_sumout\;
\ALT_INV_Mult3~13_sumout\ <= NOT \Mult3~13_sumout\;
\ALT_INV_Mult3~9_sumout\ <= NOT \Mult3~9_sumout\;
\ALT_INV_Mult3~5_sumout\ <= NOT \Mult3~5_sumout\;
\ALT_INV_Mult4~456\ <= NOT \Mult4~456\;
\ALT_INV_Mult4~455\ <= NOT \Mult4~455\;
\ALT_INV_Mult4~454\ <= NOT \Mult4~454\;
\ALT_INV_Mult4~453\ <= NOT \Mult4~453\;
\ALT_INV_Mult4~452\ <= NOT \Mult4~452\;
\ALT_INV_Mult4~451\ <= NOT \Mult4~451\;
\ALT_INV_Mult4~450\ <= NOT \Mult4~450\;
\ALT_INV_Mult4~449\ <= NOT \Mult4~449\;
\ALT_INV_Mult4~448\ <= NOT \Mult4~448\;
\ALT_INV_Mult4~447\ <= NOT \Mult4~447\;
\ALT_INV_Mult4~446\ <= NOT \Mult4~446\;
\ALT_INV_Mult4~445\ <= NOT \Mult4~445\;
\ALT_INV_Mult4~444\ <= NOT \Mult4~444\;
\ALT_INV_Mult4~443\ <= NOT \Mult4~443\;
\ALT_INV_Mult4~442\ <= NOT \Mult4~442\;
\ALT_INV_Mult4~441\ <= NOT \Mult4~441\;
\ALT_INV_Mult4~440\ <= NOT \Mult4~440\;
\ALT_INV_Mult4~439\ <= NOT \Mult4~439\;
\ALT_INV_Mult4~109\ <= NOT \Mult4~109\;
\ALT_INV_Mult4~108\ <= NOT \Mult4~108\;
\ALT_INV_Mult4~107\ <= NOT \Mult4~107\;
\ALT_INV_Mult4~106\ <= NOT \Mult4~106\;
\ALT_INV_Mult4~105\ <= NOT \Mult4~105\;
\ALT_INV_Mult4~104\ <= NOT \Mult4~104\;
\ALT_INV_Mult4~103\ <= NOT \Mult4~103\;
\ALT_INV_Mult4~102\ <= NOT \Mult4~102\;
\ALT_INV_Mult4~101\ <= NOT \Mult4~101\;
\ALT_INV_Mult4~100\ <= NOT \Mult4~100\;
\ALT_INV_Mult4~99\ <= NOT \Mult4~99\;
\ALT_INV_Mult4~98\ <= NOT \Mult4~98\;
\ALT_INV_Mult4~97\ <= NOT \Mult4~97\;
\ALT_INV_Mult4~96\ <= NOT \Mult4~96\;
\ALT_INV_Mult4~95\ <= NOT \Mult4~95\;
\ALT_INV_Mult4~94\ <= NOT \Mult4~94\;
\ALT_INV_Mult4~93\ <= NOT \Mult4~93\;
\ALT_INV_Mult4~92\ <= NOT \Mult4~92\;
\ALT_INV_Mult4~91\ <= NOT \Mult4~91\;
\ALT_INV_Mult4~90\ <= NOT \Mult4~90\;
\ALT_INV_Mult4~89\ <= NOT \Mult4~89\;
\ALT_INV_Mult4~88\ <= NOT \Mult4~88\;
\ALT_INV_Mult4~87\ <= NOT \Mult4~87\;
\ALT_INV_Mult4~86\ <= NOT \Mult4~86\;
\ALT_INV_Mult4~85\ <= NOT \Mult4~85\;
\ALT_INV_Mult4~84\ <= NOT \Mult4~84\;
\ALT_INV_Mult4~83\ <= NOT \Mult4~83\;
\ALT_INV_Mult4~82\ <= NOT \Mult4~82\;
\ALT_INV_Mult4~81\ <= NOT \Mult4~81\;
\ALT_INV_Mult4~80_resulta\ <= NOT \Mult4~80_resulta\;
\ALT_INV_Mult3~1_sumout\ <= NOT \Mult3~1_sumout\;
\ALT_INV_Mult4~69_sumout\ <= NOT \Mult4~69_sumout\;
\ALT_INV_Mult4~65_sumout\ <= NOT \Mult4~65_sumout\;
\ALT_INV_Mult4~61_sumout\ <= NOT \Mult4~61_sumout\;
\ALT_INV_Mult4~57_sumout\ <= NOT \Mult4~57_sumout\;
\ALT_INV_Mult4~53_sumout\ <= NOT \Mult4~53_sumout\;
\ALT_INV_Mult4~49_sumout\ <= NOT \Mult4~49_sumout\;
\ALT_INV_Mult4~45_sumout\ <= NOT \Mult4~45_sumout\;
\ALT_INV_Mult4~41_sumout\ <= NOT \Mult4~41_sumout\;
\ALT_INV_Mult4~37_sumout\ <= NOT \Mult4~37_sumout\;
\ALT_INV_Mult4~33_sumout\ <= NOT \Mult4~33_sumout\;
\ALT_INV_Mult4~29_sumout\ <= NOT \Mult4~29_sumout\;
\ALT_INV_Mult4~25_sumout\ <= NOT \Mult4~25_sumout\;
\ALT_INV_Mult4~21_sumout\ <= NOT \Mult4~21_sumout\;
\ALT_INV_Mult4~17_sumout\ <= NOT \Mult4~17_sumout\;
\ALT_INV_Mult4~13_sumout\ <= NOT \Mult4~13_sumout\;
\ALT_INV_Mult4~9_sumout\ <= NOT \Mult4~9_sumout\;
\ALT_INV_Mult4~5_sumout\ <= NOT \Mult4~5_sumout\;
\ALT_INV_Mult4~1_sumout\ <= NOT \Mult4~1_sumout\;
\ALT_INV_x[16]~input_o\ <= NOT \x[16]~input_o\;
\ALT_INV_x[15]~input_o\ <= NOT \x[15]~input_o\;
\ALT_INV_x[11]~input_o\ <= NOT \x[11]~input_o\;
\ALT_INV_x[3]~input_o\ <= NOT \x[3]~input_o\;
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
\ALT_INV_x_in[16]~_Duplicate_2_q\ <= NOT \x_in[16]~_Duplicate_2_q\;
\ALT_INV_x_in[15]~_Duplicate_1_q\ <= NOT \x_in[15]~_Duplicate_1_q\;
\ALT_INV_x_in[14]~_Duplicate_1_q\ <= NOT \x_in[14]~_Duplicate_1_q\;
\ALT_INV_x_in[13]~_Duplicate_1_q\ <= NOT \x_in[13]~_Duplicate_1_q\;
\ALT_INV_x_in[12]~_Duplicate_1_q\ <= NOT \x_in[12]~_Duplicate_1_q\;
\ALT_INV_x_in[11]~_Duplicate_1_q\ <= NOT \x_in[11]~_Duplicate_1_q\;
\ALT_INV_x_in[10]~_Duplicate_1_q\ <= NOT \x_in[10]~_Duplicate_1_q\;
\ALT_INV_x_in[9]~_Duplicate_1_q\ <= NOT \x_in[9]~_Duplicate_1_q\;
\ALT_INV_x_in[8]~_Duplicate_1_q\ <= NOT \x_in[8]~_Duplicate_1_q\;
\ALT_INV_x_in[7]~_Duplicate_1_q\ <= NOT \x_in[7]~_Duplicate_1_q\;
\ALT_INV_x_in[6]~_Duplicate_1_q\ <= NOT \x_in[6]~_Duplicate_1_q\;
\ALT_INV_x_in[5]~_Duplicate_1_q\ <= NOT \x_in[5]~_Duplicate_1_q\;
\ALT_INV_x_in[4]~_Duplicate_1_q\ <= NOT \x_in[4]~_Duplicate_1_q\;
\ALT_INV_x_in[3]~_Duplicate_1_q\ <= NOT \x_in[3]~_Duplicate_1_q\;
\ALT_INV_x_in[2]~_Duplicate_1_q\ <= NOT \x_in[2]~_Duplicate_1_q\;
\ALT_INV_x_in[1]~_Duplicate_1_q\ <= NOT \x_in[1]~_Duplicate_1_q\;
\ALT_INV_x_in[0]~_Duplicate_1_q\ <= NOT \x_in[0]~_Duplicate_1_q\;
\ALT_INV_x_z[16]~_Duplicate_2_q\ <= NOT \x_z[16]~_Duplicate_2_q\;
\ALT_INV_x_z[15]~_Duplicate_1_q\ <= NOT \x_z[15]~_Duplicate_1_q\;
\ALT_INV_x_z[14]~_Duplicate_1_q\ <= NOT \x_z[14]~_Duplicate_1_q\;
\ALT_INV_x_z[13]~_Duplicate_1_q\ <= NOT \x_z[13]~_Duplicate_1_q\;
\ALT_INV_x_z[12]~_Duplicate_1_q\ <= NOT \x_z[12]~_Duplicate_1_q\;
\ALT_INV_x_z[11]~_Duplicate_1_q\ <= NOT \x_z[11]~_Duplicate_1_q\;
\ALT_INV_x_z[10]~_Duplicate_1_q\ <= NOT \x_z[10]~_Duplicate_1_q\;
\ALT_INV_x_z[9]~_Duplicate_1_q\ <= NOT \x_z[9]~_Duplicate_1_q\;
\ALT_INV_x_z[8]~_Duplicate_1_q\ <= NOT \x_z[8]~_Duplicate_1_q\;
\ALT_INV_x_z[7]~_Duplicate_1_q\ <= NOT \x_z[7]~_Duplicate_1_q\;
\ALT_INV_x_z[6]~_Duplicate_1_q\ <= NOT \x_z[6]~_Duplicate_1_q\;
\ALT_INV_x_z[5]~_Duplicate_1_q\ <= NOT \x_z[5]~_Duplicate_1_q\;
\ALT_INV_x_z[4]~_Duplicate_1_q\ <= NOT \x_z[4]~_Duplicate_1_q\;
\ALT_INV_x_z[3]~_Duplicate_1_q\ <= NOT \x_z[3]~_Duplicate_1_q\;
\ALT_INV_x_z[2]~_Duplicate_1_q\ <= NOT \x_z[2]~_Duplicate_1_q\;
\ALT_INV_x_z[1]~_Duplicate_1_q\ <= NOT \x_z[1]~_Duplicate_1_q\;
\ALT_INV_x_z[0]~_Duplicate_1_q\ <= NOT \x_z[0]~_Duplicate_1_q\;
\ALT_INV_y_z[17]~_Duplicate_2_q\ <= NOT \y_z[17]~_Duplicate_2_q\;
\ALT_INV_y_z[16]~_Duplicate_2_q\ <= NOT \y_z[16]~_Duplicate_2_q\;
\ALT_INV_y_z[15]~_Duplicate_2_q\ <= NOT \y_z[15]~_Duplicate_2_q\;
\ALT_INV_y_z[14]~_Duplicate_2_q\ <= NOT \y_z[14]~_Duplicate_2_q\;
\ALT_INV_y_z[13]~_Duplicate_2_q\ <= NOT \y_z[13]~_Duplicate_2_q\;
\ALT_INV_y_z[12]~_Duplicate_2_q\ <= NOT \y_z[12]~_Duplicate_2_q\;
\ALT_INV_y_z[11]~_Duplicate_2_q\ <= NOT \y_z[11]~_Duplicate_2_q\;
\ALT_INV_y_z[10]~_Duplicate_2_q\ <= NOT \y_z[10]~_Duplicate_2_q\;
\ALT_INV_y_z[9]~_Duplicate_2_q\ <= NOT \y_z[9]~_Duplicate_2_q\;
\ALT_INV_y_z[8]~_Duplicate_2_q\ <= NOT \y_z[8]~_Duplicate_2_q\;
\ALT_INV_y_z[7]~_Duplicate_2_q\ <= NOT \y_z[7]~_Duplicate_2_q\;
\ALT_INV_y_z[6]~_Duplicate_2_q\ <= NOT \y_z[6]~_Duplicate_2_q\;
\ALT_INV_y_z[5]~_Duplicate_2_q\ <= NOT \y_z[5]~_Duplicate_2_q\;
\ALT_INV_y_z[4]~_Duplicate_2_q\ <= NOT \y_z[4]~_Duplicate_2_q\;
\ALT_INV_y_z[3]~_Duplicate_2_q\ <= NOT \y_z[3]~_Duplicate_2_q\;
\ALT_INV_y_z[2]~_Duplicate_2_q\ <= NOT \y_z[2]~_Duplicate_2_q\;
\ALT_INV_y_z[1]~_Duplicate_2_q\ <= NOT \y_z[1]~_Duplicate_2_q\;
\ALT_INV_y_z[0]~_Duplicate_2_q\ <= NOT \y_z[0]~_Duplicate_2_q\;
ALT_INV_x_in_b0(38) <= NOT x_in_b0(38);
ALT_INV_x_in_b0(37) <= NOT x_in_b0(37);
ALT_INV_x_in_b0(36) <= NOT x_in_b0(36);
ALT_INV_x_in_b0(35) <= NOT x_in_b0(35);
ALT_INV_x_in_b0(34) <= NOT x_in_b0(34);
ALT_INV_x_in_b0(33) <= NOT x_in_b0(33);
ALT_INV_x_in_b0(32) <= NOT x_in_b0(32);
ALT_INV_x_in_b0(31) <= NOT x_in_b0(31);
ALT_INV_x_in_b0(30) <= NOT x_in_b0(30);
ALT_INV_x_zz_b2(38) <= NOT x_zz_b2(38);
ALT_INV_x_zz_b2(37) <= NOT x_zz_b2(37);
ALT_INV_x_zz_b2(36) <= NOT x_zz_b2(36);
ALT_INV_x_zz_b2(35) <= NOT x_zz_b2(35);
ALT_INV_x_zz_b2(34) <= NOT x_zz_b2(34);
ALT_INV_x_zz_b2(33) <= NOT x_zz_b2(33);
ALT_INV_x_zz_b2(32) <= NOT x_zz_b2(32);
ALT_INV_x_zz_b2(31) <= NOT x_zz_b2(31);
ALT_INV_x_zz_b2(30) <= NOT x_zz_b2(30);
ALT_INV_x_z_b1(39) <= NOT x_z_b1(39);
ALT_INV_x_z_b1(38) <= NOT x_z_b1(38);
ALT_INV_x_z_b1(37) <= NOT x_z_b1(37);
ALT_INV_x_z_b1(36) <= NOT x_z_b1(36);
ALT_INV_x_z_b1(35) <= NOT x_z_b1(35);
ALT_INV_x_z_b1(34) <= NOT x_z_b1(34);
ALT_INV_x_z_b1(33) <= NOT x_z_b1(33);
ALT_INV_x_z_b1(32) <= NOT x_z_b1(32);
ALT_INV_x_z_b1(31) <= NOT x_z_b1(31);
ALT_INV_x_z_b1(30) <= NOT x_z_b1(30);
\ALT_INV_Add0~45_sumout\ <= NOT \Add0~45_sumout\;
\ALT_INV_Add0~41_sumout\ <= NOT \Add0~41_sumout\;
\ALT_INV_Add0~37_sumout\ <= NOT \Add0~37_sumout\;
\ALT_INV_Add0~33_sumout\ <= NOT \Add0~33_sumout\;
\ALT_INV_Add0~29_sumout\ <= NOT \Add0~29_sumout\;
\ALT_INV_Add0~25_sumout\ <= NOT \Add0~25_sumout\;
\ALT_INV_Add0~21_sumout\ <= NOT \Add0~21_sumout\;
\ALT_INV_Add0~17_sumout\ <= NOT \Add0~17_sumout\;

-- Location: IOOBUF_X30_Y0_N36
\y[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult4~1_sumout\,
	devoe => ww_devoe,
	o => ww_y(0));

-- Location: IOOBUF_X36_Y0_N19
\y[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult4~5_sumout\,
	devoe => ww_devoe,
	o => ww_y(1));

-- Location: IOOBUF_X36_Y0_N36
\y[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult4~9_sumout\,
	devoe => ww_devoe,
	o => ww_y(2));

-- Location: IOOBUF_X30_Y0_N2
\y[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult4~13_sumout\,
	devoe => ww_devoe,
	o => ww_y(3));

-- Location: IOOBUF_X36_Y0_N53
\y[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult4~17_sumout\,
	devoe => ww_devoe,
	o => ww_y(4));

-- Location: IOOBUF_X38_Y0_N2
\y[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult4~21_sumout\,
	devoe => ww_devoe,
	o => ww_y(5));

-- Location: IOOBUF_X30_Y0_N19
\y[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult4~25_sumout\,
	devoe => ww_devoe,
	o => ww_y(6));

-- Location: IOOBUF_X30_Y0_N53
\y[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult4~29_sumout\,
	devoe => ww_devoe,
	o => ww_y(7));

-- Location: IOOBUF_X28_Y0_N53
\y[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult4~33_sumout\,
	devoe => ww_devoe,
	o => ww_y(8));

-- Location: IOOBUF_X34_Y0_N76
\y[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult4~37_sumout\,
	devoe => ww_devoe,
	o => ww_y(9));

-- Location: IOOBUF_X28_Y0_N19
\y[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult4~41_sumout\,
	devoe => ww_devoe,
	o => ww_y(10));

-- Location: IOOBUF_X32_Y0_N2
\y[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult4~45_sumout\,
	devoe => ww_devoe,
	o => ww_y(11));

-- Location: IOOBUF_X34_Y0_N93
\y[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult4~49_sumout\,
	devoe => ww_devoe,
	o => ww_y(12));

-- Location: IOOBUF_X32_Y0_N36
\y[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult4~53_sumout\,
	devoe => ww_devoe,
	o => ww_y(13));

-- Location: IOOBUF_X34_Y0_N42
\y[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult4~57_sumout\,
	devoe => ww_devoe,
	o => ww_y(14));

-- Location: IOOBUF_X32_Y0_N53
\y[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult4~61_sumout\,
	devoe => ww_devoe,
	o => ww_y(15));

-- Location: IOOBUF_X34_Y0_N59
\y[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult4~65_sumout\,
	devoe => ww_devoe,
	o => ww_y(16));

-- Location: IOOBUF_X36_Y0_N2
\y[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult4~69_sumout\,
	devoe => ww_devoe,
	o => ww_y(17));

-- Location: IOIBUF_X89_Y35_N61
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X32_Y0_N18
\rst~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: LABCELL_X31_Y6_N3
\y_z[0]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \y_z[0]~SCLR_LUT_combout\ = (!\rst~input_o\ & \Mult4~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rst~input_o\,
	datad => \ALT_INV_Mult4~1_sumout\,
	combout => \y_z[0]~SCLR_LUT_combout\);

-- Location: FF_X31_Y6_N4
\y_z[0]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \y_z[0]~SCLR_LUT_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y_z[0]~_Duplicate_2_q\);

-- Location: LABCELL_X33_Y8_N24
\y_zz[0]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \y_zz[0]~SCLR_LUT_combout\ = ( !\rst~input_o\ & ( \y_z[0]~_Duplicate_2_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_y_z[0]~_Duplicate_2_q\,
	dataf => \ALT_INV_rst~input_o\,
	combout => \y_zz[0]~SCLR_LUT_combout\);

-- Location: FF_X31_Y5_N4
\y_z[9]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \y_z[9]~SCLR_LUT_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y_z[9]~_Duplicate_2_q\);

-- Location: LABCELL_X33_Y9_N42
\y_zz[9]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \y_zz[9]~SCLR_LUT_combout\ = ( \y_z[9]~_Duplicate_2_q\ & ( !\rst~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_y_z[9]~_Duplicate_2_q\,
	dataf => \ALT_INV_rst~input_o\,
	combout => \y_zz[9]~SCLR_LUT_combout\);

-- Location: FF_X31_Y5_N20
\y_z[11]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \y_z[11]~SCLR_LUT_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y_z[11]~_Duplicate_2_q\);

-- Location: LABCELL_X33_Y9_N9
\y_zz[11]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \y_zz[11]~SCLR_LUT_combout\ = ( !\rst~input_o\ & ( \y_z[11]~_Duplicate_2_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_y_z[11]~_Duplicate_2_q\,
	dataf => \ALT_INV_rst~input_o\,
	combout => \y_zz[11]~SCLR_LUT_combout\);

-- Location: FF_X31_Y5_N22
\y_z[12]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \y_z[12]~SCLR_LUT_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y_z[12]~_Duplicate_2_q\);

-- Location: LABCELL_X33_Y9_N51
\y_zz[12]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \y_zz[12]~SCLR_LUT_combout\ = ( \y_z[12]~_Duplicate_2_q\ & ( !\rst~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_y_z[12]~_Duplicate_2_q\,
	dataf => \ALT_INV_rst~input_o\,
	combout => \y_zz[12]~SCLR_LUT_combout\);

-- Location: FF_X31_Y5_N47
\y_z[16]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \y_z[16]~SCLR_LUT_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y_z[16]~_Duplicate_2_q\);

-- Location: LABCELL_X33_Y9_N39
\y_zz[16]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \y_zz[16]~SCLR_LUT_combout\ = ( \y_z[16]~_Duplicate_2_q\ & ( !\rst~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_y_z[16]~_Duplicate_2_q\,
	dataf => \ALT_INV_rst~input_o\,
	combout => \y_zz[16]~SCLR_LUT_combout\);

-- Location: DSP_X32_Y8_N0
\Mult4~80\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 12,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 19,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_full",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "true",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \Mult4~80_ACLR_bus\,
	clk => \Mult4~80_CLK_bus\,
	ena => \Mult4~80_ENA_bus\,
	ax => \Mult4~80_AX_bus\,
	ay => \Mult4~80_AY_bus\,
	resulta => \Mult4~80_RESULTA_bus\);

-- Location: DSP_X32_Y6_N0
\Mult3~80\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 18,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 19,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_full",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "true",
	signed_may => "true",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \Mult3~80_ACLR_bus\,
	clk => \Mult3~80_CLK_bus\,
	ena => \Mult3~80_ENA_bus\,
	ax => \Mult3~80_AX_bus\,
	ay => \Mult3~80_AY_bus\,
	resulta => \Mult3~80_RESULTA_bus\);

-- Location: IOIBUF_X28_Y0_N35
\x[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(1),
	o => \x[1]~input_o\);

-- Location: FF_X19_Y4_N23
\x_in[0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \x[1]~input_o\,
	sload => VCC,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x_in[0]~_Duplicate_1_q\);

-- Location: LABCELL_X19_Y4_N15
\x_z[0]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \x_z[0]~SCLR_LUT_combout\ = ( \x_in[0]~_Duplicate_1_q\ & ( !\rst~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rst~input_o\,
	dataf => \ALT_INV_x_in[0]~_Duplicate_1_q\,
	combout => \x_z[0]~SCLR_LUT_combout\);

-- Location: IOIBUF_X6_Y0_N35
\x[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(2),
	o => \x[2]~input_o\);

-- Location: FF_X19_Y2_N31
\x_in[1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \x[2]~input_o\,
	sload => VCC,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x_in[1]~_Duplicate_1_q\);

-- Location: LABCELL_X19_Y2_N0
\x_z[1]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \x_z[1]~SCLR_LUT_combout\ = ( \x_in[1]~_Duplicate_1_q\ & ( !\rst~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rst~input_o\,
	dataf => \ALT_INV_x_in[1]~_Duplicate_1_q\,
	combout => \x_z[1]~SCLR_LUT_combout\);

-- Location: IOIBUF_X26_Y0_N58
\x[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(3),
	o => \x[3]~input_o\);

-- Location: MLABCELL_X21_Y2_N48
\x_in[2]~_Duplicate_1feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \x_in[2]~_Duplicate_1feeder_combout\ = ( \x[3]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_x[3]~input_o\,
	combout => \x_in[2]~_Duplicate_1feeder_combout\);

-- Location: FF_X21_Y2_N49
\x_in[2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \x_in[2]~_Duplicate_1feeder_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x_in[2]~_Duplicate_1_q\);

-- Location: MLABCELL_X21_Y2_N39
\x_z[2]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \x_z[2]~SCLR_LUT_combout\ = ( \x_in[2]~_Duplicate_1_q\ & ( !\rst~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rst~input_o\,
	dataf => \ALT_INV_x_in[2]~_Duplicate_1_q\,
	combout => \x_z[2]~SCLR_LUT_combout\);

-- Location: IOIBUF_X26_Y0_N75
\x[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(4),
	o => \x[4]~input_o\);

-- Location: FF_X21_Y2_N25
\x_in[3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \x[4]~input_o\,
	sload => VCC,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x_in[3]~_Duplicate_1_q\);

-- Location: MLABCELL_X21_Y2_N42
\x_z[3]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \x_z[3]~SCLR_LUT_combout\ = ( \x_in[3]~_Duplicate_1_q\ & ( !\rst~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rst~input_o\,
	dataf => \ALT_INV_x_in[3]~_Duplicate_1_q\,
	combout => \x_z[3]~SCLR_LUT_combout\);

-- Location: IOIBUF_X28_Y0_N1
\x[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(5),
	o => \x[5]~input_o\);

-- Location: FF_X21_Y2_N28
\x_in[4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \x[5]~input_o\,
	sload => VCC,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x_in[4]~_Duplicate_1_q\);

-- Location: MLABCELL_X21_Y2_N0
\x_z[4]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \x_z[4]~SCLR_LUT_combout\ = ( \x_in[4]~_Duplicate_1_q\ & ( !\rst~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rst~input_o\,
	dataf => \ALT_INV_x_in[4]~_Duplicate_1_q\,
	combout => \x_z[4]~SCLR_LUT_combout\);

-- Location: IOIBUF_X4_Y0_N18
\x[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(6),
	o => \x[6]~input_o\);

-- Location: FF_X21_Y2_N31
\x_in[5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \x[6]~input_o\,
	sload => VCC,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x_in[5]~_Duplicate_1_q\);

-- Location: MLABCELL_X21_Y2_N12
\x_z[5]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \x_z[5]~SCLR_LUT_combout\ = ( \x_in[5]~_Duplicate_1_q\ & ( !\rst~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rst~input_o\,
	dataf => \ALT_INV_x_in[5]~_Duplicate_1_q\,
	combout => \x_z[5]~SCLR_LUT_combout\);

-- Location: IOIBUF_X6_Y0_N18
\x[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(7),
	o => \x[7]~input_o\);

-- Location: FF_X21_Y2_N35
\x_in[6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \x[7]~input_o\,
	sload => VCC,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x_in[6]~_Duplicate_1_q\);

-- Location: MLABCELL_X21_Y2_N18
\x_z[6]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \x_z[6]~SCLR_LUT_combout\ = ( \x_in[6]~_Duplicate_1_q\ & ( !\rst~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rst~input_o\,
	dataf => \ALT_INV_x_in[6]~_Duplicate_1_q\,
	combout => \x_z[6]~SCLR_LUT_combout\);

-- Location: IOIBUF_X8_Y0_N52
\x[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(8),
	o => \x[8]~input_o\);

-- Location: FF_X19_Y4_N19
\x_in[7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \x[8]~input_o\,
	sload => VCC,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x_in[7]~_Duplicate_1_q\);

-- Location: LABCELL_X19_Y4_N0
\x_z[7]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \x_z[7]~SCLR_LUT_combout\ = ( \x_in[7]~_Duplicate_1_q\ & ( !\rst~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rst~input_o\,
	dataf => \ALT_INV_x_in[7]~_Duplicate_1_q\,
	combout => \x_z[7]~SCLR_LUT_combout\);

-- Location: IOIBUF_X26_Y0_N92
\x[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(9),
	o => \x[9]~input_o\);

-- Location: FF_X21_Y2_N56
\x_in[8]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \x[9]~input_o\,
	sload => VCC,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x_in[8]~_Duplicate_1_q\);

-- Location: MLABCELL_X21_Y2_N6
\x_z[8]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \x_z[8]~SCLR_LUT_combout\ = ( \x_in[8]~_Duplicate_1_q\ & ( !\rst~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rst~input_o\,
	dataf => \ALT_INV_x_in[8]~_Duplicate_1_q\,
	combout => \x_z[8]~SCLR_LUT_combout\);

-- Location: IOIBUF_X8_Y0_N1
\x[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(10),
	o => \x[10]~input_o\);

-- Location: FF_X19_Y2_N58
\x_in[9]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \x[10]~input_o\,
	sload => VCC,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x_in[9]~_Duplicate_1_q\);

-- Location: LABCELL_X19_Y2_N51
\x_z[9]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \x_z[9]~SCLR_LUT_combout\ = ( \x_in[9]~_Duplicate_1_q\ & ( !\rst~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rst~input_o\,
	dataf => \ALT_INV_x_in[9]~_Duplicate_1_q\,
	combout => \x_z[9]~SCLR_LUT_combout\);

-- Location: IOIBUF_X26_Y0_N41
\x[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(11),
	o => \x[11]~input_o\);

-- Location: LABCELL_X19_Y2_N42
\x_in[10]~_Duplicate_1feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \x_in[10]~_Duplicate_1feeder_combout\ = ( \x[11]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_x[11]~input_o\,
	combout => \x_in[10]~_Duplicate_1feeder_combout\);

-- Location: FF_X19_Y2_N43
\x_in[10]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \x_in[10]~_Duplicate_1feeder_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x_in[10]~_Duplicate_1_q\);

-- Location: LABCELL_X19_Y2_N24
\x_z[10]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \x_z[10]~SCLR_LUT_combout\ = ( \x_in[10]~_Duplicate_1_q\ & ( !\rst~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rst~input_o\,
	dataf => \ALT_INV_x_in[10]~_Duplicate_1_q\,
	combout => \x_z[10]~SCLR_LUT_combout\);

-- Location: IOIBUF_X6_Y0_N1
\x[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(12),
	o => \x[12]~input_o\);

-- Location: FF_X19_Y4_N26
\x_in[11]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \x[12]~input_o\,
	sload => VCC,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x_in[11]~_Duplicate_1_q\);

-- Location: LABCELL_X19_Y4_N42
\x_z[11]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \x_z[11]~SCLR_LUT_combout\ = (!\rst~input_o\ & \x_in[11]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rst~input_o\,
	datac => \ALT_INV_x_in[11]~_Duplicate_1_q\,
	combout => \x_z[11]~SCLR_LUT_combout\);

-- Location: IOIBUF_X4_Y0_N1
\x[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(13),
	o => \x[13]~input_o\);

-- Location: FF_X19_Y4_N31
\x_in[12]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \x[13]~input_o\,
	sload => VCC,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x_in[12]~_Duplicate_1_q\);

-- Location: LABCELL_X19_Y4_N51
\x_z[12]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \x_z[12]~SCLR_LUT_combout\ = ( \x_in[12]~_Duplicate_1_q\ & ( !\rst~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rst~input_o\,
	dataf => \ALT_INV_x_in[12]~_Duplicate_1_q\,
	combout => \x_z[12]~SCLR_LUT_combout\);

-- Location: IOIBUF_X8_Y0_N35
\x[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(14),
	o => \x[14]~input_o\);

-- Location: FF_X19_Y4_N28
\x_in[13]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \x[14]~input_o\,
	sload => VCC,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x_in[13]~_Duplicate_1_q\);

-- Location: LABCELL_X19_Y4_N6
\x_z[13]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \x_z[13]~SCLR_LUT_combout\ = ( \x_in[13]~_Duplicate_1_q\ & ( !\rst~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rst~input_o\,
	dataf => \ALT_INV_x_in[13]~_Duplicate_1_q\,
	combout => \x_z[13]~SCLR_LUT_combout\);

-- Location: IOIBUF_X8_Y0_N18
\x[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(15),
	o => \x[15]~input_o\);

-- Location: LABCELL_X19_Y4_N36
\x_in[14]~_Duplicate_1feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \x_in[14]~_Duplicate_1feeder_combout\ = ( \x[15]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_x[15]~input_o\,
	combout => \x_in[14]~_Duplicate_1feeder_combout\);

-- Location: FF_X19_Y4_N38
\x_in[14]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \x_in[14]~_Duplicate_1feeder_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x_in[14]~_Duplicate_1_q\);

-- Location: LABCELL_X19_Y4_N54
\x_z[14]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \x_z[14]~SCLR_LUT_combout\ = ( \x_in[14]~_Duplicate_1_q\ & ( !\rst~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rst~input_o\,
	dataf => \ALT_INV_x_in[14]~_Duplicate_1_q\,
	combout => \x_z[14]~SCLR_LUT_combout\);

-- Location: IOIBUF_X4_Y0_N52
\x[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(16),
	o => \x[16]~input_o\);

-- Location: LABCELL_X19_Y4_N39
\x_in[15]~_Duplicate_1feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \x_in[15]~_Duplicate_1feeder_combout\ = ( \x[16]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_x[16]~input_o\,
	combout => \x_in[15]~_Duplicate_1feeder_combout\);

-- Location: FF_X19_Y4_N41
\x_in[15]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \x_in[15]~_Duplicate_1feeder_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x_in[15]~_Duplicate_1_q\);

-- Location: LABCELL_X19_Y4_N12
\x_z[15]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \x_z[15]~SCLR_LUT_combout\ = ( \x_in[15]~_Duplicate_1_q\ & ( !\rst~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rst~input_o\,
	dataf => \ALT_INV_x_in[15]~_Duplicate_1_q\,
	combout => \x_z[15]~SCLR_LUT_combout\);

-- Location: IOIBUF_X6_Y0_N52
\x[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(17),
	o => \x[17]~input_o\);

-- Location: FF_X19_Y2_N23
\x_in[16]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \x[17]~input_o\,
	sload => VCC,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x_in[16]~_Duplicate_2_q\);

-- Location: LABCELL_X19_Y2_N21
\x_z[16]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \x_z[16]~SCLR_LUT_combout\ = ( \x_in[16]~_Duplicate_2_q\ & ( !\rst~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_x_in[16]~_Duplicate_2_q\,
	dataf => \ALT_INV_rst~input_o\,
	combout => \x_z[16]~SCLR_LUT_combout\);

-- Location: DSP_X32_Y2_N0
\Mult1~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 22,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 27,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m27x27",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "true",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \Mult1~8_ACLR_bus\,
	clk => \Mult1~8_CLK_bus\,
	ena => \Mult1~8_ENA_bus\,
	ax => \Mult1~8_AX_bus\,
	ay => \Mult1~8_AY_bus\,
	resulta => \Mult1~8_RESULTA_bus\);

-- Location: DSP_X20_Y4_N0
\Mult0~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 21,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 27,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m27x27",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "true",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \Mult0~8_ACLR_bus\,
	clk => \Mult0~8_CLK_bus\,
	ena => \Mult0~8_ENA_bus\,
	ax => \Mult0~8_AX_bus\,
	ay => \Mult0~8_AY_bus\,
	resulta => \Mult0~8_RESULTA_bus\);

-- Location: FF_X19_Y4_N17
\x_z[0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \x_z[0]~SCLR_LUT_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x_z[0]~_Duplicate_1_q\);

-- Location: LABCELL_X19_Y4_N21
\x_zz[0]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \x_zz[0]~SCLR_LUT_combout\ = ( !\rst~input_o\ & ( \x_z[0]~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_x_z[0]~_Duplicate_1_q\,
	dataf => \ALT_INV_rst~input_o\,
	combout => \x_zz[0]~SCLR_LUT_combout\);

-- Location: FF_X19_Y2_N2
\x_z[1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \x_z[1]~SCLR_LUT_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x_z[1]~_Duplicate_1_q\);

-- Location: LABCELL_X19_Y2_N3
\x_zz[1]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \x_zz[1]~SCLR_LUT_combout\ = (!\rst~input_o\ & \x_z[1]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rst~input_o\,
	datad => \ALT_INV_x_z[1]~_Duplicate_1_q\,
	combout => \x_zz[1]~SCLR_LUT_combout\);

-- Location: FF_X21_Y2_N41
\x_z[2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \x_z[2]~SCLR_LUT_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x_z[2]~_Duplicate_1_q\);

-- Location: MLABCELL_X21_Y2_N36
\x_zz[2]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \x_zz[2]~SCLR_LUT_combout\ = ( \x_z[2]~_Duplicate_1_q\ & ( !\rst~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rst~input_o\,
	dataf => \ALT_INV_x_z[2]~_Duplicate_1_q\,
	combout => \x_zz[2]~SCLR_LUT_combout\);

-- Location: FF_X21_Y2_N44
\x_z[3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \x_z[3]~SCLR_LUT_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x_z[3]~_Duplicate_1_q\);

-- Location: MLABCELL_X21_Y2_N45
\x_zz[3]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \x_zz[3]~SCLR_LUT_combout\ = ( \x_z[3]~_Duplicate_1_q\ & ( !\rst~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rst~input_o\,
	dataf => \ALT_INV_x_z[3]~_Duplicate_1_q\,
	combout => \x_zz[3]~SCLR_LUT_combout\);

-- Location: FF_X21_Y2_N2
\x_z[4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \x_z[4]~SCLR_LUT_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x_z[4]~_Duplicate_1_q\);

-- Location: MLABCELL_X21_Y2_N3
\x_zz[4]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \x_zz[4]~SCLR_LUT_combout\ = (!\rst~input_o\ & \x_z[4]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rst~input_o\,
	datad => \ALT_INV_x_z[4]~_Duplicate_1_q\,
	combout => \x_zz[4]~SCLR_LUT_combout\);

-- Location: FF_X21_Y2_N14
\x_z[5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \x_z[5]~SCLR_LUT_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x_z[5]~_Duplicate_1_q\);

-- Location: MLABCELL_X21_Y2_N15
\x_zz[5]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \x_zz[5]~SCLR_LUT_combout\ = ( \x_z[5]~_Duplicate_1_q\ & ( !\rst~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rst~input_o\,
	dataf => \ALT_INV_x_z[5]~_Duplicate_1_q\,
	combout => \x_zz[5]~SCLR_LUT_combout\);

-- Location: FF_X21_Y2_N20
\x_z[6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \x_z[6]~SCLR_LUT_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x_z[6]~_Duplicate_1_q\);

-- Location: MLABCELL_X21_Y2_N21
\x_zz[6]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \x_zz[6]~SCLR_LUT_combout\ = ( \x_z[6]~_Duplicate_1_q\ & ( !\rst~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rst~input_o\,
	dataf => \ALT_INV_x_z[6]~_Duplicate_1_q\,
	combout => \x_zz[6]~SCLR_LUT_combout\);

-- Location: FF_X19_Y4_N2
\x_z[7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \x_z[7]~SCLR_LUT_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x_z[7]~_Duplicate_1_q\);

-- Location: LABCELL_X19_Y4_N3
\x_zz[7]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \x_zz[7]~SCLR_LUT_combout\ = (!\rst~input_o\ & \x_z[7]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rst~input_o\,
	datad => \ALT_INV_x_z[7]~_Duplicate_1_q\,
	combout => \x_zz[7]~SCLR_LUT_combout\);

-- Location: FF_X21_Y2_N8
\x_z[8]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \x_z[8]~SCLR_LUT_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x_z[8]~_Duplicate_1_q\);

-- Location: MLABCELL_X21_Y2_N9
\x_zz[8]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \x_zz[8]~SCLR_LUT_combout\ = ( \x_z[8]~_Duplicate_1_q\ & ( !\rst~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rst~input_o\,
	dataf => \ALT_INV_x_z[8]~_Duplicate_1_q\,
	combout => \x_zz[8]~SCLR_LUT_combout\);

-- Location: FF_X19_Y2_N53
\x_z[9]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \x_z[9]~SCLR_LUT_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x_z[9]~_Duplicate_1_q\);

-- Location: LABCELL_X19_Y2_N48
\x_zz[9]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \x_zz[9]~SCLR_LUT_combout\ = ( \x_z[9]~_Duplicate_1_q\ & ( !\rst~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rst~input_o\,
	dataf => \ALT_INV_x_z[9]~_Duplicate_1_q\,
	combout => \x_zz[9]~SCLR_LUT_combout\);

-- Location: FF_X19_Y2_N26
\x_z[10]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \x_z[10]~SCLR_LUT_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x_z[10]~_Duplicate_1_q\);

-- Location: LABCELL_X19_Y2_N27
\x_zz[10]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \x_zz[10]~SCLR_LUT_combout\ = ( \x_z[10]~_Duplicate_1_q\ & ( !\rst~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rst~input_o\,
	dataf => \ALT_INV_x_z[10]~_Duplicate_1_q\,
	combout => \x_zz[10]~SCLR_LUT_combout\);

-- Location: FF_X19_Y4_N44
\x_z[11]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \x_z[11]~SCLR_LUT_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x_z[11]~_Duplicate_1_q\);

-- Location: LABCELL_X19_Y4_N33
\x_zz[11]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \x_zz[11]~SCLR_LUT_combout\ = ( \x_z[11]~_Duplicate_1_q\ & ( !\rst~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rst~input_o\,
	dataf => \ALT_INV_x_z[11]~_Duplicate_1_q\,
	combout => \x_zz[11]~SCLR_LUT_combout\);

-- Location: FF_X19_Y4_N53
\x_z[12]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \x_z[12]~SCLR_LUT_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x_z[12]~_Duplicate_1_q\);

-- Location: LABCELL_X19_Y4_N48
\x_zz[12]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \x_zz[12]~SCLR_LUT_combout\ = ( \x_z[12]~_Duplicate_1_q\ & ( !\rst~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rst~input_o\,
	dataf => \ALT_INV_x_z[12]~_Duplicate_1_q\,
	combout => \x_zz[12]~SCLR_LUT_combout\);

-- Location: FF_X19_Y4_N8
\x_z[13]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \x_z[13]~SCLR_LUT_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x_z[13]~_Duplicate_1_q\);

-- Location: LABCELL_X19_Y4_N45
\x_zz[13]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \x_zz[13]~SCLR_LUT_combout\ = ( \x_z[13]~_Duplicate_1_q\ & ( !\rst~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rst~input_o\,
	dataf => \ALT_INV_x_z[13]~_Duplicate_1_q\,
	combout => \x_zz[13]~SCLR_LUT_combout\);

-- Location: FF_X19_Y4_N56
\x_z[14]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \x_z[14]~SCLR_LUT_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x_z[14]~_Duplicate_1_q\);

-- Location: LABCELL_X19_Y4_N9
\x_zz[14]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \x_zz[14]~SCLR_LUT_combout\ = ( \x_z[14]~_Duplicate_1_q\ & ( !\rst~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rst~input_o\,
	dataf => \ALT_INV_x_z[14]~_Duplicate_1_q\,
	combout => \x_zz[14]~SCLR_LUT_combout\);

-- Location: FF_X19_Y4_N14
\x_z[15]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \x_z[15]~SCLR_LUT_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x_z[15]~_Duplicate_1_q\);

-- Location: LABCELL_X19_Y4_N57
\x_zz[15]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \x_zz[15]~SCLR_LUT_combout\ = ( \x_z[15]~_Duplicate_1_q\ & ( !\rst~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rst~input_o\,
	dataf => \ALT_INV_x_z[15]~_Duplicate_1_q\,
	combout => \x_zz[15]~SCLR_LUT_combout\);

-- Location: FF_X19_Y2_N14
\x_z[16]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \x_z[16]~SCLR_LUT_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x_z[16]~_Duplicate_2_q\);

-- Location: LABCELL_X19_Y2_N12
\x_zz[16]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \x_zz[16]~SCLR_LUT_combout\ = ( \x_z[16]~_Duplicate_2_q\ & ( !\rst~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_x_z[16]~_Duplicate_2_q\,
	dataf => \ALT_INV_rst~input_o\,
	combout => \x_zz[16]~SCLR_LUT_combout\);

-- Location: DSP_X20_Y6_N0
\Mult2~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 21,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 27,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m27x27",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "true",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \Mult2~8_ACLR_bus\,
	clk => \Mult2~8_CLK_bus\,
	ena => \Mult2~8_ENA_bus\,
	ax => \Mult2~8_AX_bus\,
	ay => \Mult2~8_AY_bus\,
	resulta => \Mult2~8_RESULTA_bus\);

-- Location: LABCELL_X29_Y5_N0
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( !x_z_b1(30) $ (!x_zz_b2(30) $ (x_in_b0(30))) ) + ( !VCC ) + ( !VCC ))
-- \Add0~2\ = CARRY(( !x_z_b1(30) $ (!x_zz_b2(30) $ (x_in_b0(30))) ) + ( !VCC ) + ( !VCC ))
-- \Add0~3\ = SHARE((!x_z_b1(30) & (x_zz_b2(30) & x_in_b0(30))) # (x_z_b1(30) & ((x_in_b0(30)) # (x_zz_b2(30)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_x_z_b1(30),
	datac => ALT_INV_x_zz_b2(30),
	datad => ALT_INV_x_in_b0(30),
	cin => GND,
	sharein => GND,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\,
	shareout => \Add0~3\);

-- Location: LABCELL_X29_Y5_N3
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( !x_z_b1(31) $ (!x_in_b0(31) $ (x_zz_b2(31))) ) + ( \Add0~3\ ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( !x_z_b1(31) $ (!x_in_b0(31) $ (x_zz_b2(31))) ) + ( \Add0~3\ ) + ( \Add0~2\ ))
-- \Add0~7\ = SHARE((!x_z_b1(31) & (x_in_b0(31) & x_zz_b2(31))) # (x_z_b1(31) & ((x_zz_b2(31)) # (x_in_b0(31)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_x_z_b1(31),
	datac => ALT_INV_x_in_b0(31),
	datad => ALT_INV_x_zz_b2(31),
	cin => \Add0~2\,
	sharein => \Add0~3\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\,
	shareout => \Add0~7\);

-- Location: LABCELL_X29_Y5_N6
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( !x_z_b1(32) $ (!x_zz_b2(32) $ (x_in_b0(32))) ) + ( \Add0~7\ ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( !x_z_b1(32) $ (!x_zz_b2(32) $ (x_in_b0(32))) ) + ( \Add0~7\ ) + ( \Add0~6\ ))
-- \Add0~11\ = SHARE((!x_z_b1(32) & (x_zz_b2(32) & x_in_b0(32))) # (x_z_b1(32) & ((x_in_b0(32)) # (x_zz_b2(32)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_x_z_b1(32),
	datac => ALT_INV_x_zz_b2(32),
	datad => ALT_INV_x_in_b0(32),
	cin => \Add0~6\,
	sharein => \Add0~7\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\,
	shareout => \Add0~11\);

-- Location: LABCELL_X29_Y5_N9
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( !x_z_b1(33) $ (!x_in_b0(33) $ (x_zz_b2(33))) ) + ( \Add0~11\ ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( !x_z_b1(33) $ (!x_in_b0(33) $ (x_zz_b2(33))) ) + ( \Add0~11\ ) + ( \Add0~10\ ))
-- \Add0~15\ = SHARE((!x_z_b1(33) & (x_in_b0(33) & x_zz_b2(33))) # (x_z_b1(33) & ((x_zz_b2(33)) # (x_in_b0(33)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_x_z_b1(33),
	datac => ALT_INV_x_in_b0(33),
	datad => ALT_INV_x_zz_b2(33),
	cin => \Add0~10\,
	sharein => \Add0~11\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\,
	shareout => \Add0~15\);

-- Location: LABCELL_X29_Y5_N12
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( !x_z_b1(34) $ (!x_zz_b2(34) $ (x_in_b0(34))) ) + ( \Add0~15\ ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( !x_z_b1(34) $ (!x_zz_b2(34) $ (x_in_b0(34))) ) + ( \Add0~15\ ) + ( \Add0~14\ ))
-- \Add0~19\ = SHARE((!x_z_b1(34) & (x_zz_b2(34) & x_in_b0(34))) # (x_z_b1(34) & ((x_in_b0(34)) # (x_zz_b2(34)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_x_z_b1(34),
	datac => ALT_INV_x_zz_b2(34),
	datad => ALT_INV_x_in_b0(34),
	cin => \Add0~14\,
	sharein => \Add0~15\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\,
	shareout => \Add0~19\);

-- Location: LABCELL_X29_Y5_N15
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( !x_z_b1(35) $ (!x_in_b0(35) $ (x_zz_b2(35))) ) + ( \Add0~19\ ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( !x_z_b1(35) $ (!x_in_b0(35) $ (x_zz_b2(35))) ) + ( \Add0~19\ ) + ( \Add0~18\ ))
-- \Add0~23\ = SHARE((!x_z_b1(35) & (x_in_b0(35) & x_zz_b2(35))) # (x_z_b1(35) & ((x_zz_b2(35)) # (x_in_b0(35)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_x_z_b1(35),
	datac => ALT_INV_x_in_b0(35),
	datad => ALT_INV_x_zz_b2(35),
	cin => \Add0~18\,
	sharein => \Add0~19\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\,
	shareout => \Add0~23\);

-- Location: LABCELL_X29_Y5_N18
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( !x_in_b0(36) $ (!x_z_b1(36) $ (x_zz_b2(36))) ) + ( \Add0~23\ ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( !x_in_b0(36) $ (!x_z_b1(36) $ (x_zz_b2(36))) ) + ( \Add0~23\ ) + ( \Add0~22\ ))
-- \Add0~27\ = SHARE((!x_in_b0(36) & (x_z_b1(36) & x_zz_b2(36))) # (x_in_b0(36) & ((x_zz_b2(36)) # (x_z_b1(36)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_x_in_b0(36),
	datac => ALT_INV_x_z_b1(36),
	datad => ALT_INV_x_zz_b2(36),
	cin => \Add0~22\,
	sharein => \Add0~23\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\,
	shareout => \Add0~27\);

-- Location: LABCELL_X29_Y5_N21
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( !x_in_b0(37) $ (!x_z_b1(37) $ (x_zz_b2(37))) ) + ( \Add0~27\ ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( !x_in_b0(37) $ (!x_z_b1(37) $ (x_zz_b2(37))) ) + ( \Add0~27\ ) + ( \Add0~26\ ))
-- \Add0~31\ = SHARE((!x_in_b0(37) & (x_z_b1(37) & x_zz_b2(37))) # (x_in_b0(37) & ((x_zz_b2(37)) # (x_z_b1(37)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_x_in_b0(37),
	datac => ALT_INV_x_z_b1(37),
	datad => ALT_INV_x_zz_b2(37),
	cin => \Add0~26\,
	sharein => \Add0~27\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\,
	shareout => \Add0~31\);

-- Location: LABCELL_X29_Y5_N24
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( !x_in_b0(38) $ (!x_z_b1(38) $ (x_zz_b2(38))) ) + ( \Add0~31\ ) + ( \Add0~30\ ))
-- \Add0~34\ = CARRY(( !x_in_b0(38) $ (!x_z_b1(38) $ (x_zz_b2(38))) ) + ( \Add0~31\ ) + ( \Add0~30\ ))
-- \Add0~35\ = SHARE((!x_in_b0(38) & (x_z_b1(38) & x_zz_b2(38))) # (x_in_b0(38) & ((x_zz_b2(38)) # (x_z_b1(38)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_x_in_b0(38),
	datac => ALT_INV_x_z_b1(38),
	datad => ALT_INV_x_zz_b2(38),
	cin => \Add0~30\,
	sharein => \Add0~31\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\,
	shareout => \Add0~35\);

-- Location: LABCELL_X29_Y5_N27
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( !x_in_b0(38) $ (!x_z_b1(39) $ (x_zz_b2(38))) ) + ( \Add0~35\ ) + ( \Add0~34\ ))
-- \Add0~38\ = CARRY(( !x_in_b0(38) $ (!x_z_b1(39) $ (x_zz_b2(38))) ) + ( \Add0~35\ ) + ( \Add0~34\ ))
-- \Add0~39\ = SHARE((!x_in_b0(38) & (x_z_b1(39) & x_zz_b2(38))) # (x_in_b0(38) & ((x_zz_b2(38)) # (x_z_b1(39)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_x_in_b0(38),
	datac => ALT_INV_x_z_b1(39),
	datad => ALT_INV_x_zz_b2(38),
	cin => \Add0~34\,
	sharein => \Add0~35\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\,
	shareout => \Add0~39\);

-- Location: LABCELL_X29_Y5_N30
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( !x_z_b1(39) $ (!x_zz_b2(38) $ (x_in_b0(38))) ) + ( \Add0~39\ ) + ( \Add0~38\ ))
-- \Add0~42\ = CARRY(( !x_z_b1(39) $ (!x_zz_b2(38) $ (x_in_b0(38))) ) + ( \Add0~39\ ) + ( \Add0~38\ ))
-- \Add0~43\ = SHARE((!x_z_b1(39) & (x_zz_b2(38) & x_in_b0(38))) # (x_z_b1(39) & ((x_in_b0(38)) # (x_zz_b2(38)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_x_z_b1(39),
	datac => ALT_INV_x_zz_b2(38),
	datad => ALT_INV_x_in_b0(38),
	cin => \Add0~38\,
	sharein => \Add0~39\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\,
	shareout => \Add0~43\);

-- Location: LABCELL_X29_Y5_N33
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( !x_z_b1(39) $ (!x_in_b0(38) $ (x_zz_b2(38))) ) + ( \Add0~43\ ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_x_z_b1(39),
	datac => ALT_INV_x_in_b0(38),
	datad => ALT_INV_x_zz_b2(38),
	cin => \Add0~42\,
	sharein => \Add0~43\,
	sumout => \Add0~45_sumout\);

-- Location: DSP_X32_Y4_N0
\Mult3~421\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "0",
	ax_width => 18,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 18,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_full",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "true",
	signed_may => "false",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \Mult3~421_ACLR_bus\,
	clk => \Mult3~421_CLK_bus\,
	ena => \Mult3~421_ENA_bus\,
	ax => \Mult3~421_AX_bus\,
	ay => \Mult3~421_AY_bus\,
	resulta => \Mult3~421_RESULTA_bus\);

-- Location: LABCELL_X30_Y6_N30
\Mult3~800\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult3~800_cout\ = CARRY(( !\Mult3~439\ $ (!\Mult3~80_resulta\) ) + ( !VCC ) + ( !VCC ))
-- \Mult3~801\ = SHARE((\Mult3~439\ & \Mult3~80_resulta\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mult3~439\,
	datad => \ALT_INV_Mult3~80_resulta\,
	cin => GND,
	sharein => GND,
	cout => \Mult3~800_cout\,
	shareout => \Mult3~801\);

-- Location: LABCELL_X30_Y6_N33
\Mult3~796\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult3~796_cout\ = CARRY(( !\Mult3~440\ $ (!\Mult3~81\) ) + ( \Mult3~801\ ) + ( \Mult3~800_cout\ ))
-- \Mult3~797\ = SHARE((\Mult3~440\ & \Mult3~81\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mult3~440\,
	datad => \ALT_INV_Mult3~81\,
	cin => \Mult3~800_cout\,
	sharein => \Mult3~801\,
	cout => \Mult3~796_cout\,
	shareout => \Mult3~797\);

-- Location: LABCELL_X30_Y6_N36
\Mult3~792\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult3~792_cout\ = CARRY(( !\Mult3~82\ $ (!\Mult3~441\) ) + ( \Mult3~797\ ) + ( \Mult3~796_cout\ ))
-- \Mult3~793\ = SHARE((\Mult3~82\ & \Mult3~441\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mult3~82\,
	datad => \ALT_INV_Mult3~441\,
	cin => \Mult3~796_cout\,
	sharein => \Mult3~797\,
	cout => \Mult3~792_cout\,
	shareout => \Mult3~793\);

-- Location: LABCELL_X30_Y6_N39
\Mult3~788\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult3~788_cout\ = CARRY(( !\Mult3~442\ $ (!\Mult3~83\) ) + ( \Mult3~793\ ) + ( \Mult3~792_cout\ ))
-- \Mult3~789\ = SHARE((\Mult3~442\ & \Mult3~83\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mult3~442\,
	datad => \ALT_INV_Mult3~83\,
	cin => \Mult3~792_cout\,
	sharein => \Mult3~793\,
	cout => \Mult3~788_cout\,
	shareout => \Mult3~789\);

-- Location: LABCELL_X30_Y6_N42
\Mult3~784\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult3~784_cout\ = CARRY(( !\Mult3~84\ $ (!\Mult3~443\) ) + ( \Mult3~789\ ) + ( \Mult3~788_cout\ ))
-- \Mult3~785\ = SHARE((\Mult3~84\ & \Mult3~443\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mult3~84\,
	datad => \ALT_INV_Mult3~443\,
	cin => \Mult3~788_cout\,
	sharein => \Mult3~789\,
	cout => \Mult3~784_cout\,
	shareout => \Mult3~785\);

-- Location: LABCELL_X30_Y6_N45
\Mult3~780\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult3~780_cout\ = CARRY(( !\Mult3~444\ $ (!\Mult3~85\) ) + ( \Mult3~785\ ) + ( \Mult3~784_cout\ ))
-- \Mult3~781\ = SHARE((\Mult3~444\ & \Mult3~85\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mult3~444\,
	datad => \ALT_INV_Mult3~85\,
	cin => \Mult3~784_cout\,
	sharein => \Mult3~785\,
	cout => \Mult3~780_cout\,
	shareout => \Mult3~781\);

-- Location: LABCELL_X30_Y6_N48
\Mult3~776\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult3~776_cout\ = CARRY(( !\Mult3~86\ $ (!\Mult3~445\) ) + ( \Mult3~781\ ) + ( \Mult3~780_cout\ ))
-- \Mult3~777\ = SHARE((\Mult3~86\ & \Mult3~445\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mult3~86\,
	datad => \ALT_INV_Mult3~445\,
	cin => \Mult3~780_cout\,
	sharein => \Mult3~781\,
	cout => \Mult3~776_cout\,
	shareout => \Mult3~777\);

-- Location: LABCELL_X30_Y6_N51
\Mult3~772\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult3~772_cout\ = CARRY(( !\Mult3~87\ $ (!\Mult3~446\) ) + ( \Mult3~777\ ) + ( \Mult3~776_cout\ ))
-- \Mult3~773\ = SHARE((\Mult3~87\ & \Mult3~446\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mult3~87\,
	datad => \ALT_INV_Mult3~446\,
	cin => \Mult3~776_cout\,
	sharein => \Mult3~777\,
	cout => \Mult3~772_cout\,
	shareout => \Mult3~773\);

-- Location: LABCELL_X30_Y6_N54
\Mult3~768\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult3~768_cout\ = CARRY(( !\Mult3~88\ $ (!\Mult3~447\) ) + ( \Mult3~773\ ) + ( \Mult3~772_cout\ ))
-- \Mult3~769\ = SHARE((\Mult3~88\ & \Mult3~447\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mult3~88\,
	datad => \ALT_INV_Mult3~447\,
	cin => \Mult3~772_cout\,
	sharein => \Mult3~773\,
	cout => \Mult3~768_cout\,
	shareout => \Mult3~769\);

-- Location: LABCELL_X30_Y6_N57
\Mult3~764\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult3~764_cout\ = CARRY(( !\Mult3~89\ $ (!\Mult3~448\) ) + ( \Mult3~769\ ) + ( \Mult3~768_cout\ ))
-- \Mult3~765\ = SHARE((\Mult3~89\ & \Mult3~448\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mult3~89\,
	datad => \ALT_INV_Mult3~448\,
	cin => \Mult3~768_cout\,
	sharein => \Mult3~769\,
	cout => \Mult3~764_cout\,
	shareout => \Mult3~765\);

-- Location: LABCELL_X30_Y5_N0
\Mult3~760\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult3~760_cout\ = CARRY(( !\Mult3~90\ $ (!\Mult3~449\) ) + ( \Mult3~765\ ) + ( \Mult3~764_cout\ ))
-- \Mult3~761\ = SHARE((\Mult3~90\ & \Mult3~449\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mult3~90\,
	datad => \ALT_INV_Mult3~449\,
	cin => \Mult3~764_cout\,
	sharein => \Mult3~765\,
	cout => \Mult3~760_cout\,
	shareout => \Mult3~761\);

-- Location: LABCELL_X30_Y5_N3
\Mult3~756\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult3~756_cout\ = CARRY(( !\Mult3~450\ $ (!\Mult3~91\) ) + ( \Mult3~761\ ) + ( \Mult3~760_cout\ ))
-- \Mult3~757\ = SHARE((\Mult3~450\ & \Mult3~91\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mult3~450\,
	datad => \ALT_INV_Mult3~91\,
	cin => \Mult3~760_cout\,
	sharein => \Mult3~761\,
	cout => \Mult3~756_cout\,
	shareout => \Mult3~757\);

-- Location: LABCELL_X30_Y5_N6
\Mult3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult3~1_sumout\ = SUM(( !\Add0~1_sumout\ $ (!\Mult3~451\ $ (\Mult3~92\)) ) + ( \Mult3~757\ ) + ( \Mult3~756_cout\ ))
-- \Mult3~2\ = CARRY(( !\Add0~1_sumout\ $ (!\Mult3~451\ $ (\Mult3~92\)) ) + ( \Mult3~757\ ) + ( \Mult3~756_cout\ ))
-- \Mult3~3\ = SHARE((!\Add0~1_sumout\ & (\Mult3~451\ & \Mult3~92\)) # (\Add0~1_sumout\ & ((\Mult3~92\) # (\Mult3~451\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add0~1_sumout\,
	datac => \ALT_INV_Mult3~451\,
	datad => \ALT_INV_Mult3~92\,
	cin => \Mult3~756_cout\,
	sharein => \Mult3~757\,
	sumout => \Mult3~1_sumout\,
	cout => \Mult3~2\,
	shareout => \Mult3~3\);

-- Location: LABCELL_X30_Y5_N9
\Mult3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult3~5_sumout\ = SUM(( !\Mult3~93\ $ (!\Add0~5_sumout\ $ (\Mult3~452\)) ) + ( \Mult3~3\ ) + ( \Mult3~2\ ))
-- \Mult3~6\ = CARRY(( !\Mult3~93\ $ (!\Add0~5_sumout\ $ (\Mult3~452\)) ) + ( \Mult3~3\ ) + ( \Mult3~2\ ))
-- \Mult3~7\ = SHARE((!\Mult3~93\ & (\Add0~5_sumout\ & \Mult3~452\)) # (\Mult3~93\ & ((\Mult3~452\) # (\Add0~5_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult3~93\,
	datac => \ALT_INV_Add0~5_sumout\,
	datad => \ALT_INV_Mult3~452\,
	cin => \Mult3~2\,
	sharein => \Mult3~3\,
	sumout => \Mult3~5_sumout\,
	cout => \Mult3~6\,
	shareout => \Mult3~7\);

-- Location: LABCELL_X30_Y5_N12
\Mult3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult3~9_sumout\ = SUM(( !\Mult3~453\ $ (!\Mult3~94\ $ (\Add0~9_sumout\)) ) + ( \Mult3~7\ ) + ( \Mult3~6\ ))
-- \Mult3~10\ = CARRY(( !\Mult3~453\ $ (!\Mult3~94\ $ (\Add0~9_sumout\)) ) + ( \Mult3~7\ ) + ( \Mult3~6\ ))
-- \Mult3~11\ = SHARE((!\Mult3~453\ & (\Mult3~94\ & \Add0~9_sumout\)) # (\Mult3~453\ & ((\Add0~9_sumout\) # (\Mult3~94\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mult3~453\,
	datac => \ALT_INV_Mult3~94\,
	datad => \ALT_INV_Add0~9_sumout\,
	cin => \Mult3~6\,
	sharein => \Mult3~7\,
	sumout => \Mult3~9_sumout\,
	cout => \Mult3~10\,
	shareout => \Mult3~11\);

-- Location: LABCELL_X30_Y5_N15
\Mult3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult3~13_sumout\ = SUM(( !\Mult3~454\ $ (!\Add0~13_sumout\ $ (\Mult3~95\)) ) + ( \Mult3~11\ ) + ( \Mult3~10\ ))
-- \Mult3~14\ = CARRY(( !\Mult3~454\ $ (!\Add0~13_sumout\ $ (\Mult3~95\)) ) + ( \Mult3~11\ ) + ( \Mult3~10\ ))
-- \Mult3~15\ = SHARE((!\Mult3~454\ & (\Add0~13_sumout\ & \Mult3~95\)) # (\Mult3~454\ & ((\Mult3~95\) # (\Add0~13_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult3~454\,
	datac => \ALT_INV_Add0~13_sumout\,
	datad => \ALT_INV_Mult3~95\,
	cin => \Mult3~10\,
	sharein => \Mult3~11\,
	sumout => \Mult3~13_sumout\,
	cout => \Mult3~14\,
	shareout => \Mult3~15\);

-- Location: LABCELL_X30_Y5_N18
\Mult3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult3~17_sumout\ = SUM(( !\Mult3~96\ $ (!\Mult3~455\ $ (\Add0~17_sumout\)) ) + ( \Mult3~15\ ) + ( \Mult3~14\ ))
-- \Mult3~18\ = CARRY(( !\Mult3~96\ $ (!\Mult3~455\ $ (\Add0~17_sumout\)) ) + ( \Mult3~15\ ) + ( \Mult3~14\ ))
-- \Mult3~19\ = SHARE((!\Mult3~96\ & (\Mult3~455\ & \Add0~17_sumout\)) # (\Mult3~96\ & ((\Add0~17_sumout\) # (\Mult3~455\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult3~96\,
	datac => \ALT_INV_Mult3~455\,
	datad => \ALT_INV_Add0~17_sumout\,
	cin => \Mult3~14\,
	sharein => \Mult3~15\,
	sumout => \Mult3~17_sumout\,
	cout => \Mult3~18\,
	shareout => \Mult3~19\);

-- Location: LABCELL_X30_Y5_N21
\Mult3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult3~21_sumout\ = SUM(( !\Mult3~456\ $ (!\Add0~21_sumout\ $ (\Mult3~97\)) ) + ( \Mult3~19\ ) + ( \Mult3~18\ ))
-- \Mult3~22\ = CARRY(( !\Mult3~456\ $ (!\Add0~21_sumout\ $ (\Mult3~97\)) ) + ( \Mult3~19\ ) + ( \Mult3~18\ ))
-- \Mult3~23\ = SHARE((!\Mult3~456\ & (\Add0~21_sumout\ & \Mult3~97\)) # (\Mult3~456\ & ((\Mult3~97\) # (\Add0~21_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mult3~456\,
	datac => \ALT_INV_Add0~21_sumout\,
	datad => \ALT_INV_Mult3~97\,
	cin => \Mult3~18\,
	sharein => \Mult3~19\,
	sumout => \Mult3~21_sumout\,
	cout => \Mult3~22\,
	shareout => \Mult3~23\);

-- Location: LABCELL_X30_Y5_N24
\Mult3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult3~25_sumout\ = SUM(( !\Mult3~456\ $ (!\Mult3~98\ $ (\Add0~25_sumout\)) ) + ( \Mult3~23\ ) + ( \Mult3~22\ ))
-- \Mult3~26\ = CARRY(( !\Mult3~456\ $ (!\Mult3~98\ $ (\Add0~25_sumout\)) ) + ( \Mult3~23\ ) + ( \Mult3~22\ ))
-- \Mult3~27\ = SHARE((!\Mult3~456\ & (\Mult3~98\ & \Add0~25_sumout\)) # (\Mult3~456\ & ((\Add0~25_sumout\) # (\Mult3~98\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mult3~456\,
	datac => \ALT_INV_Mult3~98\,
	datad => \ALT_INV_Add0~25_sumout\,
	cin => \Mult3~22\,
	sharein => \Mult3~23\,
	sumout => \Mult3~25_sumout\,
	cout => \Mult3~26\,
	shareout => \Mult3~27\);

-- Location: LABCELL_X30_Y5_N27
\Mult3~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult3~29_sumout\ = SUM(( !\Mult3~456\ $ (!\Mult3~99\ $ (\Add0~29_sumout\)) ) + ( \Mult3~27\ ) + ( \Mult3~26\ ))
-- \Mult3~30\ = CARRY(( !\Mult3~456\ $ (!\Mult3~99\ $ (\Add0~29_sumout\)) ) + ( \Mult3~27\ ) + ( \Mult3~26\ ))
-- \Mult3~31\ = SHARE((!\Mult3~456\ & (\Mult3~99\ & \Add0~29_sumout\)) # (\Mult3~456\ & ((\Add0~29_sumout\) # (\Mult3~99\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mult3~456\,
	datac => \ALT_INV_Mult3~99\,
	datad => \ALT_INV_Add0~29_sumout\,
	cin => \Mult3~26\,
	sharein => \Mult3~27\,
	sumout => \Mult3~29_sumout\,
	cout => \Mult3~30\,
	shareout => \Mult3~31\);

-- Location: LABCELL_X30_Y5_N30
\Mult3~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult3~33_sumout\ = SUM(( !\Mult3~456\ $ (!\Mult3~100\ $ (\Add0~33_sumout\)) ) + ( \Mult3~31\ ) + ( \Mult3~30\ ))
-- \Mult3~34\ = CARRY(( !\Mult3~456\ $ (!\Mult3~100\ $ (\Add0~33_sumout\)) ) + ( \Mult3~31\ ) + ( \Mult3~30\ ))
-- \Mult3~35\ = SHARE((!\Mult3~456\ & (\Mult3~100\ & \Add0~33_sumout\)) # (\Mult3~456\ & ((\Add0~33_sumout\) # (\Mult3~100\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mult3~456\,
	datac => \ALT_INV_Mult3~100\,
	datad => \ALT_INV_Add0~33_sumout\,
	cin => \Mult3~30\,
	sharein => \Mult3~31\,
	sumout => \Mult3~33_sumout\,
	cout => \Mult3~34\,
	shareout => \Mult3~35\);

-- Location: LABCELL_X30_Y5_N33
\Mult3~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult3~37_sumout\ = SUM(( !\Mult3~101\ $ (!\Mult3~456\ $ (\Add0~37_sumout\)) ) + ( \Mult3~35\ ) + ( \Mult3~34\ ))
-- \Mult3~38\ = CARRY(( !\Mult3~101\ $ (!\Mult3~456\ $ (\Add0~37_sumout\)) ) + ( \Mult3~35\ ) + ( \Mult3~34\ ))
-- \Mult3~39\ = SHARE((!\Mult3~101\ & (\Mult3~456\ & \Add0~37_sumout\)) # (\Mult3~101\ & ((\Add0~37_sumout\) # (\Mult3~456\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100010111011100000000000000000110011010011001",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult3~101\,
	datab => \ALT_INV_Mult3~456\,
	datad => \ALT_INV_Add0~37_sumout\,
	cin => \Mult3~34\,
	sharein => \Mult3~35\,
	sumout => \Mult3~37_sumout\,
	cout => \Mult3~38\,
	shareout => \Mult3~39\);

-- Location: LABCELL_X30_Y5_N36
\Mult3~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult3~41_sumout\ = SUM(( !\Mult3~102\ $ (!\Mult3~456\ $ (\Add0~41_sumout\)) ) + ( \Mult3~39\ ) + ( \Mult3~38\ ))
-- \Mult3~42\ = CARRY(( !\Mult3~102\ $ (!\Mult3~456\ $ (\Add0~41_sumout\)) ) + ( \Mult3~39\ ) + ( \Mult3~38\ ))
-- \Mult3~43\ = SHARE((!\Mult3~102\ & (\Mult3~456\ & \Add0~41_sumout\)) # (\Mult3~102\ & ((\Add0~41_sumout\) # (\Mult3~456\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000101110001011100000000000000000110100101101001",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult3~102\,
	datab => \ALT_INV_Mult3~456\,
	datac => \ALT_INV_Add0~41_sumout\,
	cin => \Mult3~38\,
	sharein => \Mult3~39\,
	sumout => \Mult3~41_sumout\,
	cout => \Mult3~42\,
	shareout => \Mult3~43\);

-- Location: LABCELL_X30_Y5_N39
\Mult3~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult3~45_sumout\ = SUM(( !\Mult3~456\ $ (!\Mult3~103\ $ (\Add0~45_sumout\)) ) + ( \Mult3~43\ ) + ( \Mult3~42\ ))
-- \Mult3~46\ = CARRY(( !\Mult3~456\ $ (!\Mult3~103\ $ (\Add0~45_sumout\)) ) + ( \Mult3~43\ ) + ( \Mult3~42\ ))
-- \Mult3~47\ = SHARE((!\Mult3~456\ & (\Mult3~103\ & \Add0~45_sumout\)) # (\Mult3~456\ & ((\Add0~45_sumout\) # (\Mult3~103\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mult3~456\,
	datac => \ALT_INV_Mult3~103\,
	datad => \ALT_INV_Add0~45_sumout\,
	cin => \Mult3~42\,
	sharein => \Mult3~43\,
	sumout => \Mult3~45_sumout\,
	cout => \Mult3~46\,
	shareout => \Mult3~47\);

-- Location: LABCELL_X30_Y5_N42
\Mult3~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult3~49_sumout\ = SUM(( !\Mult3~456\ $ (!\Mult3~104\ $ (\Add0~45_sumout\)) ) + ( \Mult3~47\ ) + ( \Mult3~46\ ))
-- \Mult3~50\ = CARRY(( !\Mult3~456\ $ (!\Mult3~104\ $ (\Add0~45_sumout\)) ) + ( \Mult3~47\ ) + ( \Mult3~46\ ))
-- \Mult3~51\ = SHARE((!\Mult3~456\ & (\Mult3~104\ & \Add0~45_sumout\)) # (\Mult3~456\ & ((\Add0~45_sumout\) # (\Mult3~104\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mult3~456\,
	datac => \ALT_INV_Mult3~104\,
	datad => \ALT_INV_Add0~45_sumout\,
	cin => \Mult3~46\,
	sharein => \Mult3~47\,
	sumout => \Mult3~49_sumout\,
	cout => \Mult3~50\,
	shareout => \Mult3~51\);

-- Location: LABCELL_X30_Y5_N45
\Mult3~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult3~53_sumout\ = SUM(( !\Mult3~456\ $ (!\Mult3~105\ $ (\Add0~45_sumout\)) ) + ( \Mult3~51\ ) + ( \Mult3~50\ ))
-- \Mult3~54\ = CARRY(( !\Mult3~456\ $ (!\Mult3~105\ $ (\Add0~45_sumout\)) ) + ( \Mult3~51\ ) + ( \Mult3~50\ ))
-- \Mult3~55\ = SHARE((!\Mult3~456\ & (\Mult3~105\ & \Add0~45_sumout\)) # (\Mult3~456\ & ((\Add0~45_sumout\) # (\Mult3~105\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mult3~456\,
	datac => \ALT_INV_Mult3~105\,
	datad => \ALT_INV_Add0~45_sumout\,
	cin => \Mult3~50\,
	sharein => \Mult3~51\,
	sumout => \Mult3~53_sumout\,
	cout => \Mult3~54\,
	shareout => \Mult3~55\);

-- Location: LABCELL_X30_Y5_N48
\Mult3~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult3~57_sumout\ = SUM(( !\Mult3~456\ $ (!\Mult3~106\ $ (\Add0~45_sumout\)) ) + ( \Mult3~55\ ) + ( \Mult3~54\ ))
-- \Mult3~58\ = CARRY(( !\Mult3~456\ $ (!\Mult3~106\ $ (\Add0~45_sumout\)) ) + ( \Mult3~55\ ) + ( \Mult3~54\ ))
-- \Mult3~59\ = SHARE((!\Mult3~456\ & (\Mult3~106\ & \Add0~45_sumout\)) # (\Mult3~456\ & ((\Add0~45_sumout\) # (\Mult3~106\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mult3~456\,
	datac => \ALT_INV_Mult3~106\,
	datad => \ALT_INV_Add0~45_sumout\,
	cin => \Mult3~54\,
	sharein => \Mult3~55\,
	sumout => \Mult3~57_sumout\,
	cout => \Mult3~58\,
	shareout => \Mult3~59\);

-- Location: LABCELL_X30_Y5_N51
\Mult3~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult3~61_sumout\ = SUM(( !\Mult3~456\ $ (!\Mult3~107\ $ (\Add0~45_sumout\)) ) + ( \Mult3~59\ ) + ( \Mult3~58\ ))
-- \Mult3~62\ = CARRY(( !\Mult3~456\ $ (!\Mult3~107\ $ (\Add0~45_sumout\)) ) + ( \Mult3~59\ ) + ( \Mult3~58\ ))
-- \Mult3~63\ = SHARE((!\Mult3~456\ & (\Mult3~107\ & \Add0~45_sumout\)) # (\Mult3~456\ & ((\Add0~45_sumout\) # (\Mult3~107\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mult3~456\,
	datac => \ALT_INV_Mult3~107\,
	datad => \ALT_INV_Add0~45_sumout\,
	cin => \Mult3~58\,
	sharein => \Mult3~59\,
	sumout => \Mult3~61_sumout\,
	cout => \Mult3~62\,
	shareout => \Mult3~63\);

-- Location: LABCELL_X30_Y5_N54
\Mult3~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult3~65_sumout\ = SUM(( !\Mult3~456\ $ (!\Mult3~108\ $ (\Add0~45_sumout\)) ) + ( \Mult3~63\ ) + ( \Mult3~62\ ))
-- \Mult3~66\ = CARRY(( !\Mult3~456\ $ (!\Mult3~108\ $ (\Add0~45_sumout\)) ) + ( \Mult3~63\ ) + ( \Mult3~62\ ))
-- \Mult3~67\ = SHARE((!\Mult3~456\ & (\Mult3~108\ & \Add0~45_sumout\)) # (\Mult3~456\ & ((\Add0~45_sumout\) # (\Mult3~108\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mult3~456\,
	datac => \ALT_INV_Mult3~108\,
	datad => \ALT_INV_Add0~45_sumout\,
	cin => \Mult3~62\,
	sharein => \Mult3~63\,
	sumout => \Mult3~65_sumout\,
	cout => \Mult3~66\,
	shareout => \Mult3~67\);

-- Location: LABCELL_X30_Y5_N57
\Mult3~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult3~69_sumout\ = SUM(( !\Mult3~109\ $ (!\Mult3~456\ $ (\Add0~45_sumout\)) ) + ( \Mult3~67\ ) + ( \Mult3~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000110011010011001",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult3~109\,
	datab => \ALT_INV_Mult3~456\,
	datad => \ALT_INV_Add0~45_sumout\,
	cin => \Mult3~66\,
	sharein => \Mult3~67\,
	sumout => \Mult3~69_sumout\);

-- Location: DSP_X32_Y10_N0
\Mult4~421\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "0",
	ax_width => 18,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 18,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_full",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "true",
	signed_may => "false",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \Mult4~421_ACLR_bus\,
	clk => \Mult4~421_CLK_bus\,
	ena => \Mult4~421_ENA_bus\,
	ax => \Mult4~421_AX_bus\,
	ay => \Mult4~421_AY_bus\,
	resulta => \Mult4~421_RESULTA_bus\);

-- Location: LABCELL_X31_Y7_N30
\Mult4~800\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult4~800_cout\ = CARRY(( !\Mult4~80_resulta\ $ (!\Mult4~439\) ) + ( !VCC ) + ( !VCC ))
-- \Mult4~801\ = SHARE((\Mult4~80_resulta\ & \Mult4~439\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mult4~80_resulta\,
	datad => \ALT_INV_Mult4~439\,
	cin => GND,
	sharein => GND,
	cout => \Mult4~800_cout\,
	shareout => \Mult4~801\);

-- Location: LABCELL_X31_Y7_N33
\Mult4~796\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult4~796_cout\ = CARRY(( !\Mult4~81\ $ (!\Mult4~440\) ) + ( \Mult4~801\ ) + ( \Mult4~800_cout\ ))
-- \Mult4~797\ = SHARE((\Mult4~81\ & \Mult4~440\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mult4~81\,
	datac => \ALT_INV_Mult4~440\,
	cin => \Mult4~800_cout\,
	sharein => \Mult4~801\,
	cout => \Mult4~796_cout\,
	shareout => \Mult4~797\);

-- Location: LABCELL_X31_Y7_N36
\Mult4~792\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult4~792_cout\ = CARRY(( !\Mult4~441\ $ (!\Mult4~82\) ) + ( \Mult4~797\ ) + ( \Mult4~796_cout\ ))
-- \Mult4~793\ = SHARE((\Mult4~441\ & \Mult4~82\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mult4~441\,
	datac => \ALT_INV_Mult4~82\,
	cin => \Mult4~796_cout\,
	sharein => \Mult4~797\,
	cout => \Mult4~792_cout\,
	shareout => \Mult4~793\);

-- Location: LABCELL_X31_Y7_N39
\Mult4~788\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult4~788_cout\ = CARRY(( !\Mult4~442\ $ (!\Mult4~83\) ) + ( \Mult4~793\ ) + ( \Mult4~792_cout\ ))
-- \Mult4~789\ = SHARE((\Mult4~442\ & \Mult4~83\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mult4~442\,
	datad => \ALT_INV_Mult4~83\,
	cin => \Mult4~792_cout\,
	sharein => \Mult4~793\,
	cout => \Mult4~788_cout\,
	shareout => \Mult4~789\);

-- Location: LABCELL_X31_Y7_N42
\Mult4~784\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult4~784_cout\ = CARRY(( !\Mult4~443\ $ (!\Mult4~84\) ) + ( \Mult4~789\ ) + ( \Mult4~788_cout\ ))
-- \Mult4~785\ = SHARE((\Mult4~443\ & \Mult4~84\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mult4~443\,
	datac => \ALT_INV_Mult4~84\,
	cin => \Mult4~788_cout\,
	sharein => \Mult4~789\,
	cout => \Mult4~784_cout\,
	shareout => \Mult4~785\);

-- Location: LABCELL_X31_Y7_N45
\Mult4~780\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult4~780_cout\ = CARRY(( !\Mult4~85\ $ (!\Mult4~444\) ) + ( \Mult4~785\ ) + ( \Mult4~784_cout\ ))
-- \Mult4~781\ = SHARE((\Mult4~85\ & \Mult4~444\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mult4~85\,
	datad => \ALT_INV_Mult4~444\,
	cin => \Mult4~784_cout\,
	sharein => \Mult4~785\,
	cout => \Mult4~780_cout\,
	shareout => \Mult4~781\);

-- Location: LABCELL_X31_Y7_N48
\Mult4~776\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult4~776_cout\ = CARRY(( !\Mult4~86\ $ (!\Mult4~445\) ) + ( \Mult4~781\ ) + ( \Mult4~780_cout\ ))
-- \Mult4~777\ = SHARE((\Mult4~86\ & \Mult4~445\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mult4~86\,
	datad => \ALT_INV_Mult4~445\,
	cin => \Mult4~780_cout\,
	sharein => \Mult4~781\,
	cout => \Mult4~776_cout\,
	shareout => \Mult4~777\);

-- Location: LABCELL_X31_Y7_N51
\Mult4~772\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult4~772_cout\ = CARRY(( !\Mult4~446\ $ (!\Mult4~87\) ) + ( \Mult4~777\ ) + ( \Mult4~776_cout\ ))
-- \Mult4~773\ = SHARE((\Mult4~446\ & \Mult4~87\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mult4~446\,
	datad => \ALT_INV_Mult4~87\,
	cin => \Mult4~776_cout\,
	sharein => \Mult4~777\,
	cout => \Mult4~772_cout\,
	shareout => \Mult4~773\);

-- Location: LABCELL_X31_Y7_N54
\Mult4~768\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult4~768_cout\ = CARRY(( !\Mult4~447\ $ (!\Mult4~88\) ) + ( \Mult4~773\ ) + ( \Mult4~772_cout\ ))
-- \Mult4~769\ = SHARE((\Mult4~447\ & \Mult4~88\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mult4~447\,
	datad => \ALT_INV_Mult4~88\,
	cin => \Mult4~772_cout\,
	sharein => \Mult4~773\,
	cout => \Mult4~768_cout\,
	shareout => \Mult4~769\);

-- Location: LABCELL_X31_Y7_N57
\Mult4~764\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult4~764_cout\ = CARRY(( !\Mult4~89\ $ (!\Mult4~448\) ) + ( \Mult4~769\ ) + ( \Mult4~768_cout\ ))
-- \Mult4~765\ = SHARE((\Mult4~89\ & \Mult4~448\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101010100000000000000000101010110101010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult4~89\,
	datad => \ALT_INV_Mult4~448\,
	cin => \Mult4~768_cout\,
	sharein => \Mult4~769\,
	cout => \Mult4~764_cout\,
	shareout => \Mult4~765\);

-- Location: LABCELL_X31_Y6_N30
\Mult4~760\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult4~760_cout\ = CARRY(( !\Mult4~449\ $ (!\Mult4~90\) ) + ( \Mult4~765\ ) + ( \Mult4~764_cout\ ))
-- \Mult4~761\ = SHARE((\Mult4~449\ & \Mult4~90\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mult4~449\,
	datad => \ALT_INV_Mult4~90\,
	cin => \Mult4~764_cout\,
	sharein => \Mult4~765\,
	cout => \Mult4~760_cout\,
	shareout => \Mult4~761\);

-- Location: LABCELL_X31_Y6_N33
\Mult4~756\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult4~756_cout\ = CARRY(( !\Mult4~91\ $ (!\Mult4~450\) ) + ( \Mult4~761\ ) + ( \Mult4~760_cout\ ))
-- \Mult4~757\ = SHARE((\Mult4~91\ & \Mult4~450\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mult4~91\,
	datad => \ALT_INV_Mult4~450\,
	cin => \Mult4~760_cout\,
	sharein => \Mult4~761\,
	cout => \Mult4~756_cout\,
	shareout => \Mult4~757\);

-- Location: LABCELL_X31_Y6_N36
\Mult4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult4~1_sumout\ = SUM(( !\Mult4~451\ $ (!\Mult3~1_sumout\ $ (\Mult4~92\)) ) + ( \Mult4~757\ ) + ( \Mult4~756_cout\ ))
-- \Mult4~2\ = CARRY(( !\Mult4~451\ $ (!\Mult3~1_sumout\ $ (\Mult4~92\)) ) + ( \Mult4~757\ ) + ( \Mult4~756_cout\ ))
-- \Mult4~3\ = SHARE((!\Mult4~451\ & (\Mult3~1_sumout\ & \Mult4~92\)) # (\Mult4~451\ & ((\Mult4~92\) # (\Mult3~1_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mult4~451\,
	datac => \ALT_INV_Mult3~1_sumout\,
	datad => \ALT_INV_Mult4~92\,
	cin => \Mult4~756_cout\,
	sharein => \Mult4~757\,
	sumout => \Mult4~1_sumout\,
	cout => \Mult4~2\,
	shareout => \Mult4~3\);

-- Location: LABCELL_X31_Y6_N39
\Mult4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult4~5_sumout\ = SUM(( !\Mult4~93\ $ (!\Mult4~452\ $ (\Mult3~5_sumout\)) ) + ( \Mult4~3\ ) + ( \Mult4~2\ ))
-- \Mult4~6\ = CARRY(( !\Mult4~93\ $ (!\Mult4~452\ $ (\Mult3~5_sumout\)) ) + ( \Mult4~3\ ) + ( \Mult4~2\ ))
-- \Mult4~7\ = SHARE((!\Mult4~93\ & (\Mult4~452\ & \Mult3~5_sumout\)) # (\Mult4~93\ & ((\Mult3~5_sumout\) # (\Mult4~452\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult4~93\,
	datac => \ALT_INV_Mult4~452\,
	datad => \ALT_INV_Mult3~5_sumout\,
	cin => \Mult4~2\,
	sharein => \Mult4~3\,
	sumout => \Mult4~5_sumout\,
	cout => \Mult4~6\,
	shareout => \Mult4~7\);

-- Location: LABCELL_X31_Y6_N42
\Mult4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult4~9_sumout\ = SUM(( !\Mult4~94\ $ (!\Mult4~453\ $ (\Mult3~9_sumout\)) ) + ( \Mult4~7\ ) + ( \Mult4~6\ ))
-- \Mult4~10\ = CARRY(( !\Mult4~94\ $ (!\Mult4~453\ $ (\Mult3~9_sumout\)) ) + ( \Mult4~7\ ) + ( \Mult4~6\ ))
-- \Mult4~11\ = SHARE((!\Mult4~94\ & (\Mult4~453\ & \Mult3~9_sumout\)) # (\Mult4~94\ & ((\Mult3~9_sumout\) # (\Mult4~453\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mult4~94\,
	datac => \ALT_INV_Mult4~453\,
	datad => \ALT_INV_Mult3~9_sumout\,
	cin => \Mult4~6\,
	sharein => \Mult4~7\,
	sumout => \Mult4~9_sumout\,
	cout => \Mult4~10\,
	shareout => \Mult4~11\);

-- Location: LABCELL_X31_Y6_N45
\Mult4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult4~13_sumout\ = SUM(( !\Mult4~454\ $ (!\Mult4~95\ $ (\Mult3~13_sumout\)) ) + ( \Mult4~11\ ) + ( \Mult4~10\ ))
-- \Mult4~14\ = CARRY(( !\Mult4~454\ $ (!\Mult4~95\ $ (\Mult3~13_sumout\)) ) + ( \Mult4~11\ ) + ( \Mult4~10\ ))
-- \Mult4~15\ = SHARE((!\Mult4~454\ & (\Mult4~95\ & \Mult3~13_sumout\)) # (\Mult4~454\ & ((\Mult3~13_sumout\) # (\Mult4~95\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult4~454\,
	datac => \ALT_INV_Mult4~95\,
	datad => \ALT_INV_Mult3~13_sumout\,
	cin => \Mult4~10\,
	sharein => \Mult4~11\,
	sumout => \Mult4~13_sumout\,
	cout => \Mult4~14\,
	shareout => \Mult4~15\);

-- Location: LABCELL_X31_Y6_N48
\Mult4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult4~17_sumout\ = SUM(( !\Mult4~96\ $ (!\Mult4~455\ $ (\Mult3~17_sumout\)) ) + ( \Mult4~15\ ) + ( \Mult4~14\ ))
-- \Mult4~18\ = CARRY(( !\Mult4~96\ $ (!\Mult4~455\ $ (\Mult3~17_sumout\)) ) + ( \Mult4~15\ ) + ( \Mult4~14\ ))
-- \Mult4~19\ = SHARE((!\Mult4~96\ & (\Mult4~455\ & \Mult3~17_sumout\)) # (\Mult4~96\ & ((\Mult3~17_sumout\) # (\Mult4~455\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult4~96\,
	datac => \ALT_INV_Mult4~455\,
	datad => \ALT_INV_Mult3~17_sumout\,
	cin => \Mult4~14\,
	sharein => \Mult4~15\,
	sumout => \Mult4~17_sumout\,
	cout => \Mult4~18\,
	shareout => \Mult4~19\);

-- Location: LABCELL_X31_Y6_N51
\Mult4~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult4~21_sumout\ = SUM(( !\Mult4~97\ $ (!\Mult4~456\ $ (\Mult3~21_sumout\)) ) + ( \Mult4~19\ ) + ( \Mult4~18\ ))
-- \Mult4~22\ = CARRY(( !\Mult4~97\ $ (!\Mult4~456\ $ (\Mult3~21_sumout\)) ) + ( \Mult4~19\ ) + ( \Mult4~18\ ))
-- \Mult4~23\ = SHARE((!\Mult4~97\ & (\Mult4~456\ & \Mult3~21_sumout\)) # (\Mult4~97\ & ((\Mult3~21_sumout\) # (\Mult4~456\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mult4~97\,
	datac => \ALT_INV_Mult4~456\,
	datad => \ALT_INV_Mult3~21_sumout\,
	cin => \Mult4~18\,
	sharein => \Mult4~19\,
	sumout => \Mult4~21_sumout\,
	cout => \Mult4~22\,
	shareout => \Mult4~23\);

-- Location: LABCELL_X31_Y6_N54
\Mult4~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult4~25_sumout\ = SUM(( !\Mult4~456\ $ (!\Mult4~98\ $ (\Mult3~25_sumout\)) ) + ( \Mult4~23\ ) + ( \Mult4~22\ ))
-- \Mult4~26\ = CARRY(( !\Mult4~456\ $ (!\Mult4~98\ $ (\Mult3~25_sumout\)) ) + ( \Mult4~23\ ) + ( \Mult4~22\ ))
-- \Mult4~27\ = SHARE((!\Mult4~456\ & (\Mult4~98\ & \Mult3~25_sumout\)) # (\Mult4~456\ & ((\Mult3~25_sumout\) # (\Mult4~98\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mult4~456\,
	datac => \ALT_INV_Mult4~98\,
	datad => \ALT_INV_Mult3~25_sumout\,
	cin => \Mult4~22\,
	sharein => \Mult4~23\,
	sumout => \Mult4~25_sumout\,
	cout => \Mult4~26\,
	shareout => \Mult4~27\);

-- Location: LABCELL_X31_Y6_N57
\Mult4~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult4~29_sumout\ = SUM(( !\Mult4~456\ $ (!\Mult4~99\ $ (\Mult3~29_sumout\)) ) + ( \Mult4~27\ ) + ( \Mult4~26\ ))
-- \Mult4~30\ = CARRY(( !\Mult4~456\ $ (!\Mult4~99\ $ (\Mult3~29_sumout\)) ) + ( \Mult4~27\ ) + ( \Mult4~26\ ))
-- \Mult4~31\ = SHARE((!\Mult4~456\ & (\Mult4~99\ & \Mult3~29_sumout\)) # (\Mult4~456\ & ((\Mult3~29_sumout\) # (\Mult4~99\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mult4~456\,
	datac => \ALT_INV_Mult4~99\,
	datad => \ALT_INV_Mult3~29_sumout\,
	cin => \Mult4~26\,
	sharein => \Mult4~27\,
	sumout => \Mult4~29_sumout\,
	cout => \Mult4~30\,
	shareout => \Mult4~31\);

-- Location: LABCELL_X31_Y5_N30
\Mult4~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult4~33_sumout\ = SUM(( !\Mult4~456\ $ (!\Mult3~33_sumout\ $ (\Mult4~100\)) ) + ( \Mult4~31\ ) + ( \Mult4~30\ ))
-- \Mult4~34\ = CARRY(( !\Mult4~456\ $ (!\Mult3~33_sumout\ $ (\Mult4~100\)) ) + ( \Mult4~31\ ) + ( \Mult4~30\ ))
-- \Mult4~35\ = SHARE((!\Mult4~456\ & (\Mult3~33_sumout\ & \Mult4~100\)) # (\Mult4~456\ & ((\Mult4~100\) # (\Mult3~33_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mult4~456\,
	datac => \ALT_INV_Mult3~33_sumout\,
	datad => \ALT_INV_Mult4~100\,
	cin => \Mult4~30\,
	sharein => \Mult4~31\,
	sumout => \Mult4~33_sumout\,
	cout => \Mult4~34\,
	shareout => \Mult4~35\);

-- Location: LABCELL_X31_Y5_N33
\Mult4~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult4~37_sumout\ = SUM(( !\Mult4~456\ $ (!\Mult4~101\ $ (\Mult3~37_sumout\)) ) + ( \Mult4~35\ ) + ( \Mult4~34\ ))
-- \Mult4~38\ = CARRY(( !\Mult4~456\ $ (!\Mult4~101\ $ (\Mult3~37_sumout\)) ) + ( \Mult4~35\ ) + ( \Mult4~34\ ))
-- \Mult4~39\ = SHARE((!\Mult4~456\ & (\Mult4~101\ & \Mult3~37_sumout\)) # (\Mult4~456\ & ((\Mult3~37_sumout\) # (\Mult4~101\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mult4~456\,
	datac => \ALT_INV_Mult4~101\,
	datad => \ALT_INV_Mult3~37_sumout\,
	cin => \Mult4~34\,
	sharein => \Mult4~35\,
	sumout => \Mult4~37_sumout\,
	cout => \Mult4~38\,
	shareout => \Mult4~39\);

-- Location: LABCELL_X31_Y5_N36
\Mult4~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult4~41_sumout\ = SUM(( !\Mult4~456\ $ (!\Mult3~41_sumout\ $ (\Mult4~102\)) ) + ( \Mult4~39\ ) + ( \Mult4~38\ ))
-- \Mult4~42\ = CARRY(( !\Mult4~456\ $ (!\Mult3~41_sumout\ $ (\Mult4~102\)) ) + ( \Mult4~39\ ) + ( \Mult4~38\ ))
-- \Mult4~43\ = SHARE((!\Mult4~456\ & (\Mult3~41_sumout\ & \Mult4~102\)) # (\Mult4~456\ & ((\Mult4~102\) # (\Mult3~41_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mult4~456\,
	datac => \ALT_INV_Mult3~41_sumout\,
	datad => \ALT_INV_Mult4~102\,
	cin => \Mult4~38\,
	sharein => \Mult4~39\,
	sumout => \Mult4~41_sumout\,
	cout => \Mult4~42\,
	shareout => \Mult4~43\);

-- Location: LABCELL_X31_Y5_N39
\Mult4~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult4~45_sumout\ = SUM(( !\Mult3~45_sumout\ $ (!\Mult4~456\ $ (\Mult4~103\)) ) + ( \Mult4~43\ ) + ( \Mult4~42\ ))
-- \Mult4~46\ = CARRY(( !\Mult3~45_sumout\ $ (!\Mult4~456\ $ (\Mult4~103\)) ) + ( \Mult4~43\ ) + ( \Mult4~42\ ))
-- \Mult4~47\ = SHARE((!\Mult3~45_sumout\ & (\Mult4~456\ & \Mult4~103\)) # (\Mult3~45_sumout\ & ((\Mult4~103\) # (\Mult4~456\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100010111011100000000000000000110011010011001",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult3~45_sumout\,
	datab => \ALT_INV_Mult4~456\,
	datad => \ALT_INV_Mult4~103\,
	cin => \Mult4~42\,
	sharein => \Mult4~43\,
	sumout => \Mult4~45_sumout\,
	cout => \Mult4~46\,
	shareout => \Mult4~47\);

-- Location: LABCELL_X31_Y5_N42
\Mult4~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult4~49_sumout\ = SUM(( !\Mult4~456\ $ (!\Mult4~104\ $ (\Mult3~49_sumout\)) ) + ( \Mult4~47\ ) + ( \Mult4~46\ ))
-- \Mult4~50\ = CARRY(( !\Mult4~456\ $ (!\Mult4~104\ $ (\Mult3~49_sumout\)) ) + ( \Mult4~47\ ) + ( \Mult4~46\ ))
-- \Mult4~51\ = SHARE((!\Mult4~456\ & (\Mult4~104\ & \Mult3~49_sumout\)) # (\Mult4~456\ & ((\Mult3~49_sumout\) # (\Mult4~104\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult4~456\,
	datac => \ALT_INV_Mult4~104\,
	datad => \ALT_INV_Mult3~49_sumout\,
	cin => \Mult4~46\,
	sharein => \Mult4~47\,
	sumout => \Mult4~49_sumout\,
	cout => \Mult4~50\,
	shareout => \Mult4~51\);

-- Location: LABCELL_X31_Y5_N45
\Mult4~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult4~53_sumout\ = SUM(( !\Mult4~456\ $ (!\Mult4~105\ $ (\Mult3~53_sumout\)) ) + ( \Mult4~51\ ) + ( \Mult4~50\ ))
-- \Mult4~54\ = CARRY(( !\Mult4~456\ $ (!\Mult4~105\ $ (\Mult3~53_sumout\)) ) + ( \Mult4~51\ ) + ( \Mult4~50\ ))
-- \Mult4~55\ = SHARE((!\Mult4~456\ & (\Mult4~105\ & \Mult3~53_sumout\)) # (\Mult4~456\ & ((\Mult3~53_sumout\) # (\Mult4~105\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000101110001011100000000000000000110100101101001",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult4~456\,
	datab => \ALT_INV_Mult4~105\,
	datac => \ALT_INV_Mult3~53_sumout\,
	cin => \Mult4~50\,
	sharein => \Mult4~51\,
	sumout => \Mult4~53_sumout\,
	cout => \Mult4~54\,
	shareout => \Mult4~55\);

-- Location: LABCELL_X31_Y5_N48
\Mult4~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult4~57_sumout\ = SUM(( !\Mult4~456\ $ (!\Mult4~106\ $ (\Mult3~57_sumout\)) ) + ( \Mult4~55\ ) + ( \Mult4~54\ ))
-- \Mult4~58\ = CARRY(( !\Mult4~456\ $ (!\Mult4~106\ $ (\Mult3~57_sumout\)) ) + ( \Mult4~55\ ) + ( \Mult4~54\ ))
-- \Mult4~59\ = SHARE((!\Mult4~456\ & (\Mult4~106\ & \Mult3~57_sumout\)) # (\Mult4~456\ & ((\Mult3~57_sumout\) # (\Mult4~106\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mult4~456\,
	datac => \ALT_INV_Mult4~106\,
	datad => \ALT_INV_Mult3~57_sumout\,
	cin => \Mult4~54\,
	sharein => \Mult4~55\,
	sumout => \Mult4~57_sumout\,
	cout => \Mult4~58\,
	shareout => \Mult4~59\);

-- Location: LABCELL_X31_Y5_N51
\Mult4~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult4~61_sumout\ = SUM(( !\Mult3~61_sumout\ $ (!\Mult4~456\ $ (\Mult4~107\)) ) + ( \Mult4~59\ ) + ( \Mult4~58\ ))
-- \Mult4~62\ = CARRY(( !\Mult3~61_sumout\ $ (!\Mult4~456\ $ (\Mult4~107\)) ) + ( \Mult4~59\ ) + ( \Mult4~58\ ))
-- \Mult4~63\ = SHARE((!\Mult3~61_sumout\ & (\Mult4~456\ & \Mult4~107\)) # (\Mult3~61_sumout\ & ((\Mult4~107\) # (\Mult4~456\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000101110001011100000000000000000110100101101001",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult3~61_sumout\,
	datab => \ALT_INV_Mult4~456\,
	datac => \ALT_INV_Mult4~107\,
	cin => \Mult4~58\,
	sharein => \Mult4~59\,
	sumout => \Mult4~61_sumout\,
	cout => \Mult4~62\,
	shareout => \Mult4~63\);

-- Location: LABCELL_X31_Y5_N54
\Mult4~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult4~65_sumout\ = SUM(( !\Mult4~108\ $ (!\Mult3~65_sumout\ $ (\Mult4~456\)) ) + ( \Mult4~63\ ) + ( \Mult4~62\ ))
-- \Mult4~66\ = CARRY(( !\Mult4~108\ $ (!\Mult3~65_sumout\ $ (\Mult4~456\)) ) + ( \Mult4~63\ ) + ( \Mult4~62\ ))
-- \Mult4~67\ = SHARE((!\Mult4~108\ & (\Mult3~65_sumout\ & \Mult4~456\)) # (\Mult4~108\ & ((\Mult4~456\) # (\Mult3~65_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mult4~108\,
	datac => \ALT_INV_Mult3~65_sumout\,
	datad => \ALT_INV_Mult4~456\,
	cin => \Mult4~62\,
	sharein => \Mult4~63\,
	sumout => \Mult4~65_sumout\,
	cout => \Mult4~66\,
	shareout => \Mult4~67\);

-- Location: LABCELL_X31_Y5_N57
\Mult4~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mult4~69_sumout\ = SUM(( !\Mult4~109\ $ (!\Mult4~456\ $ (\Mult3~69_sumout\)) ) + ( \Mult4~67\ ) + ( \Mult4~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult4~109\,
	datac => \ALT_INV_Mult4~456\,
	datad => \ALT_INV_Mult3~69_sumout\,
	cin => \Mult4~66\,
	sharein => \Mult4~67\,
	sumout => \Mult4~69_sumout\);

-- Location: LABCELL_X31_Y5_N6
\y_z[17]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \y_z[17]~SCLR_LUT_combout\ = ( \Mult4~69_sumout\ & ( !\rst~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rst~input_o\,
	dataf => \ALT_INV_Mult4~69_sumout\,
	combout => \y_z[17]~SCLR_LUT_combout\);

-- Location: FF_X31_Y5_N8
\y_z[17]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \y_z[17]~SCLR_LUT_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y_z[17]~_Duplicate_2_q\);

-- Location: LABCELL_X33_Y9_N54
\y_zz[17]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \y_zz[17]~SCLR_LUT_combout\ = ( \y_z[17]~_Duplicate_2_q\ & ( !\rst~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_y_z[17]~_Duplicate_2_q\,
	dataf => \ALT_INV_rst~input_o\,
	combout => \y_zz[17]~SCLR_LUT_combout\);

-- Location: LABCELL_X31_Y5_N9
\y_z[16]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \y_z[16]~SCLR_LUT_combout\ = (!\rst~input_o\ & \Mult4~65_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rst~input_o\,
	datad => \ALT_INV_Mult4~65_sumout\,
	combout => \y_z[16]~SCLR_LUT_combout\);

-- Location: LABCELL_X31_Y5_N24
\y_z[15]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \y_z[15]~SCLR_LUT_combout\ = ( \Mult4~61_sumout\ & ( !\rst~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rst~input_o\,
	dataf => \ALT_INV_Mult4~61_sumout\,
	combout => \y_z[15]~SCLR_LUT_combout\);

-- Location: FF_X31_Y5_N26
\y_z[15]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \y_z[15]~SCLR_LUT_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y_z[15]~_Duplicate_2_q\);

-- Location: LABCELL_X33_Y9_N33
\y_zz[15]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \y_zz[15]~SCLR_LUT_combout\ = ( !\rst~input_o\ & ( \y_z[15]~_Duplicate_2_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_y_z[15]~_Duplicate_2_q\,
	dataf => \ALT_INV_rst~input_o\,
	combout => \y_zz[15]~SCLR_LUT_combout\);

-- Location: LABCELL_X31_Y5_N0
\y_z[14]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \y_z[14]~SCLR_LUT_combout\ = ( \Mult4~57_sumout\ & ( !\rst~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rst~input_o\,
	dataf => \ALT_INV_Mult4~57_sumout\,
	combout => \y_z[14]~SCLR_LUT_combout\);

-- Location: FF_X31_Y5_N2
\y_z[14]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \y_z[14]~SCLR_LUT_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y_z[14]~_Duplicate_2_q\);

-- Location: LABCELL_X33_Y9_N27
\y_zz[14]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \y_zz[14]~SCLR_LUT_combout\ = ( !\rst~input_o\ & ( \y_z[14]~_Duplicate_2_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_y_z[14]~_Duplicate_2_q\,
	dataf => \ALT_INV_rst~input_o\,
	combout => \y_zz[14]~SCLR_LUT_combout\);

-- Location: LABCELL_X31_Y5_N12
\y_z[13]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \y_z[13]~SCLR_LUT_combout\ = (!\rst~input_o\ & \Mult4~53_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rst~input_o\,
	datad => \ALT_INV_Mult4~53_sumout\,
	combout => \y_z[13]~SCLR_LUT_combout\);

-- Location: FF_X31_Y5_N14
\y_z[13]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \y_z[13]~SCLR_LUT_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y_z[13]~_Duplicate_2_q\);

-- Location: LABCELL_X33_Y9_N18
\y_zz[13]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \y_zz[13]~SCLR_LUT_combout\ = ( \y_z[13]~_Duplicate_2_q\ & ( !\rst~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_y_z[13]~_Duplicate_2_q\,
	dataf => \ALT_INV_rst~input_o\,
	combout => \y_zz[13]~SCLR_LUT_combout\);

-- Location: LABCELL_X31_Y5_N21
\y_z[12]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \y_z[12]~SCLR_LUT_combout\ = ( \Mult4~49_sumout\ & ( !\rst~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rst~input_o\,
	dataf => \ALT_INV_Mult4~49_sumout\,
	combout => \y_z[12]~SCLR_LUT_combout\);

-- Location: LABCELL_X31_Y5_N18
\y_z[11]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \y_z[11]~SCLR_LUT_combout\ = ( \Mult4~45_sumout\ & ( !\rst~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rst~input_o\,
	dataf => \ALT_INV_Mult4~45_sumout\,
	combout => \y_z[11]~SCLR_LUT_combout\);

-- Location: LABCELL_X31_Y5_N15
\y_z[10]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \y_z[10]~SCLR_LUT_combout\ = (!\rst~input_o\ & \Mult4~41_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rst~input_o\,
	datad => \ALT_INV_Mult4~41_sumout\,
	combout => \y_z[10]~SCLR_LUT_combout\);

-- Location: FF_X31_Y5_N16
\y_z[10]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \y_z[10]~SCLR_LUT_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y_z[10]~_Duplicate_2_q\);

-- Location: LABCELL_X33_Y9_N15
\y_zz[10]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \y_zz[10]~SCLR_LUT_combout\ = ( \y_z[10]~_Duplicate_2_q\ & ( !\rst~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_y_z[10]~_Duplicate_2_q\,
	dataf => \ALT_INV_rst~input_o\,
	combout => \y_zz[10]~SCLR_LUT_combout\);

-- Location: LABCELL_X31_Y5_N3
\y_z[9]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \y_z[9]~SCLR_LUT_combout\ = ( \Mult4~37_sumout\ & ( !\rst~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rst~input_o\,
	dataf => \ALT_INV_Mult4~37_sumout\,
	combout => \y_z[9]~SCLR_LUT_combout\);

-- Location: LABCELL_X31_Y5_N27
\y_z[8]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \y_z[8]~SCLR_LUT_combout\ = ( \Mult4~33_sumout\ & ( !\rst~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rst~input_o\,
	dataf => \ALT_INV_Mult4~33_sumout\,
	combout => \y_z[8]~SCLR_LUT_combout\);

-- Location: FF_X31_Y5_N28
\y_z[8]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \y_z[8]~SCLR_LUT_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y_z[8]~_Duplicate_2_q\);

-- Location: LABCELL_X33_Y9_N0
\y_zz[8]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \y_zz[8]~SCLR_LUT_combout\ = ( \y_z[8]~_Duplicate_2_q\ & ( !\rst~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_y_z[8]~_Duplicate_2_q\,
	dataf => \ALT_INV_rst~input_o\,
	combout => \y_zz[8]~SCLR_LUT_combout\);

-- Location: LABCELL_X31_Y6_N0
\y_z[7]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \y_z[7]~SCLR_LUT_combout\ = ( \Mult4~29_sumout\ & ( !\rst~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rst~input_o\,
	dataf => \ALT_INV_Mult4~29_sumout\,
	combout => \y_z[7]~SCLR_LUT_combout\);

-- Location: FF_X31_Y6_N50
\y_z[7]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \y_z[7]~SCLR_LUT_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y_z[7]~_Duplicate_2_q\);

-- Location: LABCELL_X33_Y8_N12
\y_zz[7]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \y_zz[7]~SCLR_LUT_combout\ = ( \y_z[7]~_Duplicate_2_q\ & ( !\rst~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rst~input_o\,
	dataf => \ALT_INV_y_z[7]~_Duplicate_2_q\,
	combout => \y_zz[7]~SCLR_LUT_combout\);

-- Location: LABCELL_X31_Y6_N12
\y_z[6]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \y_z[6]~SCLR_LUT_combout\ = (!\rst~input_o\ & \Mult4~25_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rst~input_o\,
	datad => \ALT_INV_Mult4~25_sumout\,
	combout => \y_z[6]~SCLR_LUT_combout\);

-- Location: FF_X31_Y6_N14
\y_z[6]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \y_z[6]~SCLR_LUT_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y_z[6]~_Duplicate_2_q\);

-- Location: LABCELL_X33_Y8_N18
\y_zz[6]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \y_zz[6]~SCLR_LUT_combout\ = ( \y_z[6]~_Duplicate_2_q\ & ( !\rst~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rst~input_o\,
	dataf => \ALT_INV_y_z[6]~_Duplicate_2_q\,
	combout => \y_zz[6]~SCLR_LUT_combout\);

-- Location: LABCELL_X31_Y6_N21
\y_z[5]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \y_z[5]~SCLR_LUT_combout\ = ( \Mult4~21_sumout\ & ( !\rst~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rst~input_o\,
	dataf => \ALT_INV_Mult4~21_sumout\,
	combout => \y_z[5]~SCLR_LUT_combout\);

-- Location: FF_X31_Y6_N23
\y_z[5]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \y_z[5]~SCLR_LUT_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y_z[5]~_Duplicate_2_q\);

-- Location: LABCELL_X33_Y8_N51
\y_zz[5]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \y_zz[5]~SCLR_LUT_combout\ = ( \y_z[5]~_Duplicate_2_q\ & ( !\rst~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rst~input_o\,
	dataf => \ALT_INV_y_z[5]~_Duplicate_2_q\,
	combout => \y_zz[5]~SCLR_LUT_combout\);

-- Location: LABCELL_X31_Y6_N24
\y_z[4]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \y_z[4]~SCLR_LUT_combout\ = ( \Mult4~17_sumout\ & ( !\rst~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rst~input_o\,
	dataf => \ALT_INV_Mult4~17_sumout\,
	combout => \y_z[4]~SCLR_LUT_combout\);

-- Location: FF_X31_Y6_N25
\y_z[4]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \y_z[4]~SCLR_LUT_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y_z[4]~_Duplicate_2_q\);

-- Location: LABCELL_X33_Y8_N33
\y_zz[4]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \y_zz[4]~SCLR_LUT_combout\ = ( \y_z[4]~_Duplicate_2_q\ & ( !\rst~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rst~input_o\,
	dataf => \ALT_INV_y_z[4]~_Duplicate_2_q\,
	combout => \y_zz[4]~SCLR_LUT_combout\);

-- Location: LABCELL_X31_Y6_N9
\y_z[3]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \y_z[3]~SCLR_LUT_combout\ = ( \Mult4~13_sumout\ & ( !\rst~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_Mult4~13_sumout\,
	dataf => \ALT_INV_rst~input_o\,
	combout => \y_z[3]~SCLR_LUT_combout\);

-- Location: FF_X31_Y6_N11
\y_z[3]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \y_z[3]~SCLR_LUT_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y_z[3]~_Duplicate_2_q\);

-- Location: LABCELL_X31_Y6_N27
\y_zz[3]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \y_zz[3]~SCLR_LUT_combout\ = ( \y_z[3]~_Duplicate_2_q\ & ( !\rst~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rst~input_o\,
	dataf => \ALT_INV_y_z[3]~_Duplicate_2_q\,
	combout => \y_zz[3]~SCLR_LUT_combout\);

-- Location: LABCELL_X31_Y6_N18
\y_z[2]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \y_z[2]~SCLR_LUT_combout\ = ( \Mult4~9_sumout\ & ( !\rst~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rst~input_o\,
	dataf => \ALT_INV_Mult4~9_sumout\,
	combout => \y_z[2]~SCLR_LUT_combout\);

-- Location: FF_X31_Y6_N19
\y_z[2]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \y_z[2]~SCLR_LUT_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y_z[2]~_Duplicate_2_q\);

-- Location: LABCELL_X33_Y8_N39
\y_zz[2]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \y_zz[2]~SCLR_LUT_combout\ = ( !\rst~input_o\ & ( \y_z[2]~_Duplicate_2_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_y_z[2]~_Duplicate_2_q\,
	dataf => \ALT_INV_rst~input_o\,
	combout => \y_zz[2]~SCLR_LUT_combout\);

-- Location: LABCELL_X31_Y6_N15
\y_z[1]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \y_z[1]~SCLR_LUT_combout\ = ( \Mult4~5_sumout\ & ( !\rst~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rst~input_o\,
	dataf => \ALT_INV_Mult4~5_sumout\,
	combout => \y_z[1]~SCLR_LUT_combout\);

-- Location: FF_X31_Y6_N16
\y_z[1]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \y_z[1]~SCLR_LUT_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y_z[1]~_Duplicate_2_q\);

-- Location: LABCELL_X33_Y8_N42
\y_zz[1]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \y_zz[1]~SCLR_LUT_combout\ = ( \y_z[1]~_Duplicate_2_q\ & ( !\rst~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rst~input_o\,
	dataf => \ALT_INV_y_z[1]~_Duplicate_2_q\,
	combout => \y_zz[1]~SCLR_LUT_combout\);

-- Location: IOIBUF_X40_Y81_N52
\x[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(0),
	o => \x[0]~input_o\);

-- Location: LABCELL_X50_Y2_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


