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

-- DATE "03/29/2018 23:33:33"

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

ENTITY 	alu IS
    PORT (
	clk : IN std_logic;
	A : IN std_logic_vector(15 DOWNTO 0);
	B : IN std_logic_vector(15 DOWNTO 0);
	op : IN std_logic_vector(3 DOWNTO 0);
	R : BUFFER std_logic_vector(15 DOWNTO 0);
	flag : BUFFER std_logic
	);
END alu;

-- Design Ports Information
-- R[0]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[1]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[2]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[3]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[4]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[5]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[6]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[7]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[8]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[9]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[10]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[11]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[12]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[13]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[14]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[15]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- flag	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op[0]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op[1]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op[2]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op[3]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF alu IS
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
SIGNAL ww_A : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_op : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_R : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_flag : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \op[0]~input_o\ : std_logic;
SIGNAL \op[1]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \R_next~1_combout\ : std_logic;
SIGNAL \Add5~1_sumout\ : std_logic;
SIGNAL \R_next~3_combout\ : std_logic;
SIGNAL \op[2]~input_o\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \R_next~0_combout\ : std_logic;
SIGNAL \Add3~1_sumout\ : std_logic;
SIGNAL \Add4~1_sumout\ : std_logic;
SIGNAL \Add2~1_sumout\ : std_logic;
SIGNAL \R_next~2_combout\ : std_logic;
SIGNAL \op[3]~input_o\ : std_logic;
SIGNAL \R_next~4_combout\ : std_logic;
SIGNAL \R_next[1]~5_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \Add4~2\ : std_logic;
SIGNAL \Add4~5_sumout\ : std_logic;
SIGNAL \flag~3_combout\ : std_logic;
SIGNAL \R_next[1]~6_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \Add2~2\ : std_logic;
SIGNAL \Add2~5_sumout\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \R_next~124_combout\ : std_logic;
SIGNAL \R_next~7_combout\ : std_logic;
SIGNAL \Add5~2\ : std_logic;
SIGNAL \Add5~5_sumout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \R_next~9_combout\ : std_logic;
SIGNAL \Add3~2\ : std_logic;
SIGNAL \Add3~5_sumout\ : std_logic;
SIGNAL \R_next~8_combout\ : std_logic;
SIGNAL \R_next~10_combout\ : std_logic;
SIGNAL \R_next[1]~11_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \Add4~6\ : std_logic;
SIGNAL \Add4~9_sumout\ : std_logic;
SIGNAL \Add2~6\ : std_logic;
SIGNAL \Add2~9_sumout\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \R_next~120_combout\ : std_logic;
SIGNAL \R_next~12_combout\ : std_logic;
SIGNAL \Add3~6\ : std_logic;
SIGNAL \Add3~9_sumout\ : std_logic;
SIGNAL \R_next~13_combout\ : std_logic;
SIGNAL \Add5~6\ : std_logic;
SIGNAL \Add5~9_sumout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \R_next~14_combout\ : std_logic;
SIGNAL \R_next~15_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \Add5~10\ : std_logic;
SIGNAL \Add5~13_sumout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \R_next~18_combout\ : std_logic;
SIGNAL \Add3~10\ : std_logic;
SIGNAL \Add3~13_sumout\ : std_logic;
SIGNAL \R_next~17_combout\ : std_logic;
SIGNAL \Add4~10\ : std_logic;
SIGNAL \Add4~13_sumout\ : std_logic;
SIGNAL \Add2~10\ : std_logic;
SIGNAL \Add2~13_sumout\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \R_next~116_combout\ : std_logic;
SIGNAL \R_next~16_combout\ : std_logic;
SIGNAL \R_next~19_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \Add3~14\ : std_logic;
SIGNAL \Add3~17_sumout\ : std_logic;
SIGNAL \R_next~21_combout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Add5~14\ : std_logic;
SIGNAL \Add5~17_sumout\ : std_logic;
SIGNAL \R_next~22_combout\ : std_logic;
SIGNAL \Add4~14\ : std_logic;
SIGNAL \Add4~17_sumout\ : std_logic;
SIGNAL \Add2~14\ : std_logic;
SIGNAL \Add2~17_sumout\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \R_next~112_combout\ : std_logic;
SIGNAL \R_next~20_combout\ : std_logic;
SIGNAL \R_next~23_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \Add5~18\ : std_logic;
SIGNAL \Add5~21_sumout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \R_next~26_combout\ : std_logic;
SIGNAL \Add3~18\ : std_logic;
SIGNAL \Add3~21_sumout\ : std_logic;
SIGNAL \R_next~25_combout\ : std_logic;
SIGNAL \Add2~18\ : std_logic;
SIGNAL \Add2~21_sumout\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \R_next~108_combout\ : std_logic;
SIGNAL \Add4~18\ : std_logic;
SIGNAL \Add4~21_sumout\ : std_logic;
SIGNAL \R_next~24_combout\ : std_logic;
SIGNAL \R_next~27_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \Add3~22\ : std_logic;
SIGNAL \Add3~25_sumout\ : std_logic;
SIGNAL \R_next~29_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Add5~22\ : std_logic;
SIGNAL \Add5~25_sumout\ : std_logic;
SIGNAL \R_next~30_combout\ : std_logic;
SIGNAL \Add2~22\ : std_logic;
SIGNAL \Add2~25_sumout\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \R_next~104_combout\ : std_logic;
SIGNAL \Add4~22\ : std_logic;
SIGNAL \Add4~25_sumout\ : std_logic;
SIGNAL \R_next~28_combout\ : std_logic;
SIGNAL \R_next~31_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \Add2~26\ : std_logic;
SIGNAL \Add2~29_sumout\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~29_sumout\ : std_logic;
SIGNAL \R_next~100_combout\ : std_logic;
SIGNAL \Add4~26\ : std_logic;
SIGNAL \Add4~29_sumout\ : std_logic;
SIGNAL \R_next~32_combout\ : std_logic;
SIGNAL \Add5~26\ : std_logic;
SIGNAL \Add5~29_sumout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \R_next~34_combout\ : std_logic;
SIGNAL \Add3~26\ : std_logic;
SIGNAL \Add3~29_sumout\ : std_logic;
SIGNAL \R_next~33_combout\ : std_logic;
SIGNAL \R_next~35_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \Add4~30\ : std_logic;
SIGNAL \Add4~33_sumout\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \Add2~30\ : std_logic;
SIGNAL \Add2~33_sumout\ : std_logic;
SIGNAL \Add1~30\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~33_sumout\ : std_logic;
SIGNAL \R_next~96_combout\ : std_logic;
SIGNAL \R_next~36_combout\ : std_logic;
SIGNAL \Add3~30\ : std_logic;
SIGNAL \Add3~33_sumout\ : std_logic;
SIGNAL \R_next~37_combout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Add5~30\ : std_logic;
SIGNAL \Add5~33_sumout\ : std_logic;
SIGNAL \R_next~38_combout\ : std_logic;
SIGNAL \R_next~39_combout\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \Add5~34\ : std_logic;
SIGNAL \Add5~37_sumout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \R_next~42_combout\ : std_logic;
SIGNAL \Add2~34\ : std_logic;
SIGNAL \Add2~37_sumout\ : std_logic;
SIGNAL \Add1~34\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~37_sumout\ : std_logic;
SIGNAL \R_next~92_combout\ : std_logic;
SIGNAL \Add4~34\ : std_logic;
SIGNAL \Add4~37_sumout\ : std_logic;
SIGNAL \R_next~40_combout\ : std_logic;
SIGNAL \Add3~34\ : std_logic;
SIGNAL \Add3~37_sumout\ : std_logic;
SIGNAL \R_next~41_combout\ : std_logic;
SIGNAL \R_next~43_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \Add3~38\ : std_logic;
SIGNAL \Add3~41_sumout\ : std_logic;
SIGNAL \R_next~45_combout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \Add5~38\ : std_logic;
SIGNAL \Add5~41_sumout\ : std_logic;
SIGNAL \R_next~46_combout\ : std_logic;
SIGNAL \Add4~38\ : std_logic;
SIGNAL \Add4~41_sumout\ : std_logic;
SIGNAL \Add2~38\ : std_logic;
SIGNAL \Add2~41_sumout\ : std_logic;
SIGNAL \Add1~38\ : std_logic;
SIGNAL \Add1~39\ : std_logic;
SIGNAL \Add1~41_sumout\ : std_logic;
SIGNAL \R_next~88_combout\ : std_logic;
SIGNAL \R_next~44_combout\ : std_logic;
SIGNAL \R_next~47_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \Add4~42\ : std_logic;
SIGNAL \Add4~45_sumout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \Add2~42\ : std_logic;
SIGNAL \Add2~45_sumout\ : std_logic;
SIGNAL \Add1~42\ : std_logic;
SIGNAL \Add1~43\ : std_logic;
SIGNAL \Add1~45_sumout\ : std_logic;
SIGNAL \R_next~84_combout\ : std_logic;
SIGNAL \R_next~48_combout\ : std_logic;
SIGNAL \Add5~42\ : std_logic;
SIGNAL \Add5~45_sumout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \R_next~50_combout\ : std_logic;
SIGNAL \Add3~42\ : std_logic;
SIGNAL \Add3~45_sumout\ : std_logic;
SIGNAL \R_next~49_combout\ : std_logic;
SIGNAL \R_next~51_combout\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \Add2~46\ : std_logic;
SIGNAL \Add2~49_sumout\ : std_logic;
SIGNAL \Add1~46\ : std_logic;
SIGNAL \Add1~47\ : std_logic;
SIGNAL \Add1~49_sumout\ : std_logic;
SIGNAL \R_next~80_combout\ : std_logic;
SIGNAL \Add4~46\ : std_logic;
SIGNAL \Add4~49_sumout\ : std_logic;
SIGNAL \R_next~52_combout\ : std_logic;
SIGNAL \Add3~46\ : std_logic;
SIGNAL \Add3~49_sumout\ : std_logic;
SIGNAL \R_next~53_combout\ : std_logic;
SIGNAL \Add5~46\ : std_logic;
SIGNAL \Add5~49_sumout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \R_next~54_combout\ : std_logic;
SIGNAL \R_next~55_combout\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \Add3~50\ : std_logic;
SIGNAL \Add3~53_sumout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \R_next~57_combout\ : std_logic;
SIGNAL \Add5~50\ : std_logic;
SIGNAL \Add5~53_sumout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \R_next~58_combout\ : std_logic;
SIGNAL \Add4~50\ : std_logic;
SIGNAL \Add4~53_sumout\ : std_logic;
SIGNAL \Add2~50\ : std_logic;
SIGNAL \Add2~53_sumout\ : std_logic;
SIGNAL \Add1~50\ : std_logic;
SIGNAL \Add1~51\ : std_logic;
SIGNAL \Add1~53_sumout\ : std_logic;
SIGNAL \R_next~76_combout\ : std_logic;
SIGNAL \R_next~56_combout\ : std_logic;
SIGNAL \R_next~59_combout\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \Add5~54\ : std_logic;
SIGNAL \Add5~57_sumout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \R_next~62_combout\ : std_logic;
SIGNAL \Add3~54\ : std_logic;
SIGNAL \Add3~57_sumout\ : std_logic;
SIGNAL \R_next~61_combout\ : std_logic;
SIGNAL \Add2~54\ : std_logic;
SIGNAL \Add2~57_sumout\ : std_logic;
SIGNAL \Add1~54\ : std_logic;
SIGNAL \Add1~55\ : std_logic;
SIGNAL \Add1~57_sumout\ : std_logic;
SIGNAL \R_next~72_combout\ : std_logic;
SIGNAL \Add4~54\ : std_logic;
SIGNAL \Add4~57_sumout\ : std_logic;
SIGNAL \R_next~60_combout\ : std_logic;
SIGNAL \R_next~63_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \Add5~58\ : std_logic;
SIGNAL \Add5~61_sumout\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \R_next~66_combout\ : std_logic;
SIGNAL \Add2~58\ : std_logic;
SIGNAL \Add2~61_sumout\ : std_logic;
SIGNAL \Add1~58\ : std_logic;
SIGNAL \Add1~59\ : std_logic;
SIGNAL \Add1~61_sumout\ : std_logic;
SIGNAL \R_next~68_combout\ : std_logic;
SIGNAL \Add4~58\ : std_logic;
SIGNAL \Add4~61_sumout\ : std_logic;
SIGNAL \R_next~64_combout\ : std_logic;
SIGNAL \Add3~58\ : std_logic;
SIGNAL \Add3~61_sumout\ : std_logic;
SIGNAL \R_next~65_combout\ : std_logic;
SIGNAL \R_next~67_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan2~2_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \flag~0_combout\ : std_logic;
SIGNAL \LessThan3~1_combout\ : std_logic;
SIGNAL \LessThan3~2_combout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \flag~1_combout\ : std_logic;
SIGNAL \flag~4_combout\ : std_logic;
SIGNAL \flag~6_combout\ : std_logic;
SIGNAL \flag~5_combout\ : std_logic;
SIGNAL \flag~2_combout\ : std_logic;
SIGNAL \flag~7_combout\ : std_logic;
SIGNAL \flag~8_combout\ : std_logic;
SIGNAL \flag~9_combout\ : std_logic;
SIGNAL R_next : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_op[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_op[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_op[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_op[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_R_next~66_combout\ : std_logic;
SIGNAL \ALT_INV_R_next~65_combout\ : std_logic;
SIGNAL \ALT_INV_R_next~64_combout\ : std_logic;
SIGNAL \ALT_INV_R_next~62_combout\ : std_logic;
SIGNAL \ALT_INV_R_next~61_combout\ : std_logic;
SIGNAL \ALT_INV_R_next~60_combout\ : std_logic;
SIGNAL \ALT_INV_R_next~58_combout\ : std_logic;
SIGNAL \ALT_INV_R_next~57_combout\ : std_logic;
SIGNAL \ALT_INV_R_next~56_combout\ : std_logic;
SIGNAL \ALT_INV_R_next~54_combout\ : std_logic;
SIGNAL \ALT_INV_R_next~53_combout\ : std_logic;
SIGNAL \ALT_INV_R_next~52_combout\ : std_logic;
SIGNAL \ALT_INV_R_next~50_combout\ : std_logic;
SIGNAL \ALT_INV_R_next~49_combout\ : std_logic;
SIGNAL \ALT_INV_R_next~48_combout\ : std_logic;
SIGNAL \ALT_INV_R_next~46_combout\ : std_logic;
SIGNAL \ALT_INV_R_next~45_combout\ : std_logic;
SIGNAL \ALT_INV_R_next~44_combout\ : std_logic;
SIGNAL \ALT_INV_R_next~42_combout\ : std_logic;
SIGNAL \ALT_INV_R_next~41_combout\ : std_logic;
SIGNAL \ALT_INV_R_next~40_combout\ : std_logic;
SIGNAL \ALT_INV_R_next~38_combout\ : std_logic;
SIGNAL \ALT_INV_R_next~37_combout\ : std_logic;
SIGNAL \ALT_INV_R_next~36_combout\ : std_logic;
SIGNAL \ALT_INV_R_next~34_combout\ : std_logic;
SIGNAL \ALT_INV_R_next~33_combout\ : std_logic;
SIGNAL \ALT_INV_R_next~32_combout\ : std_logic;
SIGNAL \ALT_INV_R_next~30_combout\ : std_logic;
SIGNAL \ALT_INV_R_next~29_combout\ : std_logic;
SIGNAL \ALT_INV_R_next~28_combout\ : std_logic;
SIGNAL \ALT_INV_R_next~26_combout\ : std_logic;
SIGNAL \ALT_INV_R_next~25_combout\ : std_logic;
SIGNAL \ALT_INV_R_next~24_combout\ : std_logic;
SIGNAL \ALT_INV_R_next~22_combout\ : std_logic;
SIGNAL \ALT_INV_R_next~21_combout\ : std_logic;
SIGNAL \ALT_INV_R_next~20_combout\ : std_logic;
SIGNAL \ALT_INV_R_next~18_combout\ : std_logic;
SIGNAL \ALT_INV_R_next~17_combout\ : std_logic;
SIGNAL \ALT_INV_R_next~16_combout\ : std_logic;
SIGNAL \ALT_INV_R_next~14_combout\ : std_logic;
SIGNAL \ALT_INV_R_next~13_combout\ : std_logic;
SIGNAL \ALT_INV_R_next~12_combout\ : std_logic;
SIGNAL \ALT_INV_R_next~9_combout\ : std_logic;
SIGNAL \ALT_INV_R_next~8_combout\ : std_logic;
SIGNAL \ALT_INV_R_next~7_combout\ : std_logic;
SIGNAL \ALT_INV_R_next[1]~6_combout\ : std_logic;
SIGNAL \ALT_INV_R_next[1]~5_combout\ : std_logic;
SIGNAL \ALT_INV_R_next~3_combout\ : std_logic;
SIGNAL \ALT_INV_R_next~2_combout\ : std_logic;
SIGNAL \ALT_INV_R_next~1_combout\ : std_logic;
SIGNAL \ALT_INV_R_next~0_combout\ : std_logic;
SIGNAL \ALT_INV_flag~8_combout\ : std_logic;
SIGNAL \ALT_INV_flag~7_combout\ : std_logic;
SIGNAL \ALT_INV_flag~6_combout\ : std_logic;
SIGNAL \ALT_INV_flag~5_combout\ : std_logic;
SIGNAL \ALT_INV_flag~4_combout\ : std_logic;
SIGNAL \ALT_INV_flag~3_combout\ : std_logic;
SIGNAL \ALT_INV_flag~2_combout\ : std_logic;
SIGNAL \ALT_INV_flag~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan3~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan3~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan3~0_combout\ : std_logic;
SIGNAL \ALT_INV_flag~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL \ALT_INV_R_next~124_combout\ : std_logic;
SIGNAL \ALT_INV_R_next~120_combout\ : std_logic;
SIGNAL \ALT_INV_R_next~116_combout\ : std_logic;
SIGNAL \ALT_INV_R_next~112_combout\ : std_logic;
SIGNAL \ALT_INV_R_next~108_combout\ : std_logic;
SIGNAL \ALT_INV_R_next~104_combout\ : std_logic;
SIGNAL \ALT_INV_R_next~100_combout\ : std_logic;
SIGNAL \ALT_INV_R_next~96_combout\ : std_logic;
SIGNAL \ALT_INV_R_next~92_combout\ : std_logic;
SIGNAL \ALT_INV_R_next~88_combout\ : std_logic;
SIGNAL \ALT_INV_R_next~84_combout\ : std_logic;
SIGNAL \ALT_INV_R_next~80_combout\ : std_logic;
SIGNAL \ALT_INV_R_next~76_combout\ : std_logic;
SIGNAL \ALT_INV_R_next~72_combout\ : std_logic;
SIGNAL \ALT_INV_R_next~68_combout\ : std_logic;
SIGNAL \ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~61_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~61_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~61_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~61_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~61_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL ALT_INV_R_next : std_logic_vector(15 DOWNTO 15);

BEGIN

ww_clk <= clk;
ww_A <= A;
ww_B <= B;
ww_op <= op;
R <= ww_R;
flag <= ww_flag;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_op[3]~input_o\ <= NOT \op[3]~input_o\;
\ALT_INV_op[2]~input_o\ <= NOT \op[2]~input_o\;
\ALT_INV_A[10]~input_o\ <= NOT \A[10]~input_o\;
\ALT_INV_A[9]~input_o\ <= NOT \A[9]~input_o\;
\ALT_INV_A[8]~input_o\ <= NOT \A[8]~input_o\;
\ALT_INV_A[7]~input_o\ <= NOT \A[7]~input_o\;
\ALT_INV_A[6]~input_o\ <= NOT \A[6]~input_o\;
\ALT_INV_A[4]~input_o\ <= NOT \A[4]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\ALT_INV_A[14]~input_o\ <= NOT \A[14]~input_o\;
\ALT_INV_A[13]~input_o\ <= NOT \A[13]~input_o\;
\ALT_INV_A[12]~input_o\ <= NOT \A[12]~input_o\;
\ALT_INV_A[11]~input_o\ <= NOT \A[11]~input_o\;
\ALT_INV_A[5]~input_o\ <= NOT \A[5]~input_o\;
\ALT_INV_A[15]~input_o\ <= NOT \A[15]~input_o\;
\ALT_INV_op[1]~input_o\ <= NOT \op[1]~input_o\;
\ALT_INV_B[10]~input_o\ <= NOT \B[10]~input_o\;
\ALT_INV_B[9]~input_o\ <= NOT \B[9]~input_o\;
\ALT_INV_B[8]~input_o\ <= NOT \B[8]~input_o\;
\ALT_INV_B[7]~input_o\ <= NOT \B[7]~input_o\;
\ALT_INV_B[6]~input_o\ <= NOT \B[6]~input_o\;
\ALT_INV_B[4]~input_o\ <= NOT \B[4]~input_o\;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_B[14]~input_o\ <= NOT \B[14]~input_o\;
\ALT_INV_B[13]~input_o\ <= NOT \B[13]~input_o\;
\ALT_INV_B[12]~input_o\ <= NOT \B[12]~input_o\;
\ALT_INV_B[11]~input_o\ <= NOT \B[11]~input_o\;
\ALT_INV_B[5]~input_o\ <= NOT \B[5]~input_o\;
\ALT_INV_B[15]~input_o\ <= NOT \B[15]~input_o\;
\ALT_INV_op[0]~input_o\ <= NOT \op[0]~input_o\;
\ALT_INV_R_next~66_combout\ <= NOT \R_next~66_combout\;
\ALT_INV_R_next~65_combout\ <= NOT \R_next~65_combout\;
\ALT_INV_R_next~64_combout\ <= NOT \R_next~64_combout\;
\ALT_INV_R_next~62_combout\ <= NOT \R_next~62_combout\;
\ALT_INV_R_next~61_combout\ <= NOT \R_next~61_combout\;
\ALT_INV_R_next~60_combout\ <= NOT \R_next~60_combout\;
\ALT_INV_R_next~58_combout\ <= NOT \R_next~58_combout\;
\ALT_INV_R_next~57_combout\ <= NOT \R_next~57_combout\;
\ALT_INV_R_next~56_combout\ <= NOT \R_next~56_combout\;
\ALT_INV_R_next~54_combout\ <= NOT \R_next~54_combout\;
\ALT_INV_R_next~53_combout\ <= NOT \R_next~53_combout\;
\ALT_INV_R_next~52_combout\ <= NOT \R_next~52_combout\;
\ALT_INV_R_next~50_combout\ <= NOT \R_next~50_combout\;
\ALT_INV_R_next~49_combout\ <= NOT \R_next~49_combout\;
\ALT_INV_R_next~48_combout\ <= NOT \R_next~48_combout\;
\ALT_INV_R_next~46_combout\ <= NOT \R_next~46_combout\;
\ALT_INV_R_next~45_combout\ <= NOT \R_next~45_combout\;
\ALT_INV_R_next~44_combout\ <= NOT \R_next~44_combout\;
\ALT_INV_R_next~42_combout\ <= NOT \R_next~42_combout\;
\ALT_INV_R_next~41_combout\ <= NOT \R_next~41_combout\;
\ALT_INV_R_next~40_combout\ <= NOT \R_next~40_combout\;
\ALT_INV_R_next~38_combout\ <= NOT \R_next~38_combout\;
\ALT_INV_R_next~37_combout\ <= NOT \R_next~37_combout\;
\ALT_INV_R_next~36_combout\ <= NOT \R_next~36_combout\;
\ALT_INV_R_next~34_combout\ <= NOT \R_next~34_combout\;
\ALT_INV_R_next~33_combout\ <= NOT \R_next~33_combout\;
\ALT_INV_R_next~32_combout\ <= NOT \R_next~32_combout\;
\ALT_INV_R_next~30_combout\ <= NOT \R_next~30_combout\;
\ALT_INV_R_next~29_combout\ <= NOT \R_next~29_combout\;
\ALT_INV_R_next~28_combout\ <= NOT \R_next~28_combout\;
\ALT_INV_R_next~26_combout\ <= NOT \R_next~26_combout\;
\ALT_INV_R_next~25_combout\ <= NOT \R_next~25_combout\;
\ALT_INV_R_next~24_combout\ <= NOT \R_next~24_combout\;
\ALT_INV_R_next~22_combout\ <= NOT \R_next~22_combout\;
\ALT_INV_R_next~21_combout\ <= NOT \R_next~21_combout\;
\ALT_INV_R_next~20_combout\ <= NOT \R_next~20_combout\;
\ALT_INV_R_next~18_combout\ <= NOT \R_next~18_combout\;
\ALT_INV_R_next~17_combout\ <= NOT \R_next~17_combout\;
\ALT_INV_R_next~16_combout\ <= NOT \R_next~16_combout\;
\ALT_INV_R_next~14_combout\ <= NOT \R_next~14_combout\;
\ALT_INV_R_next~13_combout\ <= NOT \R_next~13_combout\;
\ALT_INV_R_next~12_combout\ <= NOT \R_next~12_combout\;
\ALT_INV_R_next~9_combout\ <= NOT \R_next~9_combout\;
\ALT_INV_R_next~8_combout\ <= NOT \R_next~8_combout\;
\ALT_INV_R_next~7_combout\ <= NOT \R_next~7_combout\;
\ALT_INV_R_next[1]~6_combout\ <= NOT \R_next[1]~6_combout\;
\ALT_INV_R_next[1]~5_combout\ <= NOT \R_next[1]~5_combout\;
\ALT_INV_R_next~3_combout\ <= NOT \R_next~3_combout\;
\ALT_INV_R_next~2_combout\ <= NOT \R_next~2_combout\;
\ALT_INV_R_next~1_combout\ <= NOT \R_next~1_combout\;
\ALT_INV_R_next~0_combout\ <= NOT \R_next~0_combout\;
\ALT_INV_flag~8_combout\ <= NOT \flag~8_combout\;
\ALT_INV_flag~7_combout\ <= NOT \flag~7_combout\;
\ALT_INV_flag~6_combout\ <= NOT \flag~6_combout\;
\ALT_INV_flag~5_combout\ <= NOT \flag~5_combout\;
\ALT_INV_flag~4_combout\ <= NOT \flag~4_combout\;
\ALT_INV_flag~3_combout\ <= NOT \flag~3_combout\;
\ALT_INV_flag~2_combout\ <= NOT \flag~2_combout\;
\ALT_INV_flag~1_combout\ <= NOT \flag~1_combout\;
\ALT_INV_LessThan3~2_combout\ <= NOT \LessThan3~2_combout\;
\ALT_INV_LessThan3~1_combout\ <= NOT \LessThan3~1_combout\;
\ALT_INV_LessThan3~0_combout\ <= NOT \LessThan3~0_combout\;
\ALT_INV_flag~0_combout\ <= NOT \flag~0_combout\;
\ALT_INV_LessThan2~2_combout\ <= NOT \LessThan2~2_combout\;
\ALT_INV_LessThan2~1_combout\ <= NOT \LessThan2~1_combout\;
\ALT_INV_LessThan2~0_combout\ <= NOT \LessThan2~0_combout\;
\ALT_INV_R_next~124_combout\ <= NOT \R_next~124_combout\;
\ALT_INV_R_next~120_combout\ <= NOT \R_next~120_combout\;
\ALT_INV_R_next~116_combout\ <= NOT \R_next~116_combout\;
\ALT_INV_R_next~112_combout\ <= NOT \R_next~112_combout\;
\ALT_INV_R_next~108_combout\ <= NOT \R_next~108_combout\;
\ALT_INV_R_next~104_combout\ <= NOT \R_next~104_combout\;
\ALT_INV_R_next~100_combout\ <= NOT \R_next~100_combout\;
\ALT_INV_R_next~96_combout\ <= NOT \R_next~96_combout\;
\ALT_INV_R_next~92_combout\ <= NOT \R_next~92_combout\;
\ALT_INV_R_next~88_combout\ <= NOT \R_next~88_combout\;
\ALT_INV_R_next~84_combout\ <= NOT \R_next~84_combout\;
\ALT_INV_R_next~80_combout\ <= NOT \R_next~80_combout\;
\ALT_INV_R_next~76_combout\ <= NOT \R_next~76_combout\;
\ALT_INV_R_next~72_combout\ <= NOT \R_next~72_combout\;
\ALT_INV_R_next~68_combout\ <= NOT \R_next~68_combout\;
\ALT_INV_Add0~61_sumout\ <= NOT \Add0~61_sumout\;
\ALT_INV_Add5~61_sumout\ <= NOT \Add5~61_sumout\;
\ALT_INV_Add3~61_sumout\ <= NOT \Add3~61_sumout\;
\ALT_INV_Add4~61_sumout\ <= NOT \Add4~61_sumout\;
\ALT_INV_Add2~61_sumout\ <= NOT \Add2~61_sumout\;
\ALT_INV_Add1~61_sumout\ <= NOT \Add1~61_sumout\;
\ALT_INV_Add0~57_sumout\ <= NOT \Add0~57_sumout\;
\ALT_INV_Add5~57_sumout\ <= NOT \Add5~57_sumout\;
\ALT_INV_Add3~57_sumout\ <= NOT \Add3~57_sumout\;
\ALT_INV_Add4~57_sumout\ <= NOT \Add4~57_sumout\;
\ALT_INV_Add2~57_sumout\ <= NOT \Add2~57_sumout\;
\ALT_INV_Add1~57_sumout\ <= NOT \Add1~57_sumout\;
\ALT_INV_Add0~53_sumout\ <= NOT \Add0~53_sumout\;
\ALT_INV_Add5~53_sumout\ <= NOT \Add5~53_sumout\;
\ALT_INV_Add3~53_sumout\ <= NOT \Add3~53_sumout\;
\ALT_INV_Add4~53_sumout\ <= NOT \Add4~53_sumout\;
\ALT_INV_Add2~53_sumout\ <= NOT \Add2~53_sumout\;
\ALT_INV_Add1~53_sumout\ <= NOT \Add1~53_sumout\;
\ALT_INV_Add0~49_sumout\ <= NOT \Add0~49_sumout\;
\ALT_INV_Add5~49_sumout\ <= NOT \Add5~49_sumout\;
\ALT_INV_Add3~49_sumout\ <= NOT \Add3~49_sumout\;
\ALT_INV_Add4~49_sumout\ <= NOT \Add4~49_sumout\;
\ALT_INV_Add2~49_sumout\ <= NOT \Add2~49_sumout\;
\ALT_INV_Add1~49_sumout\ <= NOT \Add1~49_sumout\;
\ALT_INV_Add0~45_sumout\ <= NOT \Add0~45_sumout\;
\ALT_INV_Add5~45_sumout\ <= NOT \Add5~45_sumout\;
\ALT_INV_Add3~45_sumout\ <= NOT \Add3~45_sumout\;
\ALT_INV_Add4~45_sumout\ <= NOT \Add4~45_sumout\;
\ALT_INV_Add2~45_sumout\ <= NOT \Add2~45_sumout\;
\ALT_INV_Add1~45_sumout\ <= NOT \Add1~45_sumout\;
\ALT_INV_Add0~41_sumout\ <= NOT \Add0~41_sumout\;
\ALT_INV_Add5~41_sumout\ <= NOT \Add5~41_sumout\;
\ALT_INV_Add3~41_sumout\ <= NOT \Add3~41_sumout\;
\ALT_INV_Add4~41_sumout\ <= NOT \Add4~41_sumout\;
\ALT_INV_Add2~41_sumout\ <= NOT \Add2~41_sumout\;
\ALT_INV_Add1~41_sumout\ <= NOT \Add1~41_sumout\;
\ALT_INV_Add0~37_sumout\ <= NOT \Add0~37_sumout\;
\ALT_INV_Add5~37_sumout\ <= NOT \Add5~37_sumout\;
\ALT_INV_Add3~37_sumout\ <= NOT \Add3~37_sumout\;
\ALT_INV_Add4~37_sumout\ <= NOT \Add4~37_sumout\;
\ALT_INV_Add2~37_sumout\ <= NOT \Add2~37_sumout\;
\ALT_INV_Add1~37_sumout\ <= NOT \Add1~37_sumout\;
\ALT_INV_Add0~33_sumout\ <= NOT \Add0~33_sumout\;
\ALT_INV_Add5~33_sumout\ <= NOT \Add5~33_sumout\;
\ALT_INV_Add3~33_sumout\ <= NOT \Add3~33_sumout\;
\ALT_INV_Add4~33_sumout\ <= NOT \Add4~33_sumout\;
\ALT_INV_Add2~33_sumout\ <= NOT \Add2~33_sumout\;
\ALT_INV_Add1~33_sumout\ <= NOT \Add1~33_sumout\;
\ALT_INV_Add0~29_sumout\ <= NOT \Add0~29_sumout\;
\ALT_INV_Add5~29_sumout\ <= NOT \Add5~29_sumout\;
\ALT_INV_Add3~29_sumout\ <= NOT \Add3~29_sumout\;
\ALT_INV_Add4~29_sumout\ <= NOT \Add4~29_sumout\;
\ALT_INV_Add2~29_sumout\ <= NOT \Add2~29_sumout\;
\ALT_INV_Add1~29_sumout\ <= NOT \Add1~29_sumout\;
\ALT_INV_Add0~25_sumout\ <= NOT \Add0~25_sumout\;
\ALT_INV_Add5~25_sumout\ <= NOT \Add5~25_sumout\;
\ALT_INV_Add3~25_sumout\ <= NOT \Add3~25_sumout\;
\ALT_INV_Add4~25_sumout\ <= NOT \Add4~25_sumout\;
\ALT_INV_Add2~25_sumout\ <= NOT \Add2~25_sumout\;
\ALT_INV_Add1~25_sumout\ <= NOT \Add1~25_sumout\;
\ALT_INV_Add0~21_sumout\ <= NOT \Add0~21_sumout\;
\ALT_INV_Add5~21_sumout\ <= NOT \Add5~21_sumout\;
\ALT_INV_Add3~21_sumout\ <= NOT \Add3~21_sumout\;
\ALT_INV_Add4~21_sumout\ <= NOT \Add4~21_sumout\;
\ALT_INV_Add2~21_sumout\ <= NOT \Add2~21_sumout\;
\ALT_INV_Add1~21_sumout\ <= NOT \Add1~21_sumout\;
\ALT_INV_Add0~17_sumout\ <= NOT \Add0~17_sumout\;
\ALT_INV_Add5~17_sumout\ <= NOT \Add5~17_sumout\;
\ALT_INV_Add3~17_sumout\ <= NOT \Add3~17_sumout\;
\ALT_INV_Add4~17_sumout\ <= NOT \Add4~17_sumout\;
\ALT_INV_Add2~17_sumout\ <= NOT \Add2~17_sumout\;
\ALT_INV_Add1~17_sumout\ <= NOT \Add1~17_sumout\;
\ALT_INV_Add0~13_sumout\ <= NOT \Add0~13_sumout\;
\ALT_INV_Add5~13_sumout\ <= NOT \Add5~13_sumout\;
\ALT_INV_Add3~13_sumout\ <= NOT \Add3~13_sumout\;
\ALT_INV_Add4~13_sumout\ <= NOT \Add4~13_sumout\;
\ALT_INV_Add2~13_sumout\ <= NOT \Add2~13_sumout\;
\ALT_INV_Add1~13_sumout\ <= NOT \Add1~13_sumout\;
\ALT_INV_Add0~9_sumout\ <= NOT \Add0~9_sumout\;
\ALT_INV_Add5~9_sumout\ <= NOT \Add5~9_sumout\;
\ALT_INV_Add3~9_sumout\ <= NOT \Add3~9_sumout\;
\ALT_INV_Add4~9_sumout\ <= NOT \Add4~9_sumout\;
\ALT_INV_Add2~9_sumout\ <= NOT \Add2~9_sumout\;
\ALT_INV_Add1~9_sumout\ <= NOT \Add1~9_sumout\;
\ALT_INV_Add0~5_sumout\ <= NOT \Add0~5_sumout\;
\ALT_INV_Add5~5_sumout\ <= NOT \Add5~5_sumout\;
\ALT_INV_Add3~5_sumout\ <= NOT \Add3~5_sumout\;
\ALT_INV_Add4~5_sumout\ <= NOT \Add4~5_sumout\;
\ALT_INV_Add2~5_sumout\ <= NOT \Add2~5_sumout\;
\ALT_INV_Add1~5_sumout\ <= NOT \Add1~5_sumout\;
\ALT_INV_Add5~1_sumout\ <= NOT \Add5~1_sumout\;
\ALT_INV_Add4~1_sumout\ <= NOT \Add4~1_sumout\;
\ALT_INV_Add3~1_sumout\ <= NOT \Add3~1_sumout\;
\ALT_INV_Add2~1_sumout\ <= NOT \Add2~1_sumout\;
\ALT_INV_Add1~1_sumout\ <= NOT \Add1~1_sumout\;
\ALT_INV_Add0~1_sumout\ <= NOT \Add0~1_sumout\;
ALT_INV_R_next(15) <= NOT R_next(15);

-- Location: IOOBUF_X52_Y0_N36
\R[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => R_next(0),
	devoe => ww_devoe,
	o => ww_R(0));

-- Location: IOOBUF_X56_Y0_N36
\R[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => R_next(1),
	devoe => ww_devoe,
	o => ww_R(1));

-- Location: IOOBUF_X58_Y0_N59
\R[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => R_next(2),
	devoe => ww_devoe,
	o => ww_R(2));

-- Location: IOOBUF_X56_Y0_N19
\R[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => R_next(3),
	devoe => ww_devoe,
	o => ww_R(3));

-- Location: IOOBUF_X56_Y0_N2
\R[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => R_next(4),
	devoe => ww_devoe,
	o => ww_R(4));

-- Location: IOOBUF_X52_Y0_N53
\R[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => R_next(5),
	devoe => ww_devoe,
	o => ww_R(5));

-- Location: IOOBUF_X52_Y0_N2
\R[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => R_next(6),
	devoe => ww_devoe,
	o => ww_R(6));

-- Location: IOOBUF_X58_Y0_N93
\R[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => R_next(7),
	devoe => ww_devoe,
	o => ww_R(7));

-- Location: IOOBUF_X54_Y0_N2
\R[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => R_next(8),
	devoe => ww_devoe,
	o => ww_R(8));

-- Location: IOOBUF_X60_Y0_N36
\R[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => R_next(9),
	devoe => ww_devoe,
	o => ww_R(9));

-- Location: IOOBUF_X56_Y0_N53
\R[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => R_next(10),
	devoe => ww_devoe,
	o => ww_R(10));

-- Location: IOOBUF_X52_Y0_N19
\R[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => R_next(11),
	devoe => ww_devoe,
	o => ww_R(11));

-- Location: IOOBUF_X54_Y0_N36
\R[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => R_next(12),
	devoe => ww_devoe,
	o => ww_R(12));

-- Location: IOOBUF_X58_Y0_N76
\R[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => R_next(13),
	devoe => ww_devoe,
	o => ww_R(13));

-- Location: IOOBUF_X50_Y0_N76
\R[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => R_next(14),
	devoe => ww_devoe,
	o => ww_R(14));

-- Location: IOOBUF_X54_Y0_N19
\R[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => R_next(15),
	devoe => ww_devoe,
	o => ww_R(15));

-- Location: IOOBUF_X54_Y0_N53
\flag~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \flag~9_combout\,
	devoe => ww_devoe,
	o => ww_flag);

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

-- Location: IOIBUF_X60_Y0_N1
\op[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op(0),
	o => \op[0]~input_o\);

-- Location: IOIBUF_X60_Y0_N18
\op[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op(1),
	o => \op[1]~input_o\);

-- Location: IOIBUF_X89_Y6_N38
\A[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X64_Y0_N1
\B[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LABCELL_X73_Y3_N0
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( \B[0]~input_o\ ) + ( \A[0]~input_o\ ) + ( !VCC ))
-- \Add0~2\ = CARRY(( \B[0]~input_o\ ) + ( \A[0]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	cin => GND,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: LABCELL_X70_Y2_N51
\R_next~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \R_next~1_combout\ = ( \Add0~1_sumout\ & ( (!\A[0]~input_o\ & ((!\op[0]~input_o\ $ (!\B[0]~input_o\)) # (\op[1]~input_o\))) # (\A[0]~input_o\ & (!\op[0]~input_o\)) ) ) # ( !\Add0~1_sumout\ & ( (!\op[1]~input_o\ & (!\op[0]~input_o\ $ (((!\A[0]~input_o\ & 
-- !\B[0]~input_o\))))) # (\op[1]~input_o\ & (\op[0]~input_o\ & (!\A[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101100010011000010110001001100001111010101110100111101010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op[0]~input_o\,
	datab => \ALT_INV_op[1]~input_o\,
	datac => \ALT_INV_A[0]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_Add0~1_sumout\,
	combout => \R_next~1_combout\);

-- Location: MLABCELL_X72_Y3_N0
\Add5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~1_sumout\ = SUM(( \B[0]~input_o\ ) + ( VCC ) + ( !VCC ))
-- \Add5~2\ = CARRY(( \B[0]~input_o\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[0]~input_o\,
	cin => GND,
	sumout => \Add5~1_sumout\,
	cout => \Add5~2\);

-- Location: LABCELL_X70_Y2_N57
\R_next~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \R_next~3_combout\ = (!\op[1]~input_o\ & (\Add5~1_sumout\ & !\op[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op[1]~input_o\,
	datac => \ALT_INV_Add5~1_sumout\,
	datad => \ALT_INV_op[0]~input_o\,
	combout => \R_next~3_combout\);

-- Location: IOIBUF_X68_Y0_N52
\op[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op(2),
	o => \op[2]~input_o\);

-- Location: MLABCELL_X72_Y4_N0
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( !\B[0]~input_o\ $ (!\A[0]~input_o\) ) + ( !VCC ) + ( !VCC ))
-- \Add1~2\ = CARRY(( !\B[0]~input_o\ $ (!\A[0]~input_o\) ) + ( !VCC ) + ( !VCC ))
-- \Add1~3\ = SHARE((!\B[0]~input_o\) # (\A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	cin => GND,
	sharein => GND,
	sumout => \Add1~1_sumout\,
	cout => \Add1~2\,
	shareout => \Add1~3\);

-- Location: LABCELL_X70_Y2_N42
\R_next~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R_next~0_combout\ = ( \op[0]~input_o\ & ( \Add0~1_sumout\ & ( (!\op[1]~input_o\ & (((\Add1~1_sumout\)))) # (\op[1]~input_o\ & ((!\B[0]~input_o\) # ((!\A[0]~input_o\)))) ) ) ) # ( !\op[0]~input_o\ & ( \Add0~1_sumout\ & ( (!\op[1]~input_o\) # 
-- ((\B[0]~input_o\ & \A[0]~input_o\)) ) ) ) # ( \op[0]~input_o\ & ( !\Add0~1_sumout\ & ( (!\op[1]~input_o\ & (((\Add1~1_sumout\)))) # (\op[1]~input_o\ & ((!\B[0]~input_o\) # ((!\A[0]~input_o\)))) ) ) ) # ( !\op[0]~input_o\ & ( !\Add0~1_sumout\ & ( 
-- (\B[0]~input_o\ & (\op[1]~input_o\ & \A[0]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101001111110011101011110000111101010011111100111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_Add1~1_sumout\,
	datac => \ALT_INV_op[1]~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	datae => \ALT_INV_op[0]~input_o\,
	dataf => \ALT_INV_Add0~1_sumout\,
	combout => \R_next~0_combout\);

-- Location: MLABCELL_X72_Y2_N0
\Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~1_sumout\ = SUM(( \B[0]~input_o\ ) + ( VCC ) + ( !VCC ))
-- \Add3~2\ = CARRY(( \B[0]~input_o\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[0]~input_o\,
	cin => GND,
	sumout => \Add3~1_sumout\,
	cout => \Add3~2\);

-- Location: LABCELL_X74_Y2_N0
\Add4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~1_sumout\ = SUM(( \A[0]~input_o\ ) + ( VCC ) + ( !VCC ))
-- \Add4~2\ = CARRY(( \A[0]~input_o\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[0]~input_o\,
	cin => GND,
	sumout => \Add4~1_sumout\,
	cout => \Add4~2\);

-- Location: LABCELL_X71_Y4_N0
\Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~1_sumout\ = SUM(( \A[0]~input_o\ ) + ( VCC ) + ( !VCC ))
-- \Add2~2\ = CARRY(( \A[0]~input_o\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[0]~input_o\,
	cin => GND,
	sumout => \Add2~1_sumout\,
	cout => \Add2~2\);

-- Location: LABCELL_X73_Y2_N12
\R_next~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \R_next~2_combout\ = ( \op[1]~input_o\ & ( \B[0]~input_o\ & ( (!\op[0]~input_o\ & (\Add3~1_sumout\)) # (\op[0]~input_o\ & ((\Add4~1_sumout\))) ) ) ) # ( !\op[1]~input_o\ & ( \B[0]~input_o\ & ( (\op[0]~input_o\ & \Add2~1_sumout\) ) ) ) # ( \op[1]~input_o\ 
-- & ( !\B[0]~input_o\ & ( (!\op[0]~input_o\ & (\Add3~1_sumout\)) # (\op[0]~input_o\ & ((\Add4~1_sumout\))) ) ) ) # ( !\op[1]~input_o\ & ( !\B[0]~input_o\ & ( (!\op[0]~input_o\) # (\Add2~1_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101011111111001001110010011100000000010101010010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op[0]~input_o\,
	datab => \ALT_INV_Add3~1_sumout\,
	datac => \ALT_INV_Add4~1_sumout\,
	datad => \ALT_INV_Add2~1_sumout\,
	datae => \ALT_INV_op[1]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \R_next~2_combout\);

-- Location: IOIBUF_X68_Y0_N35
\op[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op(3),
	o => \op[3]~input_o\);

-- Location: LABCELL_X70_Y2_N6
\R_next~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \R_next~4_combout\ = ( \R_next~2_combout\ & ( \op[3]~input_o\ & ( (!\op[2]~input_o\) # (\R_next~3_combout\) ) ) ) # ( !\R_next~2_combout\ & ( \op[3]~input_o\ & ( (\R_next~3_combout\ & \op[2]~input_o\) ) ) ) # ( \R_next~2_combout\ & ( !\op[3]~input_o\ & ( 
-- (!\op[2]~input_o\ & ((\R_next~0_combout\))) # (\op[2]~input_o\ & (\R_next~1_combout\)) ) ) ) # ( !\R_next~2_combout\ & ( !\op[3]~input_o\ & ( (!\op[2]~input_o\ & ((\R_next~0_combout\))) # (\op[2]~input_o\ & (\R_next~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100000011000000111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_R_next~1_combout\,
	datab => \ALT_INV_R_next~3_combout\,
	datac => \ALT_INV_op[2]~input_o\,
	datad => \ALT_INV_R_next~0_combout\,
	datae => \ALT_INV_R_next~2_combout\,
	dataf => \ALT_INV_op[3]~input_o\,
	combout => \R_next~4_combout\);

-- Location: FF_X70_Y2_N7
\R_next[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \R_next~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R_next(0));

-- Location: LABCELL_X68_Y3_N15
\R_next[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \R_next[1]~5_combout\ = (\op[1]~input_o\ & !\op[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op[1]~input_o\,
	datad => \ALT_INV_op[2]~input_o\,
	combout => \R_next[1]~5_combout\);

-- Location: IOIBUF_X70_Y0_N52
\A[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LABCELL_X74_Y2_N3
\Add4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~5_sumout\ = SUM(( \A[1]~input_o\ ) + ( VCC ) + ( \Add4~2\ ))
-- \Add4~6\ = CARRY(( \A[1]~input_o\ ) + ( VCC ) + ( \Add4~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[1]~input_o\,
	cin => \Add4~2\,
	sumout => \Add4~5_sumout\,
	cout => \Add4~6\);

-- Location: LABCELL_X68_Y2_N27
\flag~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \flag~3_combout\ = ( !\op[2]~input_o\ & ( !\op[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_op[3]~input_o\,
	dataf => \ALT_INV_op[2]~input_o\,
	combout => \flag~3_combout\);

-- Location: LABCELL_X68_Y2_N33
\R_next[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \R_next[1]~6_combout\ = ( \op[1]~input_o\ & ( !\flag~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_flag~3_combout\,
	datae => \ALT_INV_op[1]~input_o\,
	combout => \R_next[1]~6_combout\);

-- Location: IOIBUF_X89_Y4_N95
\B[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LABCELL_X71_Y4_N3
\Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~5_sumout\ = SUM(( \A[1]~input_o\ ) + ( GND ) + ( \Add2~2\ ))
-- \Add2~6\ = CARRY(( \A[1]~input_o\ ) + ( GND ) + ( \Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[1]~input_o\,
	cin => \Add2~2\,
	sumout => \Add2~5_sumout\,
	cout => \Add2~6\);

-- Location: MLABCELL_X72_Y4_N3
\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( !\A[1]~input_o\ $ (\B[1]~input_o\) ) + ( \Add1~3\ ) + ( \Add1~2\ ))
-- \Add1~6\ = CARRY(( !\A[1]~input_o\ $ (\B[1]~input_o\) ) + ( \Add1~3\ ) + ( \Add1~2\ ))
-- \Add1~7\ = SHARE((\A[1]~input_o\ & !\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	cin => \Add1~2\,
	sharein => \Add1~3\,
	sumout => \Add1~5_sumout\,
	cout => \Add1~6\,
	shareout => \Add1~7\);

-- Location: LABCELL_X71_Y4_N48
\R_next~124\ : cyclonev_lcell_comb
-- Equation(s):
-- \R_next~124_combout\ = ( !\op[2]~input_o\ & ( (!\op[3]~input_o\ & (((\Add1~5_sumout\)))) # (\op[3]~input_o\ & (\Add2~5_sumout\)) ) ) # ( \op[2]~input_o\ & ( ((!\op[3]~input_o\ & (!\B[1]~input_o\ & (!\A[1]~input_o\))) # (\op[3]~input_o\ & 
-- (((\A[0]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001110100011101110000000000000000011101000111011111001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add2~5_sumout\,
	datab => \ALT_INV_op[3]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[1]~input_o\,
	datae => \ALT_INV_op[2]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	datag => \ALT_INV_Add1~5_sumout\,
	combout => \R_next~124_combout\);

-- Location: LABCELL_X71_Y4_N54
\R_next~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \R_next~7_combout\ = ( \B[1]~input_o\ & ( \R_next~124_combout\ & ( (!\R_next[1]~5_combout\ & (((\R_next[1]~6_combout\ & \A[1]~input_o\)))) # (\R_next[1]~5_combout\ & ((!\R_next[1]~6_combout\ & ((\A[1]~input_o\))) # (\R_next[1]~6_combout\ & 
-- (!\Add4~5_sumout\)))) ) ) ) # ( !\B[1]~input_o\ & ( \R_next~124_combout\ & ( (\R_next[1]~6_combout\ & ((!\R_next[1]~5_combout\ & ((\A[1]~input_o\))) # (\R_next[1]~5_combout\ & (!\Add4~5_sumout\)))) ) ) ) # ( \B[1]~input_o\ & ( !\R_next~124_combout\ & ( 
-- (!\R_next[1]~5_combout\ & (((!\R_next[1]~6_combout\) # (\A[1]~input_o\)))) # (\R_next[1]~5_combout\ & ((!\R_next[1]~6_combout\ & ((\A[1]~input_o\))) # (\R_next[1]~6_combout\ & (!\Add4~5_sumout\)))) ) ) ) # ( !\B[1]~input_o\ & ( !\R_next~124_combout\ & ( 
-- (!\R_next[1]~5_combout\ & (((!\R_next[1]~6_combout\) # (\A[1]~input_o\)))) # (\R_next[1]~5_combout\ & (!\Add4~5_sumout\ & (\R_next[1]~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010010101110101001001111111000000100000011100000010001011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_R_next[1]~5_combout\,
	datab => \ALT_INV_Add4~5_sumout\,
	datac => \ALT_INV_R_next[1]~6_combout\,
	datad => \ALT_INV_A[1]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_R_next~124_combout\,
	combout => \R_next~7_combout\);

-- Location: MLABCELL_X72_Y3_N3
\Add5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~5_sumout\ = SUM(( \B[1]~input_o\ ) + ( VCC ) + ( \Add5~2\ ))
-- \Add5~6\ = CARRY(( \B[1]~input_o\ ) + ( VCC ) + ( \Add5~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	cin => \Add5~2\,
	sumout => \Add5~5_sumout\,
	cout => \Add5~6\);

-- Location: LABCELL_X73_Y3_N3
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( \B[1]~input_o\ ) + ( \A[1]~input_o\ ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( \B[1]~input_o\ ) + ( \A[1]~input_o\ ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: LABCELL_X71_Y3_N36
\R_next~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \R_next~9_combout\ = ( \op[3]~input_o\ & ( \B[1]~input_o\ & ( (!\Add5~5_sumout\) # (!\op[2]~input_o\) ) ) ) # ( !\op[3]~input_o\ & ( \B[1]~input_o\ & ( (!\op[2]~input_o\ & !\Add0~5_sumout\) ) ) ) # ( \op[3]~input_o\ & ( !\B[1]~input_o\ & ( 
-- (!\Add5~5_sumout\ & \op[2]~input_o\) ) ) ) # ( !\op[3]~input_o\ & ( !\B[1]~input_o\ & ( (!\op[2]~input_o\ & ((!\Add0~5_sumout\))) # (\op[2]~input_o\ & (!\A[1]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110000110000001000100010001011001100000000001110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add5~5_sumout\,
	datab => \ALT_INV_op[2]~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	datad => \ALT_INV_Add0~5_sumout\,
	datae => \ALT_INV_op[3]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \R_next~9_combout\);

-- Location: MLABCELL_X72_Y2_N3
\Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~5_sumout\ = SUM(( \B[1]~input_o\ ) + ( GND ) + ( \Add3~2\ ))
-- \Add3~6\ = CARRY(( \B[1]~input_o\ ) + ( GND ) + ( \Add3~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[1]~input_o\,
	cin => \Add3~2\,
	sumout => \Add3~5_sumout\,
	cout => \Add3~6\);

-- Location: MLABCELL_X72_Y2_N48
\R_next~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \R_next~8_combout\ = ( \Add3~5_sumout\ & ( \B[1]~input_o\ & ( (!\op[3]~input_o\ & (!\op[2]~input_o\ $ (((!\A[1]~input_o\))))) # (\op[3]~input_o\ & ((!\op[2]~input_o\) # ((\B[0]~input_o\)))) ) ) ) # ( !\Add3~5_sumout\ & ( \B[1]~input_o\ & ( 
-- (!\op[3]~input_o\ & (!\op[2]~input_o\ $ (((!\A[1]~input_o\))))) # (\op[3]~input_o\ & (\op[2]~input_o\ & (\B[0]~input_o\))) ) ) ) # ( \Add3~5_sumout\ & ( !\B[1]~input_o\ & ( (!\op[2]~input_o\ & (((\op[3]~input_o\)))) # (\op[2]~input_o\ & ((!\op[3]~input_o\ 
-- & ((\A[1]~input_o\))) # (\op[3]~input_o\ & (\B[0]~input_o\)))) ) ) ) # ( !\Add3~5_sumout\ & ( !\B[1]~input_o\ & ( (\op[2]~input_o\ & ((!\op[3]~input_o\ & ((\A[1]~input_o\))) # (\op[3]~input_o\ & (\B[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010001000001011011101101011010000100010101101010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op[2]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	datad => \ALT_INV_op[3]~input_o\,
	datae => \ALT_INV_Add3~5_sumout\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \R_next~8_combout\);

-- Location: LABCELL_X68_Y2_N0
\R_next~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \R_next~10_combout\ = ( \op[0]~input_o\ & ( \R_next~8_combout\ & ( !\R_next~7_combout\ ) ) ) # ( !\op[0]~input_o\ & ( \R_next~8_combout\ & ( (!\R_next~9_combout\) # (\op[1]~input_o\) ) ) ) # ( \op[0]~input_o\ & ( !\R_next~8_combout\ & ( 
-- !\R_next~7_combout\ ) ) ) # ( !\op[0]~input_o\ & ( !\R_next~8_combout\ & ( (!\R_next~9_combout\ & !\op[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000101010101010101011001111110011111010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_R_next~7_combout\,
	datab => \ALT_INV_R_next~9_combout\,
	datac => \ALT_INV_op[1]~input_o\,
	datae => \ALT_INV_op[0]~input_o\,
	dataf => \ALT_INV_R_next~8_combout\,
	combout => \R_next~10_combout\);

-- Location: LABCELL_X68_Y2_N39
\R_next[1]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \R_next[1]~11_combout\ = ( \op[0]~input_o\ & ( \op[2]~input_o\ & ( (\op[1]~input_o\ & \op[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op[1]~input_o\,
	datac => \ALT_INV_op[3]~input_o\,
	datae => \ALT_INV_op[0]~input_o\,
	dataf => \ALT_INV_op[2]~input_o\,
	combout => \R_next[1]~11_combout\);

-- Location: FF_X68_Y2_N1
\R_next[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \R_next~10_combout\,
	sclr => \R_next[1]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R_next(1));

-- Location: IOIBUF_X70_Y0_N1
\A[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X70_Y0_N35
\B[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LABCELL_X74_Y2_N6
\Add4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~9_sumout\ = SUM(( \A[2]~input_o\ ) + ( VCC ) + ( \Add4~6\ ))
-- \Add4~10\ = CARRY(( \A[2]~input_o\ ) + ( VCC ) + ( \Add4~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[2]~input_o\,
	cin => \Add4~6\,
	sumout => \Add4~9_sumout\,
	cout => \Add4~10\);

-- Location: LABCELL_X71_Y4_N6
\Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~9_sumout\ = SUM(( \A[2]~input_o\ ) + ( GND ) + ( \Add2~6\ ))
-- \Add2~10\ = CARRY(( \A[2]~input_o\ ) + ( GND ) + ( \Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[2]~input_o\,
	cin => \Add2~6\,
	sumout => \Add2~9_sumout\,
	cout => \Add2~10\);

-- Location: MLABCELL_X72_Y4_N6
\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( !\B[2]~input_o\ $ (\A[2]~input_o\) ) + ( \Add1~7\ ) + ( \Add1~6\ ))
-- \Add1~10\ = CARRY(( !\B[2]~input_o\ $ (\A[2]~input_o\) ) + ( \Add1~7\ ) + ( \Add1~6\ ))
-- \Add1~11\ = SHARE((!\B[2]~input_o\ & \A[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	cin => \Add1~6\,
	sharein => \Add1~7\,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\,
	shareout => \Add1~11\);

-- Location: LABCELL_X70_Y4_N24
\R_next~120\ : cyclonev_lcell_comb
-- Equation(s):
-- \R_next~120_combout\ = ( !\op[2]~input_o\ & ( ((!\op[3]~input_o\ & (\Add1~9_sumout\)) # (\op[3]~input_o\ & (((\Add2~9_sumout\))))) ) ) # ( \op[2]~input_o\ & ( (!\op[3]~input_o\ & (((!\B[2]~input_o\ & (!\A[2]~input_o\))))) # (\op[3]~input_o\ & 
-- (\A[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000001100110100010001000100111111001111111101000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[1]~input_o\,
	datab => \ALT_INV_op[3]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	datae => \ALT_INV_op[2]~input_o\,
	dataf => \ALT_INV_Add2~9_sumout\,
	datag => \ALT_INV_Add1~9_sumout\,
	combout => \R_next~120_combout\);

-- Location: LABCELL_X71_Y2_N12
\R_next~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \R_next~12_combout\ = ( \R_next~120_combout\ & ( \R_next[1]~6_combout\ & ( (!\R_next[1]~5_combout\ & (\A[2]~input_o\)) # (\R_next[1]~5_combout\ & ((!\Add4~9_sumout\))) ) ) ) # ( !\R_next~120_combout\ & ( \R_next[1]~6_combout\ & ( (!\R_next[1]~5_combout\ & 
-- (\A[2]~input_o\)) # (\R_next[1]~5_combout\ & ((!\Add4~9_sumout\))) ) ) ) # ( \R_next~120_combout\ & ( !\R_next[1]~6_combout\ & ( (\A[2]~input_o\ & (\B[2]~input_o\ & \R_next[1]~5_combout\)) ) ) ) # ( !\R_next~120_combout\ & ( !\R_next[1]~6_combout\ & ( 
-- (!\R_next[1]~5_combout\) # ((\A[2]~input_o\ & \B[2]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100010001000000000001000101010101111100000101010111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_Add4~9_sumout\,
	datad => \ALT_INV_R_next[1]~5_combout\,
	datae => \ALT_INV_R_next~120_combout\,
	dataf => \ALT_INV_R_next[1]~6_combout\,
	combout => \R_next~12_combout\);

-- Location: MLABCELL_X72_Y2_N6
\Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~9_sumout\ = SUM(( \B[2]~input_o\ ) + ( GND ) + ( \Add3~6\ ))
-- \Add3~10\ = CARRY(( \B[2]~input_o\ ) + ( GND ) + ( \Add3~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[2]~input_o\,
	cin => \Add3~6\,
	sumout => \Add3~9_sumout\,
	cout => \Add3~10\);

-- Location: LABCELL_X71_Y2_N18
\R_next~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \R_next~13_combout\ = ( \op[2]~input_o\ & ( \B[1]~input_o\ & ( (!\A[2]~input_o\ $ (!\B[2]~input_o\)) # (\op[3]~input_o\) ) ) ) # ( !\op[2]~input_o\ & ( \B[1]~input_o\ & ( (!\op[3]~input_o\ & (\A[2]~input_o\ & (\B[2]~input_o\))) # (\op[3]~input_o\ & 
-- (((\Add3~9_sumout\)))) ) ) ) # ( \op[2]~input_o\ & ( !\B[1]~input_o\ & ( (!\op[3]~input_o\ & (!\A[2]~input_o\ $ (!\B[2]~input_o\))) ) ) ) # ( !\op[2]~input_o\ & ( !\B[1]~input_o\ & ( (!\op[3]~input_o\ & (\A[2]~input_o\ & (\B[2]~input_o\))) # 
-- (\op[3]~input_o\ & (((\Add3~9_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011111011000000110000000010000000111110110111101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_op[3]~input_o\,
	datad => \ALT_INV_Add3~9_sumout\,
	datae => \ALT_INV_op[2]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \R_next~13_combout\);

-- Location: MLABCELL_X72_Y3_N6
\Add5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~9_sumout\ = SUM(( \B[2]~input_o\ ) + ( VCC ) + ( \Add5~6\ ))
-- \Add5~10\ = CARRY(( \B[2]~input_o\ ) + ( VCC ) + ( \Add5~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[2]~input_o\,
	cin => \Add5~6\,
	sumout => \Add5~9_sumout\,
	cout => \Add5~10\);

-- Location: LABCELL_X73_Y3_N6
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( \A[2]~input_o\ ) + ( \B[2]~input_o\ ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( \A[2]~input_o\ ) + ( \B[2]~input_o\ ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: LABCELL_X71_Y3_N42
\R_next~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \R_next~14_combout\ = ( \op[3]~input_o\ & ( \Add0~9_sumout\ & ( (!\op[2]~input_o\ & ((\B[2]~input_o\))) # (\op[2]~input_o\ & (!\Add5~9_sumout\)) ) ) ) # ( !\op[3]~input_o\ & ( \Add0~9_sumout\ & ( (\op[2]~input_o\ & (!\B[2]~input_o\ & !\A[2]~input_o\)) ) ) 
-- ) # ( \op[3]~input_o\ & ( !\Add0~9_sumout\ & ( (!\op[2]~input_o\ & ((\B[2]~input_o\))) # (\op[2]~input_o\ & (!\Add5~9_sumout\)) ) ) ) # ( !\op[3]~input_o\ & ( !\Add0~9_sumout\ & ( (!\op[2]~input_o\) # ((!\B[2]~input_o\ & !\A[2]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011001100001011100010111000110000000000000010111000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add5~9_sumout\,
	datab => \ALT_INV_op[2]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	datae => \ALT_INV_op[3]~input_o\,
	dataf => \ALT_INV_Add0~9_sumout\,
	combout => \R_next~14_combout\);

-- Location: LABCELL_X70_Y2_N30
\R_next~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \R_next~15_combout\ = ( \R_next~13_combout\ & ( \R_next~14_combout\ & ( (!\op[0]~input_o\ & ((\op[1]~input_o\))) # (\op[0]~input_o\ & (!\R_next~12_combout\)) ) ) ) # ( !\R_next~13_combout\ & ( \R_next~14_combout\ & ( (\op[0]~input_o\ & 
-- !\R_next~12_combout\) ) ) ) # ( \R_next~13_combout\ & ( !\R_next~14_combout\ & ( (!\op[0]~input_o\) # (!\R_next~12_combout\) ) ) ) # ( !\R_next~13_combout\ & ( !\R_next~14_combout\ & ( (!\op[0]~input_o\ & ((!\op[1]~input_o\))) # (\op[0]~input_o\ & 
-- (!\R_next~12_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110010011100100111011101110111001000100010001000100111001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op[0]~input_o\,
	datab => \ALT_INV_R_next~12_combout\,
	datac => \ALT_INV_op[1]~input_o\,
	datae => \ALT_INV_R_next~13_combout\,
	dataf => \ALT_INV_R_next~14_combout\,
	combout => \R_next~15_combout\);

-- Location: FF_X70_Y2_N31
\R_next[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \R_next~15_combout\,
	sclr => \R_next[1]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R_next(2));

-- Location: IOIBUF_X60_Y0_N52
\B[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: MLABCELL_X72_Y3_N9
\Add5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~13_sumout\ = SUM(( \B[3]~input_o\ ) + ( VCC ) + ( \Add5~10\ ))
-- \Add5~14\ = CARRY(( \B[3]~input_o\ ) + ( VCC ) + ( \Add5~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	cin => \Add5~10\,
	sumout => \Add5~13_sumout\,
	cout => \Add5~14\);

-- Location: IOIBUF_X66_Y0_N58
\A[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LABCELL_X73_Y3_N9
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( \B[3]~input_o\ ) + ( \A[3]~input_o\ ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( \B[3]~input_o\ ) + ( \A[3]~input_o\ ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[3]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: LABCELL_X68_Y3_N54
\R_next~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \R_next~18_combout\ = ( \op[3]~input_o\ & ( \B[3]~input_o\ & ( (!\Add5~13_sumout\) # (!\op[2]~input_o\) ) ) ) # ( !\op[3]~input_o\ & ( \B[3]~input_o\ & ( (!\Add0~13_sumout\ & !\op[2]~input_o\) ) ) ) # ( \op[3]~input_o\ & ( !\B[3]~input_o\ & ( 
-- (!\Add5~13_sumout\ & \op[2]~input_o\) ) ) ) # ( !\op[3]~input_o\ & ( !\B[3]~input_o\ & ( (!\op[2]~input_o\ & (!\Add0~13_sumout\)) # (\op[2]~input_o\ & ((!\A[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111000000000010100000101011000000110000001111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add5~13_sumout\,
	datab => \ALT_INV_Add0~13_sumout\,
	datac => \ALT_INV_op[2]~input_o\,
	datad => \ALT_INV_A[3]~input_o\,
	datae => \ALT_INV_op[3]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \R_next~18_combout\);

-- Location: MLABCELL_X72_Y2_N9
\Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~13_sumout\ = SUM(( \B[3]~input_o\ ) + ( GND ) + ( \Add3~10\ ))
-- \Add3~14\ = CARRY(( \B[3]~input_o\ ) + ( GND ) + ( \Add3~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	cin => \Add3~10\,
	sumout => \Add3~13_sumout\,
	cout => \Add3~14\);

-- Location: LABCELL_X68_Y2_N15
\R_next~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \R_next~17_combout\ = ( \B[2]~input_o\ & ( \Add3~13_sumout\ & ( ((!\B[3]~input_o\ & (\op[2]~input_o\ & \A[3]~input_o\)) # (\B[3]~input_o\ & (!\op[2]~input_o\ $ (!\A[3]~input_o\)))) # (\op[3]~input_o\) ) ) ) # ( !\B[2]~input_o\ & ( \Add3~13_sumout\ & ( 
-- (!\op[2]~input_o\ & (((\B[3]~input_o\ & \A[3]~input_o\)) # (\op[3]~input_o\))) # (\op[2]~input_o\ & (!\op[3]~input_o\ & (!\B[3]~input_o\ $ (!\A[3]~input_o\)))) ) ) ) # ( \B[2]~input_o\ & ( !\Add3~13_sumout\ & ( (!\B[3]~input_o\ & (\op[2]~input_o\ & 
-- ((\A[3]~input_o\) # (\op[3]~input_o\)))) # (\B[3]~input_o\ & (!\op[2]~input_o\ $ (((!\A[3]~input_o\) # (\op[3]~input_o\))))) ) ) ) # ( !\B[2]~input_o\ & ( !\Add3~13_sumout\ & ( (!\op[3]~input_o\ & ((!\B[3]~input_o\ & (\op[2]~input_o\ & \A[3]~input_o\)) # 
-- (\B[3]~input_o\ & (!\op[2]~input_o\ $ (!\A[3]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000001100000000100110110001100011100011011000001111101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_op[2]~input_o\,
	datac => \ALT_INV_op[3]~input_o\,
	datad => \ALT_INV_A[3]~input_o\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_Add3~13_sumout\,
	combout => \R_next~17_combout\);

-- Location: LABCELL_X74_Y2_N9
\Add4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~13_sumout\ = SUM(( \A[3]~input_o\ ) + ( VCC ) + ( \Add4~10\ ))
-- \Add4~14\ = CARRY(( \A[3]~input_o\ ) + ( VCC ) + ( \Add4~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[3]~input_o\,
	cin => \Add4~10\,
	sumout => \Add4~13_sumout\,
	cout => \Add4~14\);

-- Location: LABCELL_X71_Y4_N9
\Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~13_sumout\ = SUM(( \A[3]~input_o\ ) + ( GND ) + ( \Add2~10\ ))
-- \Add2~14\ = CARRY(( \A[3]~input_o\ ) + ( GND ) + ( \Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	cin => \Add2~10\,
	sumout => \Add2~13_sumout\,
	cout => \Add2~14\);

-- Location: MLABCELL_X72_Y4_N9
\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( !\B[3]~input_o\ $ (\A[3]~input_o\) ) + ( \Add1~11\ ) + ( \Add1~10\ ))
-- \Add1~14\ = CARRY(( !\B[3]~input_o\ $ (\A[3]~input_o\) ) + ( \Add1~11\ ) + ( \Add1~10\ ))
-- \Add1~15\ = SHARE((!\B[3]~input_o\ & \A[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	cin => \Add1~10\,
	sharein => \Add1~11\,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\,
	shareout => \Add1~15\);

-- Location: LABCELL_X70_Y4_N18
\R_next~116\ : cyclonev_lcell_comb
-- Equation(s):
-- \R_next~116_combout\ = ( !\op[2]~input_o\ & ( (((!\op[3]~input_o\ & (\Add1~13_sumout\)) # (\op[3]~input_o\ & ((\Add2~13_sumout\))))) ) ) # ( \op[2]~input_o\ & ( (!\op[3]~input_o\ & (!\A[3]~input_o\ & (((!\B[3]~input_o\))))) # (\op[3]~input_o\ & 
-- (((\A[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100000000101000000011001100001111111111111010000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datab => \ALT_INV_A[2]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_op[3]~input_o\,
	datae => \ALT_INV_op[2]~input_o\,
	dataf => \ALT_INV_Add2~13_sumout\,
	datag => \ALT_INV_Add1~13_sumout\,
	combout => \R_next~116_combout\);

-- Location: LABCELL_X70_Y4_N30
\R_next~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \R_next~16_combout\ = ( \Add4~13_sumout\ & ( \R_next~116_combout\ & ( (\A[3]~input_o\ & ((!\R_next[1]~5_combout\ & (\R_next[1]~6_combout\)) # (\R_next[1]~5_combout\ & (!\R_next[1]~6_combout\ & \B[3]~input_o\)))) ) ) ) # ( !\Add4~13_sumout\ & ( 
-- \R_next~116_combout\ & ( (!\R_next[1]~5_combout\ & (\R_next[1]~6_combout\ & ((\A[3]~input_o\)))) # (\R_next[1]~5_combout\ & (((\B[3]~input_o\ & \A[3]~input_o\)) # (\R_next[1]~6_combout\))) ) ) ) # ( \Add4~13_sumout\ & ( !\R_next~116_combout\ & ( 
-- (!\R_next[1]~5_combout\ & ((!\R_next[1]~6_combout\) # ((\A[3]~input_o\)))) # (\R_next[1]~5_combout\ & (!\R_next[1]~6_combout\ & (\B[3]~input_o\ & \A[3]~input_o\))) ) ) ) # ( !\Add4~13_sumout\ & ( !\R_next~116_combout\ & ( (!\R_next[1]~5_combout\ & 
-- ((!\R_next[1]~6_combout\) # ((\A[3]~input_o\)))) # (\R_next[1]~5_combout\ & (((\B[3]~input_o\ & \A[3]~input_o\)) # (\R_next[1]~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110111111100010001010111000010001001101110000000000100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_R_next[1]~5_combout\,
	datab => \ALT_INV_R_next[1]~6_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_A[3]~input_o\,
	datae => \ALT_INV_Add4~13_sumout\,
	dataf => \ALT_INV_R_next~116_combout\,
	combout => \R_next~16_combout\);

-- Location: LABCELL_X68_Y2_N6
\R_next~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \R_next~19_combout\ = ( \op[0]~input_o\ & ( !\R_next~16_combout\ ) ) # ( !\op[0]~input_o\ & ( (!\op[1]~input_o\ & (!\R_next~18_combout\)) # (\op[1]~input_o\ & ((\R_next~17_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001110100011111111110000000010100011101000111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_R_next~18_combout\,
	datab => \ALT_INV_R_next~17_combout\,
	datac => \ALT_INV_op[1]~input_o\,
	datad => \ALT_INV_R_next~16_combout\,
	datae => \ALT_INV_op[0]~input_o\,
	combout => \R_next~19_combout\);

-- Location: FF_X68_Y2_N8
\R_next[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \R_next~19_combout\,
	sclr => \R_next[1]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R_next(3));

-- Location: IOIBUF_X89_Y6_N21
\A[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X58_Y0_N41
\B[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: MLABCELL_X72_Y2_N12
\Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~17_sumout\ = SUM(( \B[4]~input_o\ ) + ( GND ) + ( \Add3~14\ ))
-- \Add3~18\ = CARRY(( \B[4]~input_o\ ) + ( GND ) + ( \Add3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[4]~input_o\,
	cin => \Add3~14\,
	sumout => \Add3~17_sumout\,
	cout => \Add3~18\);

-- Location: LABCELL_X70_Y4_N12
\R_next~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \R_next~21_combout\ = ( \op[2]~input_o\ & ( \B[4]~input_o\ & ( (!\op[3]~input_o\ & ((!\A[4]~input_o\))) # (\op[3]~input_o\ & (\B[3]~input_o\)) ) ) ) # ( !\op[2]~input_o\ & ( \B[4]~input_o\ & ( (!\op[3]~input_o\ & (\A[4]~input_o\)) # (\op[3]~input_o\ & 
-- ((\Add3~17_sumout\))) ) ) ) # ( \op[2]~input_o\ & ( !\B[4]~input_o\ & ( (!\op[3]~input_o\ & ((\A[4]~input_o\))) # (\op[3]~input_o\ & (\B[3]~input_o\)) ) ) ) # ( !\op[2]~input_o\ & ( !\B[4]~input_o\ & ( (\op[3]~input_o\ & \Add3~17_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000111010001110100001100001111111101000111010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_op[3]~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_Add3~17_sumout\,
	datae => \ALT_INV_op[2]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \R_next~21_combout\);

-- Location: LABCELL_X73_Y3_N12
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( \B[4]~input_o\ ) + ( \A[4]~input_o\ ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( \B[4]~input_o\ ) + ( \A[4]~input_o\ ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: MLABCELL_X72_Y3_N12
\Add5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~17_sumout\ = SUM(( \B[4]~input_o\ ) + ( VCC ) + ( \Add5~14\ ))
-- \Add5~18\ = CARRY(( \B[4]~input_o\ ) + ( VCC ) + ( \Add5~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[4]~input_o\,
	cin => \Add5~14\,
	sumout => \Add5~17_sumout\,
	cout => \Add5~18\);

-- Location: LABCELL_X71_Y3_N48
\R_next~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \R_next~22_combout\ = ( \op[3]~input_o\ & ( \A[4]~input_o\ & ( (!\op[2]~input_o\ & (\B[4]~input_o\)) # (\op[2]~input_o\ & ((!\Add5~17_sumout\))) ) ) ) # ( !\op[3]~input_o\ & ( \A[4]~input_o\ & ( (!\Add0~17_sumout\ & !\op[2]~input_o\) ) ) ) # ( 
-- \op[3]~input_o\ & ( !\A[4]~input_o\ & ( (!\op[2]~input_o\ & (\B[4]~input_o\)) # (\op[2]~input_o\ & ((!\Add5~17_sumout\))) ) ) ) # ( !\op[3]~input_o\ & ( !\A[4]~input_o\ & ( (!\op[2]~input_o\ & (!\Add0~17_sumout\)) # (\op[2]~input_o\ & ((!\B[4]~input_o\))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101011001100001100111111000010101010000000000011001111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~17_sumout\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_Add5~17_sumout\,
	datad => \ALT_INV_op[2]~input_o\,
	datae => \ALT_INV_op[3]~input_o\,
	dataf => \ALT_INV_A[4]~input_o\,
	combout => \R_next~22_combout\);

-- Location: LABCELL_X74_Y2_N12
\Add4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~17_sumout\ = SUM(( \A[4]~input_o\ ) + ( VCC ) + ( \Add4~14\ ))
-- \Add4~18\ = CARRY(( \A[4]~input_o\ ) + ( VCC ) + ( \Add4~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[4]~input_o\,
	cin => \Add4~14\,
	sumout => \Add4~17_sumout\,
	cout => \Add4~18\);

-- Location: LABCELL_X71_Y4_N12
\Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~17_sumout\ = SUM(( \A[4]~input_o\ ) + ( GND ) + ( \Add2~14\ ))
-- \Add2~18\ = CARRY(( \A[4]~input_o\ ) + ( GND ) + ( \Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[4]~input_o\,
	cin => \Add2~14\,
	sumout => \Add2~17_sumout\,
	cout => \Add2~18\);

-- Location: MLABCELL_X72_Y4_N12
\Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( !\B[4]~input_o\ $ (\A[4]~input_o\) ) + ( \Add1~15\ ) + ( \Add1~14\ ))
-- \Add1~18\ = CARRY(( !\B[4]~input_o\ $ (\A[4]~input_o\) ) + ( \Add1~15\ ) + ( \Add1~14\ ))
-- \Add1~19\ = SHARE((!\B[4]~input_o\ & \A[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001100110000000000000000001100110000110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_A[4]~input_o\,
	cin => \Add1~14\,
	sharein => \Add1~15\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\,
	shareout => \Add1~19\);

-- Location: LABCELL_X70_Y4_N42
\R_next~112\ : cyclonev_lcell_comb
-- Equation(s):
-- \R_next~112_combout\ = ( !\op[2]~input_o\ & ( (((!\op[3]~input_o\ & (\Add1~17_sumout\)) # (\op[3]~input_o\ & ((\Add2~17_sumout\))))) ) ) # ( \op[2]~input_o\ & ( (!\op[3]~input_o\ & (!\A[4]~input_o\ & (((!\B[4]~input_o\))))) # (\op[3]~input_o\ & 
-- (((\A[3]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100000000101000000011001100001111111111111010000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[4]~input_o\,
	datab => \ALT_INV_A[3]~input_o\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_op[3]~input_o\,
	datae => \ALT_INV_op[2]~input_o\,
	dataf => \ALT_INV_Add2~17_sumout\,
	datag => \ALT_INV_Add1~17_sumout\,
	combout => \R_next~112_combout\);

-- Location: LABCELL_X70_Y4_N36
\R_next~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \R_next~20_combout\ = ( \R_next[1]~6_combout\ & ( \A[4]~input_o\ & ( (!\Add4~17_sumout\) # (!\R_next[1]~5_combout\) ) ) ) # ( !\R_next[1]~6_combout\ & ( \A[4]~input_o\ & ( (!\R_next[1]~5_combout\ & ((!\R_next~112_combout\))) # (\R_next[1]~5_combout\ & 
-- (\B[4]~input_o\)) ) ) ) # ( \R_next[1]~6_combout\ & ( !\A[4]~input_o\ & ( (!\Add4~17_sumout\ & \R_next[1]~5_combout\) ) ) ) # ( !\R_next[1]~6_combout\ & ( !\A[4]~input_o\ & ( (!\R_next[1]~5_combout\ & !\R_next~112_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000000010100000101011110011000000111111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add4~17_sumout\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_R_next[1]~5_combout\,
	datad => \ALT_INV_R_next~112_combout\,
	datae => \ALT_INV_R_next[1]~6_combout\,
	dataf => \ALT_INV_A[4]~input_o\,
	combout => \R_next~20_combout\);

-- Location: LABCELL_X68_Y2_N42
\R_next~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \R_next~23_combout\ = ( !\op[0]~input_o\ & ( \R_next~20_combout\ & ( (!\op[1]~input_o\ & ((!\R_next~22_combout\))) # (\op[1]~input_o\ & (\R_next~21_combout\)) ) ) ) # ( \op[0]~input_o\ & ( !\R_next~20_combout\ ) ) # ( !\op[0]~input_o\ & ( 
-- !\R_next~20_combout\ & ( (!\op[1]~input_o\ & ((!\R_next~22_combout\))) # (\op[1]~input_o\ & (\R_next~21_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010111000101111111111111111111000101110001010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_R_next~21_combout\,
	datab => \ALT_INV_R_next~22_combout\,
	datac => \ALT_INV_op[1]~input_o\,
	datae => \ALT_INV_op[0]~input_o\,
	dataf => \ALT_INV_R_next~20_combout\,
	combout => \R_next~23_combout\);

-- Location: FF_X68_Y2_N43
\R_next[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \R_next~23_combout\,
	sclr => \R_next[1]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R_next(4));

-- Location: IOIBUF_X72_Y0_N52
\B[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: MLABCELL_X72_Y3_N15
\Add5~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~21_sumout\ = SUM(( \B[5]~input_o\ ) + ( VCC ) + ( \Add5~18\ ))
-- \Add5~22\ = CARRY(( \B[5]~input_o\ ) + ( VCC ) + ( \Add5~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[5]~input_o\,
	cin => \Add5~18\,
	sumout => \Add5~21_sumout\,
	cout => \Add5~22\);

-- Location: IOIBUF_X64_Y0_N18
\A[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LABCELL_X73_Y3_N15
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( \B[5]~input_o\ ) + ( \A[5]~input_o\ ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( \B[5]~input_o\ ) + ( \A[5]~input_o\ ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datac => \ALT_INV_A[5]~input_o\,
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: LABCELL_X71_Y3_N6
\R_next~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \R_next~26_combout\ = ( \op[3]~input_o\ & ( \Add0~21_sumout\ & ( (!\op[2]~input_o\ & ((\B[5]~input_o\))) # (\op[2]~input_o\ & (!\Add5~21_sumout\)) ) ) ) # ( !\op[3]~input_o\ & ( \Add0~21_sumout\ & ( (\op[2]~input_o\ & (!\A[5]~input_o\ & !\B[5]~input_o\)) 
-- ) ) ) # ( \op[3]~input_o\ & ( !\Add0~21_sumout\ & ( (!\op[2]~input_o\ & ((\B[5]~input_o\))) # (\op[2]~input_o\ & (!\Add5~21_sumout\)) ) ) ) # ( !\op[3]~input_o\ & ( !\Add0~21_sumout\ & ( (!\op[2]~input_o\) # ((!\A[5]~input_o\ & !\B[5]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011001100001000101110111000110000000000000010001011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add5~21_sumout\,
	datab => \ALT_INV_op[2]~input_o\,
	datac => \ALT_INV_A[5]~input_o\,
	datad => \ALT_INV_B[5]~input_o\,
	datae => \ALT_INV_op[3]~input_o\,
	dataf => \ALT_INV_Add0~21_sumout\,
	combout => \R_next~26_combout\);

-- Location: MLABCELL_X72_Y2_N15
\Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~21_sumout\ = SUM(( \B[5]~input_o\ ) + ( GND ) + ( \Add3~18\ ))
-- \Add3~22\ = CARRY(( \B[5]~input_o\ ) + ( GND ) + ( \Add3~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	cin => \Add3~18\,
	sumout => \Add3~21_sumout\,
	cout => \Add3~22\);

-- Location: LABCELL_X71_Y3_N30
\R_next~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \R_next~25_combout\ = ( \op[3]~input_o\ & ( \B[5]~input_o\ & ( (!\op[2]~input_o\ & (\Add3~21_sumout\)) # (\op[2]~input_o\ & ((\B[4]~input_o\))) ) ) ) # ( !\op[3]~input_o\ & ( \B[5]~input_o\ & ( !\A[5]~input_o\ $ (!\op[2]~input_o\) ) ) ) # ( 
-- \op[3]~input_o\ & ( !\B[5]~input_o\ & ( (!\op[2]~input_o\ & (\Add3~21_sumout\)) # (\op[2]~input_o\ & ((\B[4]~input_o\))) ) ) ) # ( !\op[3]~input_o\ & ( !\B[5]~input_o\ & ( (\A[5]~input_o\ & \op[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111010101010011001100001111111100000101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add3~21_sumout\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_A[5]~input_o\,
	datad => \ALT_INV_op[2]~input_o\,
	datae => \ALT_INV_op[3]~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \R_next~25_combout\);

-- Location: LABCELL_X71_Y4_N15
\Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~21_sumout\ = SUM(( \A[5]~input_o\ ) + ( GND ) + ( \Add2~18\ ))
-- \Add2~22\ = CARRY(( \A[5]~input_o\ ) + ( GND ) + ( \Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[5]~input_o\,
	cin => \Add2~18\,
	sumout => \Add2~21_sumout\,
	cout => \Add2~22\);

-- Location: MLABCELL_X72_Y4_N15
\Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( !\B[5]~input_o\ $ (\A[5]~input_o\) ) + ( \Add1~19\ ) + ( \Add1~18\ ))
-- \Add1~22\ = CARRY(( !\B[5]~input_o\ $ (\A[5]~input_o\) ) + ( \Add1~19\ ) + ( \Add1~18\ ))
-- \Add1~23\ = SHARE((!\B[5]~input_o\ & \A[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datac => \ALT_INV_A[5]~input_o\,
	cin => \Add1~18\,
	sharein => \Add1~19\,
	sumout => \Add1~21_sumout\,
	cout => \Add1~22\,
	shareout => \Add1~23\);

-- Location: LABCELL_X71_Y3_N0
\R_next~108\ : cyclonev_lcell_comb
-- Equation(s):
-- \R_next~108_combout\ = ( !\op[2]~input_o\ & ( ((!\op[3]~input_o\ & (\Add1~21_sumout\)) # (\op[3]~input_o\ & (((\Add2~21_sumout\))))) ) ) # ( \op[2]~input_o\ & ( (!\op[3]~input_o\ & (!\A[5]~input_o\ & (!\B[5]~input_o\))) # (\op[3]~input_o\ & 
-- ((((\A[4]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000111111100000001000000000001100001111111011001110110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[5]~input_o\,
	datab => \ALT_INV_op[3]~input_o\,
	datac => \ALT_INV_B[5]~input_o\,
	datad => \ALT_INV_Add2~21_sumout\,
	datae => \ALT_INV_op[2]~input_o\,
	dataf => \ALT_INV_A[4]~input_o\,
	datag => \ALT_INV_Add1~21_sumout\,
	combout => \R_next~108_combout\);

-- Location: LABCELL_X74_Y2_N15
\Add4~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~21_sumout\ = SUM(( \A[5]~input_o\ ) + ( VCC ) + ( \Add4~18\ ))
-- \Add4~22\ = CARRY(( \A[5]~input_o\ ) + ( VCC ) + ( \Add4~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[5]~input_o\,
	cin => \Add4~18\,
	sumout => \Add4~21_sumout\,
	cout => \Add4~22\);

-- Location: LABCELL_X71_Y3_N24
\R_next~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \R_next~24_combout\ = ( \R_next[1]~6_combout\ & ( \Add4~21_sumout\ & ( (!\R_next[1]~5_combout\ & \A[5]~input_o\) ) ) ) # ( !\R_next[1]~6_combout\ & ( \Add4~21_sumout\ & ( (!\R_next[1]~5_combout\ & (!\R_next~108_combout\)) # (\R_next[1]~5_combout\ & 
-- (((\A[5]~input_o\ & \B[5]~input_o\)))) ) ) ) # ( \R_next[1]~6_combout\ & ( !\Add4~21_sumout\ & ( (\A[5]~input_o\) # (\R_next[1]~5_combout\) ) ) ) # ( !\R_next[1]~6_combout\ & ( !\Add4~21_sumout\ & ( (!\R_next[1]~5_combout\ & (!\R_next~108_combout\)) # 
-- (\R_next[1]~5_combout\ & (((\A[5]~input_o\ & \B[5]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001011001111110011111110001000100010110000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_R_next~108_combout\,
	datab => \ALT_INV_R_next[1]~5_combout\,
	datac => \ALT_INV_A[5]~input_o\,
	datad => \ALT_INV_B[5]~input_o\,
	datae => \ALT_INV_R_next[1]~6_combout\,
	dataf => \ALT_INV_Add4~21_sumout\,
	combout => \R_next~24_combout\);

-- Location: LABCELL_X68_Y3_N0
\R_next~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \R_next~27_combout\ = ( \R_next~24_combout\ & ( (!\op[0]~input_o\ & ((!\op[1]~input_o\ & (!\R_next~26_combout\)) # (\op[1]~input_o\ & ((\R_next~25_combout\))))) ) ) # ( !\R_next~24_combout\ & ( ((!\op[1]~input_o\ & (!\R_next~26_combout\)) # 
-- (\op[1]~input_o\ & ((\R_next~25_combout\)))) # (\op[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011001111110111101100111111011110000000110001001000000011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op[1]~input_o\,
	datab => \ALT_INV_op[0]~input_o\,
	datac => \ALT_INV_R_next~26_combout\,
	datad => \ALT_INV_R_next~25_combout\,
	dataf => \ALT_INV_R_next~24_combout\,
	combout => \R_next~27_combout\);

-- Location: FF_X68_Y3_N2
\R_next[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \R_next~27_combout\,
	sclr => \R_next[1]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R_next(5));

-- Location: IOIBUF_X70_Y0_N18
\A[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X62_Y0_N35
\B[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: MLABCELL_X72_Y2_N18
\Add3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~25_sumout\ = SUM(( \B[6]~input_o\ ) + ( GND ) + ( \Add3~22\ ))
-- \Add3~26\ = CARRY(( \B[6]~input_o\ ) + ( GND ) + ( \Add3~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[6]~input_o\,
	cin => \Add3~22\,
	sumout => \Add3~25_sumout\,
	cout => \Add3~26\);

-- Location: LABCELL_X70_Y2_N24
\R_next~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \R_next~29_combout\ = ( \op[2]~input_o\ & ( \Add3~25_sumout\ & ( (!\op[3]~input_o\ & (!\A[6]~input_o\ $ ((!\B[6]~input_o\)))) # (\op[3]~input_o\ & (((\B[5]~input_o\)))) ) ) ) # ( !\op[2]~input_o\ & ( \Add3~25_sumout\ & ( ((\A[6]~input_o\ & 
-- \B[6]~input_o\)) # (\op[3]~input_o\) ) ) ) # ( \op[2]~input_o\ & ( !\Add3~25_sumout\ & ( (!\op[3]~input_o\ & (!\A[6]~input_o\ $ ((!\B[6]~input_o\)))) # (\op[3]~input_o\ & (((\B[5]~input_o\)))) ) ) ) # ( !\op[2]~input_o\ & ( !\Add3~25_sumout\ & ( 
-- (\A[6]~input_o\ & (!\op[3]~input_o\ & \B[6]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100010010000111101100110111001101110100100001111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[6]~input_o\,
	datab => \ALT_INV_op[3]~input_o\,
	datac => \ALT_INV_B[6]~input_o\,
	datad => \ALT_INV_B[5]~input_o\,
	datae => \ALT_INV_op[2]~input_o\,
	dataf => \ALT_INV_Add3~25_sumout\,
	combout => \R_next~29_combout\);

-- Location: LABCELL_X73_Y3_N18
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( \B[6]~input_o\ ) + ( \A[6]~input_o\ ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( \B[6]~input_o\ ) + ( \A[6]~input_o\ ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[6]~input_o\,
	datac => \ALT_INV_A[6]~input_o\,
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: MLABCELL_X72_Y3_N18
\Add5~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~25_sumout\ = SUM(( \B[6]~input_o\ ) + ( VCC ) + ( \Add5~22\ ))
-- \Add5~26\ = CARRY(( \B[6]~input_o\ ) + ( VCC ) + ( \Add5~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[6]~input_o\,
	cin => \Add5~22\,
	sumout => \Add5~25_sumout\,
	cout => \Add5~26\);

-- Location: LABCELL_X71_Y3_N15
\R_next~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \R_next~30_combout\ = ( \op[3]~input_o\ & ( \Add5~25_sumout\ & ( (\B[6]~input_o\ & !\op[2]~input_o\) ) ) ) # ( !\op[3]~input_o\ & ( \Add5~25_sumout\ & ( (!\op[2]~input_o\ & (((!\Add0~25_sumout\)))) # (\op[2]~input_o\ & (!\B[6]~input_o\ & 
-- ((!\A[6]~input_o\)))) ) ) ) # ( \op[3]~input_o\ & ( !\Add5~25_sumout\ & ( (\op[2]~input_o\) # (\B[6]~input_o\) ) ) ) # ( !\op[3]~input_o\ & ( !\Add5~25_sumout\ & ( (!\op[2]~input_o\ & (((!\Add0~25_sumout\)))) # (\op[2]~input_o\ & (!\B[6]~input_o\ & 
-- ((!\A[6]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100101011000000010111110101111111001010110000000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[6]~input_o\,
	datab => \ALT_INV_Add0~25_sumout\,
	datac => \ALT_INV_op[2]~input_o\,
	datad => \ALT_INV_A[6]~input_o\,
	datae => \ALT_INV_op[3]~input_o\,
	dataf => \ALT_INV_Add5~25_sumout\,
	combout => \R_next~30_combout\);

-- Location: LABCELL_X71_Y4_N18
\Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~25_sumout\ = SUM(( \A[6]~input_o\ ) + ( GND ) + ( \Add2~22\ ))
-- \Add2~26\ = CARRY(( \A[6]~input_o\ ) + ( GND ) + ( \Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[6]~input_o\,
	cin => \Add2~22\,
	sumout => \Add2~25_sumout\,
	cout => \Add2~26\);

-- Location: MLABCELL_X72_Y4_N18
\Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( !\A[6]~input_o\ $ (\B[6]~input_o\) ) + ( \Add1~23\ ) + ( \Add1~22\ ))
-- \Add1~26\ = CARRY(( !\A[6]~input_o\ $ (\B[6]~input_o\) ) + ( \Add1~23\ ) + ( \Add1~22\ ))
-- \Add1~27\ = SHARE((\A[6]~input_o\ & !\B[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[6]~input_o\,
	datad => \ALT_INV_B[6]~input_o\,
	cin => \Add1~22\,
	sharein => \Add1~23\,
	sumout => \Add1~25_sumout\,
	cout => \Add1~26\,
	shareout => \Add1~27\);

-- Location: LABCELL_X70_Y2_N0
\R_next~104\ : cyclonev_lcell_comb
-- Equation(s):
-- \R_next~104_combout\ = ( !\op[2]~input_o\ & ( ((!\op[3]~input_o\ & (\Add1~25_sumout\)) # (\op[3]~input_o\ & (((\Add2~25_sumout\))))) ) ) # ( \op[2]~input_o\ & ( (!\op[3]~input_o\ & (((!\B[6]~input_o\ & ((!\A[6]~input_o\)))))) # (\op[3]~input_o\ & 
-- (\A[5]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000111111110100011101000100001100001111110001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[5]~input_o\,
	datab => \ALT_INV_op[3]~input_o\,
	datac => \ALT_INV_B[6]~input_o\,
	datad => \ALT_INV_Add2~25_sumout\,
	datae => \ALT_INV_op[2]~input_o\,
	dataf => \ALT_INV_A[6]~input_o\,
	datag => \ALT_INV_Add1~25_sumout\,
	combout => \R_next~104_combout\);

-- Location: LABCELL_X74_Y2_N18
\Add4~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~25_sumout\ = SUM(( \A[6]~input_o\ ) + ( VCC ) + ( \Add4~22\ ))
-- \Add4~26\ = CARRY(( \A[6]~input_o\ ) + ( VCC ) + ( \Add4~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[6]~input_o\,
	cin => \Add4~22\,
	sumout => \Add4~25_sumout\,
	cout => \Add4~26\);

-- Location: LABCELL_X70_Y2_N18
\R_next~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \R_next~28_combout\ = ( \R_next~104_combout\ & ( \Add4~25_sumout\ & ( (\A[6]~input_o\ & ((!\R_next[1]~5_combout\ & ((\R_next[1]~6_combout\))) # (\R_next[1]~5_combout\ & (\B[6]~input_o\ & !\R_next[1]~6_combout\)))) ) ) ) # ( !\R_next~104_combout\ & ( 
-- \Add4~25_sumout\ & ( (!\A[6]~input_o\ & (!\R_next[1]~5_combout\ & ((!\R_next[1]~6_combout\)))) # (\A[6]~input_o\ & ((!\R_next[1]~5_combout\) # ((\B[6]~input_o\ & !\R_next[1]~6_combout\)))) ) ) ) # ( \R_next~104_combout\ & ( !\Add4~25_sumout\ & ( 
-- (!\A[6]~input_o\ & (\R_next[1]~5_combout\ & ((\R_next[1]~6_combout\)))) # (\A[6]~input_o\ & (((\R_next[1]~5_combout\ & \B[6]~input_o\)) # (\R_next[1]~6_combout\))) ) ) ) # ( !\R_next~104_combout\ & ( !\Add4~25_sumout\ & ( (!\A[6]~input_o\ & 
-- (!\R_next[1]~5_combout\ $ (((\R_next[1]~6_combout\))))) # (\A[6]~input_o\ & ((!\R_next[1]~5_combout\) # ((\R_next[1]~6_combout\) # (\B[6]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110101110111000000010111011111001101010001000000000101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[6]~input_o\,
	datab => \ALT_INV_R_next[1]~5_combout\,
	datac => \ALT_INV_B[6]~input_o\,
	datad => \ALT_INV_R_next[1]~6_combout\,
	datae => \ALT_INV_R_next~104_combout\,
	dataf => \ALT_INV_Add4~25_sumout\,
	combout => \R_next~28_combout\);

-- Location: LABCELL_X70_Y2_N36
\R_next~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \R_next~31_combout\ = ( \R_next~28_combout\ & ( (!\op[0]~input_o\ & ((!\op[1]~input_o\ & ((!\R_next~30_combout\))) # (\op[1]~input_o\ & (\R_next~29_combout\)))) ) ) # ( !\R_next~28_combout\ & ( ((!\op[1]~input_o\ & ((!\R_next~30_combout\))) # 
-- (\op[1]~input_o\ & (\R_next~29_combout\))) # (\op[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111101010111110111110101011110001010000000101000101000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op[0]~input_o\,
	datab => \ALT_INV_op[1]~input_o\,
	datac => \ALT_INV_R_next~29_combout\,
	datad => \ALT_INV_R_next~30_combout\,
	dataf => \ALT_INV_R_next~28_combout\,
	combout => \R_next~31_combout\);

-- Location: FF_X70_Y2_N37
\R_next[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \R_next~31_combout\,
	sclr => \R_next[1]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R_next(6));

-- Location: IOIBUF_X72_Y0_N1
\A[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X62_Y0_N18
\B[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LABCELL_X71_Y4_N21
\Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~29_sumout\ = SUM(( \A[7]~input_o\ ) + ( GND ) + ( \Add2~26\ ))
-- \Add2~30\ = CARRY(( \A[7]~input_o\ ) + ( GND ) + ( \Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[7]~input_o\,
	cin => \Add2~26\,
	sumout => \Add2~29_sumout\,
	cout => \Add2~30\);

-- Location: MLABCELL_X72_Y4_N21
\Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~29_sumout\ = SUM(( !\A[7]~input_o\ $ (\B[7]~input_o\) ) + ( \Add1~27\ ) + ( \Add1~26\ ))
-- \Add1~30\ = CARRY(( !\A[7]~input_o\ $ (\B[7]~input_o\) ) + ( \Add1~27\ ) + ( \Add1~26\ ))
-- \Add1~31\ = SHARE((\A[7]~input_o\ & !\B[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001000100010000000000000000001001100110011001",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[7]~input_o\,
	datab => \ALT_INV_B[7]~input_o\,
	cin => \Add1~26\,
	sharein => \Add1~27\,
	sumout => \Add1~29_sumout\,
	cout => \Add1~30\,
	shareout => \Add1~31\);

-- Location: LABCELL_X71_Y2_N36
\R_next~100\ : cyclonev_lcell_comb
-- Equation(s):
-- \R_next~100_combout\ = ( !\op[2]~input_o\ & ( (((!\op[3]~input_o\ & (\Add1~29_sumout\)) # (\op[3]~input_o\ & ((\Add2~29_sumout\))))) ) ) # ( \op[2]~input_o\ & ( ((!\op[3]~input_o\ & (!\A[7]~input_o\ & ((!\B[7]~input_o\)))) # (\op[3]~input_o\ & 
-- (((\A[6]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100001111101000001010000000000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[7]~input_o\,
	datab => \ALT_INV_A[6]~input_o\,
	datac => \ALT_INV_B[7]~input_o\,
	datad => \ALT_INV_Add2~29_sumout\,
	datae => \ALT_INV_op[2]~input_o\,
	dataf => \ALT_INV_op[3]~input_o\,
	datag => \ALT_INV_Add1~29_sumout\,
	combout => \R_next~100_combout\);

-- Location: LABCELL_X74_Y2_N21
\Add4~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~29_sumout\ = SUM(( \A[7]~input_o\ ) + ( VCC ) + ( \Add4~26\ ))
-- \Add4~30\ = CARRY(( \A[7]~input_o\ ) + ( VCC ) + ( \Add4~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[7]~input_o\,
	cin => \Add4~26\,
	sumout => \Add4~29_sumout\,
	cout => \Add4~30\);

-- Location: LABCELL_X71_Y2_N54
\R_next~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \R_next~32_combout\ = ( \A[7]~input_o\ & ( \R_next[1]~6_combout\ & ( (!\R_next[1]~5_combout\) # (!\Add4~29_sumout\) ) ) ) # ( !\A[7]~input_o\ & ( \R_next[1]~6_combout\ & ( (\R_next[1]~5_combout\ & !\Add4~29_sumout\) ) ) ) # ( \A[7]~input_o\ & ( 
-- !\R_next[1]~6_combout\ & ( (!\R_next[1]~5_combout\ & (!\R_next~100_combout\)) # (\R_next[1]~5_combout\ & ((\B[7]~input_o\))) ) ) ) # ( !\A[7]~input_o\ & ( !\R_next[1]~6_combout\ & ( (!\R_next~100_combout\ & !\R_next[1]~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010111000101100110011000000001111111111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_R_next~100_combout\,
	datab => \ALT_INV_R_next[1]~5_combout\,
	datac => \ALT_INV_B[7]~input_o\,
	datad => \ALT_INV_Add4~29_sumout\,
	datae => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_R_next[1]~6_combout\,
	combout => \R_next~32_combout\);

-- Location: MLABCELL_X72_Y3_N21
\Add5~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~29_sumout\ = SUM(( \B[7]~input_o\ ) + ( VCC ) + ( \Add5~26\ ))
-- \Add5~30\ = CARRY(( \B[7]~input_o\ ) + ( VCC ) + ( \Add5~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[7]~input_o\,
	cin => \Add5~26\,
	sumout => \Add5~29_sumout\,
	cout => \Add5~30\);

-- Location: LABCELL_X73_Y3_N21
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( \B[7]~input_o\ ) + ( \A[7]~input_o\ ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( \B[7]~input_o\ ) + ( \A[7]~input_o\ ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[7]~input_o\,
	datac => \ALT_INV_A[7]~input_o\,
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: MLABCELL_X72_Y3_N48
\R_next~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \R_next~34_combout\ = ( \Add0~29_sumout\ & ( \B[7]~input_o\ & ( (\op[3]~input_o\ & ((!\op[2]~input_o\) # (!\Add5~29_sumout\))) ) ) ) # ( !\Add0~29_sumout\ & ( \B[7]~input_o\ & ( (!\op[2]~input_o\) # ((\op[3]~input_o\ & !\Add5~29_sumout\)) ) ) ) # ( 
-- \Add0~29_sumout\ & ( !\B[7]~input_o\ & ( (\op[2]~input_o\ & ((!\op[3]~input_o\ & ((!\A[7]~input_o\))) # (\op[3]~input_o\ & (!\Add5~29_sumout\)))) ) ) ) # ( !\Add0~29_sumout\ & ( !\B[7]~input_o\ & ( (!\op[3]~input_o\ & ((!\op[2]~input_o\) # 
-- ((!\A[7]~input_o\)))) # (\op[3]~input_o\ & (\op[2]~input_o\ & (!\Add5~29_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101010011000001100100001000011011100110111000101010001010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op[3]~input_o\,
	datab => \ALT_INV_op[2]~input_o\,
	datac => \ALT_INV_Add5~29_sumout\,
	datad => \ALT_INV_A[7]~input_o\,
	datae => \ALT_INV_Add0~29_sumout\,
	dataf => \ALT_INV_B[7]~input_o\,
	combout => \R_next~34_combout\);

-- Location: MLABCELL_X72_Y2_N21
\Add3~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~29_sumout\ = SUM(( \B[7]~input_o\ ) + ( GND ) + ( \Add3~26\ ))
-- \Add3~30\ = CARRY(( \B[7]~input_o\ ) + ( GND ) + ( \Add3~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[7]~input_o\,
	cin => \Add3~26\,
	sumout => \Add3~29_sumout\,
	cout => \Add3~30\);

-- Location: LABCELL_X71_Y2_N30
\R_next~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \R_next~33_combout\ = ( \op[2]~input_o\ & ( \Add3~29_sumout\ & ( (!\op[3]~input_o\ & (!\B[7]~input_o\ $ (((!\A[7]~input_o\))))) # (\op[3]~input_o\ & (((\B[6]~input_o\)))) ) ) ) # ( !\op[2]~input_o\ & ( \Add3~29_sumout\ & ( ((\B[7]~input_o\ & 
-- \A[7]~input_o\)) # (\op[3]~input_o\) ) ) ) # ( \op[2]~input_o\ & ( !\Add3~29_sumout\ & ( (!\op[3]~input_o\ & (!\B[7]~input_o\ $ (((!\A[7]~input_o\))))) # (\op[3]~input_o\ & (((\B[6]~input_o\)))) ) ) ) # ( !\op[2]~input_o\ & ( !\Add3~29_sumout\ & ( 
-- (!\op[3]~input_o\ & (\B[7]~input_o\ & \A[7]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010001001111000110101010101011101110010011110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op[3]~input_o\,
	datab => \ALT_INV_B[7]~input_o\,
	datac => \ALT_INV_B[6]~input_o\,
	datad => \ALT_INV_A[7]~input_o\,
	datae => \ALT_INV_op[2]~input_o\,
	dataf => \ALT_INV_Add3~29_sumout\,
	combout => \R_next~33_combout\);

-- Location: LABCELL_X70_Y2_N39
\R_next~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \R_next~35_combout\ = ( \R_next~33_combout\ & ( (!\op[0]~input_o\ & (((!\R_next~34_combout\)) # (\op[1]~input_o\))) # (\op[0]~input_o\ & (((!\R_next~32_combout\)))) ) ) # ( !\R_next~33_combout\ & ( (!\op[0]~input_o\ & (!\op[1]~input_o\ & 
-- ((!\R_next~34_combout\)))) # (\op[0]~input_o\ & (((!\R_next~32_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101100001010000110110000101000011111010011100101111101001110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op[0]~input_o\,
	datab => \ALT_INV_op[1]~input_o\,
	datac => \ALT_INV_R_next~32_combout\,
	datad => \ALT_INV_R_next~34_combout\,
	dataf => \ALT_INV_R_next~33_combout\,
	combout => \R_next~35_combout\);

-- Location: FF_X70_Y2_N40
\R_next[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \R_next~35_combout\,
	sclr => \R_next[1]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R_next(7));

-- Location: IOIBUF_X66_Y0_N41
\A[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: LABCELL_X74_Y2_N24
\Add4~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~33_sumout\ = SUM(( \A[8]~input_o\ ) + ( VCC ) + ( \Add4~30\ ))
-- \Add4~34\ = CARRY(( \A[8]~input_o\ ) + ( VCC ) + ( \Add4~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[8]~input_o\,
	cin => \Add4~30\,
	sumout => \Add4~33_sumout\,
	cout => \Add4~34\);

-- Location: IOIBUF_X62_Y0_N52
\B[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: LABCELL_X71_Y4_N24
\Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~33_sumout\ = SUM(( \A[8]~input_o\ ) + ( GND ) + ( \Add2~30\ ))
-- \Add2~34\ = CARRY(( \A[8]~input_o\ ) + ( GND ) + ( \Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[8]~input_o\,
	cin => \Add2~30\,
	sumout => \Add2~33_sumout\,
	cout => \Add2~34\);

-- Location: MLABCELL_X72_Y4_N24
\Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~33_sumout\ = SUM(( !\B[8]~input_o\ $ (\A[8]~input_o\) ) + ( \Add1~31\ ) + ( \Add1~30\ ))
-- \Add1~34\ = CARRY(( !\B[8]~input_o\ $ (\A[8]~input_o\) ) + ( \Add1~31\ ) + ( \Add1~30\ ))
-- \Add1~35\ = SHARE((!\B[8]~input_o\ & \A[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[8]~input_o\,
	datac => \ALT_INV_A[8]~input_o\,
	cin => \Add1~30\,
	sharein => \Add1~31\,
	sumout => \Add1~33_sumout\,
	cout => \Add1~34\,
	shareout => \Add1~35\);

-- Location: LABCELL_X70_Y4_N6
\R_next~96\ : cyclonev_lcell_comb
-- Equation(s):
-- \R_next~96_combout\ = ( !\op[2]~input_o\ & ( ((!\op[3]~input_o\ & (\Add1~33_sumout\)) # (\op[3]~input_o\ & (((\Add2~33_sumout\))))) ) ) # ( \op[2]~input_o\ & ( (!\op[3]~input_o\ & (!\A[8]~input_o\ & (!\B[8]~input_o\))) # (\op[3]~input_o\ & 
-- ((((\A[7]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000111111100000001000000000001100001111111011001110110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[8]~input_o\,
	datab => \ALT_INV_op[3]~input_o\,
	datac => \ALT_INV_B[8]~input_o\,
	datad => \ALT_INV_Add2~33_sumout\,
	datae => \ALT_INV_op[2]~input_o\,
	dataf => \ALT_INV_A[7]~input_o\,
	datag => \ALT_INV_Add1~33_sumout\,
	combout => \R_next~96_combout\);

-- Location: LABCELL_X71_Y2_N6
\R_next~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \R_next~36_combout\ = ( \R_next~96_combout\ & ( \B[8]~input_o\ & ( (!\R_next[1]~6_combout\ & (\R_next[1]~5_combout\ & (\A[8]~input_o\))) # (\R_next[1]~6_combout\ & ((!\R_next[1]~5_combout\ & (\A[8]~input_o\)) # (\R_next[1]~5_combout\ & 
-- ((!\Add4~33_sumout\))))) ) ) ) # ( !\R_next~96_combout\ & ( \B[8]~input_o\ & ( (!\R_next[1]~6_combout\ & ((!\R_next[1]~5_combout\) # ((\A[8]~input_o\)))) # (\R_next[1]~6_combout\ & ((!\R_next[1]~5_combout\ & (\A[8]~input_o\)) # (\R_next[1]~5_combout\ & 
-- ((!\Add4~33_sumout\))))) ) ) ) # ( \R_next~96_combout\ & ( !\B[8]~input_o\ & ( (\R_next[1]~6_combout\ & ((!\R_next[1]~5_combout\ & (\A[8]~input_o\)) # (\R_next[1]~5_combout\ & ((!\Add4~33_sumout\))))) ) ) ) # ( !\R_next~96_combout\ & ( !\B[8]~input_o\ & ( 
-- (!\R_next[1]~6_combout\ & (!\R_next[1]~5_combout\)) # (\R_next[1]~6_combout\ & ((!\R_next[1]~5_combout\ & (\A[8]~input_o\)) # (\R_next[1]~5_combout\ & ((!\Add4~33_sumout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001110110001100000101010000010010011111100011100001011100000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_R_next[1]~6_combout\,
	datab => \ALT_INV_R_next[1]~5_combout\,
	datac => \ALT_INV_A[8]~input_o\,
	datad => \ALT_INV_Add4~33_sumout\,
	datae => \ALT_INV_R_next~96_combout\,
	dataf => \ALT_INV_B[8]~input_o\,
	combout => \R_next~36_combout\);

-- Location: MLABCELL_X72_Y2_N24
\Add3~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~33_sumout\ = SUM(( \B[8]~input_o\ ) + ( GND ) + ( \Add3~30\ ))
-- \Add3~34\ = CARRY(( \B[8]~input_o\ ) + ( GND ) + ( \Add3~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[8]~input_o\,
	cin => \Add3~30\,
	sumout => \Add3~33_sumout\,
	cout => \Add3~34\);

-- Location: LABCELL_X71_Y2_N42
\R_next~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \R_next~37_combout\ = ( \op[2]~input_o\ & ( \B[8]~input_o\ & ( (!\op[3]~input_o\ & (!\A[8]~input_o\)) # (\op[3]~input_o\ & ((\B[7]~input_o\))) ) ) ) # ( !\op[2]~input_o\ & ( \B[8]~input_o\ & ( (!\op[3]~input_o\ & ((\A[8]~input_o\))) # (\op[3]~input_o\ & 
-- (\Add3~33_sumout\)) ) ) ) # ( \op[2]~input_o\ & ( !\B[8]~input_o\ & ( (!\op[3]~input_o\ & (\A[8]~input_o\)) # (\op[3]~input_o\ & ((\B[7]~input_o\))) ) ) ) # ( !\op[2]~input_o\ & ( !\B[8]~input_o\ & ( (\op[3]~input_o\ & \Add3~33_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000010100101111100011011000110111010000011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op[3]~input_o\,
	datab => \ALT_INV_Add3~33_sumout\,
	datac => \ALT_INV_A[8]~input_o\,
	datad => \ALT_INV_B[7]~input_o\,
	datae => \ALT_INV_op[2]~input_o\,
	dataf => \ALT_INV_B[8]~input_o\,
	combout => \R_next~37_combout\);

-- Location: LABCELL_X73_Y3_N24
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( \B[8]~input_o\ ) + ( \A[8]~input_o\ ) + ( \Add0~30\ ))
-- \Add0~34\ = CARRY(( \B[8]~input_o\ ) + ( \A[8]~input_o\ ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[8]~input_o\,
	datac => \ALT_INV_B[8]~input_o\,
	cin => \Add0~30\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: MLABCELL_X72_Y3_N24
\Add5~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~33_sumout\ = SUM(( \B[8]~input_o\ ) + ( VCC ) + ( \Add5~30\ ))
-- \Add5~34\ = CARRY(( \B[8]~input_o\ ) + ( VCC ) + ( \Add5~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[8]~input_o\,
	cin => \Add5~30\,
	sumout => \Add5~33_sumout\,
	cout => \Add5~34\);

-- Location: LABCELL_X73_Y3_N48
\R_next~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \R_next~38_combout\ = ( \B[8]~input_o\ & ( \op[2]~input_o\ & ( (\op[3]~input_o\ & !\Add5~33_sumout\) ) ) ) # ( !\B[8]~input_o\ & ( \op[2]~input_o\ & ( (!\op[3]~input_o\ & (!\A[8]~input_o\)) # (\op[3]~input_o\ & ((!\Add5~33_sumout\))) ) ) ) # ( 
-- \B[8]~input_o\ & ( !\op[2]~input_o\ & ( (!\Add0~33_sumout\) # (\op[3]~input_o\) ) ) ) # ( !\B[8]~input_o\ & ( !\op[2]~input_o\ & ( (!\Add0~33_sumout\ & !\op[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101011111010111111001111110000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~33_sumout\,
	datab => \ALT_INV_A[8]~input_o\,
	datac => \ALT_INV_op[3]~input_o\,
	datad => \ALT_INV_Add5~33_sumout\,
	datae => \ALT_INV_B[8]~input_o\,
	dataf => \ALT_INV_op[2]~input_o\,
	combout => \R_next~38_combout\);

-- Location: LABCELL_X70_Y2_N12
\R_next~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \R_next~39_combout\ = ( \R_next~38_combout\ & ( \op[1]~input_o\ & ( (!\op[0]~input_o\ & ((\R_next~37_combout\))) # (\op[0]~input_o\ & (!\R_next~36_combout\)) ) ) ) # ( !\R_next~38_combout\ & ( \op[1]~input_o\ & ( (!\op[0]~input_o\ & 
-- ((\R_next~37_combout\))) # (\op[0]~input_o\ & (!\R_next~36_combout\)) ) ) ) # ( \R_next~38_combout\ & ( !\op[1]~input_o\ & ( (!\R_next~36_combout\ & \op[0]~input_o\) ) ) ) # ( !\R_next~38_combout\ & ( !\op[1]~input_o\ & ( (!\R_next~36_combout\) # 
-- (!\op[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010000010100000101000111010001110100011101000111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_R_next~36_combout\,
	datab => \ALT_INV_R_next~37_combout\,
	datac => \ALT_INV_op[0]~input_o\,
	datae => \ALT_INV_R_next~38_combout\,
	dataf => \ALT_INV_op[1]~input_o\,
	combout => \R_next~39_combout\);

-- Location: FF_X70_Y2_N14
\R_next[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \R_next~39_combout\,
	sclr => \R_next[1]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R_next(8));

-- Location: IOIBUF_X89_Y6_N4
\B[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: MLABCELL_X72_Y3_N27
\Add5~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~37_sumout\ = SUM(( \B[9]~input_o\ ) + ( VCC ) + ( \Add5~34\ ))
-- \Add5~38\ = CARRY(( \B[9]~input_o\ ) + ( VCC ) + ( \Add5~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[9]~input_o\,
	cin => \Add5~34\,
	sumout => \Add5~37_sumout\,
	cout => \Add5~38\);

-- Location: IOIBUF_X72_Y0_N18
\A[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: LABCELL_X73_Y3_N27
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( \B[9]~input_o\ ) + ( \A[9]~input_o\ ) + ( \Add0~34\ ))
-- \Add0~38\ = CARRY(( \B[9]~input_o\ ) + ( \A[9]~input_o\ ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[9]~input_o\,
	datac => \ALT_INV_B[9]~input_o\,
	cin => \Add0~34\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: MLABCELL_X72_Y3_N54
\R_next~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \R_next~42_combout\ = ( \A[9]~input_o\ & ( \B[9]~input_o\ & ( (!\op[2]~input_o\ & (((!\Add0~37_sumout\) # (\op[3]~input_o\)))) # (\op[2]~input_o\ & (!\Add5~37_sumout\ & (\op[3]~input_o\))) ) ) ) # ( !\A[9]~input_o\ & ( \B[9]~input_o\ & ( (!\op[2]~input_o\ 
-- & (((!\Add0~37_sumout\) # (\op[3]~input_o\)))) # (\op[2]~input_o\ & (!\Add5~37_sumout\ & (\op[3]~input_o\))) ) ) ) # ( \A[9]~input_o\ & ( !\B[9]~input_o\ & ( (!\op[2]~input_o\ & (((!\op[3]~input_o\ & !\Add0~37_sumout\)))) # (\op[2]~input_o\ & 
-- (!\Add5~37_sumout\ & (\op[3]~input_o\))) ) ) ) # ( !\A[9]~input_o\ & ( !\B[9]~input_o\ & ( (!\op[2]~input_o\ & (((!\op[3]~input_o\ & !\Add0~37_sumout\)))) # (\op[2]~input_o\ & ((!\Add5~37_sumout\) # ((!\op[3]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001000110010110000100000001011001110000011101100111000001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add5~37_sumout\,
	datab => \ALT_INV_op[2]~input_o\,
	datac => \ALT_INV_op[3]~input_o\,
	datad => \ALT_INV_Add0~37_sumout\,
	datae => \ALT_INV_A[9]~input_o\,
	dataf => \ALT_INV_B[9]~input_o\,
	combout => \R_next~42_combout\);

-- Location: LABCELL_X71_Y4_N27
\Add2~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~37_sumout\ = SUM(( \A[9]~input_o\ ) + ( GND ) + ( \Add2~34\ ))
-- \Add2~38\ = CARRY(( \A[9]~input_o\ ) + ( GND ) + ( \Add2~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[9]~input_o\,
	cin => \Add2~34\,
	sumout => \Add2~37_sumout\,
	cout => \Add2~38\);

-- Location: MLABCELL_X72_Y4_N27
\Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~37_sumout\ = SUM(( !\B[9]~input_o\ $ (\A[9]~input_o\) ) + ( \Add1~35\ ) + ( \Add1~34\ ))
-- \Add1~38\ = CARRY(( !\B[9]~input_o\ $ (\A[9]~input_o\) ) + ( \Add1~35\ ) + ( \Add1~34\ ))
-- \Add1~39\ = SHARE((!\B[9]~input_o\ & \A[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[9]~input_o\,
	datad => \ALT_INV_A[9]~input_o\,
	cin => \Add1~34\,
	sharein => \Add1~35\,
	sumout => \Add1~37_sumout\,
	cout => \Add1~38\,
	shareout => \Add1~39\);

-- Location: LABCELL_X71_Y2_N0
\R_next~92\ : cyclonev_lcell_comb
-- Equation(s):
-- \R_next~92_combout\ = ( !\op[2]~input_o\ & ( (!\op[3]~input_o\ & (((\Add1~37_sumout\)))) # (\op[3]~input_o\ & (\Add2~37_sumout\)) ) ) # ( \op[2]~input_o\ & ( (!\op[3]~input_o\ & (((!\B[9]~input_o\ & (!\A[9]~input_o\))))) # (\op[3]~input_o\ & 
-- ((((\A[8]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001101100011011101000000000000000011011000110111111010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op[3]~input_o\,
	datab => \ALT_INV_Add2~37_sumout\,
	datac => \ALT_INV_B[9]~input_o\,
	datad => \ALT_INV_A[9]~input_o\,
	datae => \ALT_INV_op[2]~input_o\,
	dataf => \ALT_INV_A[8]~input_o\,
	datag => \ALT_INV_Add1~37_sumout\,
	combout => \R_next~92_combout\);

-- Location: LABCELL_X74_Y2_N27
\Add4~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~37_sumout\ = SUM(( \A[9]~input_o\ ) + ( VCC ) + ( \Add4~34\ ))
-- \Add4~38\ = CARRY(( \A[9]~input_o\ ) + ( VCC ) + ( \Add4~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[9]~input_o\,
	cin => \Add4~34\,
	sumout => \Add4~37_sumout\,
	cout => \Add4~38\);

-- Location: LABCELL_X71_Y2_N48
\R_next~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \R_next~40_combout\ = ( \Add4~37_sumout\ & ( \B[9]~input_o\ & ( (!\R_next[1]~6_combout\ & ((!\R_next[1]~5_combout\ & (!\R_next~92_combout\)) # (\R_next[1]~5_combout\ & ((\A[9]~input_o\))))) # (\R_next[1]~6_combout\ & (((\A[9]~input_o\ & 
-- !\R_next[1]~5_combout\)))) ) ) ) # ( !\Add4~37_sumout\ & ( \B[9]~input_o\ & ( (!\R_next[1]~6_combout\ & ((!\R_next[1]~5_combout\ & (!\R_next~92_combout\)) # (\R_next[1]~5_combout\ & ((\A[9]~input_o\))))) # (\R_next[1]~6_combout\ & 
-- (((\R_next[1]~5_combout\) # (\A[9]~input_o\)))) ) ) ) # ( \Add4~37_sumout\ & ( !\B[9]~input_o\ & ( (!\R_next[1]~5_combout\ & ((!\R_next[1]~6_combout\ & (!\R_next~92_combout\)) # (\R_next[1]~6_combout\ & ((\A[9]~input_o\))))) ) ) ) # ( !\Add4~37_sumout\ & 
-- ( !\B[9]~input_o\ & ( (!\R_next[1]~6_combout\ & (!\R_next~92_combout\ & ((!\R_next[1]~5_combout\)))) # (\R_next[1]~6_combout\ & (((\R_next[1]~5_combout\) # (\A[9]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001100001111101000110000000010100011001111111010001100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_R_next~92_combout\,
	datab => \ALT_INV_A[9]~input_o\,
	datac => \ALT_INV_R_next[1]~6_combout\,
	datad => \ALT_INV_R_next[1]~5_combout\,
	datae => \ALT_INV_Add4~37_sumout\,
	dataf => \ALT_INV_B[9]~input_o\,
	combout => \R_next~40_combout\);

-- Location: MLABCELL_X72_Y2_N27
\Add3~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~37_sumout\ = SUM(( \B[9]~input_o\ ) + ( GND ) + ( \Add3~34\ ))
-- \Add3~38\ = CARRY(( \B[9]~input_o\ ) + ( GND ) + ( \Add3~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[9]~input_o\,
	cin => \Add3~34\,
	sumout => \Add3~37_sumout\,
	cout => \Add3~38\);

-- Location: LABCELL_X71_Y2_N24
\R_next~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \R_next~41_combout\ = ( \Add3~37_sumout\ & ( \B[9]~input_o\ & ( (!\op[3]~input_o\ & (!\A[9]~input_o\ $ ((!\op[2]~input_o\)))) # (\op[3]~input_o\ & (((!\op[2]~input_o\) # (\B[8]~input_o\)))) ) ) ) # ( !\Add3~37_sumout\ & ( \B[9]~input_o\ & ( 
-- (!\op[3]~input_o\ & (!\A[9]~input_o\ $ ((!\op[2]~input_o\)))) # (\op[3]~input_o\ & (((\op[2]~input_o\ & \B[8]~input_o\)))) ) ) ) # ( \Add3~37_sumout\ & ( !\B[9]~input_o\ & ( (!\op[3]~input_o\ & (\A[9]~input_o\ & (\op[2]~input_o\))) # (\op[3]~input_o\ & 
-- (((!\op[2]~input_o\) # (\B[8]~input_o\)))) ) ) ) # ( !\Add3~37_sumout\ & ( !\B[9]~input_o\ & ( (\op[2]~input_o\ & ((!\op[3]~input_o\ & (\A[9]~input_o\)) # (\op[3]~input_o\ & ((\B[8]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000111010100100101011100101000001011010111100001111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op[3]~input_o\,
	datab => \ALT_INV_A[9]~input_o\,
	datac => \ALT_INV_op[2]~input_o\,
	datad => \ALT_INV_B[8]~input_o\,
	datae => \ALT_INV_Add3~37_sumout\,
	dataf => \ALT_INV_B[9]~input_o\,
	combout => \R_next~41_combout\);

-- Location: LABCELL_X70_Y2_N48
\R_next~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \R_next~43_combout\ = ( \R_next~41_combout\ & ( (!\op[0]~input_o\ & (((!\R_next~42_combout\)) # (\op[1]~input_o\))) # (\op[0]~input_o\ & (((!\R_next~40_combout\)))) ) ) # ( !\R_next~41_combout\ & ( (!\op[0]~input_o\ & (!\op[1]~input_o\ & 
-- (!\R_next~42_combout\))) # (\op[0]~input_o\ & (((!\R_next~40_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101010110000000110101011000000011110111101000101111011110100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op[0]~input_o\,
	datab => \ALT_INV_op[1]~input_o\,
	datac => \ALT_INV_R_next~42_combout\,
	datad => \ALT_INV_R_next~40_combout\,
	dataf => \ALT_INV_R_next~41_combout\,
	combout => \R_next~43_combout\);

-- Location: FF_X70_Y2_N49
\R_next[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \R_next~43_combout\,
	sclr => \R_next[1]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R_next(9));

-- Location: IOIBUF_X72_Y0_N35
\A[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: IOIBUF_X89_Y6_N55
\B[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: MLABCELL_X72_Y2_N30
\Add3~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~41_sumout\ = SUM(( \B[10]~input_o\ ) + ( GND ) + ( \Add3~38\ ))
-- \Add3~42\ = CARRY(( \B[10]~input_o\ ) + ( GND ) + ( \Add3~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[10]~input_o\,
	cin => \Add3~38\,
	sumout => \Add3~41_sumout\,
	cout => \Add3~42\);

-- Location: MLABCELL_X72_Y2_N54
\R_next~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \R_next~45_combout\ = ( \op[3]~input_o\ & ( \B[10]~input_o\ & ( (!\op[2]~input_o\ & ((\Add3~41_sumout\))) # (\op[2]~input_o\ & (\B[9]~input_o\)) ) ) ) # ( !\op[3]~input_o\ & ( \B[10]~input_o\ & ( !\op[2]~input_o\ $ (!\A[10]~input_o\) ) ) ) # ( 
-- \op[3]~input_o\ & ( !\B[10]~input_o\ & ( (!\op[2]~input_o\ & ((\Add3~41_sumout\))) # (\op[2]~input_o\ & (\B[9]~input_o\)) ) ) ) # ( !\op[3]~input_o\ & ( !\B[10]~input_o\ & ( (\op[2]~input_o\ & \A[10]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000001011010111101100110011001100000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op[2]~input_o\,
	datab => \ALT_INV_A[10]~input_o\,
	datac => \ALT_INV_B[9]~input_o\,
	datad => \ALT_INV_Add3~41_sumout\,
	datae => \ALT_INV_op[3]~input_o\,
	dataf => \ALT_INV_B[10]~input_o\,
	combout => \R_next~45_combout\);

-- Location: LABCELL_X73_Y3_N30
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( \A[10]~input_o\ ) + ( \B[10]~input_o\ ) + ( \Add0~38\ ))
-- \Add0~42\ = CARRY(( \A[10]~input_o\ ) + ( \B[10]~input_o\ ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[10]~input_o\,
	dataf => \ALT_INV_B[10]~input_o\,
	cin => \Add0~38\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: MLABCELL_X72_Y3_N30
\Add5~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~41_sumout\ = SUM(( \B[10]~input_o\ ) + ( VCC ) + ( \Add5~38\ ))
-- \Add5~42\ = CARRY(( \B[10]~input_o\ ) + ( VCC ) + ( \Add5~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[10]~input_o\,
	cin => \Add5~38\,
	sumout => \Add5~41_sumout\,
	cout => \Add5~42\);

-- Location: LABCELL_X74_Y3_N24
\R_next~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \R_next~46_combout\ = ( \op[2]~input_o\ & ( \B[10]~input_o\ & ( (\op[3]~input_o\ & !\Add5~41_sumout\) ) ) ) # ( !\op[2]~input_o\ & ( \B[10]~input_o\ & ( (!\Add0~41_sumout\) # (\op[3]~input_o\) ) ) ) # ( \op[2]~input_o\ & ( !\B[10]~input_o\ & ( 
-- (!\op[3]~input_o\ & ((!\A[10]~input_o\))) # (\op[3]~input_o\ & (!\Add5~41_sumout\)) ) ) ) # ( !\op[2]~input_o\ & ( !\B[10]~input_o\ & ( (!\Add0~41_sumout\ & !\op[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000111111000011000010111011101110110011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~41_sumout\,
	datab => \ALT_INV_op[3]~input_o\,
	datac => \ALT_INV_Add5~41_sumout\,
	datad => \ALT_INV_A[10]~input_o\,
	datae => \ALT_INV_op[2]~input_o\,
	dataf => \ALT_INV_B[10]~input_o\,
	combout => \R_next~46_combout\);

-- Location: LABCELL_X74_Y2_N30
\Add4~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~41_sumout\ = SUM(( \A[10]~input_o\ ) + ( VCC ) + ( \Add4~38\ ))
-- \Add4~42\ = CARRY(( \A[10]~input_o\ ) + ( VCC ) + ( \Add4~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[10]~input_o\,
	cin => \Add4~38\,
	sumout => \Add4~41_sumout\,
	cout => \Add4~42\);

-- Location: LABCELL_X71_Y4_N30
\Add2~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~41_sumout\ = SUM(( \A[10]~input_o\ ) + ( GND ) + ( \Add2~38\ ))
-- \Add2~42\ = CARRY(( \A[10]~input_o\ ) + ( GND ) + ( \Add2~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[10]~input_o\,
	cin => \Add2~38\,
	sumout => \Add2~41_sumout\,
	cout => \Add2~42\);

-- Location: MLABCELL_X72_Y4_N30
\Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~41_sumout\ = SUM(( !\B[10]~input_o\ $ (\A[10]~input_o\) ) + ( \Add1~39\ ) + ( \Add1~38\ ))
-- \Add1~42\ = CARRY(( !\B[10]~input_o\ $ (\A[10]~input_o\) ) + ( \Add1~39\ ) + ( \Add1~38\ ))
-- \Add1~43\ = SHARE((!\B[10]~input_o\ & \A[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[10]~input_o\,
	datad => \ALT_INV_A[10]~input_o\,
	cin => \Add1~38\,
	sharein => \Add1~39\,
	sumout => \Add1~41_sumout\,
	cout => \Add1~42\,
	shareout => \Add1~43\);

-- Location: LABCELL_X74_Y3_N42
\R_next~88\ : cyclonev_lcell_comb
-- Equation(s):
-- \R_next~88_combout\ = ( !\op[2]~input_o\ & ( (!\op[3]~input_o\ & (((\Add1~41_sumout\)))) # (\op[3]~input_o\ & (\Add2~41_sumout\)) ) ) # ( \op[2]~input_o\ & ( (!\op[3]~input_o\ & (((!\B[10]~input_o\ & ((!\A[10]~input_o\)))))) # (\op[3]~input_o\ & 
-- ((((\A[9]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001101100011011101000001111010100011011000110110000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op[3]~input_o\,
	datab => \ALT_INV_Add2~41_sumout\,
	datac => \ALT_INV_B[10]~input_o\,
	datad => \ALT_INV_A[9]~input_o\,
	datae => \ALT_INV_op[2]~input_o\,
	dataf => \ALT_INV_A[10]~input_o\,
	datag => \ALT_INV_Add1~41_sumout\,
	combout => \R_next~88_combout\);

-- Location: LABCELL_X74_Y3_N18
\R_next~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \R_next~44_combout\ = ( \R_next[1]~6_combout\ & ( \B[10]~input_o\ & ( (!\R_next[1]~5_combout\ & (\A[10]~input_o\)) # (\R_next[1]~5_combout\ & ((!\Add4~41_sumout\))) ) ) ) # ( !\R_next[1]~6_combout\ & ( \B[10]~input_o\ & ( (!\R_next[1]~5_combout\ & 
-- ((!\R_next~88_combout\))) # (\R_next[1]~5_combout\ & (\A[10]~input_o\)) ) ) ) # ( \R_next[1]~6_combout\ & ( !\B[10]~input_o\ & ( (!\R_next[1]~5_combout\ & (\A[10]~input_o\)) # (\R_next[1]~5_combout\ & ((!\Add4~41_sumout\))) ) ) ) # ( 
-- !\R_next[1]~6_combout\ & ( !\B[10]~input_o\ & ( (!\R_next[1]~5_combout\ & !\R_next~88_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000010111000101110011110101000001010101110001011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[10]~input_o\,
	datab => \ALT_INV_Add4~41_sumout\,
	datac => \ALT_INV_R_next[1]~5_combout\,
	datad => \ALT_INV_R_next~88_combout\,
	datae => \ALT_INV_R_next[1]~6_combout\,
	dataf => \ALT_INV_B[10]~input_o\,
	combout => \R_next~44_combout\);

-- Location: LABCELL_X68_Y3_N3
\R_next~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \R_next~47_combout\ = ( \R_next~44_combout\ & ( (!\op[0]~input_o\ & ((!\op[1]~input_o\ & ((!\R_next~46_combout\))) # (\op[1]~input_o\ & (\R_next~45_combout\)))) ) ) # ( !\R_next~44_combout\ & ( ((!\op[1]~input_o\ & ((!\R_next~46_combout\))) # 
-- (\op[1]~input_o\ & (\R_next~45_combout\))) # (\op[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111100110111101111110011011110001100000001001000110000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op[1]~input_o\,
	datab => \ALT_INV_op[0]~input_o\,
	datac => \ALT_INV_R_next~45_combout\,
	datad => \ALT_INV_R_next~46_combout\,
	dataf => \ALT_INV_R_next~44_combout\,
	combout => \R_next~47_combout\);

-- Location: FF_X68_Y3_N4
\R_next[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \R_next~47_combout\,
	sclr => \R_next[1]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R_next(10));

-- Location: IOIBUF_X62_Y0_N1
\A[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: LABCELL_X74_Y2_N33
\Add4~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~45_sumout\ = SUM(( \A[11]~input_o\ ) + ( VCC ) + ( \Add4~42\ ))
-- \Add4~46\ = CARRY(( \A[11]~input_o\ ) + ( VCC ) + ( \Add4~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[11]~input_o\,
	cin => \Add4~42\,
	sumout => \Add4~45_sumout\,
	cout => \Add4~46\);

-- Location: IOIBUF_X68_Y0_N18
\B[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: LABCELL_X71_Y4_N33
\Add2~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~45_sumout\ = SUM(( \A[11]~input_o\ ) + ( GND ) + ( \Add2~42\ ))
-- \Add2~46\ = CARRY(( \A[11]~input_o\ ) + ( GND ) + ( \Add2~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[11]~input_o\,
	cin => \Add2~42\,
	sumout => \Add2~45_sumout\,
	cout => \Add2~46\);

-- Location: MLABCELL_X72_Y4_N33
\Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~45_sumout\ = SUM(( !\A[11]~input_o\ $ (\B[11]~input_o\) ) + ( \Add1~43\ ) + ( \Add1~42\ ))
-- \Add1~46\ = CARRY(( !\A[11]~input_o\ $ (\B[11]~input_o\) ) + ( \Add1~43\ ) + ( \Add1~42\ ))
-- \Add1~47\ = SHARE((\A[11]~input_o\ & !\B[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[11]~input_o\,
	datac => \ALT_INV_B[11]~input_o\,
	cin => \Add1~42\,
	sharein => \Add1~43\,
	sumout => \Add1~45_sumout\,
	cout => \Add1~46\,
	shareout => \Add1~47\);

-- Location: LABCELL_X74_Y3_N6
\R_next~84\ : cyclonev_lcell_comb
-- Equation(s):
-- \R_next~84_combout\ = ( !\op[2]~input_o\ & ( (!\op[3]~input_o\ & (((\Add1~45_sumout\)))) # (\op[3]~input_o\ & (\Add2~45_sumout\)) ) ) # ( \op[2]~input_o\ & ( (!\op[3]~input_o\ & (((!\B[11]~input_o\ & (!\A[11]~input_o\))))) # (\op[3]~input_o\ & 
-- ((((\A[10]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001101100011011101000000000000000011011000110111111010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op[3]~input_o\,
	datab => \ALT_INV_Add2~45_sumout\,
	datac => \ALT_INV_B[11]~input_o\,
	datad => \ALT_INV_A[11]~input_o\,
	datae => \ALT_INV_op[2]~input_o\,
	dataf => \ALT_INV_A[10]~input_o\,
	datag => \ALT_INV_Add1~45_sumout\,
	combout => \R_next~84_combout\);

-- Location: LABCELL_X74_Y3_N0
\R_next~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \R_next~48_combout\ = ( \A[11]~input_o\ & ( \R_next~84_combout\ & ( (!\R_next[1]~5_combout\ & (((\R_next[1]~6_combout\)))) # (\R_next[1]~5_combout\ & ((!\R_next[1]~6_combout\ & ((\B[11]~input_o\))) # (\R_next[1]~6_combout\ & (!\Add4~45_sumout\)))) ) ) ) # 
-- ( !\A[11]~input_o\ & ( \R_next~84_combout\ & ( (!\Add4~45_sumout\ & (\R_next[1]~5_combout\ & \R_next[1]~6_combout\)) ) ) ) # ( \A[11]~input_o\ & ( !\R_next~84_combout\ & ( (!\R_next[1]~5_combout\) # ((!\R_next[1]~6_combout\ & ((\B[11]~input_o\))) # 
-- (\R_next[1]~6_combout\ & (!\Add4~45_sumout\))) ) ) ) # ( !\A[11]~input_o\ & ( !\R_next~84_combout\ & ( (!\R_next[1]~5_combout\ & ((!\R_next[1]~6_combout\))) # (\R_next[1]~5_combout\ & (!\Add4~45_sumout\ & \R_next[1]~6_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001010111100111111101000000000000010100000001111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add4~45_sumout\,
	datab => \ALT_INV_B[11]~input_o\,
	datac => \ALT_INV_R_next[1]~5_combout\,
	datad => \ALT_INV_R_next[1]~6_combout\,
	datae => \ALT_INV_A[11]~input_o\,
	dataf => \ALT_INV_R_next~84_combout\,
	combout => \R_next~48_combout\);

-- Location: MLABCELL_X72_Y3_N33
\Add5~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~45_sumout\ = SUM(( \B[11]~input_o\ ) + ( VCC ) + ( \Add5~42\ ))
-- \Add5~46\ = CARRY(( \B[11]~input_o\ ) + ( VCC ) + ( \Add5~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[11]~input_o\,
	cin => \Add5~42\,
	sumout => \Add5~45_sumout\,
	cout => \Add5~46\);

-- Location: LABCELL_X73_Y3_N33
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( \B[11]~input_o\ ) + ( \A[11]~input_o\ ) + ( \Add0~42\ ))
-- \Add0~46\ = CARRY(( \B[11]~input_o\ ) + ( \A[11]~input_o\ ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[11]~input_o\,
	datac => \ALT_INV_B[11]~input_o\,
	cin => \Add0~42\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: LABCELL_X68_Y3_N30
\R_next~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \R_next~50_combout\ = ( \Add0~45_sumout\ & ( \B[11]~input_o\ & ( (\op[3]~input_o\ & ((!\Add5~45_sumout\) # (!\op[2]~input_o\))) ) ) ) # ( !\Add0~45_sumout\ & ( \B[11]~input_o\ & ( (!\op[2]~input_o\) # ((!\Add5~45_sumout\ & \op[3]~input_o\)) ) ) ) # ( 
-- \Add0~45_sumout\ & ( !\B[11]~input_o\ & ( (\op[2]~input_o\ & ((!\op[3]~input_o\ & ((!\A[11]~input_o\))) # (\op[3]~input_o\ & (!\Add5~45_sumout\)))) ) ) ) # ( !\Add0~45_sumout\ & ( !\B[11]~input_o\ & ( (!\op[2]~input_o\ & (((!\op[3]~input_o\)))) # 
-- (\op[2]~input_o\ & ((!\op[3]~input_o\ & ((!\A[11]~input_o\))) # (\op[3]~input_o\ & (!\Add5~45_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110000001010000011000000101011110000111110100000000011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add5~45_sumout\,
	datab => \ALT_INV_A[11]~input_o\,
	datac => \ALT_INV_op[2]~input_o\,
	datad => \ALT_INV_op[3]~input_o\,
	datae => \ALT_INV_Add0~45_sumout\,
	dataf => \ALT_INV_B[11]~input_o\,
	combout => \R_next~50_combout\);

-- Location: MLABCELL_X72_Y2_N33
\Add3~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~45_sumout\ = SUM(( \B[11]~input_o\ ) + ( GND ) + ( \Add3~42\ ))
-- \Add3~46\ = CARRY(( \B[11]~input_o\ ) + ( GND ) + ( \Add3~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[11]~input_o\,
	cin => \Add3~42\,
	sumout => \Add3~45_sumout\,
	cout => \Add3~46\);

-- Location: LABCELL_X74_Y3_N36
\R_next~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \R_next~49_combout\ = ( \op[2]~input_o\ & ( \B[10]~input_o\ & ( (!\B[11]~input_o\ $ (!\A[11]~input_o\)) # (\op[3]~input_o\) ) ) ) # ( !\op[2]~input_o\ & ( \B[10]~input_o\ & ( (!\op[3]~input_o\ & (\B[11]~input_o\ & (\A[11]~input_o\))) # (\op[3]~input_o\ & 
-- (((\Add3~45_sumout\)))) ) ) ) # ( \op[2]~input_o\ & ( !\B[10]~input_o\ & ( (!\op[3]~input_o\ & (!\B[11]~input_o\ $ (!\A[11]~input_o\))) ) ) ) # ( !\op[2]~input_o\ & ( !\B[10]~input_o\ & ( (!\op[3]~input_o\ & (\B[11]~input_o\ & (\A[11]~input_o\))) # 
-- (\op[3]~input_o\ & (((\Add3~45_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010111001010000010100000000010010101110111110101111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op[3]~input_o\,
	datab => \ALT_INV_B[11]~input_o\,
	datac => \ALT_INV_A[11]~input_o\,
	datad => \ALT_INV_Add3~45_sumout\,
	datae => \ALT_INV_op[2]~input_o\,
	dataf => \ALT_INV_B[10]~input_o\,
	combout => \R_next~49_combout\);

-- Location: LABCELL_X68_Y3_N9
\R_next~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \R_next~51_combout\ = ( \R_next~49_combout\ & ( (!\op[0]~input_o\ & (((!\R_next~50_combout\)) # (\op[1]~input_o\))) # (\op[0]~input_o\ & (((!\R_next~48_combout\)))) ) ) # ( !\R_next~49_combout\ & ( (!\op[0]~input_o\ & (!\op[1]~input_o\ & 
-- ((!\R_next~50_combout\)))) # (\op[0]~input_o\ & (((!\R_next~48_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011100000110000101110000011000011111100011101001111110001110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op[1]~input_o\,
	datab => \ALT_INV_op[0]~input_o\,
	datac => \ALT_INV_R_next~48_combout\,
	datad => \ALT_INV_R_next~50_combout\,
	dataf => \ALT_INV_R_next~49_combout\,
	combout => \R_next~51_combout\);

-- Location: FF_X68_Y3_N11
\R_next[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \R_next~51_combout\,
	sclr => \R_next[1]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R_next(11));

-- Location: IOIBUF_X66_Y0_N92
\B[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: IOIBUF_X89_Y4_N78
\A[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: LABCELL_X71_Y4_N36
\Add2~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~49_sumout\ = SUM(( \A[12]~input_o\ ) + ( GND ) + ( \Add2~46\ ))
-- \Add2~50\ = CARRY(( \A[12]~input_o\ ) + ( GND ) + ( \Add2~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[12]~input_o\,
	cin => \Add2~46\,
	sumout => \Add2~49_sumout\,
	cout => \Add2~50\);

-- Location: MLABCELL_X72_Y4_N36
\Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~49_sumout\ = SUM(( !\A[12]~input_o\ $ (\B[12]~input_o\) ) + ( \Add1~47\ ) + ( \Add1~46\ ))
-- \Add1~50\ = CARRY(( !\A[12]~input_o\ $ (\B[12]~input_o\) ) + ( \Add1~47\ ) + ( \Add1~46\ ))
-- \Add1~51\ = SHARE((\A[12]~input_o\ & !\B[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[12]~input_o\,
	datac => \ALT_INV_B[12]~input_o\,
	cin => \Add1~46\,
	sharein => \Add1~47\,
	sumout => \Add1~49_sumout\,
	cout => \Add1~50\,
	shareout => \Add1~51\);

-- Location: LABCELL_X74_Y3_N30
\R_next~80\ : cyclonev_lcell_comb
-- Equation(s):
-- \R_next~80_combout\ = ( !\op[2]~input_o\ & ( (((!\op[3]~input_o\ & ((\Add1~49_sumout\))) # (\op[3]~input_o\ & (\Add2~49_sumout\)))) ) ) # ( \op[2]~input_o\ & ( ((!\op[3]~input_o\ & (!\A[12]~input_o\ & (!\B[12]~input_o\))) # (\op[3]~input_o\ & 
-- (((\A[11]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100001111101000001010000000110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[12]~input_o\,
	datab => \ALT_INV_Add2~49_sumout\,
	datac => \ALT_INV_B[12]~input_o\,
	datad => \ALT_INV_A[11]~input_o\,
	datae => \ALT_INV_op[2]~input_o\,
	dataf => \ALT_INV_op[3]~input_o\,
	datag => \ALT_INV_Add1~49_sumout\,
	combout => \R_next~80_combout\);

-- Location: LABCELL_X74_Y2_N36
\Add4~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~49_sumout\ = SUM(( \A[12]~input_o\ ) + ( VCC ) + ( \Add4~46\ ))
-- \Add4~50\ = CARRY(( \A[12]~input_o\ ) + ( VCC ) + ( \Add4~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[12]~input_o\,
	cin => \Add4~46\,
	sumout => \Add4~49_sumout\,
	cout => \Add4~50\);

-- Location: LABCELL_X74_Y3_N12
\R_next~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \R_next~52_combout\ = ( \A[12]~input_o\ & ( \Add4~49_sumout\ & ( (!\R_next[1]~5_combout\ & (((!\R_next~80_combout\)) # (\R_next[1]~6_combout\))) # (\R_next[1]~5_combout\ & (!\R_next[1]~6_combout\ & (\B[12]~input_o\))) ) ) ) # ( !\A[12]~input_o\ & ( 
-- \Add4~49_sumout\ & ( (!\R_next[1]~5_combout\ & (!\R_next[1]~6_combout\ & !\R_next~80_combout\)) ) ) ) # ( \A[12]~input_o\ & ( !\Add4~49_sumout\ & ( ((!\R_next[1]~5_combout\ & ((!\R_next~80_combout\))) # (\R_next[1]~5_combout\ & (\B[12]~input_o\))) # 
-- (\R_next[1]~6_combout\) ) ) ) # ( !\A[12]~input_o\ & ( !\Add4~49_sumout\ & ( (!\R_next[1]~5_combout\ & (!\R_next[1]~6_combout\ & !\R_next~80_combout\)) # (\R_next[1]~5_combout\ & (\R_next[1]~6_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100100010001101111110011011110001000000000001010111000100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_R_next[1]~5_combout\,
	datab => \ALT_INV_R_next[1]~6_combout\,
	datac => \ALT_INV_B[12]~input_o\,
	datad => \ALT_INV_R_next~80_combout\,
	datae => \ALT_INV_A[12]~input_o\,
	dataf => \ALT_INV_Add4~49_sumout\,
	combout => \R_next~52_combout\);

-- Location: MLABCELL_X72_Y2_N36
\Add3~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~49_sumout\ = SUM(( \B[12]~input_o\ ) + ( GND ) + ( \Add3~46\ ))
-- \Add3~50\ = CARRY(( \B[12]~input_o\ ) + ( GND ) + ( \Add3~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[12]~input_o\,
	cin => \Add3~46\,
	sumout => \Add3~49_sumout\,
	cout => \Add3~50\);

-- Location: LABCELL_X74_Y3_N48
\R_next~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \R_next~53_combout\ = ( \A[12]~input_o\ & ( \B[12]~input_o\ & ( (!\op[3]~input_o\ & (((!\op[2]~input_o\)))) # (\op[3]~input_o\ & ((!\op[2]~input_o\ & ((\Add3~49_sumout\))) # (\op[2]~input_o\ & (\B[11]~input_o\)))) ) ) ) # ( !\A[12]~input_o\ & ( 
-- \B[12]~input_o\ & ( (!\op[3]~input_o\ & (((\op[2]~input_o\)))) # (\op[3]~input_o\ & ((!\op[2]~input_o\ & ((\Add3~49_sumout\))) # (\op[2]~input_o\ & (\B[11]~input_o\)))) ) ) ) # ( \A[12]~input_o\ & ( !\B[12]~input_o\ & ( (!\op[3]~input_o\ & 
-- (((\op[2]~input_o\)))) # (\op[3]~input_o\ & ((!\op[2]~input_o\ & ((\Add3~49_sumout\))) # (\op[2]~input_o\ & (\B[11]~input_o\)))) ) ) ) # ( !\A[12]~input_o\ & ( !\B[12]~input_o\ & ( (\op[3]~input_o\ & ((!\op[2]~input_o\ & ((\Add3~49_sumout\))) # 
-- (\op[2]~input_o\ & (\B[11]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010001000010110101101100001011010110111010000111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op[3]~input_o\,
	datab => \ALT_INV_B[11]~input_o\,
	datac => \ALT_INV_op[2]~input_o\,
	datad => \ALT_INV_Add3~49_sumout\,
	datae => \ALT_INV_A[12]~input_o\,
	dataf => \ALT_INV_B[12]~input_o\,
	combout => \R_next~53_combout\);

-- Location: MLABCELL_X72_Y3_N36
\Add5~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~49_sumout\ = SUM(( \B[12]~input_o\ ) + ( VCC ) + ( \Add5~46\ ))
-- \Add5~50\ = CARRY(( \B[12]~input_o\ ) + ( VCC ) + ( \Add5~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[12]~input_o\,
	cin => \Add5~46\,
	sumout => \Add5~49_sumout\,
	cout => \Add5~50\);

-- Location: LABCELL_X73_Y3_N36
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( \B[12]~input_o\ ) + ( \A[12]~input_o\ ) + ( \Add0~46\ ))
-- \Add0~50\ = CARRY(( \B[12]~input_o\ ) + ( \A[12]~input_o\ ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[12]~input_o\,
	datac => \ALT_INV_A[12]~input_o\,
	cin => \Add0~46\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: LABCELL_X74_Y3_N54
\R_next~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \R_next~54_combout\ = ( \A[12]~input_o\ & ( \Add0~49_sumout\ & ( (\op[3]~input_o\ & ((!\op[2]~input_o\ & ((\B[12]~input_o\))) # (\op[2]~input_o\ & (!\Add5~49_sumout\)))) ) ) ) # ( !\A[12]~input_o\ & ( \Add0~49_sumout\ & ( (!\op[3]~input_o\ & 
-- (((\op[2]~input_o\ & !\B[12]~input_o\)))) # (\op[3]~input_o\ & ((!\op[2]~input_o\ & ((\B[12]~input_o\))) # (\op[2]~input_o\ & (!\Add5~49_sumout\)))) ) ) ) # ( \A[12]~input_o\ & ( !\Add0~49_sumout\ & ( (!\op[3]~input_o\ & (((!\op[2]~input_o\)))) # 
-- (\op[3]~input_o\ & ((!\op[2]~input_o\ & ((\B[12]~input_o\))) # (\op[2]~input_o\ & (!\Add5~49_sumout\)))) ) ) ) # ( !\A[12]~input_o\ & ( !\Add0~49_sumout\ & ( (!\op[3]~input_o\ & (((!\op[2]~input_o\) # (!\B[12]~input_o\)))) # (\op[3]~input_o\ & 
-- ((!\op[2]~input_o\ & ((\B[12]~input_o\))) # (\op[2]~input_o\ & (!\Add5~49_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111011110100101001001111010000001110010101000000010001010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op[3]~input_o\,
	datab => \ALT_INV_Add5~49_sumout\,
	datac => \ALT_INV_op[2]~input_o\,
	datad => \ALT_INV_B[12]~input_o\,
	datae => \ALT_INV_A[12]~input_o\,
	dataf => \ALT_INV_Add0~49_sumout\,
	combout => \R_next~54_combout\);

-- Location: LABCELL_X68_Y3_N12
\R_next~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \R_next~55_combout\ = ( \R_next~54_combout\ & ( (!\op[0]~input_o\ & (\op[1]~input_o\ & ((\R_next~53_combout\)))) # (\op[0]~input_o\ & (((!\R_next~52_combout\)))) ) ) # ( !\R_next~54_combout\ & ( (!\op[0]~input_o\ & ((!\op[1]~input_o\) # 
-- ((\R_next~53_combout\)))) # (\op[0]~input_o\ & (((!\R_next~52_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111111001100101011111100110000000101110011000000010111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op[1]~input_o\,
	datab => \ALT_INV_R_next~52_combout\,
	datac => \ALT_INV_R_next~53_combout\,
	datad => \ALT_INV_op[0]~input_o\,
	dataf => \ALT_INV_R_next~54_combout\,
	combout => \R_next~55_combout\);

-- Location: FF_X68_Y3_N13
\R_next[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \R_next~55_combout\,
	sclr => \R_next[1]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R_next(12));

-- Location: IOIBUF_X66_Y0_N75
\B[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: MLABCELL_X72_Y2_N39
\Add3~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~53_sumout\ = SUM(( \B[13]~input_o\ ) + ( GND ) + ( \Add3~50\ ))
-- \Add3~54\ = CARRY(( \B[13]~input_o\ ) + ( GND ) + ( \Add3~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[13]~input_o\,
	cin => \Add3~50\,
	sumout => \Add3~53_sumout\,
	cout => \Add3~54\);

-- Location: IOIBUF_X68_Y0_N1
\A[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: LABCELL_X68_Y2_N54
\R_next~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \R_next~57_combout\ = ( \B[13]~input_o\ & ( \op[2]~input_o\ & ( (!\op[3]~input_o\ & ((!\A[13]~input_o\))) # (\op[3]~input_o\ & (\B[12]~input_o\)) ) ) ) # ( !\B[13]~input_o\ & ( \op[2]~input_o\ & ( (!\op[3]~input_o\ & ((\A[13]~input_o\))) # 
-- (\op[3]~input_o\ & (\B[12]~input_o\)) ) ) ) # ( \B[13]~input_o\ & ( !\op[2]~input_o\ & ( (!\op[3]~input_o\ & ((\A[13]~input_o\))) # (\op[3]~input_o\ & (\Add3~53_sumout\)) ) ) ) # ( !\B[13]~input_o\ & ( !\op[2]~input_o\ & ( (\Add3~53_sumout\ & 
-- \op[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100011101110100000011110011111100111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add3~53_sumout\,
	datab => \ALT_INV_op[3]~input_o\,
	datac => \ALT_INV_B[12]~input_o\,
	datad => \ALT_INV_A[13]~input_o\,
	datae => \ALT_INV_B[13]~input_o\,
	dataf => \ALT_INV_op[2]~input_o\,
	combout => \R_next~57_combout\);

-- Location: MLABCELL_X72_Y3_N39
\Add5~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~53_sumout\ = SUM(( \B[13]~input_o\ ) + ( VCC ) + ( \Add5~50\ ))
-- \Add5~54\ = CARRY(( \B[13]~input_o\ ) + ( VCC ) + ( \Add5~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[13]~input_o\,
	cin => \Add5~50\,
	sumout => \Add5~53_sumout\,
	cout => \Add5~54\);

-- Location: LABCELL_X73_Y3_N39
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( \B[13]~input_o\ ) + ( \A[13]~input_o\ ) + ( \Add0~50\ ))
-- \Add0~54\ = CARRY(( \B[13]~input_o\ ) + ( \A[13]~input_o\ ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[13]~input_o\,
	dataf => \ALT_INV_A[13]~input_o\,
	cin => \Add0~50\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

-- Location: LABCELL_X68_Y3_N36
\R_next~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \R_next~58_combout\ = ( \A[13]~input_o\ & ( \Add0~53_sumout\ & ( (\op[3]~input_o\ & ((!\op[2]~input_o\ & (\B[13]~input_o\)) # (\op[2]~input_o\ & ((!\Add5~53_sumout\))))) ) ) ) # ( !\A[13]~input_o\ & ( \Add0~53_sumout\ & ( (!\op[2]~input_o\ & 
-- (\op[3]~input_o\ & (\B[13]~input_o\))) # (\op[2]~input_o\ & ((!\op[3]~input_o\ & (!\B[13]~input_o\)) # (\op[3]~input_o\ & ((!\Add5~53_sumout\))))) ) ) ) # ( \A[13]~input_o\ & ( !\Add0~53_sumout\ & ( (!\op[2]~input_o\ & ((!\op[3]~input_o\) # 
-- ((\B[13]~input_o\)))) # (\op[2]~input_o\ & (\op[3]~input_o\ & ((!\Add5~53_sumout\)))) ) ) ) # ( !\A[13]~input_o\ & ( !\Add0~53_sumout\ & ( (!\op[2]~input_o\ & ((!\op[3]~input_o\) # ((\B[13]~input_o\)))) # (\op[2]~input_o\ & ((!\op[3]~input_o\ & 
-- (!\B[13]~input_o\)) # (\op[3]~input_o\ & ((!\Add5~53_sumout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101101111001010100110111000101001010011010000100001001100000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op[2]~input_o\,
	datab => \ALT_INV_op[3]~input_o\,
	datac => \ALT_INV_B[13]~input_o\,
	datad => \ALT_INV_Add5~53_sumout\,
	datae => \ALT_INV_A[13]~input_o\,
	dataf => \ALT_INV_Add0~53_sumout\,
	combout => \R_next~58_combout\);

-- Location: LABCELL_X74_Y2_N39
\Add4~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~53_sumout\ = SUM(( \A[13]~input_o\ ) + ( VCC ) + ( \Add4~50\ ))
-- \Add4~54\ = CARRY(( \A[13]~input_o\ ) + ( VCC ) + ( \Add4~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[13]~input_o\,
	cin => \Add4~50\,
	sumout => \Add4~53_sumout\,
	cout => \Add4~54\);

-- Location: LABCELL_X71_Y4_N39
\Add2~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~53_sumout\ = SUM(( \A[13]~input_o\ ) + ( GND ) + ( \Add2~50\ ))
-- \Add2~54\ = CARRY(( \A[13]~input_o\ ) + ( GND ) + ( \Add2~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[13]~input_o\,
	cin => \Add2~50\,
	sumout => \Add2~53_sumout\,
	cout => \Add2~54\);

-- Location: MLABCELL_X72_Y4_N39
\Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~53_sumout\ = SUM(( !\B[13]~input_o\ $ (\A[13]~input_o\) ) + ( \Add1~51\ ) + ( \Add1~50\ ))
-- \Add1~54\ = CARRY(( !\B[13]~input_o\ $ (\A[13]~input_o\) ) + ( \Add1~51\ ) + ( \Add1~50\ ))
-- \Add1~55\ = SHARE((!\B[13]~input_o\ & \A[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[13]~input_o\,
	datad => \ALT_INV_A[13]~input_o\,
	cin => \Add1~50\,
	sharein => \Add1~51\,
	sumout => \Add1~53_sumout\,
	cout => \Add1~54\,
	shareout => \Add1~55\);

-- Location: LABCELL_X70_Y4_N0
\R_next~76\ : cyclonev_lcell_comb
-- Equation(s):
-- \R_next~76_combout\ = ( !\op[2]~input_o\ & ( ((!\op[3]~input_o\ & (\Add1~53_sumout\)) # (\op[3]~input_o\ & (((\Add2~53_sumout\))))) ) ) # ( \op[2]~input_o\ & ( (!\op[3]~input_o\ & (!\A[13]~input_o\ & (!\B[13]~input_o\))) # (\op[3]~input_o\ & 
-- ((((\A[12]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000111111100000001000000000001100001111111011001110110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[13]~input_o\,
	datab => \ALT_INV_op[3]~input_o\,
	datac => \ALT_INV_B[13]~input_o\,
	datad => \ALT_INV_Add2~53_sumout\,
	datae => \ALT_INV_op[2]~input_o\,
	dataf => \ALT_INV_A[12]~input_o\,
	datag => \ALT_INV_Add1~53_sumout\,
	combout => \R_next~76_combout\);

-- Location: LABCELL_X68_Y2_N18
\R_next~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \R_next~56_combout\ = ( \R_next[1]~5_combout\ & ( \R_next~76_combout\ & ( (!\R_next[1]~6_combout\ & (((\B[13]~input_o\ & \A[13]~input_o\)))) # (\R_next[1]~6_combout\ & (!\Add4~53_sumout\)) ) ) ) # ( !\R_next[1]~5_combout\ & ( \R_next~76_combout\ & ( 
-- (\R_next[1]~6_combout\ & \A[13]~input_o\) ) ) ) # ( \R_next[1]~5_combout\ & ( !\R_next~76_combout\ & ( (!\R_next[1]~6_combout\ & (((\B[13]~input_o\ & \A[13]~input_o\)))) # (\R_next[1]~6_combout\ & (!\Add4~53_sumout\)) ) ) ) # ( !\R_next[1]~5_combout\ & ( 
-- !\R_next~76_combout\ & ( (!\R_next[1]~6_combout\) # (\A[13]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111111000010100011101000000000000011110000101000111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add4~53_sumout\,
	datab => \ALT_INV_B[13]~input_o\,
	datac => \ALT_INV_R_next[1]~6_combout\,
	datad => \ALT_INV_A[13]~input_o\,
	datae => \ALT_INV_R_next[1]~5_combout\,
	dataf => \ALT_INV_R_next~76_combout\,
	combout => \R_next~56_combout\);

-- Location: LABCELL_X68_Y2_N48
\R_next~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \R_next~59_combout\ = ( !\op[0]~input_o\ & ( \R_next~56_combout\ & ( (!\op[1]~input_o\ & ((!\R_next~58_combout\))) # (\op[1]~input_o\ & (\R_next~57_combout\)) ) ) ) # ( \op[0]~input_o\ & ( !\R_next~56_combout\ ) ) # ( !\op[0]~input_o\ & ( 
-- !\R_next~56_combout\ & ( (!\op[1]~input_o\ & ((!\R_next~58_combout\))) # (\op[1]~input_o\ & (\R_next~57_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010111000101111111111111111111000101110001010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_R_next~57_combout\,
	datab => \ALT_INV_R_next~58_combout\,
	datac => \ALT_INV_op[1]~input_o\,
	datae => \ALT_INV_op[0]~input_o\,
	dataf => \ALT_INV_R_next~56_combout\,
	combout => \R_next~59_combout\);

-- Location: FF_X68_Y2_N49
\R_next[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \R_next~59_combout\,
	sclr => \R_next[1]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R_next(13));

-- Location: IOIBUF_X64_Y0_N52
\B[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: MLABCELL_X72_Y3_N42
\Add5~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~57_sumout\ = SUM(( \B[14]~input_o\ ) + ( VCC ) + ( \Add5~54\ ))
-- \Add5~58\ = CARRY(( \B[14]~input_o\ ) + ( VCC ) + ( \Add5~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[14]~input_o\,
	cin => \Add5~54\,
	sumout => \Add5~57_sumout\,
	cout => \Add5~58\);

-- Location: IOIBUF_X64_Y0_N35
\A[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: LABCELL_X73_Y3_N42
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( \A[14]~input_o\ ) + ( \B[14]~input_o\ ) + ( \Add0~54\ ))
-- \Add0~58\ = CARRY(( \A[14]~input_o\ ) + ( \B[14]~input_o\ ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[14]~input_o\,
	dataf => \ALT_INV_B[14]~input_o\,
	cin => \Add0~54\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

-- Location: LABCELL_X68_Y3_N24
\R_next~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \R_next~62_combout\ = ( \op[2]~input_o\ & ( \Add0~57_sumout\ & ( (!\op[3]~input_o\ & (!\B[14]~input_o\ & ((!\A[14]~input_o\)))) # (\op[3]~input_o\ & (((!\Add5~57_sumout\)))) ) ) ) # ( !\op[2]~input_o\ & ( \Add0~57_sumout\ & ( (\B[14]~input_o\ & 
-- \op[3]~input_o\) ) ) ) # ( \op[2]~input_o\ & ( !\Add0~57_sumout\ & ( (!\op[3]~input_o\ & (!\B[14]~input_o\ & ((!\A[14]~input_o\)))) # (\op[3]~input_o\ & (((!\Add5~57_sumout\)))) ) ) ) # ( !\op[2]~input_o\ & ( !\Add0~57_sumout\ & ( (!\op[3]~input_o\) # 
-- (\B[14]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101101110000011000000010001000100011011100000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[14]~input_o\,
	datab => \ALT_INV_op[3]~input_o\,
	datac => \ALT_INV_Add5~57_sumout\,
	datad => \ALT_INV_A[14]~input_o\,
	datae => \ALT_INV_op[2]~input_o\,
	dataf => \ALT_INV_Add0~57_sumout\,
	combout => \R_next~62_combout\);

-- Location: MLABCELL_X72_Y2_N42
\Add3~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~57_sumout\ = SUM(( \B[14]~input_o\ ) + ( GND ) + ( \Add3~54\ ))
-- \Add3~58\ = CARRY(( \B[14]~input_o\ ) + ( GND ) + ( \Add3~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[14]~input_o\,
	cin => \Add3~54\,
	sumout => \Add3~57_sumout\,
	cout => \Add3~58\);

-- Location: LABCELL_X68_Y3_N18
\R_next~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \R_next~61_combout\ = ( \B[14]~input_o\ & ( \op[2]~input_o\ & ( (!\op[3]~input_o\ & ((!\A[14]~input_o\))) # (\op[3]~input_o\ & (\B[13]~input_o\)) ) ) ) # ( !\B[14]~input_o\ & ( \op[2]~input_o\ & ( (!\op[3]~input_o\ & ((\A[14]~input_o\))) # 
-- (\op[3]~input_o\ & (\B[13]~input_o\)) ) ) ) # ( \B[14]~input_o\ & ( !\op[2]~input_o\ & ( (!\op[3]~input_o\ & ((\A[14]~input_o\))) # (\op[3]~input_o\ & (\Add3~57_sumout\)) ) ) ) # ( !\B[14]~input_o\ & ( !\op[2]~input_o\ & ( (\Add3~57_sumout\ & 
-- \op[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100011101110100000011110011111100111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add3~57_sumout\,
	datab => \ALT_INV_op[3]~input_o\,
	datac => \ALT_INV_B[13]~input_o\,
	datad => \ALT_INV_A[14]~input_o\,
	datae => \ALT_INV_B[14]~input_o\,
	dataf => \ALT_INV_op[2]~input_o\,
	combout => \R_next~61_combout\);

-- Location: LABCELL_X71_Y4_N42
\Add2~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~57_sumout\ = SUM(( \A[14]~input_o\ ) + ( GND ) + ( \Add2~54\ ))
-- \Add2~58\ = CARRY(( \A[14]~input_o\ ) + ( GND ) + ( \Add2~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[14]~input_o\,
	cin => \Add2~54\,
	sumout => \Add2~57_sumout\,
	cout => \Add2~58\);

-- Location: MLABCELL_X72_Y4_N42
\Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~57_sumout\ = SUM(( !\B[14]~input_o\ $ (\A[14]~input_o\) ) + ( \Add1~55\ ) + ( \Add1~54\ ))
-- \Add1~58\ = CARRY(( !\B[14]~input_o\ $ (\A[14]~input_o\) ) + ( \Add1~55\ ) + ( \Add1~54\ ))
-- \Add1~59\ = SHARE((!\B[14]~input_o\ & \A[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[14]~input_o\,
	datac => \ALT_INV_A[14]~input_o\,
	cin => \Add1~54\,
	sharein => \Add1~55\,
	sumout => \Add1~57_sumout\,
	cout => \Add1~58\,
	shareout => \Add1~59\);

-- Location: LABCELL_X68_Y3_N48
\R_next~72\ : cyclonev_lcell_comb
-- Equation(s):
-- \R_next~72_combout\ = ( !\op[2]~input_o\ & ( (((!\op[3]~input_o\ & (\Add1~57_sumout\)) # (\op[3]~input_o\ & ((\Add2~57_sumout\))))) ) ) # ( \op[2]~input_o\ & ( (!\op[3]~input_o\ & (!\A[14]~input_o\ & (((!\B[14]~input_o\))))) # (\op[3]~input_o\ & 
-- (((\A[13]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100000000101000000011001100001111111111111010000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[14]~input_o\,
	datab => \ALT_INV_A[13]~input_o\,
	datac => \ALT_INV_B[14]~input_o\,
	datad => \ALT_INV_op[3]~input_o\,
	datae => \ALT_INV_op[2]~input_o\,
	dataf => \ALT_INV_Add2~57_sumout\,
	datag => \ALT_INV_Add1~57_sumout\,
	combout => \R_next~72_combout\);

-- Location: LABCELL_X74_Y2_N42
\Add4~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~57_sumout\ = SUM(( \A[14]~input_o\ ) + ( VCC ) + ( \Add4~54\ ))
-- \Add4~58\ = CARRY(( \A[14]~input_o\ ) + ( VCC ) + ( \Add4~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[14]~input_o\,
	cin => \Add4~54\,
	sumout => \Add4~57_sumout\,
	cout => \Add4~58\);

-- Location: LABCELL_X68_Y3_N42
\R_next~60\ : cyclonev_lcell_comb
-- Equation(s):
-- \R_next~60_combout\ = ( \B[14]~input_o\ & ( \Add4~57_sumout\ & ( (!\R_next[1]~6_combout\ & ((!\R_next[1]~5_combout\ & (!\R_next~72_combout\)) # (\R_next[1]~5_combout\ & ((\A[14]~input_o\))))) # (\R_next[1]~6_combout\ & (((\A[14]~input_o\ & 
-- !\R_next[1]~5_combout\)))) ) ) ) # ( !\B[14]~input_o\ & ( \Add4~57_sumout\ & ( (!\R_next[1]~5_combout\ & ((!\R_next[1]~6_combout\ & (!\R_next~72_combout\)) # (\R_next[1]~6_combout\ & ((\A[14]~input_o\))))) ) ) ) # ( \B[14]~input_o\ & ( !\Add4~57_sumout\ & 
-- ( (!\R_next[1]~6_combout\ & ((!\R_next[1]~5_combout\ & (!\R_next~72_combout\)) # (\R_next[1]~5_combout\ & ((\A[14]~input_o\))))) # (\R_next[1]~6_combout\ & (((\R_next[1]~5_combout\) # (\A[14]~input_o\)))) ) ) ) # ( !\B[14]~input_o\ & ( !\Add4~57_sumout\ & 
-- ( (!\R_next[1]~6_combout\ & (!\R_next~72_combout\ & ((!\R_next[1]~5_combout\)))) # (\R_next[1]~6_combout\ & (((\R_next[1]~5_combout\) # (\A[14]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101100110011100010110011111110001011000000001000101100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_R_next~72_combout\,
	datab => \ALT_INV_R_next[1]~6_combout\,
	datac => \ALT_INV_A[14]~input_o\,
	datad => \ALT_INV_R_next[1]~5_combout\,
	datae => \ALT_INV_B[14]~input_o\,
	dataf => \ALT_INV_Add4~57_sumout\,
	combout => \R_next~60_combout\);

-- Location: LABCELL_X68_Y3_N6
\R_next~63\ : cyclonev_lcell_comb
-- Equation(s):
-- \R_next~63_combout\ = ( \R_next~60_combout\ & ( (!\op[0]~input_o\ & ((!\op[1]~input_o\ & (!\R_next~62_combout\)) # (\op[1]~input_o\ & ((\R_next~61_combout\))))) ) ) # ( !\R_next~60_combout\ & ( ((!\op[1]~input_o\ & (!\R_next~62_combout\)) # 
-- (\op[1]~input_o\ & ((\R_next~61_combout\)))) # (\op[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011001111110111101100111111011110000000110001001000000011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op[1]~input_o\,
	datab => \ALT_INV_op[0]~input_o\,
	datac => \ALT_INV_R_next~62_combout\,
	datad => \ALT_INV_R_next~61_combout\,
	dataf => \ALT_INV_R_next~60_combout\,
	combout => \R_next~63_combout\);

-- Location: FF_X68_Y3_N7
\R_next[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \R_next~63_combout\,
	sclr => \R_next[1]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R_next(14));

-- Location: IOIBUF_X89_Y4_N61
\A[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: IOIBUF_X89_Y4_N44
\B[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: MLABCELL_X72_Y3_N45
\Add5~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~61_sumout\ = SUM(( \B[15]~input_o\ ) + ( VCC ) + ( \Add5~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[15]~input_o\,
	cin => \Add5~58\,
	sumout => \Add5~61_sumout\);

-- Location: LABCELL_X73_Y3_N45
\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( \A[15]~input_o\ ) + ( \B[15]~input_o\ ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[15]~input_o\,
	dataf => \ALT_INV_B[15]~input_o\,
	cin => \Add0~58\,
	sumout => \Add0~61_sumout\);

-- Location: LABCELL_X73_Y3_N54
\R_next~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \R_next~66_combout\ = ( \Add0~61_sumout\ & ( \op[2]~input_o\ & ( (!\op[3]~input_o\ & (!\A[15]~input_o\ & ((!\B[15]~input_o\)))) # (\op[3]~input_o\ & (((!\Add5~61_sumout\)))) ) ) ) # ( !\Add0~61_sumout\ & ( \op[2]~input_o\ & ( (!\op[3]~input_o\ & 
-- (!\A[15]~input_o\ & ((!\B[15]~input_o\)))) # (\op[3]~input_o\ & (((!\Add5~61_sumout\)))) ) ) ) # ( \Add0~61_sumout\ & ( !\op[2]~input_o\ & ( (\op[3]~input_o\ & \B[15]~input_o\) ) ) ) # ( !\Add0~61_sumout\ & ( !\op[2]~input_o\ & ( (!\op[3]~input_o\) # 
-- (\B[15]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101011111111000000000101010111011000010100001101100001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op[3]~input_o\,
	datab => \ALT_INV_A[15]~input_o\,
	datac => \ALT_INV_Add5~61_sumout\,
	datad => \ALT_INV_B[15]~input_o\,
	datae => \ALT_INV_Add0~61_sumout\,
	dataf => \ALT_INV_op[2]~input_o\,
	combout => \R_next~66_combout\);

-- Location: LABCELL_X71_Y4_N45
\Add2~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~61_sumout\ = SUM(( \A[15]~input_o\ ) + ( GND ) + ( \Add2~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[15]~input_o\,
	cin => \Add2~58\,
	sumout => \Add2~61_sumout\);

-- Location: MLABCELL_X72_Y4_N45
\Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~61_sumout\ = SUM(( !\B[15]~input_o\ $ (\A[15]~input_o\) ) + ( \Add1~59\ ) + ( \Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[15]~input_o\,
	datac => \ALT_INV_A[15]~input_o\,
	cin => \Add1~58\,
	sharein => \Add1~59\,
	sumout => \Add1~61_sumout\);

-- Location: LABCELL_X73_Y2_N0
\R_next~68\ : cyclonev_lcell_comb
-- Equation(s):
-- \R_next~68_combout\ = ( !\op[2]~input_o\ & ( (((!\op[3]~input_o\ & (\Add1~61_sumout\)) # (\op[3]~input_o\ & ((\Add2~61_sumout\))))) ) ) # ( \op[2]~input_o\ & ( ((!\op[3]~input_o\ & (((!\A[15]~input_o\ & !\B[15]~input_o\)))) # (\op[3]~input_o\ & 
-- (\A[14]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100001111110000001100000000000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[14]~input_o\,
	datab => \ALT_INV_A[15]~input_o\,
	datac => \ALT_INV_B[15]~input_o\,
	datad => \ALT_INV_Add2~61_sumout\,
	datae => \ALT_INV_op[2]~input_o\,
	dataf => \ALT_INV_op[3]~input_o\,
	datag => \ALT_INV_Add1~61_sumout\,
	combout => \R_next~68_combout\);

-- Location: LABCELL_X74_Y2_N45
\Add4~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~61_sumout\ = SUM(( \A[15]~input_o\ ) + ( VCC ) + ( \Add4~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[15]~input_o\,
	cin => \Add4~58\,
	sumout => \Add4~61_sumout\);

-- Location: LABCELL_X73_Y2_N48
\R_next~64\ : cyclonev_lcell_comb
-- Equation(s):
-- \R_next~64_combout\ = ( \A[15]~input_o\ & ( \Add4~61_sumout\ & ( (!\R_next[1]~6_combout\ & ((!\R_next[1]~5_combout\ & (!\R_next~68_combout\)) # (\R_next[1]~5_combout\ & ((\B[15]~input_o\))))) # (\R_next[1]~6_combout\ & (((!\R_next[1]~5_combout\)))) ) ) ) 
-- # ( !\A[15]~input_o\ & ( \Add4~61_sumout\ & ( (!\R_next~68_combout\ & (!\R_next[1]~6_combout\ & !\R_next[1]~5_combout\)) ) ) ) # ( \A[15]~input_o\ & ( !\Add4~61_sumout\ & ( ((!\R_next[1]~5_combout\ & (!\R_next~68_combout\)) # (\R_next[1]~5_combout\ & 
-- ((\B[15]~input_o\)))) # (\R_next[1]~6_combout\) ) ) ) # ( !\A[15]~input_o\ & ( !\Add4~61_sumout\ & ( (!\R_next[1]~6_combout\ & (!\R_next~68_combout\ & !\R_next[1]~5_combout\)) # (\R_next[1]~6_combout\ & ((\R_next[1]~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001110000011101100111011111110000000100000001011000010111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_R_next~68_combout\,
	datab => \ALT_INV_R_next[1]~6_combout\,
	datac => \ALT_INV_R_next[1]~5_combout\,
	datad => \ALT_INV_B[15]~input_o\,
	datae => \ALT_INV_A[15]~input_o\,
	dataf => \ALT_INV_Add4~61_sumout\,
	combout => \R_next~64_combout\);

-- Location: MLABCELL_X72_Y2_N45
\Add3~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~61_sumout\ = SUM(( \B[15]~input_o\ ) + ( GND ) + ( \Add3~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[15]~input_o\,
	cin => \Add3~58\,
	sumout => \Add3~61_sumout\);

-- Location: LABCELL_X73_Y2_N24
\R_next~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \R_next~65_combout\ = ( \A[15]~input_o\ & ( \B[14]~input_o\ & ( (!\op[3]~input_o\ & ((!\op[2]~input_o\ $ (!\B[15]~input_o\)))) # (\op[3]~input_o\ & (((\op[2]~input_o\)) # (\Add3~61_sumout\))) ) ) ) # ( !\A[15]~input_o\ & ( \B[14]~input_o\ & ( 
-- (!\op[3]~input_o\ & (((\op[2]~input_o\ & \B[15]~input_o\)))) # (\op[3]~input_o\ & (((\op[2]~input_o\)) # (\Add3~61_sumout\))) ) ) ) # ( \A[15]~input_o\ & ( !\B[14]~input_o\ & ( (!\op[3]~input_o\ & ((!\op[2]~input_o\ $ (!\B[15]~input_o\)))) # 
-- (\op[3]~input_o\ & (\Add3~61_sumout\ & (!\op[2]~input_o\))) ) ) ) # ( !\A[15]~input_o\ & ( !\B[14]~input_o\ & ( (!\op[3]~input_o\ & (((\op[2]~input_o\ & \B[15]~input_o\)))) # (\op[3]~input_o\ & (\Add3~61_sumout\ & (!\op[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011100000111001101000000010011000111110001111111010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add3~61_sumout\,
	datab => \ALT_INV_op[3]~input_o\,
	datac => \ALT_INV_op[2]~input_o\,
	datad => \ALT_INV_B[15]~input_o\,
	datae => \ALT_INV_A[15]~input_o\,
	dataf => \ALT_INV_B[14]~input_o\,
	combout => \R_next~65_combout\);

-- Location: LABCELL_X70_Y2_N54
\R_next~67\ : cyclonev_lcell_comb
-- Equation(s):
-- \R_next~67_combout\ = ( \R_next~65_combout\ & ( (!\op[0]~input_o\ & (((!\R_next~66_combout\)) # (\op[1]~input_o\))) # (\op[0]~input_o\ & (((!\R_next~64_combout\)))) ) ) # ( !\R_next~65_combout\ & ( (!\op[0]~input_o\ & (!\op[1]~input_o\ & 
-- (!\R_next~66_combout\))) # (\op[0]~input_o\ & (((!\R_next~64_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100011110000100010001111000011011101111100001101110111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op[1]~input_o\,
	datab => \ALT_INV_R_next~66_combout\,
	datac => \ALT_INV_R_next~64_combout\,
	datad => \ALT_INV_op[0]~input_o\,
	dataf => \ALT_INV_R_next~65_combout\,
	combout => \R_next~67_combout\);

-- Location: FF_X70_Y2_N56
\R_next[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \R_next~67_combout\,
	sclr => \R_next[1]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R_next(15));

-- Location: MLABCELL_X72_Y4_N51
\LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = ( !\B[13]~input_o\ & ( (!\B[14]~input_o\ & !\B[12]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[14]~input_o\,
	datad => \ALT_INV_B[12]~input_o\,
	dataf => \ALT_INV_B[13]~input_o\,
	combout => \LessThan2~0_combout\);

-- Location: MLABCELL_X72_Y4_N57
\LessThan2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~2_combout\ = ( !\B[9]~input_o\ & ( (!\B[6]~input_o\ & (!\B[8]~input_o\ & (!\B[7]~input_o\ & !\B[10]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[6]~input_o\,
	datab => \ALT_INV_B[8]~input_o\,
	datac => \ALT_INV_B[7]~input_o\,
	datad => \ALT_INV_B[10]~input_o\,
	datae => \ALT_INV_B[9]~input_o\,
	combout => \LessThan2~2_combout\);

-- Location: MLABCELL_X72_Y4_N48
\LessThan2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = ( !\B[1]~input_o\ & ( (!\B[2]~input_o\ & (!\B[4]~input_o\ & (!\B[0]~input_o\ & !\B[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \LessThan2~1_combout\);

-- Location: LABCELL_X73_Y4_N0
\flag~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \flag~0_combout\ = ( \B[11]~input_o\ & ( !\B[15]~input_o\ ) ) # ( !\B[11]~input_o\ & ( !\B[15]~input_o\ & ( (!\LessThan2~0_combout\) # ((!\LessThan2~2_combout\) # ((!\LessThan2~1_combout\) # (\B[5]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111101111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan2~0_combout\,
	datab => \ALT_INV_LessThan2~2_combout\,
	datac => \ALT_INV_B[5]~input_o\,
	datad => \ALT_INV_LessThan2~1_combout\,
	datae => \ALT_INV_B[11]~input_o\,
	dataf => \ALT_INV_B[15]~input_o\,
	combout => \flag~0_combout\);

-- Location: LABCELL_X74_Y2_N48
\LessThan3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan3~1_combout\ = ( !\A[4]~input_o\ & ( (!\A[2]~input_o\ & (!\A[3]~input_o\ & (!\A[1]~input_o\ & !\A[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_A[3]~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_A[4]~input_o\,
	combout => \LessThan3~1_combout\);

-- Location: LABCELL_X73_Y2_N6
\LessThan3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan3~2_combout\ = ( !\A[10]~input_o\ & ( (!\A[8]~input_o\ & (!\A[6]~input_o\ & (!\A[7]~input_o\ & !\A[9]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[8]~input_o\,
	datab => \ALT_INV_A[6]~input_o\,
	datac => \ALT_INV_A[7]~input_o\,
	datad => \ALT_INV_A[9]~input_o\,
	dataf => \ALT_INV_A[10]~input_o\,
	combout => \LessThan3~2_combout\);

-- Location: LABCELL_X74_Y2_N51
\LessThan3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = ( !\A[13]~input_o\ & ( (!\A[14]~input_o\ & !\A[12]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[14]~input_o\,
	datad => \ALT_INV_A[12]~input_o\,
	dataf => \ALT_INV_A[13]~input_o\,
	combout => \LessThan3~0_combout\);

-- Location: LABCELL_X74_Y2_N54
\flag~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \flag~1_combout\ = ( \A[11]~input_o\ & ( \LessThan3~0_combout\ & ( !\A[15]~input_o\ ) ) ) # ( !\A[11]~input_o\ & ( \LessThan3~0_combout\ & ( (!\A[15]~input_o\ & ((!\LessThan3~1_combout\) # ((!\LessThan3~2_combout\) # (\A[5]~input_o\)))) ) ) ) # ( 
-- \A[11]~input_o\ & ( !\LessThan3~0_combout\ & ( !\A[15]~input_o\ ) ) ) # ( !\A[11]~input_o\ & ( !\LessThan3~0_combout\ & ( !\A[15]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000101100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan3~1_combout\,
	datab => \ALT_INV_A[5]~input_o\,
	datac => \ALT_INV_A[15]~input_o\,
	datad => \ALT_INV_LessThan3~2_combout\,
	datae => \ALT_INV_A[11]~input_o\,
	dataf => \ALT_INV_LessThan3~0_combout\,
	combout => \flag~1_combout\);

-- Location: LABCELL_X73_Y2_N18
\flag~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \flag~4_combout\ = ( \A[15]~input_o\ & ( \flag~1_combout\ & ( (\flag~3_combout\ & (((\op[0]~input_o\ & \flag~0_combout\)) # (\B[15]~input_o\))) ) ) ) # ( !\A[15]~input_o\ & ( \flag~1_combout\ & ( (\op[0]~input_o\ & (\flag~3_combout\ & \B[15]~input_o\)) ) 
-- ) ) # ( \A[15]~input_o\ & ( !\flag~1_combout\ & ( (\flag~3_combout\ & ((!\op[0]~input_o\ & ((\B[15]~input_o\))) # (\op[0]~input_o\ & (\flag~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000101100000000000001010000000100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op[0]~input_o\,
	datab => \ALT_INV_flag~0_combout\,
	datac => \ALT_INV_flag~3_combout\,
	datad => \ALT_INV_B[15]~input_o\,
	datae => \ALT_INV_A[15]~input_o\,
	dataf => \ALT_INV_flag~1_combout\,
	combout => \flag~4_combout\);

-- Location: LABCELL_X73_Y2_N9
\flag~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \flag~6_combout\ = ( \op[3]~input_o\ & ( !\op[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_op[2]~input_o\,
	dataf => \ALT_INV_op[3]~input_o\,
	combout => \flag~6_combout\);

-- Location: LABCELL_X73_Y2_N54
\flag~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \flag~5_combout\ = ( \op[3]~input_o\ & ( (\B[15]~input_o\ & (!\op[0]~input_o\ & \op[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[15]~input_o\,
	datac => \ALT_INV_op[0]~input_o\,
	datad => \ALT_INV_op[2]~input_o\,
	dataf => \ALT_INV_op[3]~input_o\,
	combout => \flag~5_combout\);

-- Location: LABCELL_X73_Y2_N42
\flag~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \flag~2_combout\ = ( \A[15]~input_o\ & ( \op[1]~input_o\ & ( (!R_next(15) & (\op[0]~input_o\)) # (R_next(15) & (!\op[0]~input_o\ & \flag~0_combout\)) ) ) ) # ( !\A[15]~input_o\ & ( \op[1]~input_o\ & ( (R_next(15) & (!\op[0]~input_o\ & \flag~0_combout\)) ) 
-- ) ) # ( \A[15]~input_o\ & ( !\op[1]~input_o\ & ( (\flag~1_combout\ & (R_next(15) & \op[0]~input_o\)) ) ) ) # ( !\A[15]~input_o\ & ( !\op[1]~input_o\ & ( (\flag~1_combout\ & (R_next(15) & \op[0]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000000001100000000110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_flag~1_combout\,
	datab => ALT_INV_R_next(15),
	datac => \ALT_INV_op[0]~input_o\,
	datad => \ALT_INV_flag~0_combout\,
	datae => \ALT_INV_A[15]~input_o\,
	dataf => \ALT_INV_op[1]~input_o\,
	combout => \flag~2_combout\);

-- Location: LABCELL_X73_Y2_N57
\flag~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \flag~7_combout\ = (!\op[1]~input_o\ & !R_next(15))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op[1]~input_o\,
	datac => ALT_INV_R_next(15),
	combout => \flag~7_combout\);

-- Location: LABCELL_X73_Y2_N30
\flag~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \flag~8_combout\ = ( !\op[0]~input_o\ & ( \flag~1_combout\ & ( (\flag~3_combout\ & (R_next(15) & (!\op[1]~input_o\ & \flag~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_flag~3_combout\,
	datab => ALT_INV_R_next(15),
	datac => \ALT_INV_op[1]~input_o\,
	datad => \ALT_INV_flag~0_combout\,
	datae => \ALT_INV_op[0]~input_o\,
	dataf => \ALT_INV_flag~1_combout\,
	combout => \flag~8_combout\);

-- Location: LABCELL_X73_Y2_N36
\flag~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \flag~9_combout\ = ( \flag~7_combout\ & ( \flag~8_combout\ & ( (!\flag~4_combout\ & (!\flag~5_combout\ & ((!\flag~6_combout\) # (!\flag~2_combout\)))) ) ) ) # ( !\flag~7_combout\ & ( \flag~8_combout\ & ( (!\flag~6_combout\) # (!\flag~2_combout\) ) ) ) # ( 
-- \flag~7_combout\ & ( !\flag~8_combout\ & ( (((\flag~6_combout\ & \flag~2_combout\)) # (\flag~5_combout\)) # (\flag~4_combout\) ) ) ) # ( !\flag~7_combout\ & ( !\flag~8_combout\ & ( (\flag~6_combout\ & \flag~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011010111110111111111111111110011001010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_flag~4_combout\,
	datab => \ALT_INV_flag~6_combout\,
	datac => \ALT_INV_flag~5_combout\,
	datad => \ALT_INV_flag~2_combout\,
	datae => \ALT_INV_flag~7_combout\,
	dataf => \ALT_INV_flag~8_combout\,
	combout => \flag~9_combout\);

-- Location: LABCELL_X33_Y12_N3
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


