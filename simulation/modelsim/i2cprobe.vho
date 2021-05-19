-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "05/11/2021 17:34:31"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
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

ENTITY 	i2cprobe IS
    PORT (
	clk_i : IN std_logic;
	sw : IN std_logic_vector(9 DOWNTO 0);
	key : IN std_logic_vector(3 DOWNTO 0);
	led : OUT std_logic_vector(9 DOWNTO 0);
	hex0 : OUT std_logic_vector(6 DOWNTO 0);
	hex1 : OUT std_logic_vector(6 DOWNTO 0);
	hex2 : OUT std_logic_vector(6 DOWNTO 0);
	hex3 : OUT std_logic_vector(6 DOWNTO 0);
	hex4 : OUT std_logic_vector(6 DOWNTO 0);
	hex5 : OUT std_logic_vector(6 DOWNTO 0);
	scl : IN std_logic;
	sda : INOUT std_logic
	);
END i2cprobe;

-- Design Ports Information
-- sw[8]	=>  Location: PIN_AD10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[2]	=>  Location: PIN_W15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[3]	=>  Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- led[0]	=>  Location: PIN_V16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- led[1]	=>  Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- led[2]	=>  Location: PIN_V17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- led[3]	=>  Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- led[4]	=>  Location: PIN_W17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- led[5]	=>  Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- led[6]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- led[7]	=>  Location: PIN_W20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- led[8]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- led[9]	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- hex0[0]	=>  Location: PIN_AE26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- hex0[1]	=>  Location: PIN_AE27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- hex0[2]	=>  Location: PIN_AE28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- hex0[3]	=>  Location: PIN_AG27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- hex0[4]	=>  Location: PIN_AF28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- hex0[5]	=>  Location: PIN_AG28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- hex0[6]	=>  Location: PIN_AH28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- hex1[0]	=>  Location: PIN_AJ29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- hex1[1]	=>  Location: PIN_AH29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- hex1[2]	=>  Location: PIN_AH30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- hex1[3]	=>  Location: PIN_AG30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- hex1[4]	=>  Location: PIN_AF29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- hex1[5]	=>  Location: PIN_AF30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- hex1[6]	=>  Location: PIN_AD27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- hex2[0]	=>  Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- hex2[1]	=>  Location: PIN_AE29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- hex2[2]	=>  Location: PIN_AD29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- hex2[3]	=>  Location: PIN_AC28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- hex2[4]	=>  Location: PIN_AD30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- hex2[5]	=>  Location: PIN_AC29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- hex2[6]	=>  Location: PIN_AC30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- hex3[0]	=>  Location: PIN_AD26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- hex3[1]	=>  Location: PIN_AC27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- hex3[2]	=>  Location: PIN_AD25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- hex3[3]	=>  Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- hex3[4]	=>  Location: PIN_AB28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- hex3[5]	=>  Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- hex3[6]	=>  Location: PIN_AB22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- hex4[0]	=>  Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- hex4[1]	=>  Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- hex4[2]	=>  Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- hex4[3]	=>  Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- hex4[4]	=>  Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- hex4[5]	=>  Location: PIN_V23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- hex4[6]	=>  Location: PIN_W25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- hex5[0]	=>  Location: PIN_V25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- hex5[1]	=>  Location: PIN_AA28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- hex5[2]	=>  Location: PIN_Y27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- hex5[3]	=>  Location: PIN_AB27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- hex5[4]	=>  Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- hex5[5]	=>  Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- hex5[6]	=>  Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- sda	=>  Location: PIN_AE19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- sw[9]	=>  Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_AF9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[4]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[5]	=>  Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[7]	=>  Location: PIN_AC9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[6]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[1]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk_i	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key[0]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- scl	=>  Location: PIN_AE18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF i2cprobe IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_i : std_logic;
SIGNAL ww_sw : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_key : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_led : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_hex0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_scl : std_logic;
SIGNAL \M1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \M1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \M1|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \M1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \P1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \P1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \P1|pll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_CLKIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \P1|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_MHI_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \P1|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_SHIFTEN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \P1|pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER_VCO0PH_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \sw[8]~input_o\ : std_logic;
SIGNAL \key[2]~input_o\ : std_logic;
SIGNAL \key[3]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk_i~input_o\ : std_logic;
SIGNAL \P1|pll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_EXTSWITCHBUF\ : std_logic;
SIGNAL \key[0]~input_o\ : std_logic;
SIGNAL \P1|pll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_CLKOUT\ : std_logic;
SIGNAL \P1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI2\ : std_logic;
SIGNAL \P1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI3\ : std_logic;
SIGNAL \P1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI4\ : std_logic;
SIGNAL \P1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI5\ : std_logic;
SIGNAL \P1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI6\ : std_logic;
SIGNAL \P1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI7\ : std_logic;
SIGNAL \P1|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\ : std_logic;
SIGNAL \P1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI1\ : std_logic;
SIGNAL \P1|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFTENM\ : std_logic;
SIGNAL \P1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI0\ : std_logic;
SIGNAL \P1|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\ : std_logic;
SIGNAL \P1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\ : std_logic;
SIGNAL \P1|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIGSHIFTEN6\ : std_logic;
SIGNAL \P1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_TCLK\ : std_logic;
SIGNAL \P1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH0\ : std_logic;
SIGNAL \P1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH1\ : std_logic;
SIGNAL \P1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH2\ : std_logic;
SIGNAL \P1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH3\ : std_logic;
SIGNAL \P1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH4\ : std_logic;
SIGNAL \P1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH5\ : std_logic;
SIGNAL \P1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH6\ : std_logic;
SIGNAL \P1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH7\ : std_logic;
SIGNAL \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\ : std_logic;
SIGNAL \P2|Add0~14\ : std_logic;
SIGNAL \P2|Add0~5_sumout\ : std_logic;
SIGNAL \P2|Add0~6\ : std_logic;
SIGNAL \P2|Add0~9_sumout\ : std_logic;
SIGNAL \P2|LessThan0~0_combout\ : std_logic;
SIGNAL \P2|Add0~10\ : std_logic;
SIGNAL \P2|Add0~1_sumout\ : std_logic;
SIGNAL \P2|Add0~2\ : std_logic;
SIGNAL \P2|Add0~21_sumout\ : std_logic;
SIGNAL \P2|Add0~22\ : std_logic;
SIGNAL \P2|Add0~17_sumout\ : std_logic;
SIGNAL \P2|LessThan0~1_combout\ : std_logic;
SIGNAL \P2|rst_cnt[0]~0_combout\ : std_logic;
SIGNAL \P2|rst_cnt[0]~DUPLICATE_q\ : std_logic;
SIGNAL \P2|Add0~13_sumout\ : std_logic;
SIGNAL \U1|state~27_combout\ : std_logic;
SIGNAL \P2|rst_cnt[6]~DUPLICATE_q\ : std_logic;
SIGNAL \sda~input_o\ : std_logic;
SIGNAL \U1|U4|shift_reg[1]~DUPLICATE_q\ : std_logic;
SIGNAL \U1|start_sig~0_combout\ : std_logic;
SIGNAL \scl~input_o\ : std_logic;
SIGNAL \U1|U2|Equal0~0_combout\ : std_logic;
SIGNAL \U1|state~26_combout\ : std_logic;
SIGNAL \U1|state.send_recv~q\ : std_logic;
SIGNAL \U1|U3|Equal0~0_combout\ : std_logic;
SIGNAL \U1|state~36_combout\ : std_logic;
SIGNAL \U1|process_0~0_combout\ : std_logic;
SIGNAL \U1|state~29_combout\ : std_logic;
SIGNAL \U1|state~30_combout\ : std_logic;
SIGNAL \U1|state~33_combout\ : std_logic;
SIGNAL \U1|state~34_combout\ : std_logic;
SIGNAL \U1|state.addr~q\ : std_logic;
SIGNAL \U1|state~31_combout\ : std_logic;
SIGNAL \U1|state~32_combout\ : std_logic;
SIGNAL \U1|state.ack_addr~q\ : std_logic;
SIGNAL \U1|shift_reg[0]~feeder_combout\ : std_logic;
SIGNAL \U1|shift_reg[5]~0_combout\ : std_logic;
SIGNAL \U1|shift_reg[5]~1_combout\ : std_logic;
SIGNAL \U1|shift_reg[0]~2_combout\ : std_logic;
SIGNAL \U1|shift_reg[1]~feeder_combout\ : std_logic;
SIGNAL \U1|process_0~1_combout\ : std_logic;
SIGNAL \U1|process_0~2_combout\ : std_logic;
SIGNAL \U1|state~35_combout\ : std_logic;
SIGNAL \U1|state~37_combout\ : std_logic;
SIGNAL \U1|state.idle~q\ : std_logic;
SIGNAL \U1|bit_cnt[0]~0_combout\ : std_logic;
SIGNAL \U1|bit_cnt[0]~1_combout\ : std_logic;
SIGNAL \U1|bit_cnt[0]~5_combout\ : std_logic;
SIGNAL \U1|bit_cnt[1]~4_combout\ : std_logic;
SIGNAL \U1|Add0~0_combout\ : std_logic;
SIGNAL \U1|bit_cnt[2]~3_combout\ : std_logic;
SIGNAL \U1|bit_cnt[3]~2_combout\ : std_logic;
SIGNAL \U1|Equal0~0_combout\ : std_logic;
SIGNAL \U1|state~39_combout\ : std_logic;
SIGNAL \U1|state~42_combout\ : std_logic;
SIGNAL \U1|state.ack_addr_end~q\ : std_logic;
SIGNAL \U1|state~40_combout\ : std_logic;
SIGNAL \U1|state.recv_data~q\ : std_logic;
SIGNAL \U1|state~25_combout\ : std_logic;
SIGNAL \U1|state.stop~q\ : std_logic;
SIGNAL \P2|rst_cnt[4]~DUPLICATE_q\ : std_logic;
SIGNAL \U1|state~28_combout\ : std_logic;
SIGNAL \U1|state~38_combout\ : std_logic;
SIGNAL \U1|state.ack_data~q\ : std_logic;
SIGNAL \U1|state~41_combout\ : std_logic;
SIGNAL \U1|state.ack_data_end~q\ : std_logic;
SIGNAL \U1|sda~1_combout\ : std_logic;
SIGNAL \U1|busy~0_combout\ : std_logic;
SIGNAL \i2c_status~21_combout\ : std_logic;
SIGNAL \i2c_status.busy_wait~q\ : std_logic;
SIGNAL \i2c_status~22_combout\ : std_logic;
SIGNAL \i2c_status.idle~q\ : std_logic;
SIGNAL \i2c_status~23_combout\ : std_logic;
SIGNAL \i2c_status.idle~DUPLICATE_q\ : std_logic;
SIGNAL \i2c_status~19_combout\ : std_logic;
SIGNAL \i2c_status.addr~q\ : std_logic;
SIGNAL \i2c_status~18_combout\ : std_logic;
SIGNAL \i2c_status.data_hi~q\ : std_logic;
SIGNAL \i2c_status~20_combout\ : std_logic;
SIGNAL \i2c_status.data_low~q\ : std_logic;
SIGNAL \i2c_status~24_combout\ : std_logic;
SIGNAL \i2c_status.mem_write~q\ : std_logic;
SIGNAL \i2c_err~0_combout\ : std_logic;
SIGNAL \i2c_err~1_combout\ : std_logic;
SIGNAL \i2c_err~q\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \key[1]~input_o\ : std_logic;
SIGNAL \process_1~0_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \i2c_recv_cnt[1]~0_combout\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \sw[9]~input_o\ : std_logic;
SIGNAL \U1|data[3]~0_combout\ : std_logic;
SIGNAL \wrdata[1]~1_combout\ : std_logic;
SIGNAL \wraddress[0]~0_combout\ : std_logic;
SIGNAL \wraddress[1]~feeder_combout\ : std_logic;
SIGNAL \U1|data[2]~feeder_combout\ : std_logic;
SIGNAL \wraddress[2]~feeder_combout\ : std_logic;
SIGNAL \wraddress[3]~feeder_combout\ : std_logic;
SIGNAL \wraddress[5]~feeder_combout\ : std_logic;
SIGNAL \wraddress[6]~feeder_combout\ : std_logic;
SIGNAL \wraddress[7]~feeder_combout\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \sw[4]~input_o\ : std_logic;
SIGNAL \sw[5]~input_o\ : std_logic;
SIGNAL \sw[6]~input_o\ : std_logic;
SIGNAL \sw[7]~input_o\ : std_logic;
SIGNAL \wrdata[2]~feeder_combout\ : std_logic;
SIGNAL \wrdata[3]~feeder_combout\ : std_logic;
SIGNAL \wrdata[5]~feeder_combout\ : std_logic;
SIGNAL \wrdata[7]~feeder_combout\ : std_logic;
SIGNAL \wrdata[9]~0_combout\ : std_logic;
SIGNAL \wrdata[13]~feeder_combout\ : std_logic;
SIGNAL \wrdata[14]~feeder_combout\ : std_logic;
SIGNAL \wrdata[15]~feeder_combout\ : std_logic;
SIGNAL \D1|D1|CNV0|B1|cnt[0]~5_combout\ : std_logic;
SIGNAL \D1|D1|CNV0|B1|cnt[1]~3_combout\ : std_logic;
SIGNAL \D1|D1|CNV0|B1|cnt[3]~1_combout\ : std_logic;
SIGNAL \D1|D1|CNV0|B1|cnt[3]~DUPLICATE_q\ : std_logic;
SIGNAL \D1|D1|CNV0|B1|cnt[1]~DUPLICATE_q\ : std_logic;
SIGNAL \D1|D1|CNV0|B1|cnt[2]~DUPLICATE_q\ : std_logic;
SIGNAL \D1|D1|CNV0|B1|LessThan0~0_combout\ : std_logic;
SIGNAL \D1|D1|CNV0|B1|cnt[4]~0_combout\ : std_logic;
SIGNAL \D1|D1|CNV0|B1|cnt[2]~2_combout\ : std_logic;
SIGNAL \D1|D1|CNV0|B1|cnt[4]~4_combout\ : std_logic;
SIGNAL \D1|D1|bcd_hold[0][3]~0_combout\ : std_logic;
SIGNAL \D1|D1|led7_status~0_combout\ : std_logic;
SIGNAL \D1|D1|led7_status~q\ : std_logic;
SIGNAL \D1|D1|CNV0|D1|Mux1~0_combout\ : std_logic;
SIGNAL \D1|D1|CNV0|D1|Mux2~0_combout\ : std_logic;
SIGNAL \D1|D1|CNV0|B1|shiftreg[15]~feeder_combout\ : std_logic;
SIGNAL \D1|D1|CNV0|B1|shiftreg[14]~feeder_combout\ : std_logic;
SIGNAL \D1|D1|CNV0|B1|shiftreg[13]~feeder_combout\ : std_logic;
SIGNAL \D1|D1|CNV0|B1|shiftreg[12]~feeder_combout\ : std_logic;
SIGNAL \D1|D1|CNV0|B1|shiftreg[11]~feeder_combout\ : std_logic;
SIGNAL \D1|D1|CNV0|B1|shiftreg[10]~feeder_combout\ : std_logic;
SIGNAL \D1|D1|CNV0|B1|shiftreg[9]~feeder_combout\ : std_logic;
SIGNAL \D1|D1|CNV0|B1|shiftreg[8]~feeder_combout\ : std_logic;
SIGNAL \D1|D1|CNV0|B1|shiftreg[7]~feeder_combout\ : std_logic;
SIGNAL \D1|D1|CNV0|B1|shiftreg[6]~feeder_combout\ : std_logic;
SIGNAL \D1|D1|CNV0|B1|shiftreg[5]~feeder_combout\ : std_logic;
SIGNAL \D1|D1|CNV0|B1|shiftreg[4]~feeder_combout\ : std_logic;
SIGNAL \D1|D1|CNV0|B1|shiftreg[3]~feeder_combout\ : std_logic;
SIGNAL \D1|D1|CNV0|B1|shiftreg[2]~feeder_combout\ : std_logic;
SIGNAL \D1|D1|CNV0|B1|shiftreg[1]~feeder_combout\ : std_logic;
SIGNAL \D1|D1|CNV0|B1|shiftreg~0_combout\ : std_logic;
SIGNAL \D1|D1|CNV0|B1|shiftreg[16]~1_combout\ : std_logic;
SIGNAL \D1|D1|CNV0|D1|Mux3~0_combout\ : std_logic;
SIGNAL \D1|D1|CNV0|D1|Mux0~0_combout\ : std_logic;
SIGNAL \D1|D1|CNV0|D1|bcd[3]~DUPLICATE_q\ : std_logic;
SIGNAL \D1|D1|bcd_hold[0][3]~1_combout\ : std_logic;
SIGNAL \D1|D1|bcd_hold[0][3]~q\ : std_logic;
SIGNAL \D1|D1|CNV0|D1|bcd[0]~DUPLICATE_q\ : std_logic;
SIGNAL \D1|D1|bcd_hold[0][0]~q\ : std_logic;
SIGNAL \D1|D1|bcd_hold[0][2]~q\ : std_logic;
SIGNAL \D1|D1|bcd_hold[0][1]~q\ : std_logic;
SIGNAL \D1|hex0[0]~1_combout\ : std_logic;
SIGNAL \D1|hex0[0]~2_combout\ : std_logic;
SIGNAL \D1|hex0[6]~3_combout\ : std_logic;
SIGNAL \D1|hex0[1]~10_combout\ : std_logic;
SIGNAL \D1|hex0[1]~19_combout\ : std_logic;
SIGNAL \D1|hex0[2]~9_combout\ : std_logic;
SIGNAL \D1|hex0[2]~15_combout\ : std_logic;
SIGNAL \D1|D1|LED7_0|L2|y[3]~0_combout\ : std_logic;
SIGNAL \D1|hex0[3]~0_combout\ : std_logic;
SIGNAL \D1|hex0[4]~7_combout\ : std_logic;
SIGNAL \D1|hex0[4]~8_combout\ : std_logic;
SIGNAL \D1|hex0[5]~5_combout\ : std_logic;
SIGNAL \D1|hex0[5]~6_combout\ : std_logic;
SIGNAL \D1|hex0[6]~4_combout\ : std_logic;
SIGNAL \D1|hex0[6]~11_combout\ : std_logic;
SIGNAL \D1|D1|CNV0|D1|bcd[1]~DUPLICATE_q\ : std_logic;
SIGNAL \D1|D1|CNV0|D2|Mux3~0_combout\ : std_logic;
SIGNAL \D1|D1|CNV0|D2|Mux3~1_combout\ : std_logic;
SIGNAL \D1|D1|CNV0|D2|Mux0~0_combout\ : std_logic;
SIGNAL \D1|D1|CNV0|D2|Mux2~0_combout\ : std_logic;
SIGNAL \D1|D1|CNV0|D2|Mux1~0_combout\ : std_logic;
SIGNAL \D1|D1|bcd_hold[1][2]~q\ : std_logic;
SIGNAL \D1|D1|bcd_hold[1][1]~q\ : std_logic;
SIGNAL \D1|D1|bcd_hold[1][0]~q\ : std_logic;
SIGNAL \D1|hex1[0]~0_combout\ : std_logic;
SIGNAL \D1|D1|bcd_hold[1][3]~q\ : std_logic;
SIGNAL \D1|hex1[0]~1_combout\ : std_logic;
SIGNAL \D1|hex1[1]~4_combout\ : std_logic;
SIGNAL \D1|hex1[1]~11_combout\ : std_logic;
SIGNAL \D1|hex1[1]~20_combout\ : std_logic;
SIGNAL \D1|hex1[2]~10_combout\ : std_logic;
SIGNAL \D1|hex1[2]~16_combout\ : std_logic;
SIGNAL \D1|hex1[3]~2_combout\ : std_logic;
SIGNAL \D1|hex1[3]~3_combout\ : std_logic;
SIGNAL \D1|hex1[4]~8_combout\ : std_logic;
SIGNAL \D1|hex1[4]~9_combout\ : std_logic;
SIGNAL \D1|hex1[5]~6_combout\ : std_logic;
SIGNAL \D1|hex1[5]~7_combout\ : std_logic;
SIGNAL \D1|hex1[6]~5_combout\ : std_logic;
SIGNAL \D1|hex1[6]~12_combout\ : std_logic;
SIGNAL \D1|D1|CNV0|D3|bcd[1]~DUPLICATE_q\ : std_logic;
SIGNAL \D1|D1|CNV0|D3|Mux1~0_combout\ : std_logic;
SIGNAL \D1|D1|CNV0|D3|Mux3~0_combout\ : std_logic;
SIGNAL \D1|D1|CNV0|D3|Mux3~1_combout\ : std_logic;
SIGNAL \D1|D1|CNV0|D3|bcd[2]~DUPLICATE_q\ : std_logic;
SIGNAL \D1|D1|CNV0|D3|Mux2~0_combout\ : std_logic;
SIGNAL \D1|D1|CNV0|D3|Mux0~0_combout\ : std_logic;
SIGNAL \D1|D1|CNV0|D3|bcd[3]~DUPLICATE_q\ : std_logic;
SIGNAL \D1|D1|bcd_hold[2][3]~q\ : std_logic;
SIGNAL \D1|D1|bcd_hold[2][1]~DUPLICATE_q\ : std_logic;
SIGNAL \D1|D1|bcd_hold[2][2]~q\ : std_logic;
SIGNAL \D1|D1|bcd_hold[2][0]~DUPLICATE_q\ : std_logic;
SIGNAL \D1|hex2[0]~0_combout\ : std_logic;
SIGNAL \D1|hex2[0]~1_combout\ : std_logic;
SIGNAL \D1|D1|bcd_hold[2][0]~q\ : std_logic;
SIGNAL \D1|hex2[1]~4_combout\ : std_logic;
SIGNAL \D1|hex2[1]~11_combout\ : std_logic;
SIGNAL \D1|hex2[1]~20_combout\ : std_logic;
SIGNAL \D1|hex2[2]~10_combout\ : std_logic;
SIGNAL \D1|hex2[2]~16_combout\ : std_logic;
SIGNAL \D1|D1|bcd_hold[2][1]~q\ : std_logic;
SIGNAL \D1|hex2[3]~2_combout\ : std_logic;
SIGNAL \D1|hex2[3]~3_combout\ : std_logic;
SIGNAL \D1|hex2[4]~8_combout\ : std_logic;
SIGNAL \D1|hex2[4]~9_combout\ : std_logic;
SIGNAL \D1|hex2[5]~6_combout\ : std_logic;
SIGNAL \D1|hex2[5]~7_combout\ : std_logic;
SIGNAL \D1|hex2[6]~5_combout\ : std_logic;
SIGNAL \D1|hex2[6]~12_combout\ : std_logic;
SIGNAL \D1|D1|CNV0|D4|Mux2~0_combout\ : std_logic;
SIGNAL \D1|D1|CNV0|D4|Mux3~0_combout\ : std_logic;
SIGNAL \D1|D1|CNV0|D4|Mux3~1_combout\ : std_logic;
SIGNAL \D1|D1|CNV0|D4|bcd[0]~DUPLICATE_q\ : std_logic;
SIGNAL \D1|D1|CNV0|D4|Mux0~0_combout\ : std_logic;
SIGNAL \D1|D1|CNV0|D4|Mux1~0_combout\ : std_logic;
SIGNAL \D1|D1|CNV0|D4|bcd[2]~DUPLICATE_q\ : std_logic;
SIGNAL \D1|D1|bcd_hold[3][2]~q\ : std_logic;
SIGNAL \D1|D1|CNV0|D4|bcd[1]~DUPLICATE_q\ : std_logic;
SIGNAL \D1|D1|bcd_hold[3][1]~q\ : std_logic;
SIGNAL \D1|D1|bcd_hold[3][3]~q\ : std_logic;
SIGNAL \D1|D1|bcd_hold[3][0]~q\ : std_logic;
SIGNAL \D1|hex3[0]~1_combout\ : std_logic;
SIGNAL \D1|hex3[0]~2_combout\ : std_logic;
SIGNAL \D1|hex3[2]~3_combout\ : std_logic;
SIGNAL \D1|hex3[1]~10_combout\ : std_logic;
SIGNAL \D1|hex3[1]~19_combout\ : std_logic;
SIGNAL \D1|hex3[2]~9_combout\ : std_logic;
SIGNAL \D1|hex3[2]~15_combout\ : std_logic;
SIGNAL \D1|D1|LED7_3|L2|y[3]~0_combout\ : std_logic;
SIGNAL \D1|hex3[3]~0_combout\ : std_logic;
SIGNAL \D1|hex3[4]~7_combout\ : std_logic;
SIGNAL \D1|hex3[4]~8_combout\ : std_logic;
SIGNAL \D1|hex3[5]~5_combout\ : std_logic;
SIGNAL \D1|hex3[5]~6_combout\ : std_logic;
SIGNAL \D1|hex3[6]~4_combout\ : std_logic;
SIGNAL \D1|hex3[6]~11_combout\ : std_logic;
SIGNAL \D1|D1|CNV0|D5|bcd[2]~DUPLICATE_q\ : std_logic;
SIGNAL \D1|D1|CNV0|D5|Mux2~0_combout\ : std_logic;
SIGNAL \D1|D1|CNV0|D5|Mux0~0_combout\ : std_logic;
SIGNAL \D1|D1|CNV0|D5|bcd[3]~DUPLICATE_q\ : std_logic;
SIGNAL \D1|D1|CNV0|D5|Mux1~0_combout\ : std_logic;
SIGNAL \D1|D1|CNV0|D5|Mux3~0_combout\ : std_logic;
SIGNAL \D1|D1|CNV0|D5|Mux3~1_combout\ : std_logic;
SIGNAL \D1|D1|CNV0|D5|bcd[0]~DUPLICATE_q\ : std_logic;
SIGNAL \D1|D1|bcd_hold[4][0]~feeder_combout\ : std_logic;
SIGNAL \D1|D1|bcd_hold[4][0]~q\ : std_logic;
SIGNAL \D1|D1|bcd_hold[4][2]~q\ : std_logic;
SIGNAL \D1|D1|bcd_hold[4][3]~q\ : std_logic;
SIGNAL \D1|D1|bcd_hold[4][1]~q\ : std_logic;
SIGNAL \D1|hex4[0]~1_combout\ : std_logic;
SIGNAL \D1|hex4[0]~2_combout\ : std_logic;
SIGNAL \D1|hex4[6]~3_combout\ : std_logic;
SIGNAL \D1|hex4[1]~10_combout\ : std_logic;
SIGNAL \D1|hex4[1]~19_combout\ : std_logic;
SIGNAL \D1|hex4[2]~9_combout\ : std_logic;
SIGNAL \D1|hex4[2]~15_combout\ : std_logic;
SIGNAL \D1|BD4|L2|y[3]~0_combout\ : std_logic;
SIGNAL \D1|hex4[3]~0_combout\ : std_logic;
SIGNAL \D1|hex4[4]~7_combout\ : std_logic;
SIGNAL \D1|hex4[4]~8_combout\ : std_logic;
SIGNAL \D1|hex4[5]~5_combout\ : std_logic;
SIGNAL \D1|hex4[5]~6_combout\ : std_logic;
SIGNAL \D1|hex4[6]~4_combout\ : std_logic;
SIGNAL \D1|hex4[6]~11_combout\ : std_logic;
SIGNAL \D1|hex5[0]~0_combout\ : std_logic;
SIGNAL \D1|hex5[1]~1_combout\ : std_logic;
SIGNAL \D1|hex5[2]~2_combout\ : std_logic;
SIGNAL \D1|hex5[3]~3_combout\ : std_logic;
SIGNAL \D1|hex5[4]~4_combout\ : std_logic;
SIGNAL \D1|hex5[5]~5_combout\ : std_logic;
SIGNAL \D1|hex5[6]~6_combout\ : std_logic;
SIGNAL \P1|pll_inst|altera_pll_i|outclk_wire\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U1|U1|shift_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U1|bit_cnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U1|U3|shift_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U1|shift_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U1|U2|shift_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U1|data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \P1|pll_inst|altera_pll_i|fboutclk_wire\ : std_logic_vector(0 DOWNTO 0);
SIGNAL i2c_err_cnt : std_logic_vector(7 DOWNTO 0);
SIGNAL \P1|pll_inst|altera_pll_i|locked_wire\ : std_logic_vector(0 DOWNTO 0);
SIGNAL i2c_recv_cnt : std_logic_vector(7 DOWNTO 0);
SIGNAL \D1|D1|CNV0|D1|bcd\ : std_logic_vector(3 DOWNTO 0);
SIGNAL wrdata : std_logic_vector(15 DOWNTO 0);
SIGNAL \D1|D1|CNV0|D2|bcd\ : std_logic_vector(3 DOWNTO 0);
SIGNAL wraddress : std_logic_vector(7 DOWNTO 0);
SIGNAL \D1|D1|CNV0|D5|bcd\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U1|U4|shift_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \P2|rst_cnt\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \M1|altsyncram_component|auto_generated|q_b\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \D1|D1|CNV0|D3|bcd\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \D1|D1|CNV0|D4|bcd\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \D1|D1|CNV0|B1|shiftreg\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \D1|D1|CNV0|B1|cnt\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \M1|altsyncram_component|auto_generated|ALT_INV_q_b\ : std_logic_vector(15 DOWNTO 0);
SIGNAL ALT_INV_i2c_recv_cnt : std_logic_vector(4 DOWNTO 0);
SIGNAL ALT_INV_i2c_err_cnt : std_logic_vector(3 DOWNTO 0);
SIGNAL \D1|D1|ALT_INV_bcd_hold[2][3]~q\ : std_logic;
SIGNAL \D1|D1|ALT_INV_bcd_hold[2][1]~q\ : std_logic;
SIGNAL \D1|D1|ALT_INV_bcd_hold[2][0]~q\ : std_logic;
SIGNAL \D1|ALT_INV_hex2[0]~0_combout\ : std_logic;
SIGNAL \D1|ALT_INV_hex1[3]~2_combout\ : std_logic;
SIGNAL \D1|D1|ALT_INV_bcd_hold[1][2]~q\ : std_logic;
SIGNAL \D1|D1|ALT_INV_bcd_hold[1][3]~q\ : std_logic;
SIGNAL \D1|D1|ALT_INV_bcd_hold[1][1]~q\ : std_logic;
SIGNAL \D1|D1|ALT_INV_bcd_hold[1][0]~q\ : std_logic;
SIGNAL \D1|ALT_INV_hex1[0]~0_combout\ : std_logic;
SIGNAL \D1|D1|LED7_0|L2|ALT_INV_y[3]~0_combout\ : std_logic;
SIGNAL \D1|D1|ALT_INV_bcd_hold[0][2]~q\ : std_logic;
SIGNAL \D1|D1|ALT_INV_bcd_hold[0][3]~q\ : std_logic;
SIGNAL \D1|D1|ALT_INV_bcd_hold[0][1]~q\ : std_logic;
SIGNAL \D1|D1|ALT_INV_bcd_hold[0][0]~q\ : std_logic;
SIGNAL \D1|D1|CNV0|B1|ALT_INV_shiftreg\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \D1|D1|CNV0|D5|ALT_INV_bcd\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \D1|D1|CNV0|D4|ALT_INV_bcd\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \D1|D1|CNV0|D3|ALT_INV_bcd\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \D1|D1|CNV0|D2|ALT_INV_bcd\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \D1|D1|CNV0|D1|ALT_INV_bcd\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \D1|ALT_INV_hex4[0]~1_combout\ : std_logic;
SIGNAL \D1|ALT_INV_hex2[3]~2_combout\ : std_logic;
SIGNAL \D1|ALT_INV_hex3[0]~1_combout\ : std_logic;
SIGNAL \D1|ALT_INV_hex0[0]~1_combout\ : std_logic;
SIGNAL \U1|U1|ALT_INV_shift_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U1|ALT_INV_bit_cnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U1|ALT_INV_state.recv_data~q\ : std_logic;
SIGNAL \U1|ALT_INV_state.stop~q\ : std_logic;
SIGNAL \U1|ALT_INV_state.ack_data~q\ : std_logic;
SIGNAL \U1|U3|ALT_INV_shift_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U1|U4|ALT_INV_shift_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U1|ALT_INV_shift_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U1|U2|ALT_INV_shift_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U1|ALT_INV_state.ack_data_end~q\ : std_logic;
SIGNAL \U1|ALT_INV_state.ack_addr_end~q\ : std_logic;
SIGNAL \D1|D1|CNV0|D5|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \D1|D1|CNV0|D4|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \D1|D1|CNV0|D3|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \ALT_INV_i2c_status.data_hi~q\ : std_logic;
SIGNAL \D1|D1|CNV0|D2|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \U1|ALT_INV_data\ : std_logic_vector(7 DOWNTO 1);
SIGNAL \ALT_INV_i2c_status.addr~q\ : std_logic;
SIGNAL \U1|ALT_INV_state.send_recv~q\ : std_logic;
SIGNAL \ALT_INV_i2c_status.data_low~q\ : std_logic;
SIGNAL \ALT_INV_i2c_status.busy_wait~q\ : std_logic;
SIGNAL \ALT_INV_i2c_status.idle~q\ : std_logic;
SIGNAL \U1|ALT_INV_state.ack_addr~q\ : std_logic;
SIGNAL \U1|ALT_INV_state.addr~q\ : std_logic;
SIGNAL \U1|ALT_INV_state.idle~q\ : std_logic;
SIGNAL \D1|D1|CNV0|B1|ALT_INV_cnt\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \D1|D1|ALT_INV_led7_status~q\ : std_logic;
SIGNAL \ALT_INV_i2c_status.mem_write~q\ : std_logic;
SIGNAL \ALT_INV_i2c_err~q\ : std_logic;
SIGNAL \P2|ALT_INV_rst_cnt\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \D1|BD4|L2|ALT_INV_y[3]~0_combout\ : std_logic;
SIGNAL \D1|D1|ALT_INV_bcd_hold[4][2]~q\ : std_logic;
SIGNAL \D1|D1|ALT_INV_bcd_hold[4][3]~q\ : std_logic;
SIGNAL \D1|D1|ALT_INV_bcd_hold[4][1]~q\ : std_logic;
SIGNAL \D1|D1|ALT_INV_bcd_hold[4][0]~q\ : std_logic;
SIGNAL \D1|D1|LED7_3|L2|ALT_INV_y[3]~0_combout\ : std_logic;
SIGNAL \D1|D1|ALT_INV_bcd_hold[3][2]~q\ : std_logic;
SIGNAL \D1|D1|ALT_INV_bcd_hold[3][3]~q\ : std_logic;
SIGNAL \D1|D1|ALT_INV_bcd_hold[3][1]~q\ : std_logic;
SIGNAL \D1|D1|ALT_INV_bcd_hold[3][0]~q\ : std_logic;
SIGNAL \D1|D1|ALT_INV_bcd_hold[2][2]~q\ : std_logic;
SIGNAL \ALT_INV_i2c_status~22_combout\ : std_logic;
SIGNAL \D1|D1|CNV0|B1|ALT_INV_cnt[4]~0_combout\ : std_logic;
SIGNAL \U1|ALT_INV_state~39_combout\ : std_logic;
SIGNAL \U1|ALT_INV_bit_cnt[0]~1_combout\ : std_logic;
SIGNAL \U1|ALT_INV_bit_cnt[0]~0_combout\ : std_logic;
SIGNAL \U1|ALT_INV_sda~1_combout\ : std_logic;
SIGNAL \U1|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \D1|D1|ALT_INV_bcd_hold[0][3]~0_combout\ : std_logic;
SIGNAL \D1|D1|CNV0|B1|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \U1|ALT_INV_busy~0_combout\ : std_logic;
SIGNAL \ALT_INV_i2c_err~0_combout\ : std_logic;
SIGNAL \U1|ALT_INV_state~36_combout\ : std_logic;
SIGNAL \U1|ALT_INV_state~35_combout\ : std_logic;
SIGNAL \U1|ALT_INV_process_0~2_combout\ : std_logic;
SIGNAL \U1|ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \U1|ALT_INV_state~33_combout\ : std_logic;
SIGNAL \U1|ALT_INV_state~31_combout\ : std_logic;
SIGNAL \U1|ALT_INV_state~30_combout\ : std_logic;
SIGNAL \U1|ALT_INV_state~29_combout\ : std_logic;
SIGNAL \U1|ALT_INV_state~28_combout\ : std_logic;
SIGNAL \U1|ALT_INV_state~27_combout\ : std_logic;
SIGNAL \U1|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \U1|U2|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \U1|ALT_INV_shift_reg[5]~1_combout\ : std_logic;
SIGNAL \U1|ALT_INV_shift_reg[5]~0_combout\ : std_logic;
SIGNAL \U1|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \U1|U3|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \U1|ALT_INV_start_sig~0_combout\ : std_logic;
SIGNAL \P2|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \P2|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \D1|ALT_INV_hex4[1]~10_combout\ : std_logic;
SIGNAL \D1|ALT_INV_hex4[2]~9_combout\ : std_logic;
SIGNAL \D1|ALT_INV_hex4[4]~7_combout\ : std_logic;
SIGNAL \D1|ALT_INV_hex4[5]~5_combout\ : std_logic;
SIGNAL \D1|ALT_INV_hex4[6]~4_combout\ : std_logic;
SIGNAL \D1|ALT_INV_hex4[6]~3_combout\ : std_logic;
SIGNAL \D1|ALT_INV_hex1[1]~11_combout\ : std_logic;
SIGNAL \D1|ALT_INV_hex1[2]~10_combout\ : std_logic;
SIGNAL \D1|ALT_INV_hex1[4]~8_combout\ : std_logic;
SIGNAL \D1|ALT_INV_hex1[5]~6_combout\ : std_logic;
SIGNAL \D1|ALT_INV_hex1[6]~5_combout\ : std_logic;
SIGNAL \D1|ALT_INV_hex1[1]~4_combout\ : std_logic;
SIGNAL \D1|ALT_INV_hex2[1]~11_combout\ : std_logic;
SIGNAL \D1|ALT_INV_hex2[2]~10_combout\ : std_logic;
SIGNAL \D1|ALT_INV_hex2[4]~8_combout\ : std_logic;
SIGNAL \D1|ALT_INV_hex2[5]~6_combout\ : std_logic;
SIGNAL \D1|ALT_INV_hex2[6]~5_combout\ : std_logic;
SIGNAL \D1|ALT_INV_hex2[1]~4_combout\ : std_logic;
SIGNAL \D1|ALT_INV_hex0[1]~10_combout\ : std_logic;
SIGNAL \D1|ALT_INV_hex0[2]~9_combout\ : std_logic;
SIGNAL \D1|ALT_INV_hex0[4]~7_combout\ : std_logic;
SIGNAL \D1|ALT_INV_hex0[5]~5_combout\ : std_logic;
SIGNAL \D1|ALT_INV_hex0[6]~4_combout\ : std_logic;
SIGNAL \D1|ALT_INV_hex0[6]~3_combout\ : std_logic;
SIGNAL \D1|ALT_INV_hex3[1]~10_combout\ : std_logic;
SIGNAL \D1|ALT_INV_hex3[2]~9_combout\ : std_logic;
SIGNAL \D1|ALT_INV_hex3[4]~7_combout\ : std_logic;
SIGNAL \D1|ALT_INV_hex3[5]~5_combout\ : std_logic;
SIGNAL \D1|ALT_INV_hex3[6]~4_combout\ : std_logic;
SIGNAL \D1|ALT_INV_hex3[2]~3_combout\ : std_logic;
SIGNAL \U1|U4|ALT_INV_shift_reg[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_i2c_status.idle~DUPLICATE_q\ : std_logic;
SIGNAL \D1|D1|CNV0|B1|ALT_INV_cnt[3]~DUPLICATE_q\ : std_logic;
SIGNAL \D1|D1|CNV0|B1|ALT_INV_cnt[2]~DUPLICATE_q\ : std_logic;
SIGNAL \D1|D1|CNV0|B1|ALT_INV_cnt[1]~DUPLICATE_q\ : std_logic;
SIGNAL \P2|ALT_INV_rst_cnt[6]~DUPLICATE_q\ : std_logic;
SIGNAL \P2|ALT_INV_rst_cnt[0]~DUPLICATE_q\ : std_logic;
SIGNAL \P2|ALT_INV_rst_cnt[4]~DUPLICATE_q\ : std_logic;
SIGNAL \D1|D1|ALT_INV_bcd_hold[2][1]~DUPLICATE_q\ : std_logic;
SIGNAL \D1|D1|ALT_INV_bcd_hold[2][0]~DUPLICATE_q\ : std_logic;
SIGNAL \D1|D1|CNV0|D5|ALT_INV_bcd[2]~DUPLICATE_q\ : std_logic;
SIGNAL \D1|D1|CNV0|D5|ALT_INV_bcd[3]~DUPLICATE_q\ : std_logic;
SIGNAL \D1|D1|CNV0|D5|ALT_INV_bcd[0]~DUPLICATE_q\ : std_logic;
SIGNAL \D1|D1|CNV0|D4|ALT_INV_bcd[2]~DUPLICATE_q\ : std_logic;
SIGNAL \D1|D1|CNV0|D4|ALT_INV_bcd[1]~DUPLICATE_q\ : std_logic;
SIGNAL \D1|D1|CNV0|D4|ALT_INV_bcd[0]~DUPLICATE_q\ : std_logic;
SIGNAL \D1|D1|CNV0|D3|ALT_INV_bcd[2]~DUPLICATE_q\ : std_logic;
SIGNAL \D1|D1|CNV0|D3|ALT_INV_bcd[3]~DUPLICATE_q\ : std_logic;
SIGNAL \D1|D1|CNV0|D3|ALT_INV_bcd[1]~DUPLICATE_q\ : std_logic;
SIGNAL \D1|D1|CNV0|D1|ALT_INV_bcd[3]~DUPLICATE_q\ : std_logic;
SIGNAL \D1|D1|CNV0|D1|ALT_INV_bcd[1]~DUPLICATE_q\ : std_logic;
SIGNAL \D1|D1|CNV0|D1|ALT_INV_bcd[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_scl~input_o\ : std_logic;
SIGNAL \ALT_INV_key[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_sda~input_o\ : std_logic;
SIGNAL \ALT_INV_process_1~0_combout\ : std_logic;

BEGIN

ww_clk_i <= clk_i;
ww_sw <= sw;
ww_key <= key;
led <= ww_led;
hex0 <= ww_hex0;
hex1 <= ww_hex1;
hex2 <= ww_hex2;
hex3 <= ww_hex3;
hex4 <= ww_hex4;
hex5 <= ww_hex5;
ww_scl <= scl;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\M1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & wrdata(15) & wrdata(14) & 
wrdata(13) & wrdata(12) & wrdata(11) & wrdata(10) & wrdata(9) & wrdata(8) & wrdata(7) & wrdata(6) & wrdata(5) & wrdata(4) & wrdata(3) & wrdata(2) & wrdata(1) & wrdata(0));

\M1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (wraddress(7) & wraddress(6) & wraddress(5) & wraddress(4) & wraddress(3) & wraddress(2) & wraddress(1) & wraddress(0));

\M1|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\sw[7]~input_o\ & \sw[6]~input_o\ & \sw[5]~input_o\ & \sw[4]~input_o\ & \sw[3]~input_o\ & \sw[2]~input_o\ & \sw[1]~input_o\ & \sw[0]~input_o\);

\M1|altsyncram_component|auto_generated|q_b\(0) <= \M1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\M1|altsyncram_component|auto_generated|q_b\(1) <= \M1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\M1|altsyncram_component|auto_generated|q_b\(2) <= \M1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\M1|altsyncram_component|auto_generated|q_b\(3) <= \M1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\M1|altsyncram_component|auto_generated|q_b\(4) <= \M1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\M1|altsyncram_component|auto_generated|q_b\(5) <= \M1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\M1|altsyncram_component|auto_generated|q_b\(6) <= \M1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\M1|altsyncram_component|auto_generated|q_b\(7) <= \M1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\M1|altsyncram_component|auto_generated|q_b\(8) <= \M1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\M1|altsyncram_component|auto_generated|q_b\(9) <= \M1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\M1|altsyncram_component|auto_generated|q_b\(10) <= \M1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\M1|altsyncram_component|auto_generated|q_b\(11) <= \M1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\M1|altsyncram_component|auto_generated|q_b\(12) <= \M1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\M1|altsyncram_component|auto_generated|q_b\(13) <= \M1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\M1|altsyncram_component|auto_generated|q_b\(14) <= \M1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\M1|altsyncram_component|auto_generated|q_b\(15) <= \M1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);

\P1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH0\ <= \P1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(0);
\P1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH1\ <= \P1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(1);
\P1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH2\ <= \P1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(2);
\P1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH3\ <= \P1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(3);
\P1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH4\ <= \P1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(4);
\P1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH5\ <= \P1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(5);
\P1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH6\ <= \P1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(6);
\P1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH7\ <= \P1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(7);

\P1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI0\ <= \P1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(0);
\P1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI1\ <= \P1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(1);
\P1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI2\ <= \P1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(2);
\P1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI3\ <= \P1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(3);
\P1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI4\ <= \P1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(4);
\P1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI5\ <= \P1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(5);
\P1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI6\ <= \P1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(6);
\P1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI7\ <= \P1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(7);

\P1|pll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_CLKIN_bus\ <= (gnd & gnd & gnd & \clk_i~input_o\);

\P1|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_MHI_bus\ <= (\P1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI7\ & \P1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI6\ & 
\P1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI5\ & \P1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI4\ & \P1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI3\ & 
\P1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI2\ & \P1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI1\ & \P1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI0\);

\P1|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIGSHIFTEN6\ <= \P1|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_SHIFTEN_bus\(6);

\P1|pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER_VCO0PH_bus\ <= (\P1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH7\ & \P1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH6\ & 
\P1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH5\ & \P1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH4\ & \P1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH3\ & 
\P1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH2\ & \P1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH1\ & \P1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH0\);
\M1|altsyncram_component|auto_generated|ALT_INV_q_b\(14) <= NOT \M1|altsyncram_component|auto_generated|q_b\(14);
\M1|altsyncram_component|auto_generated|ALT_INV_q_b\(15) <= NOT \M1|altsyncram_component|auto_generated|q_b\(15);
\M1|altsyncram_component|auto_generated|ALT_INV_q_b\(0) <= NOT \M1|altsyncram_component|auto_generated|q_b\(0);
ALT_INV_i2c_recv_cnt(4) <= NOT i2c_recv_cnt(4);
ALT_INV_i2c_recv_cnt(3) <= NOT i2c_recv_cnt(3);
ALT_INV_i2c_recv_cnt(2) <= NOT i2c_recv_cnt(2);
ALT_INV_i2c_recv_cnt(1) <= NOT i2c_recv_cnt(1);
ALT_INV_i2c_recv_cnt(0) <= NOT i2c_recv_cnt(0);
ALT_INV_i2c_err_cnt(3) <= NOT i2c_err_cnt(3);
ALT_INV_i2c_err_cnt(2) <= NOT i2c_err_cnt(2);
ALT_INV_i2c_err_cnt(1) <= NOT i2c_err_cnt(1);
ALT_INV_i2c_err_cnt(0) <= NOT i2c_err_cnt(0);
\D1|D1|ALT_INV_bcd_hold[2][3]~q\ <= NOT \D1|D1|bcd_hold[2][3]~q\;
\D1|D1|ALT_INV_bcd_hold[2][1]~q\ <= NOT \D1|D1|bcd_hold[2][1]~q\;
\D1|D1|ALT_INV_bcd_hold[2][0]~q\ <= NOT \D1|D1|bcd_hold[2][0]~q\;
\D1|ALT_INV_hex2[0]~0_combout\ <= NOT \D1|hex2[0]~0_combout\;
\D1|ALT_INV_hex1[3]~2_combout\ <= NOT \D1|hex1[3]~2_combout\;
\D1|D1|ALT_INV_bcd_hold[1][2]~q\ <= NOT \D1|D1|bcd_hold[1][2]~q\;
\D1|D1|ALT_INV_bcd_hold[1][3]~q\ <= NOT \D1|D1|bcd_hold[1][3]~q\;
\D1|D1|ALT_INV_bcd_hold[1][1]~q\ <= NOT \D1|D1|bcd_hold[1][1]~q\;
\D1|D1|ALT_INV_bcd_hold[1][0]~q\ <= NOT \D1|D1|bcd_hold[1][0]~q\;
\D1|ALT_INV_hex1[0]~0_combout\ <= NOT \D1|hex1[0]~0_combout\;
\D1|D1|LED7_0|L2|ALT_INV_y[3]~0_combout\ <= NOT \D1|D1|LED7_0|L2|y[3]~0_combout\;
\D1|D1|ALT_INV_bcd_hold[0][2]~q\ <= NOT \D1|D1|bcd_hold[0][2]~q\;
\D1|D1|ALT_INV_bcd_hold[0][3]~q\ <= NOT \D1|D1|bcd_hold[0][3]~q\;
\D1|D1|ALT_INV_bcd_hold[0][1]~q\ <= NOT \D1|D1|bcd_hold[0][1]~q\;
\D1|D1|ALT_INV_bcd_hold[0][0]~q\ <= NOT \D1|D1|bcd_hold[0][0]~q\;
\D1|D1|CNV0|B1|ALT_INV_shiftreg\(0) <= NOT \D1|D1|CNV0|B1|shiftreg\(0);
\D1|D1|CNV0|B1|ALT_INV_shiftreg\(15) <= NOT \D1|D1|CNV0|B1|shiftreg\(15);
\D1|D1|CNV0|D5|ALT_INV_bcd\(2) <= NOT \D1|D1|CNV0|D5|bcd\(2);
\D1|D1|CNV0|D5|ALT_INV_bcd\(3) <= NOT \D1|D1|CNV0|D5|bcd\(3);
\D1|D1|CNV0|D5|ALT_INV_bcd\(1) <= NOT \D1|D1|CNV0|D5|bcd\(1);
\D1|D1|CNV0|D5|ALT_INV_bcd\(0) <= NOT \D1|D1|CNV0|D5|bcd\(0);
\D1|D1|CNV0|D4|ALT_INV_bcd\(2) <= NOT \D1|D1|CNV0|D4|bcd\(2);
\D1|D1|CNV0|D4|ALT_INV_bcd\(3) <= NOT \D1|D1|CNV0|D4|bcd\(3);
\D1|D1|CNV0|D4|ALT_INV_bcd\(1) <= NOT \D1|D1|CNV0|D4|bcd\(1);
\D1|D1|CNV0|D4|ALT_INV_bcd\(0) <= NOT \D1|D1|CNV0|D4|bcd\(0);
\D1|D1|CNV0|D3|ALT_INV_bcd\(2) <= NOT \D1|D1|CNV0|D3|bcd\(2);
\D1|D1|CNV0|D3|ALT_INV_bcd\(3) <= NOT \D1|D1|CNV0|D3|bcd\(3);
\D1|D1|CNV0|D3|ALT_INV_bcd\(1) <= NOT \D1|D1|CNV0|D3|bcd\(1);
\D1|D1|CNV0|D3|ALT_INV_bcd\(0) <= NOT \D1|D1|CNV0|D3|bcd\(0);
\D1|D1|CNV0|D2|ALT_INV_bcd\(2) <= NOT \D1|D1|CNV0|D2|bcd\(2);
\D1|D1|CNV0|D2|ALT_INV_bcd\(3) <= NOT \D1|D1|CNV0|D2|bcd\(3);
\D1|D1|CNV0|D2|ALT_INV_bcd\(1) <= NOT \D1|D1|CNV0|D2|bcd\(1);
\D1|D1|CNV0|D2|ALT_INV_bcd\(0) <= NOT \D1|D1|CNV0|D2|bcd\(0);
\D1|D1|CNV0|D1|ALT_INV_bcd\(2) <= NOT \D1|D1|CNV0|D1|bcd\(2);
\D1|D1|CNV0|D1|ALT_INV_bcd\(3) <= NOT \D1|D1|CNV0|D1|bcd\(3);
\D1|D1|CNV0|D1|ALT_INV_bcd\(1) <= NOT \D1|D1|CNV0|D1|bcd\(1);
\D1|D1|CNV0|D1|ALT_INV_bcd\(0) <= NOT \D1|D1|CNV0|D1|bcd\(0);
\M1|altsyncram_component|auto_generated|ALT_INV_q_b\(1) <= NOT \M1|altsyncram_component|auto_generated|q_b\(1);
\M1|altsyncram_component|auto_generated|ALT_INV_q_b\(2) <= NOT \M1|altsyncram_component|auto_generated|q_b\(2);
\M1|altsyncram_component|auto_generated|ALT_INV_q_b\(3) <= NOT \M1|altsyncram_component|auto_generated|q_b\(3);
\M1|altsyncram_component|auto_generated|ALT_INV_q_b\(4) <= NOT \M1|altsyncram_component|auto_generated|q_b\(4);
\M1|altsyncram_component|auto_generated|ALT_INV_q_b\(5) <= NOT \M1|altsyncram_component|auto_generated|q_b\(5);
\M1|altsyncram_component|auto_generated|ALT_INV_q_b\(6) <= NOT \M1|altsyncram_component|auto_generated|q_b\(6);
\M1|altsyncram_component|auto_generated|ALT_INV_q_b\(7) <= NOT \M1|altsyncram_component|auto_generated|q_b\(7);
\M1|altsyncram_component|auto_generated|ALT_INV_q_b\(8) <= NOT \M1|altsyncram_component|auto_generated|q_b\(8);
\M1|altsyncram_component|auto_generated|ALT_INV_q_b\(9) <= NOT \M1|altsyncram_component|auto_generated|q_b\(9);
\M1|altsyncram_component|auto_generated|ALT_INV_q_b\(10) <= NOT \M1|altsyncram_component|auto_generated|q_b\(10);
\M1|altsyncram_component|auto_generated|ALT_INV_q_b\(11) <= NOT \M1|altsyncram_component|auto_generated|q_b\(11);
\M1|altsyncram_component|auto_generated|ALT_INV_q_b\(12) <= NOT \M1|altsyncram_component|auto_generated|q_b\(12);
\M1|altsyncram_component|auto_generated|ALT_INV_q_b\(13) <= NOT \M1|altsyncram_component|auto_generated|q_b\(13);
\D1|ALT_INV_hex4[0]~1_combout\ <= NOT \D1|hex4[0]~1_combout\;
\D1|ALT_INV_hex2[3]~2_combout\ <= NOT \D1|hex2[3]~2_combout\;
\D1|ALT_INV_hex3[0]~1_combout\ <= NOT \D1|hex3[0]~1_combout\;
\D1|ALT_INV_hex0[0]~1_combout\ <= NOT \D1|hex0[0]~1_combout\;
\U1|U1|ALT_INV_shift_reg\(3) <= NOT \U1|U1|shift_reg\(3);
\U1|U1|ALT_INV_shift_reg\(1) <= NOT \U1|U1|shift_reg\(1);
\U1|U1|ALT_INV_shift_reg\(0) <= NOT \U1|U1|shift_reg\(0);
\U1|U1|ALT_INV_shift_reg\(2) <= NOT \U1|U1|shift_reg\(2);
\U1|ALT_INV_bit_cnt\(3) <= NOT \U1|bit_cnt\(3);
\U1|ALT_INV_bit_cnt\(1) <= NOT \U1|bit_cnt\(1);
\U1|ALT_INV_bit_cnt\(2) <= NOT \U1|bit_cnt\(2);
\U1|ALT_INV_bit_cnt\(0) <= NOT \U1|bit_cnt\(0);
\U1|ALT_INV_state.recv_data~q\ <= NOT \U1|state.recv_data~q\;
\U1|ALT_INV_state.stop~q\ <= NOT \U1|state.stop~q\;
\U1|ALT_INV_state.ack_data~q\ <= NOT \U1|state.ack_data~q\;
\U1|U3|ALT_INV_shift_reg\(3) <= NOT \U1|U3|shift_reg\(3);
\U1|U3|ALT_INV_shift_reg\(1) <= NOT \U1|U3|shift_reg\(1);
\U1|U3|ALT_INV_shift_reg\(0) <= NOT \U1|U3|shift_reg\(0);
\U1|U3|ALT_INV_shift_reg\(2) <= NOT \U1|U3|shift_reg\(2);
\U1|U4|ALT_INV_shift_reg\(3) <= NOT \U1|U4|shift_reg\(3);
\U1|U4|ALT_INV_shift_reg\(2) <= NOT \U1|U4|shift_reg\(2);
\U1|U4|ALT_INV_shift_reg\(0) <= NOT \U1|U4|shift_reg\(0);
\U1|ALT_INV_shift_reg\(7) <= NOT \U1|shift_reg\(7);
\U1|ALT_INV_shift_reg\(5) <= NOT \U1|shift_reg\(5);
\U1|ALT_INV_shift_reg\(6) <= NOT \U1|shift_reg\(6);
\U1|ALT_INV_shift_reg\(2) <= NOT \U1|shift_reg\(2);
\U1|ALT_INV_shift_reg\(0) <= NOT \U1|shift_reg\(0);
\U1|ALT_INV_shift_reg\(4) <= NOT \U1|shift_reg\(4);
\U1|ALT_INV_shift_reg\(1) <= NOT \U1|shift_reg\(1);
\U1|ALT_INV_shift_reg\(3) <= NOT \U1|shift_reg\(3);
\U1|U2|ALT_INV_shift_reg\(3) <= NOT \U1|U2|shift_reg\(3);
\U1|U2|ALT_INV_shift_reg\(1) <= NOT \U1|U2|shift_reg\(1);
\U1|U2|ALT_INV_shift_reg\(2) <= NOT \U1|U2|shift_reg\(2);
\U1|U2|ALT_INV_shift_reg\(0) <= NOT \U1|U2|shift_reg\(0);
\U1|ALT_INV_state.ack_data_end~q\ <= NOT \U1|state.ack_data_end~q\;
\U1|ALT_INV_state.ack_addr_end~q\ <= NOT \U1|state.ack_addr_end~q\;
\D1|D1|CNV0|D5|ALT_INV_Mux3~0_combout\ <= NOT \D1|D1|CNV0|D5|Mux3~0_combout\;
\D1|D1|CNV0|D4|ALT_INV_Mux3~0_combout\ <= NOT \D1|D1|CNV0|D4|Mux3~0_combout\;
\D1|D1|CNV0|D3|ALT_INV_Mux3~0_combout\ <= NOT \D1|D1|CNV0|D3|Mux3~0_combout\;
\ALT_INV_i2c_status.data_hi~q\ <= NOT \i2c_status.data_hi~q\;
\D1|D1|CNV0|D2|ALT_INV_Mux3~0_combout\ <= NOT \D1|D1|CNV0|D2|Mux3~0_combout\;
\U1|ALT_INV_data\(7) <= NOT \U1|data\(7);
\U1|ALT_INV_data\(6) <= NOT \U1|data\(6);
\U1|ALT_INV_data\(5) <= NOT \U1|data\(5);
\U1|ALT_INV_data\(3) <= NOT \U1|data\(3);
\U1|ALT_INV_data\(2) <= NOT \U1|data\(2);
\U1|ALT_INV_data\(1) <= NOT \U1|data\(1);
\ALT_INV_i2c_status.addr~q\ <= NOT \i2c_status.addr~q\;
\D1|D1|CNV0|B1|ALT_INV_shiftreg\(16) <= NOT \D1|D1|CNV0|B1|shiftreg\(16);
\U1|ALT_INV_state.send_recv~q\ <= NOT \U1|state.send_recv~q\;
\ALT_INV_i2c_status.data_low~q\ <= NOT \i2c_status.data_low~q\;
\ALT_INV_i2c_status.busy_wait~q\ <= NOT \i2c_status.busy_wait~q\;
\ALT_INV_i2c_status.idle~q\ <= NOT \i2c_status.idle~q\;
\U1|ALT_INV_state.ack_addr~q\ <= NOT \U1|state.ack_addr~q\;
\U1|ALT_INV_state.addr~q\ <= NOT \U1|state.addr~q\;
\U1|ALT_INV_state.idle~q\ <= NOT \U1|state.idle~q\;
\D1|D1|CNV0|B1|ALT_INV_cnt\(4) <= NOT \D1|D1|CNV0|B1|cnt\(4);
\D1|D1|ALT_INV_led7_status~q\ <= NOT \D1|D1|led7_status~q\;
\D1|D1|CNV0|B1|ALT_INV_cnt\(0) <= NOT \D1|D1|CNV0|B1|cnt\(0);
\D1|D1|CNV0|B1|ALT_INV_cnt\(3) <= NOT \D1|D1|CNV0|B1|cnt\(3);
\D1|D1|CNV0|B1|ALT_INV_cnt\(2) <= NOT \D1|D1|CNV0|B1|cnt\(2);
\D1|D1|CNV0|B1|ALT_INV_cnt\(1) <= NOT \D1|D1|CNV0|B1|cnt\(1);
\ALT_INV_i2c_status.mem_write~q\ <= NOT \i2c_status.mem_write~q\;
\ALT_INV_i2c_err~q\ <= NOT \i2c_err~q\;
\P2|ALT_INV_rst_cnt\(5) <= NOT \P2|rst_cnt\(5);
\P2|ALT_INV_rst_cnt\(6) <= NOT \P2|rst_cnt\(6);
\P2|ALT_INV_rst_cnt\(0) <= NOT \P2|rst_cnt\(0);
\P2|ALT_INV_rst_cnt\(1) <= NOT \P2|rst_cnt\(1);
\P2|ALT_INV_rst_cnt\(3) <= NOT \P2|rst_cnt\(3);
\P2|ALT_INV_rst_cnt\(2) <= NOT \P2|rst_cnt\(2);
\P2|ALT_INV_rst_cnt\(4) <= NOT \P2|rst_cnt\(4);
\D1|BD4|L2|ALT_INV_y[3]~0_combout\ <= NOT \D1|BD4|L2|y[3]~0_combout\;
\D1|D1|ALT_INV_bcd_hold[4][2]~q\ <= NOT \D1|D1|bcd_hold[4][2]~q\;
\D1|D1|ALT_INV_bcd_hold[4][3]~q\ <= NOT \D1|D1|bcd_hold[4][3]~q\;
\D1|D1|ALT_INV_bcd_hold[4][1]~q\ <= NOT \D1|D1|bcd_hold[4][1]~q\;
\D1|D1|ALT_INV_bcd_hold[4][0]~q\ <= NOT \D1|D1|bcd_hold[4][0]~q\;
\D1|D1|LED7_3|L2|ALT_INV_y[3]~0_combout\ <= NOT \D1|D1|LED7_3|L2|y[3]~0_combout\;
\D1|D1|ALT_INV_bcd_hold[3][2]~q\ <= NOT \D1|D1|bcd_hold[3][2]~q\;
\D1|D1|ALT_INV_bcd_hold[3][3]~q\ <= NOT \D1|D1|bcd_hold[3][3]~q\;
\D1|D1|ALT_INV_bcd_hold[3][1]~q\ <= NOT \D1|D1|bcd_hold[3][1]~q\;
\D1|D1|ALT_INV_bcd_hold[3][0]~q\ <= NOT \D1|D1|bcd_hold[3][0]~q\;
\D1|D1|ALT_INV_bcd_hold[2][2]~q\ <= NOT \D1|D1|bcd_hold[2][2]~q\;
\ALT_INV_i2c_status~22_combout\ <= NOT \i2c_status~22_combout\;
\D1|D1|CNV0|B1|ALT_INV_cnt[4]~0_combout\ <= NOT \D1|D1|CNV0|B1|cnt[4]~0_combout\;
\U1|ALT_INV_state~39_combout\ <= NOT \U1|state~39_combout\;
\U1|ALT_INV_bit_cnt[0]~1_combout\ <= NOT \U1|bit_cnt[0]~1_combout\;
\U1|ALT_INV_bit_cnt[0]~0_combout\ <= NOT \U1|bit_cnt[0]~0_combout\;
\U1|ALT_INV_sda~1_combout\ <= NOT \U1|sda~1_combout\;
\U1|ALT_INV_Add0~0_combout\ <= NOT \U1|Add0~0_combout\;
\D1|D1|ALT_INV_bcd_hold[0][3]~0_combout\ <= NOT \D1|D1|bcd_hold[0][3]~0_combout\;
\D1|D1|CNV0|B1|ALT_INV_LessThan0~0_combout\ <= NOT \D1|D1|CNV0|B1|LessThan0~0_combout\;
\U1|ALT_INV_busy~0_combout\ <= NOT \U1|busy~0_combout\;
\ALT_INV_i2c_err~0_combout\ <= NOT \i2c_err~0_combout\;
\U1|ALT_INV_state~36_combout\ <= NOT \U1|state~36_combout\;
\U1|ALT_INV_state~35_combout\ <= NOT \U1|state~35_combout\;
\U1|ALT_INV_process_0~2_combout\ <= NOT \U1|process_0~2_combout\;
\U1|ALT_INV_process_0~1_combout\ <= NOT \U1|process_0~1_combout\;
\U1|ALT_INV_state~33_combout\ <= NOT \U1|state~33_combout\;
\U1|ALT_INV_state~31_combout\ <= NOT \U1|state~31_combout\;
\U1|ALT_INV_state~30_combout\ <= NOT \U1|state~30_combout\;
\U1|ALT_INV_state~29_combout\ <= NOT \U1|state~29_combout\;
\U1|ALT_INV_state~28_combout\ <= NOT \U1|state~28_combout\;
\U1|ALT_INV_state~27_combout\ <= NOT \U1|state~27_combout\;
\U1|ALT_INV_process_0~0_combout\ <= NOT \U1|process_0~0_combout\;
\U1|U2|ALT_INV_Equal0~0_combout\ <= NOT \U1|U2|Equal0~0_combout\;
\U1|ALT_INV_shift_reg[5]~1_combout\ <= NOT \U1|shift_reg[5]~1_combout\;
\U1|ALT_INV_shift_reg[5]~0_combout\ <= NOT \U1|shift_reg[5]~0_combout\;
\U1|ALT_INV_Equal0~0_combout\ <= NOT \U1|Equal0~0_combout\;
\U1|U3|ALT_INV_Equal0~0_combout\ <= NOT \U1|U3|Equal0~0_combout\;
\U1|ALT_INV_start_sig~0_combout\ <= NOT \U1|start_sig~0_combout\;
\P2|ALT_INV_LessThan0~1_combout\ <= NOT \P2|LessThan0~1_combout\;
\P2|ALT_INV_LessThan0~0_combout\ <= NOT \P2|LessThan0~0_combout\;
\D1|ALT_INV_hex4[1]~10_combout\ <= NOT \D1|hex4[1]~10_combout\;
\D1|ALT_INV_hex4[2]~9_combout\ <= NOT \D1|hex4[2]~9_combout\;
\D1|ALT_INV_hex4[4]~7_combout\ <= NOT \D1|hex4[4]~7_combout\;
\D1|ALT_INV_hex4[5]~5_combout\ <= NOT \D1|hex4[5]~5_combout\;
\D1|ALT_INV_hex4[6]~4_combout\ <= NOT \D1|hex4[6]~4_combout\;
\D1|ALT_INV_hex4[6]~3_combout\ <= NOT \D1|hex4[6]~3_combout\;
\D1|ALT_INV_hex1[1]~11_combout\ <= NOT \D1|hex1[1]~11_combout\;
\D1|ALT_INV_hex1[2]~10_combout\ <= NOT \D1|hex1[2]~10_combout\;
\D1|ALT_INV_hex1[4]~8_combout\ <= NOT \D1|hex1[4]~8_combout\;
\D1|ALT_INV_hex1[5]~6_combout\ <= NOT \D1|hex1[5]~6_combout\;
\D1|ALT_INV_hex1[6]~5_combout\ <= NOT \D1|hex1[6]~5_combout\;
\D1|ALT_INV_hex1[1]~4_combout\ <= NOT \D1|hex1[1]~4_combout\;
\D1|ALT_INV_hex2[1]~11_combout\ <= NOT \D1|hex2[1]~11_combout\;
\D1|ALT_INV_hex2[2]~10_combout\ <= NOT \D1|hex2[2]~10_combout\;
\D1|ALT_INV_hex2[4]~8_combout\ <= NOT \D1|hex2[4]~8_combout\;
\D1|ALT_INV_hex2[5]~6_combout\ <= NOT \D1|hex2[5]~6_combout\;
\D1|ALT_INV_hex2[6]~5_combout\ <= NOT \D1|hex2[6]~5_combout\;
\D1|ALT_INV_hex2[1]~4_combout\ <= NOT \D1|hex2[1]~4_combout\;
\D1|ALT_INV_hex0[1]~10_combout\ <= NOT \D1|hex0[1]~10_combout\;
\D1|ALT_INV_hex0[2]~9_combout\ <= NOT \D1|hex0[2]~9_combout\;
\D1|ALT_INV_hex0[4]~7_combout\ <= NOT \D1|hex0[4]~7_combout\;
\D1|ALT_INV_hex0[5]~5_combout\ <= NOT \D1|hex0[5]~5_combout\;
\D1|ALT_INV_hex0[6]~4_combout\ <= NOT \D1|hex0[6]~4_combout\;
\D1|ALT_INV_hex0[6]~3_combout\ <= NOT \D1|hex0[6]~3_combout\;
\D1|ALT_INV_hex3[1]~10_combout\ <= NOT \D1|hex3[1]~10_combout\;
\D1|ALT_INV_hex3[2]~9_combout\ <= NOT \D1|hex3[2]~9_combout\;
\D1|ALT_INV_hex3[4]~7_combout\ <= NOT \D1|hex3[4]~7_combout\;
\D1|ALT_INV_hex3[5]~5_combout\ <= NOT \D1|hex3[5]~5_combout\;
\D1|ALT_INV_hex3[6]~4_combout\ <= NOT \D1|hex3[6]~4_combout\;
\D1|ALT_INV_hex3[2]~3_combout\ <= NOT \D1|hex3[2]~3_combout\;
\U1|U4|ALT_INV_shift_reg[1]~DUPLICATE_q\ <= NOT \U1|U4|shift_reg[1]~DUPLICATE_q\;
\ALT_INV_i2c_status.idle~DUPLICATE_q\ <= NOT \i2c_status.idle~DUPLICATE_q\;
\D1|D1|CNV0|B1|ALT_INV_cnt[3]~DUPLICATE_q\ <= NOT \D1|D1|CNV0|B1|cnt[3]~DUPLICATE_q\;
\D1|D1|CNV0|B1|ALT_INV_cnt[2]~DUPLICATE_q\ <= NOT \D1|D1|CNV0|B1|cnt[2]~DUPLICATE_q\;
\D1|D1|CNV0|B1|ALT_INV_cnt[1]~DUPLICATE_q\ <= NOT \D1|D1|CNV0|B1|cnt[1]~DUPLICATE_q\;
\P2|ALT_INV_rst_cnt[6]~DUPLICATE_q\ <= NOT \P2|rst_cnt[6]~DUPLICATE_q\;
\P2|ALT_INV_rst_cnt[0]~DUPLICATE_q\ <= NOT \P2|rst_cnt[0]~DUPLICATE_q\;
\P2|ALT_INV_rst_cnt[4]~DUPLICATE_q\ <= NOT \P2|rst_cnt[4]~DUPLICATE_q\;
\D1|D1|ALT_INV_bcd_hold[2][1]~DUPLICATE_q\ <= NOT \D1|D1|bcd_hold[2][1]~DUPLICATE_q\;
\D1|D1|ALT_INV_bcd_hold[2][0]~DUPLICATE_q\ <= NOT \D1|D1|bcd_hold[2][0]~DUPLICATE_q\;
\D1|D1|CNV0|D5|ALT_INV_bcd[2]~DUPLICATE_q\ <= NOT \D1|D1|CNV0|D5|bcd[2]~DUPLICATE_q\;
\D1|D1|CNV0|D5|ALT_INV_bcd[3]~DUPLICATE_q\ <= NOT \D1|D1|CNV0|D5|bcd[3]~DUPLICATE_q\;
\D1|D1|CNV0|D5|ALT_INV_bcd[0]~DUPLICATE_q\ <= NOT \D1|D1|CNV0|D5|bcd[0]~DUPLICATE_q\;
\D1|D1|CNV0|D4|ALT_INV_bcd[2]~DUPLICATE_q\ <= NOT \D1|D1|CNV0|D4|bcd[2]~DUPLICATE_q\;
\D1|D1|CNV0|D4|ALT_INV_bcd[1]~DUPLICATE_q\ <= NOT \D1|D1|CNV0|D4|bcd[1]~DUPLICATE_q\;
\D1|D1|CNV0|D4|ALT_INV_bcd[0]~DUPLICATE_q\ <= NOT \D1|D1|CNV0|D4|bcd[0]~DUPLICATE_q\;
\D1|D1|CNV0|D3|ALT_INV_bcd[2]~DUPLICATE_q\ <= NOT \D1|D1|CNV0|D3|bcd[2]~DUPLICATE_q\;
\D1|D1|CNV0|D3|ALT_INV_bcd[3]~DUPLICATE_q\ <= NOT \D1|D1|CNV0|D3|bcd[3]~DUPLICATE_q\;
\D1|D1|CNV0|D3|ALT_INV_bcd[1]~DUPLICATE_q\ <= NOT \D1|D1|CNV0|D3|bcd[1]~DUPLICATE_q\;
\D1|D1|CNV0|D1|ALT_INV_bcd[3]~DUPLICATE_q\ <= NOT \D1|D1|CNV0|D1|bcd[3]~DUPLICATE_q\;
\D1|D1|CNV0|D1|ALT_INV_bcd[1]~DUPLICATE_q\ <= NOT \D1|D1|CNV0|D1|bcd[1]~DUPLICATE_q\;
\D1|D1|CNV0|D1|ALT_INV_bcd[0]~DUPLICATE_q\ <= NOT \D1|D1|CNV0|D1|bcd[0]~DUPLICATE_q\;
\ALT_INV_scl~input_o\ <= NOT \scl~input_o\;
\ALT_INV_key[0]~input_o\ <= NOT \key[0]~input_o\;
\ALT_INV_key[1]~input_o\ <= NOT \key[1]~input_o\;
\ALT_INV_sw[6]~input_o\ <= NOT \sw[6]~input_o\;
\ALT_INV_sw[7]~input_o\ <= NOT \sw[7]~input_o\;
\ALT_INV_sw[5]~input_o\ <= NOT \sw[5]~input_o\;
\ALT_INV_sw[4]~input_o\ <= NOT \sw[4]~input_o\;
\ALT_INV_sw[2]~input_o\ <= NOT \sw[2]~input_o\;
\ALT_INV_sw[3]~input_o\ <= NOT \sw[3]~input_o\;
\ALT_INV_sw[1]~input_o\ <= NOT \sw[1]~input_o\;
\ALT_INV_sw[0]~input_o\ <= NOT \sw[0]~input_o\;
\ALT_INV_sw[9]~input_o\ <= NOT \sw[9]~input_o\;
\ALT_INV_sda~input_o\ <= NOT \sda~input_o\;
\ALT_INV_process_1~0_combout\ <= NOT \process_1~0_combout\;

-- Location: IOOBUF_X52_Y0_N2
\led[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => i2c_err_cnt(0),
	devoe => ww_devoe,
	o => ww_led(0));

-- Location: IOOBUF_X52_Y0_N19
\led[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => i2c_err_cnt(1),
	devoe => ww_devoe,
	o => ww_led(1));

-- Location: IOOBUF_X60_Y0_N2
\led[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => i2c_err_cnt(2),
	devoe => ww_devoe,
	o => ww_led(2));

-- Location: IOOBUF_X80_Y0_N2
\led[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => i2c_err_cnt(3),
	devoe => ww_devoe,
	o => ww_led(3));

-- Location: IOOBUF_X60_Y0_N19
\led[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => i2c_recv_cnt(0),
	devoe => ww_devoe,
	o => ww_led(4));

-- Location: IOOBUF_X80_Y0_N19
\led[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => i2c_recv_cnt(1),
	devoe => ww_devoe,
	o => ww_led(5));

-- Location: IOOBUF_X84_Y0_N2
\led[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => i2c_recv_cnt(2),
	devoe => ww_devoe,
	o => ww_led(6));

-- Location: IOOBUF_X89_Y6_N5
\led[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => i2c_recv_cnt(3),
	devoe => ww_devoe,
	o => ww_led(7));

-- Location: IOOBUF_X89_Y8_N5
\led[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => i2c_recv_cnt(4),
	devoe => ww_devoe,
	o => ww_led(8));

-- Location: IOOBUF_X89_Y6_N22
\led[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sw[9]~input_o\,
	devoe => ww_devoe,
	o => ww_led(9));

-- Location: IOOBUF_X89_Y8_N39
\hex0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D1|hex0[0]~2_combout\,
	devoe => ww_devoe,
	o => ww_hex0(0));

-- Location: IOOBUF_X89_Y11_N79
\hex0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D1|hex0[1]~19_combout\,
	devoe => ww_devoe,
	o => ww_hex0(1));

-- Location: IOOBUF_X89_Y11_N96
\hex0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D1|hex0[2]~15_combout\,
	devoe => ww_devoe,
	o => ww_hex0(2));

-- Location: IOOBUF_X89_Y4_N79
\hex0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D1|hex0[3]~0_combout\,
	devoe => ww_devoe,
	o => ww_hex0(3));

-- Location: IOOBUF_X89_Y13_N56
\hex0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D1|hex0[4]~8_combout\,
	devoe => ww_devoe,
	o => ww_hex0(4));

-- Location: IOOBUF_X89_Y13_N39
\hex0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D1|hex0[5]~6_combout\,
	devoe => ww_devoe,
	o => ww_hex0(5));

-- Location: IOOBUF_X89_Y4_N96
\hex0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D1|hex0[6]~11_combout\,
	devoe => ww_devoe,
	o => ww_hex0(6));

-- Location: IOOBUF_X89_Y6_N39
\hex1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D1|hex1[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_hex1(0));

-- Location: IOOBUF_X89_Y6_N56
\hex1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D1|hex1[1]~20_combout\,
	devoe => ww_devoe,
	o => ww_hex1(1));

-- Location: IOOBUF_X89_Y16_N39
\hex1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D1|hex1[2]~16_combout\,
	devoe => ww_devoe,
	o => ww_hex1(2));

-- Location: IOOBUF_X89_Y16_N56
\hex1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D1|hex1[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_hex1(3));

-- Location: IOOBUF_X89_Y15_N39
\hex1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D1|hex1[4]~9_combout\,
	devoe => ww_devoe,
	o => ww_hex1(4));

-- Location: IOOBUF_X89_Y15_N56
\hex1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D1|hex1[5]~7_combout\,
	devoe => ww_devoe,
	o => ww_hex1(5));

-- Location: IOOBUF_X89_Y8_N56
\hex1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D1|hex1[6]~12_combout\,
	devoe => ww_devoe,
	o => ww_hex1(6));

-- Location: IOOBUF_X89_Y9_N22
\hex2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D1|hex2[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_hex2(0));

-- Location: IOOBUF_X89_Y23_N39
\hex2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D1|hex2[1]~20_combout\,
	devoe => ww_devoe,
	o => ww_hex2(1));

-- Location: IOOBUF_X89_Y23_N56
\hex2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D1|hex2[2]~16_combout\,
	devoe => ww_devoe,
	o => ww_hex2(2));

-- Location: IOOBUF_X89_Y20_N79
\hex2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D1|hex2[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_hex2(3));

-- Location: IOOBUF_X89_Y25_N39
\hex2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D1|hex2[4]~9_combout\,
	devoe => ww_devoe,
	o => ww_hex2(4));

-- Location: IOOBUF_X89_Y20_N96
\hex2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D1|hex2[5]~7_combout\,
	devoe => ww_devoe,
	o => ww_hex2(5));

-- Location: IOOBUF_X89_Y25_N56
\hex2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D1|hex2[6]~12_combout\,
	devoe => ww_devoe,
	o => ww_hex2(6));

-- Location: IOOBUF_X89_Y16_N5
\hex3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D1|hex3[0]~2_combout\,
	devoe => ww_devoe,
	o => ww_hex3(0));

-- Location: IOOBUF_X89_Y16_N22
\hex3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D1|hex3[1]~19_combout\,
	devoe => ww_devoe,
	o => ww_hex3(1));

-- Location: IOOBUF_X89_Y4_N45
\hex3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D1|hex3[2]~15_combout\,
	devoe => ww_devoe,
	o => ww_hex3(2));

-- Location: IOOBUF_X89_Y4_N62
\hex3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D1|hex3[3]~0_combout\,
	devoe => ww_devoe,
	o => ww_hex3(3));

-- Location: IOOBUF_X89_Y21_N39
\hex3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D1|hex3[4]~8_combout\,
	devoe => ww_devoe,
	o => ww_hex3(4));

-- Location: IOOBUF_X89_Y11_N62
\hex3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D1|hex3[5]~6_combout\,
	devoe => ww_devoe,
	o => ww_hex3(5));

-- Location: IOOBUF_X89_Y9_N5
\hex3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D1|hex3[6]~11_combout\,
	devoe => ww_devoe,
	o => ww_hex3(6));

-- Location: IOOBUF_X89_Y11_N45
\hex4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D1|hex4[0]~2_combout\,
	devoe => ww_devoe,
	o => ww_hex4(0));

-- Location: IOOBUF_X89_Y13_N5
\hex4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D1|hex4[1]~19_combout\,
	devoe => ww_devoe,
	o => ww_hex4(1));

-- Location: IOOBUF_X89_Y13_N22
\hex4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D1|hex4[2]~15_combout\,
	devoe => ww_devoe,
	o => ww_hex4(2));

-- Location: IOOBUF_X89_Y8_N22
\hex4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D1|hex4[3]~0_combout\,
	devoe => ww_devoe,
	o => ww_hex4(3));

-- Location: IOOBUF_X89_Y15_N22
\hex4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D1|hex4[4]~8_combout\,
	devoe => ww_devoe,
	o => ww_hex4(4));

-- Location: IOOBUF_X89_Y15_N5
\hex4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D1|hex4[5]~6_combout\,
	devoe => ww_devoe,
	o => ww_hex4(5));

-- Location: IOOBUF_X89_Y20_N45
\hex4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D1|hex4[6]~11_combout\,
	devoe => ww_devoe,
	o => ww_hex4(6));

-- Location: IOOBUF_X89_Y20_N62
\hex5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D1|hex5[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_hex5(0));

-- Location: IOOBUF_X89_Y21_N56
\hex5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D1|hex5[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_hex5(1));

-- Location: IOOBUF_X89_Y25_N22
\hex5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D1|hex5[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_hex5(2));

-- Location: IOOBUF_X89_Y23_N22
\hex5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D1|hex5[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_hex5(3));

-- Location: IOOBUF_X89_Y9_N56
\hex5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D1|hex5[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_hex5(4));

-- Location: IOOBUF_X89_Y23_N5
\hex5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D1|hex5[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_hex5(5));

-- Location: IOOBUF_X89_Y9_N39
\hex5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D1|hex5[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_hex5(6));

-- Location: IOOBUF_X66_Y0_N59
\sda~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|sda~1_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => sda);

-- Location: IOIBUF_X32_Y0_N1
\clk_i~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_i,
	o => \clk_i~input_o\);

-- Location: PLLREFCLKSELECT_X0_Y21_N0
\P1|pll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT\ : cyclonev_pll_refclk_select
-- pragma translate_off
GENERIC MAP (
	pll_auto_clk_sw_en => "false",
	pll_clk_loss_edge => "both_edges",
	pll_clk_loss_sw_en => "false",
	pll_clk_sw_dly => 0,
	pll_clkin_0_src => "clk_0",
	pll_clkin_1_src => "ref_clk1",
	pll_manu_clk_sw_en => "false",
	pll_sw_refclk_src => "clk_0")
-- pragma translate_on
PORT MAP (
	clkin => \P1|pll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_CLKIN_bus\,
	clkout => \P1|pll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_CLKOUT\,
	extswitchbuf => \P1|pll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_EXTSWITCHBUF\);

-- Location: IOIBUF_X36_Y0_N1
\key[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(0),
	o => \key[0]~input_o\);

-- Location: FRACTIONALPLL_X0_Y15_N0
\P1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL\ : cyclonev_fractional_pll
-- pragma translate_off
GENERIC MAP (
	dsm_accumulator_reset_value => 0,
	forcelock => "false",
	mimic_fbclk_type => "none",
	nreset_invert => "true",
	output_clock_frequency => "300.0 mhz",
	pll_atb => 0,
	pll_bwctrl => 4000,
	pll_cmp_buf_dly => "0 ps",
	pll_cp_comp => "true",
	pll_cp_current => 10,
	pll_ctrl_override_setting => "false",
	pll_dsm_dither => "disable",
	pll_dsm_out_sel => "disable",
	pll_dsm_reset => "false",
	pll_ecn_bypass => "false",
	pll_ecn_test_en => "false",
	pll_enable => "true",
	pll_fbclk_mux_1 => "glb",
	pll_fbclk_mux_2 => "m_cnt",
	pll_fractional_carry_out => 32,
	pll_fractional_division => 1,
	pll_fractional_division_string => "'0'",
	pll_fractional_value_ready => "true",
	pll_lf_testen => "false",
	pll_lock_fltr_cfg => 25,
	pll_lock_fltr_test => "false",
	pll_m_cnt_bypass_en => "false",
	pll_m_cnt_coarse_dly => "0 ps",
	pll_m_cnt_fine_dly => "0 ps",
	pll_m_cnt_hi_div => 6,
	pll_m_cnt_in_src => "ph_mux_clk",
	pll_m_cnt_lo_div => 6,
	pll_m_cnt_odd_div_duty_en => "false",
	pll_m_cnt_ph_mux_prst => 0,
	pll_m_cnt_prst => 1,
	pll_n_cnt_bypass_en => "false",
	pll_n_cnt_coarse_dly => "0 ps",
	pll_n_cnt_fine_dly => "0 ps",
	pll_n_cnt_hi_div => 1,
	pll_n_cnt_lo_div => 1,
	pll_n_cnt_odd_div_duty_en => "false",
	pll_ref_buf_dly => "0 ps",
	pll_reg_boost => 0,
	pll_regulator_bypass => "false",
	pll_ripplecap_ctrl => 0,
	pll_slf_rst => "true",
	pll_tclk_mux_en => "false",
	pll_tclk_sel => "n_src",
	pll_test_enable => "false",
	pll_testdn_enable => "false",
	pll_testup_enable => "false",
	pll_unlock_fltr_cfg => 2,
	pll_vco_div => 2,
	pll_vco_ph0_en => "true",
	pll_vco_ph1_en => "true",
	pll_vco_ph2_en => "true",
	pll_vco_ph3_en => "true",
	pll_vco_ph4_en => "true",
	pll_vco_ph5_en => "true",
	pll_vco_ph6_en => "true",
	pll_vco_ph7_en => "true",
	pll_vctrl_test_voltage => 750,
	reference_clock_frequency => "50.0 mhz",
	vccd0g_atb => "disable",
	vccd0g_output => 0,
	vccd1g_atb => "disable",
	vccd1g_output => 0,
	vccm1g_tap => 2,
	vccr_pd => "false",
	vcodiv_override => "false",
  fractional_pll_index => 0)
-- pragma translate_on
PORT MAP (
	coreclkfb => \P1|pll_inst|altera_pll_i|fboutclk_wire\(0),
	ecnc1test => \P1|pll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_EXTSWITCHBUF\,
	nresync => \ALT_INV_key[0]~input_o\,
	refclkin => \P1|pll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_CLKOUT\,
	shift => \P1|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiftdonein => \P1|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiften => \P1|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFTENM\,
	up => \P1|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\,
	cntnen => \P1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\,
	fbclk => \P1|pll_inst|altera_pll_i|fboutclk_wire\(0),
	lock => \P1|pll_inst|altera_pll_i|locked_wire\(0),
	tclk => \P1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_TCLK\,
	vcoph => \P1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\,
	mhi => \P1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\);

-- Location: PLLRECONFIG_X0_Y19_N0
\P1|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG\ : cyclonev_pll_reconfig
-- pragma translate_off
GENERIC MAP (
  fractional_pll_index => 0)
-- pragma translate_on
PORT MAP (
	cntnen => \P1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\,
	mhi => \P1|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_MHI_bus\,
	shift => \P1|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiftenm => \P1|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFTENM\,
	up => \P1|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\,
	shiften => \P1|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_SHIFTEN_bus\);

-- Location: PLLOUTPUTCOUNTER_X0_Y20_N1
\P1|pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER\ : cyclonev_pll_output_counter
-- pragma translate_off
GENERIC MAP (
	c_cnt_coarse_dly => "0 ps",
	c_cnt_fine_dly => "0 ps",
	c_cnt_in_src => "ph_mux_clk",
	c_cnt_ph_mux_prst => 0,
	c_cnt_prst => 1,
	cnt_fpll_src => "fpll_0",
	dprio0_cnt_bypass_en => "false",
	dprio0_cnt_hi_div => 2,
	dprio0_cnt_lo_div => 1,
	dprio0_cnt_odd_div_even_duty_en => "true",
	duty_cycle => 50,
	output_clock_frequency => "100.0 mhz",
	phase_shift => "0 ps",
  fractional_pll_index => 0,
  output_counter_index => 6)
-- pragma translate_on
PORT MAP (
	nen0 => \P1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\,
	shift0 => \P1|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiften => \P1|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIGSHIFTEN6\,
	tclk0 => \P1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_TCLK\,
	up0 => \P1|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\,
	vco0ph => \P1|pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER_VCO0PH_bus\,
	divclk => \P1|pll_inst|altera_pll_i|outclk_wire\(0));

-- Location: CLKCTRL_G0
\P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \P1|pll_inst|altera_pll_i|outclk_wire\(0),
	outclk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\);

-- Location: FF_X75_Y5_N22
\P2|rst_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \P2|rst_cnt[0]~0_combout\,
	clrn => \P1|pll_inst|altera_pll_i|locked_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P2|rst_cnt\(0));

-- Location: LABCELL_X75_Y5_N0
\P2|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \P2|Add0~13_sumout\ = SUM(( \P2|rst_cnt\(1) ) + ( \P2|rst_cnt[0]~DUPLICATE_q\ ) + ( !VCC ))
-- \P2|Add0~14\ = CARRY(( \P2|rst_cnt\(1) ) + ( \P2|rst_cnt[0]~DUPLICATE_q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \P2|ALT_INV_rst_cnt[0]~DUPLICATE_q\,
	datad => \P2|ALT_INV_rst_cnt\(1),
	cin => GND,
	sumout => \P2|Add0~13_sumout\,
	cout => \P2|Add0~14\);

-- Location: LABCELL_X75_Y5_N3
\P2|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \P2|Add0~5_sumout\ = SUM(( \P2|rst_cnt\(2) ) + ( GND ) + ( \P2|Add0~14\ ))
-- \P2|Add0~6\ = CARRY(( \P2|rst_cnt\(2) ) + ( GND ) + ( \P2|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \P2|ALT_INV_rst_cnt\(2),
	cin => \P2|Add0~14\,
	sumout => \P2|Add0~5_sumout\,
	cout => \P2|Add0~6\);

-- Location: FF_X75_Y5_N5
\P2|rst_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \P2|Add0~5_sumout\,
	clrn => \P1|pll_inst|altera_pll_i|locked_wire\(0),
	ena => \P2|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P2|rst_cnt\(2));

-- Location: LABCELL_X75_Y5_N6
\P2|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \P2|Add0~9_sumout\ = SUM(( \P2|rst_cnt\(3) ) + ( GND ) + ( \P2|Add0~6\ ))
-- \P2|Add0~10\ = CARRY(( \P2|rst_cnt\(3) ) + ( GND ) + ( \P2|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \P2|ALT_INV_rst_cnt\(3),
	cin => \P2|Add0~6\,
	sumout => \P2|Add0~9_sumout\,
	cout => \P2|Add0~10\);

-- Location: FF_X75_Y5_N8
\P2|rst_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \P2|Add0~9_sumout\,
	clrn => \P1|pll_inst|altera_pll_i|locked_wire\(0),
	ena => \P2|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P2|rst_cnt\(3));

-- Location: LABCELL_X75_Y5_N24
\P2|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \P2|LessThan0~0_combout\ = ( !\P2|rst_cnt\(3) & ( (!\P2|rst_cnt\(1)) # (!\P2|rst_cnt[0]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111111111111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \P2|ALT_INV_rst_cnt\(1),
	datad => \P2|ALT_INV_rst_cnt[0]~DUPLICATE_q\,
	dataf => \P2|ALT_INV_rst_cnt\(3),
	combout => \P2|LessThan0~0_combout\);

-- Location: LABCELL_X75_Y5_N9
\P2|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \P2|Add0~1_sumout\ = SUM(( \P2|rst_cnt\(4) ) + ( GND ) + ( \P2|Add0~10\ ))
-- \P2|Add0~2\ = CARRY(( \P2|rst_cnt\(4) ) + ( GND ) + ( \P2|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \P2|ALT_INV_rst_cnt\(4),
	cin => \P2|Add0~10\,
	sumout => \P2|Add0~1_sumout\,
	cout => \P2|Add0~2\);

-- Location: FF_X75_Y5_N10
\P2|rst_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \P2|Add0~1_sumout\,
	clrn => \P1|pll_inst|altera_pll_i|locked_wire\(0),
	ena => \P2|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P2|rst_cnt\(4));

-- Location: LABCELL_X75_Y5_N12
\P2|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \P2|Add0~21_sumout\ = SUM(( \P2|rst_cnt\(5) ) + ( GND ) + ( \P2|Add0~2\ ))
-- \P2|Add0~22\ = CARRY(( \P2|rst_cnt\(5) ) + ( GND ) + ( \P2|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \P2|ALT_INV_rst_cnt\(5),
	cin => \P2|Add0~2\,
	sumout => \P2|Add0~21_sumout\,
	cout => \P2|Add0~22\);

-- Location: FF_X75_Y5_N14
\P2|rst_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \P2|Add0~21_sumout\,
	clrn => \P1|pll_inst|altera_pll_i|locked_wire\(0),
	ena => \P2|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P2|rst_cnt\(5));

-- Location: LABCELL_X75_Y5_N15
\P2|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \P2|Add0~17_sumout\ = SUM(( \P2|rst_cnt\(6) ) + ( GND ) + ( \P2|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \P2|ALT_INV_rst_cnt\(6),
	cin => \P2|Add0~22\,
	sumout => \P2|Add0~17_sumout\);

-- Location: FF_X75_Y5_N17
\P2|rst_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \P2|Add0~17_sumout\,
	clrn => \P1|pll_inst|altera_pll_i|locked_wire\(0),
	ena => \P2|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P2|rst_cnt\(6));

-- Location: LABCELL_X75_Y5_N18
\P2|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \P2|LessThan0~1_combout\ = ( \P2|rst_cnt\(5) & ( (!\P2|rst_cnt\(6)) # ((\P2|LessThan0~0_combout\ & (!\P2|rst_cnt\(2) & !\P2|rst_cnt\(4)))) ) ) # ( !\P2|rst_cnt\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111011100110011001101110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P2|ALT_INV_LessThan0~0_combout\,
	datab => \P2|ALT_INV_rst_cnt\(6),
	datac => \P2|ALT_INV_rst_cnt\(2),
	datad => \P2|ALT_INV_rst_cnt\(4),
	dataf => \P2|ALT_INV_rst_cnt\(5),
	combout => \P2|LessThan0~1_combout\);

-- Location: LABCELL_X75_Y5_N21
\P2|rst_cnt[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \P2|rst_cnt[0]~0_combout\ = ( \P2|LessThan0~1_combout\ & ( !\P2|rst_cnt\(0) ) ) # ( !\P2|LessThan0~1_combout\ & ( \P2|rst_cnt\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \P2|ALT_INV_rst_cnt\(0),
	dataf => \P2|ALT_INV_LessThan0~1_combout\,
	combout => \P2|rst_cnt[0]~0_combout\);

-- Location: FF_X75_Y5_N23
\P2|rst_cnt[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \P2|rst_cnt[0]~0_combout\,
	clrn => \P1|pll_inst|altera_pll_i|locked_wire\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P2|rst_cnt[0]~DUPLICATE_q\);

-- Location: FF_X75_Y5_N2
\P2|rst_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \P2|Add0~13_sumout\,
	clrn => \P1|pll_inst|altera_pll_i|locked_wire\(0),
	ena => \P2|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P2|rst_cnt\(1));

-- Location: LABCELL_X75_Y5_N27
\U1|state~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|state~27_combout\ = ( \P2|rst_cnt\(0) & ( (!\P2|rst_cnt\(1) & (!\P2|rst_cnt\(3) & !\P2|rst_cnt\(2))) ) ) # ( !\P2|rst_cnt\(0) & ( (!\P2|rst_cnt\(3) & !\P2|rst_cnt\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000010001000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P2|ALT_INV_rst_cnt\(1),
	datab => \P2|ALT_INV_rst_cnt\(3),
	datad => \P2|ALT_INV_rst_cnt\(2),
	dataf => \P2|ALT_INV_rst_cnt\(0),
	combout => \U1|state~27_combout\);

-- Location: FF_X75_Y5_N16
\P2|rst_cnt[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \P2|Add0~17_sumout\,
	clrn => \P1|pll_inst|altera_pll_i|locked_wire\(0),
	ena => \P2|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P2|rst_cnt[6]~DUPLICATE_q\);

-- Location: IOIBUF_X66_Y0_N58
\sda~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => sda,
	o => \sda~input_o\);

-- Location: FF_X74_Y5_N34
\U1|U4|shift_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \sda~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U4|shift_reg\(0));

-- Location: FF_X74_Y5_N44
\U1|U4|shift_reg[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \U1|U4|shift_reg\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U4|shift_reg[1]~DUPLICATE_q\);

-- Location: FF_X74_Y5_N43
\U1|U4|shift_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \U1|U4|shift_reg\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U4|shift_reg\(1));

-- Location: FF_X77_Y5_N22
\U1|U4|shift_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \U1|U4|shift_reg\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U4|shift_reg\(2));

-- Location: FF_X74_Y5_N47
\U1|U4|shift_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \U1|U4|shift_reg\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U4|shift_reg\(3));

-- Location: LABCELL_X74_Y5_N45
\U1|start_sig~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|start_sig~0_combout\ = ( !\U1|U4|shift_reg\(2) & ( !\U1|U4|shift_reg\(0) & ( (!\U1|U4|shift_reg[1]~DUPLICATE_q\ & \U1|U4|shift_reg\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|U4|ALT_INV_shift_reg[1]~DUPLICATE_q\,
	datac => \U1|U4|ALT_INV_shift_reg\(3),
	datae => \U1|U4|ALT_INV_shift_reg\(2),
	dataf => \U1|U4|ALT_INV_shift_reg\(0),
	combout => \U1|start_sig~0_combout\);

-- Location: IOIBUF_X66_Y0_N41
\scl~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_scl,
	o => \scl~input_o\);

-- Location: FF_X75_Y5_N35
\U1|U2|shift_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \scl~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|shift_reg\(0));

-- Location: FF_X75_Y5_N47
\U1|U2|shift_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \U1|U2|shift_reg\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|shift_reg\(1));

-- Location: FF_X75_Y5_N40
\U1|U2|shift_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \U1|U2|shift_reg\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|shift_reg\(2));

-- Location: FF_X75_Y5_N59
\U1|U2|shift_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \U1|U2|shift_reg\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|shift_reg\(3));

-- Location: LABCELL_X75_Y5_N57
\U1|U2|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|U2|Equal0~0_combout\ = ( !\U1|U2|shift_reg\(0) & ( (\U1|U2|shift_reg\(3) & (!\U1|U2|shift_reg\(1) & !\U1|U2|shift_reg\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|ALT_INV_shift_reg\(3),
	datac => \U1|U2|ALT_INV_shift_reg\(1),
	datad => \U1|U2|ALT_INV_shift_reg\(2),
	dataf => \U1|U2|ALT_INV_shift_reg\(0),
	combout => \U1|U2|Equal0~0_combout\);

-- Location: LABCELL_X75_Y5_N54
\U1|state~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|state~26_combout\ = ( !\P2|LessThan0~1_combout\ & ( (\U1|state.ack_data_end~q\ & \U1|U2|Equal0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_state.ack_data_end~q\,
	datac => \U1|U2|ALT_INV_Equal0~0_combout\,
	dataf => \P2|ALT_INV_LessThan0~1_combout\,
	combout => \U1|state~26_combout\);

-- Location: FF_X75_Y5_N55
\U1|state.send_recv\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \U1|state~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|state.send_recv~q\);

-- Location: FF_X74_Y5_N35
\U1|U3|shift_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \sda~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|shift_reg\(0));

-- Location: FF_X79_Y5_N34
\U1|U3|shift_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \U1|U3|shift_reg\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|shift_reg\(1));

-- Location: FF_X79_Y5_N59
\U1|U3|shift_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \U1|U3|shift_reg\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|shift_reg\(2));

-- Location: FF_X79_Y5_N32
\U1|U3|shift_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \U1|U3|shift_reg\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|shift_reg\(3));

-- Location: LABCELL_X79_Y5_N30
\U1|U3|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|U3|Equal0~0_combout\ = ( \U1|U3|shift_reg\(2) & ( \U1|U3|shift_reg\(0) & ( (!\U1|U3|shift_reg\(3) & \U1|U3|shift_reg\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|U3|ALT_INV_shift_reg\(3),
	datac => \U1|U3|ALT_INV_shift_reg\(1),
	datae => \U1|U3|ALT_INV_shift_reg\(2),
	dataf => \U1|U3|ALT_INV_shift_reg\(0),
	combout => \U1|U3|Equal0~0_combout\);

-- Location: LABCELL_X75_Y5_N51
\U1|state~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|state~36_combout\ = ( \U1|state.idle~q\ & ( (\U1|start_sig~0_combout\ & (\U1|state.recv_data~q\ & \scl~input_o\)) ) ) # ( !\U1|state.idle~q\ & ( (!\U1|start_sig~0_combout\) # ((!\scl~input_o\) # (\U1|state.recv_data~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110111011111111111011101100000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_start_sig~0_combout\,
	datab => \U1|ALT_INV_state.recv_data~q\,
	datad => \ALT_INV_scl~input_o\,
	dataf => \U1|ALT_INV_state.idle~q\,
	combout => \U1|state~36_combout\);

-- Location: LABCELL_X77_Y5_N39
\U1|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|process_0~0_combout\ = ( \U1|start_sig~0_combout\ & ( \scl~input_o\ ) ) # ( !\U1|start_sig~0_combout\ & ( (\scl~input_o\ & \U1|U3|Equal0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_scl~input_o\,
	datac => \U1|U3|ALT_INV_Equal0~0_combout\,
	dataf => \U1|ALT_INV_start_sig~0_combout\,
	combout => \U1|process_0~0_combout\);

-- Location: LABCELL_X77_Y5_N15
\U1|state~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|state~29_combout\ = ( \scl~input_o\ & ( (\U1|state.recv_data~q\ & (((\U1|U3|Equal0~0_combout\) # (\U1|Equal0~0_combout\)) # (\U1|start_sig~0_combout\))) ) ) # ( !\scl~input_o\ & ( (\U1|Equal0~0_combout\ & \U1|state.recv_data~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000011111110000000001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_start_sig~0_combout\,
	datab => \U1|ALT_INV_Equal0~0_combout\,
	datac => \U1|U3|ALT_INV_Equal0~0_combout\,
	datad => \U1|ALT_INV_state.recv_data~q\,
	dataf => \ALT_INV_scl~input_o\,
	combout => \U1|state~29_combout\);

-- Location: LABCELL_X77_Y5_N57
\U1|state~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|state~30_combout\ = ( \U1|state.idle~q\ & ( \U1|U2|Equal0~0_combout\ ) ) # ( !\U1|state.idle~q\ & ( (\scl~input_o\ & \U1|start_sig~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_scl~input_o\,
	datad => \U1|ALT_INV_start_sig~0_combout\,
	dataf => \U1|ALT_INV_state.idle~q\,
	combout => \U1|state~30_combout\);

-- Location: LABCELL_X77_Y5_N42
\U1|state~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|state~33_combout\ = ( \U1|U3|Equal0~0_combout\ & ( \U1|state.idle~q\ & ( (\U1|state.addr~q\ & (!\scl~input_o\ & !\U1|Equal0~0_combout\)) ) ) ) # ( !\U1|U3|Equal0~0_combout\ & ( \U1|state.idle~q\ & ( (\U1|state.addr~q\ & (!\U1|Equal0~0_combout\ & 
-- ((!\scl~input_o\) # (!\U1|start_sig~0_combout\)))) ) ) ) # ( \U1|U3|Equal0~0_combout\ & ( !\U1|state.idle~q\ & ( (!\scl~input_o\ & (\U1|state.addr~q\ & ((!\U1|Equal0~0_combout\)))) # (\scl~input_o\ & (((\U1|start_sig~0_combout\)))) ) ) ) # ( 
-- !\U1|U3|Equal0~0_combout\ & ( !\U1|state.idle~q\ & ( (!\U1|state.addr~q\ & (\scl~input_o\ & (\U1|start_sig~0_combout\))) # (\U1|state.addr~q\ & ((!\U1|Equal0~0_combout\) # ((\scl~input_o\ & \U1|start_sig~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011100000011010001110000001101010100000000000100010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_state.addr~q\,
	datab => \ALT_INV_scl~input_o\,
	datac => \U1|ALT_INV_start_sig~0_combout\,
	datad => \U1|ALT_INV_Equal0~0_combout\,
	datae => \U1|U3|ALT_INV_Equal0~0_combout\,
	dataf => \U1|ALT_INV_state.idle~q\,
	combout => \U1|state~33_combout\);

-- Location: LABCELL_X77_Y5_N33
\U1|state~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|state~34_combout\ = ( \U1|state~33_combout\ & ( (\U1|state~28_combout\ & ((!\U1|state.recv_data~q\) # (!\U1|process_0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110010001100100011001000110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_state.recv_data~q\,
	datab => \U1|ALT_INV_state~28_combout\,
	datac => \U1|ALT_INV_process_0~0_combout\,
	dataf => \U1|ALT_INV_state~33_combout\,
	combout => \U1|state~34_combout\);

-- Location: FF_X77_Y5_N35
\U1|state.addr\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \U1|state~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|state.addr~q\);

-- Location: LABCELL_X77_Y5_N12
\U1|state~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|state~31_combout\ = ( \U1|state.addr~q\ & ( ((\U1|state.ack_addr~q\ & !\U1|state~30_combout\)) # (\U1|Equal0~0_combout\) ) ) # ( !\U1|state.addr~q\ & ( (\U1|state.ack_addr~q\ & !\U1|state~30_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000111111001100110011111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|ALT_INV_Equal0~0_combout\,
	datac => \U1|ALT_INV_state.ack_addr~q\,
	datad => \U1|ALT_INV_state~30_combout\,
	dataf => \U1|ALT_INV_state.addr~q\,
	combout => \U1|state~31_combout\);

-- Location: LABCELL_X77_Y5_N6
\U1|state~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|state~32_combout\ = ( \U1|state~31_combout\ & ( (!\U1|process_0~0_combout\ & (!\U1|state~29_combout\ & \U1|state~28_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|ALT_INV_process_0~0_combout\,
	datac => \U1|ALT_INV_state~29_combout\,
	datad => \U1|ALT_INV_state~28_combout\,
	dataf => \U1|ALT_INV_state~31_combout\,
	combout => \U1|state~32_combout\);

-- Location: FF_X77_Y5_N8
\U1|state.ack_addr\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \U1|state~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|state.ack_addr~q\);

-- Location: LABCELL_X75_Y6_N42
\U1|shift_reg[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|shift_reg[0]~feeder_combout\ = ( \sda~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_sda~input_o\,
	combout => \U1|shift_reg[0]~feeder_combout\);

-- Location: FF_X75_Y5_N34
\U1|U1|shift_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \scl~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|shift_reg\(0));

-- Location: FF_X73_Y5_N44
\U1|U1|shift_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \U1|U1|shift_reg\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|shift_reg\(1));

-- Location: FF_X73_Y5_N56
\U1|U1|shift_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \U1|U1|shift_reg\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|shift_reg\(2));

-- Location: FF_X73_Y5_N59
\U1|U1|shift_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \U1|U1|shift_reg\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U1|shift_reg\(3));

-- Location: LABCELL_X73_Y5_N57
\U1|shift_reg[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|shift_reg[5]~0_combout\ = ( \U1|U1|shift_reg\(2) & ( \U1|U1|shift_reg\(1) & ( (!\U1|U1|shift_reg\(3) & \U1|U1|shift_reg\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|U1|ALT_INV_shift_reg\(3),
	datac => \U1|U1|ALT_INV_shift_reg\(0),
	datae => \U1|U1|ALT_INV_shift_reg\(2),
	dataf => \U1|U1|ALT_INV_shift_reg\(1),
	combout => \U1|shift_reg[5]~0_combout\);

-- Location: LABCELL_X77_Y5_N36
\U1|shift_reg[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|shift_reg[5]~1_combout\ = ( !\U1|Equal0~0_combout\ & ( (\U1|shift_reg[5]~0_combout\ & ((!\scl~input_o\) # ((!\U1|start_sig~0_combout\ & !\U1|U3|Equal0~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001100000011100000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_start_sig~0_combout\,
	datab => \ALT_INV_scl~input_o\,
	datac => \U1|ALT_INV_shift_reg[5]~0_combout\,
	datad => \U1|U3|ALT_INV_Equal0~0_combout\,
	dataf => \U1|ALT_INV_Equal0~0_combout\,
	combout => \U1|shift_reg[5]~1_combout\);

-- Location: LABCELL_X75_Y6_N27
\U1|shift_reg[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|shift_reg[0]~2_combout\ = ( !\P2|LessThan0~1_combout\ & ( (\U1|shift_reg[5]~1_combout\ & ((\U1|state.addr~q\) # (\U1|state.recv_data~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011111000000000000000000000000010111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_state.recv_data~q\,
	datac => \U1|ALT_INV_state.addr~q\,
	datad => \U1|ALT_INV_shift_reg[5]~1_combout\,
	datae => \P2|ALT_INV_LessThan0~1_combout\,
	combout => \U1|shift_reg[0]~2_combout\);

-- Location: FF_X75_Y6_N44
\U1|shift_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \U1|shift_reg[0]~feeder_combout\,
	ena => \U1|shift_reg[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|shift_reg\(0));

-- Location: LABCELL_X75_Y6_N45
\U1|shift_reg[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|shift_reg[1]~feeder_combout\ = \U1|shift_reg\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|ALT_INV_shift_reg\(0),
	combout => \U1|shift_reg[1]~feeder_combout\);

-- Location: FF_X75_Y6_N47
\U1|shift_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \U1|shift_reg[1]~feeder_combout\,
	ena => \U1|shift_reg[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|shift_reg\(1));

-- Location: FF_X75_Y6_N41
\U1|shift_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \U1|shift_reg\(1),
	sload => VCC,
	ena => \U1|shift_reg[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|shift_reg\(2));

-- Location: FF_X75_Y6_N38
\U1|shift_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \U1|shift_reg\(2),
	sload => VCC,
	ena => \U1|shift_reg[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|shift_reg\(3));

-- Location: FF_X75_Y6_N50
\U1|shift_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \U1|shift_reg\(3),
	sload => VCC,
	ena => \U1|shift_reg[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|shift_reg\(4));

-- Location: FF_X75_Y6_N59
\U1|shift_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \U1|shift_reg\(4),
	sload => VCC,
	ena => \U1|shift_reg[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|shift_reg\(5));

-- Location: FF_X75_Y6_N53
\U1|shift_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \U1|shift_reg\(5),
	sload => VCC,
	ena => \U1|shift_reg[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|shift_reg\(6));

-- Location: FF_X75_Y6_N56
\U1|shift_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \U1|shift_reg\(6),
	sload => VCC,
	ena => \U1|shift_reg[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|shift_reg\(7));

-- Location: LABCELL_X75_Y6_N51
\U1|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|process_0~1_combout\ = ( !\U1|shift_reg\(5) & ( !\U1|shift_reg\(2) & ( (!\U1|shift_reg\(7) & !\U1|shift_reg\(6)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_shift_reg\(7),
	datad => \U1|ALT_INV_shift_reg\(6),
	datae => \U1|ALT_INV_shift_reg\(5),
	dataf => \U1|ALT_INV_shift_reg\(2),
	combout => \U1|process_0~1_combout\);

-- Location: LABCELL_X75_Y6_N54
\U1|process_0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|process_0~2_combout\ = ( \U1|process_0~1_combout\ & ( \U1|shift_reg\(4) & ( (!\U1|shift_reg\(0) & (!\U1|shift_reg\(3) & !\U1|shift_reg\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|ALT_INV_shift_reg\(0),
	datac => \U1|ALT_INV_shift_reg\(3),
	datad => \U1|ALT_INV_shift_reg\(1),
	datae => \U1|ALT_INV_process_0~1_combout\,
	dataf => \U1|ALT_INV_shift_reg\(4),
	combout => \U1|process_0~2_combout\);

-- Location: LABCELL_X77_Y5_N48
\U1|state~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|state~35_combout\ = ( \U1|state.ack_data~q\ & ( \U1|state.addr~q\ & ( ((\U1|state.ack_addr~q\ & (!\U1|process_0~2_combout\ & \U1|U2|Equal0~0_combout\))) # (\U1|process_0~0_combout\) ) ) ) # ( !\U1|state.ack_data~q\ & ( \U1|state.addr~q\ & ( 
-- ((\U1|state.ack_addr~q\ & (!\U1|process_0~2_combout\ & \U1|U2|Equal0~0_combout\))) # (\U1|process_0~0_combout\) ) ) ) # ( \U1|state.ack_data~q\ & ( !\U1|state.addr~q\ & ( ((\U1|state.ack_addr~q\ & (!\U1|process_0~2_combout\ & \U1|U2|Equal0~0_combout\))) # 
-- (\U1|process_0~0_combout\) ) ) ) # ( !\U1|state.ack_data~q\ & ( !\U1|state.addr~q\ & ( (\U1|state.ack_addr~q\ & (((!\U1|process_0~2_combout\ & \U1|U2|Equal0~0_combout\)) # (\U1|process_0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101010001001100110111001100110011011100110011001101110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_state.ack_addr~q\,
	datab => \U1|ALT_INV_process_0~0_combout\,
	datac => \U1|ALT_INV_process_0~2_combout\,
	datad => \U1|U2|ALT_INV_Equal0~0_combout\,
	datae => \U1|ALT_INV_state.ack_data~q\,
	dataf => \U1|ALT_INV_state.addr~q\,
	combout => \U1|state~35_combout\);

-- Location: LABCELL_X74_Y5_N24
\U1|state~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|state~37_combout\ = ( !\U1|state~35_combout\ & ( (!\P2|LessThan0~1_combout\ & (!\U1|state.stop~q\ & !\U1|state~36_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P2|ALT_INV_LessThan0~1_combout\,
	datab => \U1|ALT_INV_state.stop~q\,
	datac => \U1|ALT_INV_state~36_combout\,
	dataf => \U1|ALT_INV_state~35_combout\,
	combout => \U1|state~37_combout\);

-- Location: FF_X74_Y5_N26
\U1|state.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \U1|state~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|state.idle~q\);

-- Location: LABCELL_X77_Y5_N0
\U1|bit_cnt[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|bit_cnt[0]~0_combout\ = ( \U1|sda~1_combout\ & ( (!\U1|state.ack_addr~q\ & !\U1|state.ack_data~q\) ) ) # ( !\U1|sda~1_combout\ & ( (\U1|U2|Equal0~0_combout\ & (!\U1|state.ack_addr~q\ & !\U1|state.ack_data~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|ALT_INV_Equal0~0_combout\,
	datac => \U1|ALT_INV_state.ack_addr~q\,
	datad => \U1|ALT_INV_state.ack_data~q\,
	dataf => \U1|ALT_INV_sda~1_combout\,
	combout => \U1|bit_cnt[0]~0_combout\);

-- Location: LABCELL_X77_Y5_N30
\U1|bit_cnt[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|bit_cnt[0]~1_combout\ = ( \U1|shift_reg[5]~1_combout\ & ( (\U1|state~28_combout\ & \U1|bit_cnt[0]~0_combout\) ) ) # ( !\U1|shift_reg[5]~1_combout\ & ( (!\U1|state.recv_data~q\ & (\U1|state~28_combout\ & (!\U1|state.addr~q\ & 
-- \U1|bit_cnt[0]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_state.recv_data~q\,
	datab => \U1|ALT_INV_state~28_combout\,
	datac => \U1|ALT_INV_state.addr~q\,
	datad => \U1|ALT_INV_bit_cnt[0]~0_combout\,
	dataf => \U1|ALT_INV_shift_reg[5]~1_combout\,
	combout => \U1|bit_cnt[0]~1_combout\);

-- Location: LABCELL_X79_Y5_N6
\U1|bit_cnt[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|bit_cnt[0]~5_combout\ = ( \U1|sda~1_combout\ & ( (!\U1|bit_cnt[0]~1_combout\ & ((\U1|bit_cnt\(0)))) # (\U1|bit_cnt[0]~1_combout\ & (\U1|state.idle~q\ & !\U1|bit_cnt\(0))) ) ) # ( !\U1|sda~1_combout\ & ( (!\U1|bit_cnt[0]~1_combout\ & \U1|bit_cnt\(0)) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000101101010100000010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_bit_cnt[0]~1_combout\,
	datac => \U1|ALT_INV_state.idle~q\,
	datad => \U1|ALT_INV_bit_cnt\(0),
	dataf => \U1|ALT_INV_sda~1_combout\,
	combout => \U1|bit_cnt[0]~5_combout\);

-- Location: FF_X79_Y5_N8
\U1|bit_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \U1|bit_cnt[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|bit_cnt\(0));

-- Location: LABCELL_X79_Y5_N18
\U1|bit_cnt[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|bit_cnt[1]~4_combout\ = ( \U1|sda~1_combout\ & ( (!\U1|bit_cnt[0]~1_combout\ & (((\U1|bit_cnt\(1))))) # (\U1|bit_cnt[0]~1_combout\ & (\U1|state.idle~q\ & (!\U1|bit_cnt\(0) $ (!\U1|bit_cnt\(1))))) ) ) # ( !\U1|sda~1_combout\ & ( 
-- (!\U1|bit_cnt[0]~1_combout\ & \U1|bit_cnt\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000001111101000000000111110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_state.idle~q\,
	datab => \U1|ALT_INV_bit_cnt\(0),
	datac => \U1|ALT_INV_bit_cnt[0]~1_combout\,
	datad => \U1|ALT_INV_bit_cnt\(1),
	dataf => \U1|ALT_INV_sda~1_combout\,
	combout => \U1|bit_cnt[1]~4_combout\);

-- Location: FF_X79_Y5_N20
\U1|bit_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \U1|bit_cnt[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|bit_cnt\(1));

-- Location: LABCELL_X79_Y5_N21
\U1|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~0_combout\ = ( \U1|bit_cnt\(0) & ( \U1|bit_cnt\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|ALT_INV_bit_cnt\(1),
	dataf => \U1|ALT_INV_bit_cnt\(0),
	combout => \U1|Add0~0_combout\);

-- Location: LABCELL_X79_Y5_N12
\U1|bit_cnt[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|bit_cnt[2]~3_combout\ = ( \U1|Add0~0_combout\ & ( (!\U1|bit_cnt\(2) & (\U1|state.idle~q\ & (\U1|bit_cnt[0]~1_combout\ & \U1|sda~1_combout\))) # (\U1|bit_cnt\(2) & (((!\U1|bit_cnt[0]~1_combout\)))) ) ) # ( !\U1|Add0~0_combout\ & ( (\U1|bit_cnt\(2) & 
-- ((!\U1|bit_cnt[0]~1_combout\) # ((\U1|state.idle~q\ & \U1|sda~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110001001100000011000100110000001101000011000000110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_state.idle~q\,
	datab => \U1|ALT_INV_bit_cnt\(2),
	datac => \U1|ALT_INV_bit_cnt[0]~1_combout\,
	datad => \U1|ALT_INV_sda~1_combout\,
	dataf => \U1|ALT_INV_Add0~0_combout\,
	combout => \U1|bit_cnt[2]~3_combout\);

-- Location: FF_X79_Y5_N14
\U1|bit_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \U1|bit_cnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|bit_cnt\(2));

-- Location: LABCELL_X79_Y5_N54
\U1|bit_cnt[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|bit_cnt[3]~2_combout\ = ( \U1|bit_cnt\(3) & ( \U1|Add0~0_combout\ & ( (!\U1|bit_cnt[0]~1_combout\) # ((!\U1|bit_cnt\(2) & (\U1|state.idle~q\ & \U1|sda~1_combout\))) ) ) ) # ( !\U1|bit_cnt\(3) & ( \U1|Add0~0_combout\ & ( (\U1|bit_cnt[0]~1_combout\ & 
-- (\U1|bit_cnt\(2) & (\U1|state.idle~q\ & \U1|sda~1_combout\))) ) ) ) # ( \U1|bit_cnt\(3) & ( !\U1|Add0~0_combout\ & ( (!\U1|bit_cnt[0]~1_combout\) # ((\U1|state.idle~q\ & \U1|sda~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010111100000000000000011010101010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_bit_cnt[0]~1_combout\,
	datab => \U1|ALT_INV_bit_cnt\(2),
	datac => \U1|ALT_INV_state.idle~q\,
	datad => \U1|ALT_INV_sda~1_combout\,
	datae => \U1|ALT_INV_bit_cnt\(3),
	dataf => \U1|ALT_INV_Add0~0_combout\,
	combout => \U1|bit_cnt[3]~2_combout\);

-- Location: FF_X79_Y5_N56
\U1|bit_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \U1|bit_cnt[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|bit_cnt\(3));

-- Location: LABCELL_X79_Y5_N15
\U1|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Equal0~0_combout\ = ( !\U1|bit_cnt\(1) & ( (!\U1|bit_cnt\(2) & (!\U1|bit_cnt\(0) & \U1|bit_cnt\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|ALT_INV_bit_cnt\(2),
	datac => \U1|ALT_INV_bit_cnt\(0),
	datad => \U1|ALT_INV_bit_cnt\(3),
	dataf => \U1|ALT_INV_bit_cnt\(1),
	combout => \U1|Equal0~0_combout\);

-- Location: LABCELL_X77_Y5_N24
\U1|state~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|state~39_combout\ = ( !\U1|Equal0~0_combout\ & ( (!\scl~input_o\) # ((!\U1|start_sig~0_combout\ & !\U1|U3|Equal0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011001100111111001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_scl~input_o\,
	datac => \U1|ALT_INV_start_sig~0_combout\,
	datad => \U1|U3|ALT_INV_Equal0~0_combout\,
	dataf => \U1|ALT_INV_Equal0~0_combout\,
	combout => \U1|state~39_combout\);

-- Location: LABCELL_X77_Y5_N18
\U1|state~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|state~42_combout\ = ( \U1|state.ack_addr_end~q\ & ( !\P2|LessThan0~1_combout\ & ( (!\U1|U2|Equal0~0_combout\) # ((\U1|state.ack_addr~q\ & (\U1|process_0~2_combout\ & !\U1|process_0~0_combout\))) ) ) ) # ( !\U1|state.ack_addr_end~q\ & ( 
-- !\P2|LessThan0~1_combout\ & ( (\U1|state.ack_addr~q\ & (\U1|U2|Equal0~0_combout\ & (\U1|process_0~2_combout\ & !\U1|process_0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000110011011100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_state.ack_addr~q\,
	datab => \U1|U2|ALT_INV_Equal0~0_combout\,
	datac => \U1|ALT_INV_process_0~2_combout\,
	datad => \U1|ALT_INV_process_0~0_combout\,
	datae => \U1|ALT_INV_state.ack_addr_end~q\,
	dataf => \P2|ALT_INV_LessThan0~1_combout\,
	combout => \U1|state~42_combout\);

-- Location: FF_X77_Y5_N20
\U1|state.ack_addr_end\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \U1|state~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|state.ack_addr_end~q\);

-- Location: MLABCELL_X78_Y5_N30
\U1|state~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|state~40_combout\ = ( \U1|state.recv_data~q\ & ( \U1|state.ack_addr_end~q\ & ( (!\P2|LessThan0~1_combout\ & (((\U1|state~39_combout\) # (\U1|U2|Equal0~0_combout\)) # (\U1|state.send_recv~q\))) ) ) ) # ( !\U1|state.recv_data~q\ & ( 
-- \U1|state.ack_addr_end~q\ & ( (!\P2|LessThan0~1_combout\ & ((\U1|U2|Equal0~0_combout\) # (\U1|state.send_recv~q\))) ) ) ) # ( \U1|state.recv_data~q\ & ( !\U1|state.ack_addr_end~q\ & ( (!\P2|LessThan0~1_combout\ & ((\U1|state~39_combout\) # 
-- (\U1|state.send_recv~q\))) ) ) ) # ( !\U1|state.recv_data~q\ & ( !\U1|state.ack_addr_end~q\ & ( (\U1|state.send_recv~q\ & !\P2|LessThan0~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100001111000001110000011100000111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_state.send_recv~q\,
	datab => \U1|U2|ALT_INV_Equal0~0_combout\,
	datac => \P2|ALT_INV_LessThan0~1_combout\,
	datad => \U1|ALT_INV_state~39_combout\,
	datae => \U1|ALT_INV_state.recv_data~q\,
	dataf => \U1|ALT_INV_state.ack_addr_end~q\,
	combout => \U1|state~40_combout\);

-- Location: FF_X78_Y5_N32
\U1|state.recv_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \U1|state~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|state.recv_data~q\);

-- Location: LABCELL_X75_Y5_N48
\U1|state~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|state~25_combout\ = ( !\P2|LessThan0~1_combout\ & ( (!\U1|start_sig~0_combout\ & (\U1|state.recv_data~q\ & (\scl~input_o\ & \U1|U3|Equal0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_start_sig~0_combout\,
	datab => \U1|ALT_INV_state.recv_data~q\,
	datac => \ALT_INV_scl~input_o\,
	datad => \U1|U3|ALT_INV_Equal0~0_combout\,
	dataf => \P2|ALT_INV_LessThan0~1_combout\,
	combout => \U1|state~25_combout\);

-- Location: FF_X75_Y5_N50
\U1|state.stop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \U1|state~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|state.stop~q\);

-- Location: FF_X75_Y5_N11
\P2|rst_cnt[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \P2|Add0~1_sumout\,
	clrn => \P1|pll_inst|altera_pll_i|locked_wire\(0),
	ena => \P2|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \P2|rst_cnt[4]~DUPLICATE_q\);

-- Location: LABCELL_X75_Y5_N30
\U1|state~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|state~28_combout\ = ( !\U1|state.send_recv~q\ & ( \P2|rst_cnt[4]~DUPLICATE_q\ & ( (\P2|rst_cnt[6]~DUPLICATE_q\ & (!\U1|state.stop~q\ & \P2|rst_cnt\(5))) ) ) ) # ( !\U1|state.send_recv~q\ & ( !\P2|rst_cnt[4]~DUPLICATE_q\ & ( (!\U1|state~27_combout\ & 
-- (\P2|rst_cnt[6]~DUPLICATE_q\ & (!\U1|state.stop~q\ & \P2|rst_cnt\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000000000000000000001100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_state~27_combout\,
	datab => \P2|ALT_INV_rst_cnt[6]~DUPLICATE_q\,
	datac => \U1|ALT_INV_state.stop~q\,
	datad => \P2|ALT_INV_rst_cnt\(5),
	datae => \U1|ALT_INV_state.send_recv~q\,
	dataf => \P2|ALT_INV_rst_cnt[4]~DUPLICATE_q\,
	combout => \U1|state~28_combout\);

-- Location: LABCELL_X77_Y5_N3
\U1|state~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|state~38_combout\ = ( !\U1|process_0~0_combout\ & ( (\U1|state~28_combout\ & (((!\U1|U2|Equal0~0_combout\ & \U1|state.ack_data~q\)) # (\U1|state~29_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101000101000001010100010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_state~28_combout\,
	datab => \U1|U2|ALT_INV_Equal0~0_combout\,
	datac => \U1|ALT_INV_state~29_combout\,
	datad => \U1|ALT_INV_state.ack_data~q\,
	dataf => \U1|ALT_INV_process_0~0_combout\,
	combout => \U1|state~38_combout\);

-- Location: FF_X77_Y5_N5
\U1|state.ack_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \U1|state~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|state.ack_data~q\);

-- Location: LABCELL_X77_Y5_N54
\U1|state~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|state~41_combout\ = ( \U1|process_0~0_combout\ & ( (!\U1|U2|Equal0~0_combout\ & (!\P2|LessThan0~1_combout\ & \U1|state.ack_data_end~q\)) ) ) # ( !\U1|process_0~0_combout\ & ( (!\P2|LessThan0~1_combout\ & ((!\U1|U2|Equal0~0_combout\ & 
-- ((\U1|state.ack_data_end~q\))) # (\U1|U2|Equal0~0_combout\ & (\U1|state.ack_data~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000100001101000000000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_state.ack_data~q\,
	datab => \U1|U2|ALT_INV_Equal0~0_combout\,
	datac => \P2|ALT_INV_LessThan0~1_combout\,
	datad => \U1|ALT_INV_state.ack_data_end~q\,
	dataf => \U1|ALT_INV_process_0~0_combout\,
	combout => \U1|state~41_combout\);

-- Location: FF_X77_Y5_N56
\U1|state.ack_data_end\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \U1|state~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|state.ack_data_end~q\);

-- Location: LABCELL_X79_Y5_N9
\U1|sda~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|sda~1_combout\ = ( !\U1|state.ack_addr_end~q\ & ( !\U1|state.ack_data_end~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|ALT_INV_state.ack_data_end~q\,
	dataf => \U1|ALT_INV_state.ack_addr_end~q\,
	combout => \U1|sda~1_combout\);

-- Location: LABCELL_X77_Y5_N27
\U1|busy~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|busy~0_combout\ = ( !\U1|state.addr~q\ & ( (\U1|state.idle~q\ & !\U1|state.ack_addr~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_state.idle~q\,
	datad => \U1|ALT_INV_state.ack_addr~q\,
	dataf => \U1|ALT_INV_state.addr~q\,
	combout => \U1|busy~0_combout\);

-- Location: LABCELL_X73_Y5_N48
\i2c_status~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2c_status~21_combout\ = ( \i2c_status.busy_wait~q\ & ( \U1|busy~0_combout\ & ( !\P2|LessThan0~1_combout\ ) ) ) # ( !\i2c_status.busy_wait~q\ & ( \U1|busy~0_combout\ & ( (\i2c_status.mem_write~q\ & !\P2|LessThan0~1_combout\) ) ) ) # ( 
-- \i2c_status.busy_wait~q\ & ( !\U1|busy~0_combout\ & ( (\i2c_status.mem_write~q\ & !\P2|LessThan0~1_combout\) ) ) ) # ( !\i2c_status.busy_wait~q\ & ( !\U1|busy~0_combout\ & ( (\i2c_status.mem_write~q\ & !\P2|LessThan0~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000110000001100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_i2c_status.mem_write~q\,
	datac => \P2|ALT_INV_LessThan0~1_combout\,
	datae => \ALT_INV_i2c_status.busy_wait~q\,
	dataf => \U1|ALT_INV_busy~0_combout\,
	combout => \i2c_status~21_combout\);

-- Location: FF_X73_Y5_N49
\i2c_status.busy_wait\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \i2c_status~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_status.busy_wait~q\);

-- Location: LABCELL_X74_Y5_N21
\i2c_status~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2c_status~22_combout\ = ( \i2c_status.addr~q\ & ( !\U1|state.send_recv~q\ ) ) # ( !\i2c_status.addr~q\ & ( (!\U1|state.send_recv~q\ & ((\i2c_status.data_low~q\) # (\i2c_status.data_hi~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010101010000010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_state.send_recv~q\,
	datac => \ALT_INV_i2c_status.data_hi~q\,
	datad => \ALT_INV_i2c_status.data_low~q\,
	dataf => \ALT_INV_i2c_status.addr~q\,
	combout => \i2c_status~22_combout\);

-- Location: FF_X74_Y5_N31
\i2c_status.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \i2c_status~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_status.idle~q\);

-- Location: LABCELL_X74_Y5_N30
\i2c_status~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2c_status~23_combout\ = ( \i2c_status.idle~q\ & ( \i2c_status.mem_write~q\ & ( !\P2|LessThan0~1_combout\ ) ) ) # ( !\i2c_status.idle~q\ & ( \i2c_status.mem_write~q\ & ( !\P2|LessThan0~1_combout\ ) ) ) # ( \i2c_status.idle~q\ & ( 
-- !\i2c_status.mem_write~q\ & ( (!\P2|LessThan0~1_combout\ & (((!\i2c_status.busy_wait~q\ & !\i2c_status~22_combout\)) # (\U1|busy~0_combout\))) ) ) ) # ( !\i2c_status.idle~q\ & ( !\i2c_status.mem_write~q\ & ( (\U1|busy~0_combout\ & 
-- !\P2|LessThan0~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000110101010000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_busy~0_combout\,
	datab => \ALT_INV_i2c_status.busy_wait~q\,
	datac => \ALT_INV_i2c_status~22_combout\,
	datad => \P2|ALT_INV_LessThan0~1_combout\,
	datae => \ALT_INV_i2c_status.idle~q\,
	dataf => \ALT_INV_i2c_status.mem_write~q\,
	combout => \i2c_status~23_combout\);

-- Location: FF_X74_Y5_N32
\i2c_status.idle~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \i2c_status~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_status.idle~DUPLICATE_q\);

-- Location: LABCELL_X74_Y5_N51
\i2c_status~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2c_status~19_combout\ = ( \U1|state.send_recv~q\ & ( (\U1|busy~0_combout\ & (\i2c_err~0_combout\ & !\i2c_status.idle~DUPLICATE_q\)) ) ) # ( !\U1|state.send_recv~q\ & ( (\U1|busy~0_combout\ & (\i2c_err~0_combout\ & ((!\i2c_status.idle~DUPLICATE_q\) # 
-- (\i2c_status.addr~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010001000100000001000100010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_busy~0_combout\,
	datab => \ALT_INV_i2c_err~0_combout\,
	datac => \ALT_INV_i2c_status.idle~DUPLICATE_q\,
	datad => \ALT_INV_i2c_status.addr~q\,
	dataf => \U1|ALT_INV_state.send_recv~q\,
	combout => \i2c_status~19_combout\);

-- Location: FF_X74_Y5_N53
\i2c_status.addr\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \i2c_status~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_status.addr~q\);

-- Location: LABCELL_X74_Y5_N39
\i2c_status~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2c_status~18_combout\ = ( \i2c_status.addr~q\ & ( (!\P2|LessThan0~1_combout\ & (((\U1|busy~0_combout\ & \i2c_status.data_hi~q\)) # (\U1|state.send_recv~q\))) ) ) # ( !\i2c_status.addr~q\ & ( (\U1|busy~0_combout\ & (!\U1|state.send_recv~q\ & 
-- (!\P2|LessThan0~1_combout\ & \i2c_status.data_hi~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000110000011100000011000001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_busy~0_combout\,
	datab => \U1|ALT_INV_state.send_recv~q\,
	datac => \P2|ALT_INV_LessThan0~1_combout\,
	datad => \ALT_INV_i2c_status.data_hi~q\,
	dataf => \ALT_INV_i2c_status.addr~q\,
	combout => \i2c_status~18_combout\);

-- Location: FF_X74_Y5_N41
\i2c_status.data_hi\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \i2c_status~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_status.data_hi~q\);

-- Location: LABCELL_X74_Y5_N36
\i2c_status~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2c_status~20_combout\ = ( \i2c_status.data_hi~q\ & ( (!\P2|LessThan0~1_combout\ & (((\U1|busy~0_combout\ & \i2c_status.data_low~q\)) # (\U1|state.send_recv~q\))) ) ) # ( !\i2c_status.data_hi~q\ & ( (\U1|busy~0_combout\ & (!\U1|state.send_recv~q\ & 
-- (!\P2|LessThan0~1_combout\ & \i2c_status.data_low~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000110000011100000011000001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_busy~0_combout\,
	datab => \U1|ALT_INV_state.send_recv~q\,
	datac => \P2|ALT_INV_LessThan0~1_combout\,
	datad => \ALT_INV_i2c_status.data_low~q\,
	dataf => \ALT_INV_i2c_status.data_hi~q\,
	combout => \i2c_status~20_combout\);

-- Location: FF_X74_Y5_N38
\i2c_status.data_low\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \i2c_status~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_status.data_low~q\);

-- Location: LABCELL_X74_Y5_N27
\i2c_status~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2c_status~24_combout\ = ( \i2c_status.data_low~q\ & ( (!\P2|LessThan0~1_combout\ & \U1|state.send_recv~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P2|ALT_INV_LessThan0~1_combout\,
	datac => \U1|ALT_INV_state.send_recv~q\,
	dataf => \ALT_INV_i2c_status.data_low~q\,
	combout => \i2c_status~24_combout\);

-- Location: FF_X74_Y5_N28
\i2c_status.mem_write\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \i2c_status~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_status.mem_write~q\);

-- Location: LABCELL_X75_Y5_N36
\i2c_err~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2c_err~0_combout\ = ( \P2|rst_cnt\(2) & ( \P2|rst_cnt[6]~DUPLICATE_q\ & ( (!\i2c_status.mem_write~q\ & \P2|rst_cnt\(5)) ) ) ) # ( !\P2|rst_cnt\(2) & ( \P2|rst_cnt[6]~DUPLICATE_q\ & ( (!\i2c_status.mem_write~q\ & (\P2|rst_cnt\(5) & 
-- ((!\P2|LessThan0~0_combout\) # (\P2|rst_cnt[4]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000101100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \P2|ALT_INV_LessThan0~0_combout\,
	datab => \P2|ALT_INV_rst_cnt[4]~DUPLICATE_q\,
	datac => \ALT_INV_i2c_status.mem_write~q\,
	datad => \P2|ALT_INV_rst_cnt\(5),
	datae => \P2|ALT_INV_rst_cnt\(2),
	dataf => \P2|ALT_INV_rst_cnt[6]~DUPLICATE_q\,
	combout => \i2c_err~0_combout\);

-- Location: LABCELL_X74_Y5_N48
\i2c_err~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2c_err~1_combout\ = ( !\i2c_status.busy_wait~q\ & ( (!\U1|busy~0_combout\ & (\i2c_err~0_combout\ & \i2c_status.idle~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_busy~0_combout\,
	datab => \ALT_INV_i2c_err~0_combout\,
	datac => \ALT_INV_i2c_status.idle~q\,
	dataf => \ALT_INV_i2c_status.busy_wait~q\,
	combout => \i2c_err~1_combout\);

-- Location: FF_X74_Y5_N49
i2c_err : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \i2c_err~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_err~q\);

-- Location: LABCELL_X73_Y5_N30
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( i2c_err_cnt(0) ) + ( \i2c_err~q\ ) + ( !VCC ))
-- \Add0~2\ = CARRY(( i2c_err_cnt(0) ) + ( \i2c_err~q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_i2c_err~q\,
	datad => ALT_INV_i2c_err_cnt(0),
	cin => GND,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: IOIBUF_X36_Y0_N18
\key[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(1),
	o => \key[1]~input_o\);

-- Location: LABCELL_X75_Y5_N42
\process_1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_1~0_combout\ = ( \P2|rst_cnt\(2) & ( \P2|rst_cnt[4]~DUPLICATE_q\ & ( (!\key[1]~input_o\) # ((!\P2|rst_cnt[6]~DUPLICATE_q\) # (!\P2|rst_cnt\(5))) ) ) ) # ( !\P2|rst_cnt\(2) & ( \P2|rst_cnt[4]~DUPLICATE_q\ & ( (!\key[1]~input_o\) # 
-- ((!\P2|rst_cnt[6]~DUPLICATE_q\) # (!\P2|rst_cnt\(5))) ) ) ) # ( \P2|rst_cnt\(2) & ( !\P2|rst_cnt[4]~DUPLICATE_q\ & ( (!\key[1]~input_o\) # ((!\P2|rst_cnt[6]~DUPLICATE_q\) # (!\P2|rst_cnt\(5))) ) ) ) # ( !\P2|rst_cnt\(2) & ( !\P2|rst_cnt[4]~DUPLICATE_q\ & 
-- ( (!\key[1]~input_o\) # ((!\P2|rst_cnt[6]~DUPLICATE_q\) # ((!\P2|rst_cnt\(5)) # (\P2|LessThan0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111101111111111111110111011111111111011101111111111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_key[1]~input_o\,
	datab => \P2|ALT_INV_rst_cnt[6]~DUPLICATE_q\,
	datac => \P2|ALT_INV_LessThan0~0_combout\,
	datad => \P2|ALT_INV_rst_cnt\(5),
	datae => \P2|ALT_INV_rst_cnt\(2),
	dataf => \P2|ALT_INV_rst_cnt[4]~DUPLICATE_q\,
	combout => \process_1~0_combout\);

-- Location: FF_X73_Y5_N31
\i2c_err_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \Add0~1_sumout\,
	sclr => \process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i2c_err_cnt(0));

-- Location: LABCELL_X73_Y5_N33
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( i2c_err_cnt(1) ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( i2c_err_cnt(1) ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_i2c_err_cnt(1),
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: FF_X73_Y5_N34
\i2c_err_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \Add0~5_sumout\,
	sclr => \process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i2c_err_cnt(1));

-- Location: LABCELL_X73_Y5_N36
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( i2c_err_cnt(2) ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( i2c_err_cnt(2) ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_i2c_err_cnt(2),
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X73_Y5_N38
\i2c_err_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \Add0~9_sumout\,
	sclr => \process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i2c_err_cnt(2));

-- Location: LABCELL_X73_Y5_N39
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( i2c_err_cnt(3) ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_i2c_err_cnt(3),
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\);

-- Location: FF_X73_Y5_N40
\i2c_err_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \Add0~13_sumout\,
	sclr => \process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i2c_err_cnt(3));

-- Location: LABCELL_X73_Y5_N0
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( i2c_recv_cnt(0) ) + ( VCC ) + ( !VCC ))
-- \Add1~2\ = CARRY(( i2c_recv_cnt(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_i2c_recv_cnt(0),
	cin => GND,
	sumout => \Add1~1_sumout\,
	cout => \Add1~2\);

-- Location: LABCELL_X73_Y5_N18
\i2c_recv_cnt[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i2c_recv_cnt[1]~0_combout\ = ( \i2c_err~q\ & ( \process_1~0_combout\ ) ) # ( !\i2c_err~q\ & ( \process_1~0_combout\ ) ) # ( !\i2c_err~q\ & ( !\process_1~0_combout\ & ( \i2c_status.mem_write~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_i2c_status.mem_write~q\,
	datae => \ALT_INV_i2c_err~q\,
	dataf => \ALT_INV_process_1~0_combout\,
	combout => \i2c_recv_cnt[1]~0_combout\);

-- Location: FF_X73_Y5_N1
\i2c_recv_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \Add1~1_sumout\,
	sclr => \process_1~0_combout\,
	ena => \i2c_recv_cnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i2c_recv_cnt(0));

-- Location: LABCELL_X73_Y5_N3
\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( i2c_recv_cnt(1) ) + ( GND ) + ( \Add1~2\ ))
-- \Add1~6\ = CARRY(( i2c_recv_cnt(1) ) + ( GND ) + ( \Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_i2c_recv_cnt(1),
	cin => \Add1~2\,
	sumout => \Add1~5_sumout\,
	cout => \Add1~6\);

-- Location: FF_X73_Y5_N4
\i2c_recv_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \Add1~5_sumout\,
	sclr => \process_1~0_combout\,
	ena => \i2c_recv_cnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i2c_recv_cnt(1));

-- Location: LABCELL_X73_Y5_N6
\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( i2c_recv_cnt(2) ) + ( GND ) + ( \Add1~6\ ))
-- \Add1~10\ = CARRY(( i2c_recv_cnt(2) ) + ( GND ) + ( \Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_i2c_recv_cnt(2),
	cin => \Add1~6\,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\);

-- Location: FF_X73_Y5_N7
\i2c_recv_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \Add1~9_sumout\,
	sclr => \process_1~0_combout\,
	ena => \i2c_recv_cnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i2c_recv_cnt(2));

-- Location: LABCELL_X73_Y5_N9
\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( i2c_recv_cnt(3) ) + ( GND ) + ( \Add1~10\ ))
-- \Add1~14\ = CARRY(( i2c_recv_cnt(3) ) + ( GND ) + ( \Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_i2c_recv_cnt(3),
	cin => \Add1~10\,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\);

-- Location: FF_X73_Y5_N10
\i2c_recv_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \Add1~13_sumout\,
	sclr => \process_1~0_combout\,
	ena => \i2c_recv_cnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i2c_recv_cnt(3));

-- Location: LABCELL_X73_Y5_N12
\Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( i2c_recv_cnt(4) ) + ( GND ) + ( \Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_i2c_recv_cnt(4),
	cin => \Add1~14\,
	sumout => \Add1~17_sumout\);

-- Location: FF_X73_Y5_N13
\i2c_recv_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \Add1~17_sumout\,
	sclr => \process_1~0_combout\,
	ena => \i2c_recv_cnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i2c_recv_cnt(4));

-- Location: IOIBUF_X2_Y0_N58
\sw[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(9),
	o => \sw[9]~input_o\);

-- Location: LABCELL_X77_Y5_N9
\U1|data[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|data[3]~0_combout\ = ( !\P2|LessThan0~1_combout\ & ( (\U1|state.ack_data~q\ & (!\U1|process_0~0_combout\ & \U1|U2|Equal0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_state.ack_data~q\,
	datab => \U1|ALT_INV_process_0~0_combout\,
	datac => \U1|U2|ALT_INV_Equal0~0_combout\,
	dataf => \P2|ALT_INV_LessThan0~1_combout\,
	combout => \U1|data[3]~0_combout\);

-- Location: FF_X75_Y6_N26
\U1|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \U1|shift_reg\(0),
	sload => VCC,
	ena => \U1|data[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|data\(0));

-- Location: LABCELL_X74_Y5_N54
\wrdata[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \wrdata[1]~1_combout\ = ( !\P2|LessThan0~1_combout\ & ( (!\U1|state.send_recv~q\ & (!\i2c_status.idle~DUPLICATE_q\ & ((\U1|busy~0_combout\)))) # (\U1|state.send_recv~q\ & (((!\i2c_status.idle~DUPLICATE_q\ & \U1|busy~0_combout\)) # 
-- (\i2c_status.data_low~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111001101000001011100110100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_state.send_recv~q\,
	datab => \ALT_INV_i2c_status.idle~DUPLICATE_q\,
	datac => \ALT_INV_i2c_status.data_low~q\,
	datad => \U1|ALT_INV_busy~0_combout\,
	dataf => \P2|ALT_INV_LessThan0~1_combout\,
	combout => \wrdata[1]~1_combout\);

-- Location: FF_X80_Y5_N34
\wrdata[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \U1|data\(0),
	sclr => \ALT_INV_i2c_status.data_low~q\,
	sload => VCC,
	ena => \wrdata[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wrdata(0));

-- Location: LABCELL_X74_Y5_N18
\wraddress[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \wraddress[0]~0_combout\ = ( \i2c_status.addr~q\ & ( (!\P2|LessThan0~1_combout\ & (((!\i2c_status.idle~DUPLICATE_q\ & \U1|busy~0_combout\)) # (\U1|state.send_recv~q\))) ) ) # ( !\i2c_status.addr~q\ & ( (!\i2c_status.idle~DUPLICATE_q\ & 
-- (!\P2|LessThan0~1_combout\ & \U1|busy~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000001010000110100000101000011010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_state.send_recv~q\,
	datab => \ALT_INV_i2c_status.idle~DUPLICATE_q\,
	datac => \P2|ALT_INV_LessThan0~1_combout\,
	datad => \U1|ALT_INV_busy~0_combout\,
	dataf => \ALT_INV_i2c_status.addr~q\,
	combout => \wraddress[0]~0_combout\);

-- Location: FF_X75_Y6_N5
\wraddress[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \U1|data\(0),
	sclr => \ALT_INV_i2c_status.addr~q\,
	sload => VCC,
	ena => \wraddress[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wraddress(0));

-- Location: FF_X75_Y6_N32
\U1|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \U1|shift_reg\(1),
	sload => VCC,
	ena => \U1|data[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|data\(1));

-- Location: LABCELL_X75_Y6_N0
\wraddress[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \wraddress[1]~feeder_combout\ = \U1|data\(1)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|ALT_INV_data\(1),
	combout => \wraddress[1]~feeder_combout\);

-- Location: FF_X75_Y6_N2
\wraddress[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \wraddress[1]~feeder_combout\,
	sclr => \ALT_INV_i2c_status.addr~q\,
	ena => \wraddress[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wraddress(1));

-- Location: LABCELL_X71_Y6_N30
\U1|data[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|data[2]~feeder_combout\ = ( \U1|shift_reg\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U1|ALT_INV_shift_reg\(2),
	combout => \U1|data[2]~feeder_combout\);

-- Location: FF_X71_Y6_N32
\U1|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \U1|data[2]~feeder_combout\,
	ena => \U1|data[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|data\(2));

-- Location: LABCELL_X75_Y6_N6
\wraddress[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \wraddress[2]~feeder_combout\ = ( \U1|data\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U1|ALT_INV_data\(2),
	combout => \wraddress[2]~feeder_combout\);

-- Location: FF_X75_Y6_N7
\wraddress[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \wraddress[2]~feeder_combout\,
	sclr => \ALT_INV_i2c_status.addr~q\,
	ena => \wraddress[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wraddress(2));

-- Location: FF_X75_Y6_N35
\U1|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \U1|shift_reg\(3),
	sload => VCC,
	ena => \U1|data[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|data\(3));

-- Location: LABCELL_X75_Y6_N12
\wraddress[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \wraddress[3]~feeder_combout\ = \U1|data\(3)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|ALT_INV_data\(3),
	combout => \wraddress[3]~feeder_combout\);

-- Location: FF_X75_Y6_N13
\wraddress[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \wraddress[3]~feeder_combout\,
	sclr => \ALT_INV_i2c_status.addr~q\,
	ena => \wraddress[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wraddress(3));

-- Location: FF_X77_Y5_N47
\U1|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \U1|shift_reg\(4),
	sload => VCC,
	ena => \U1|data[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|data\(4));

-- Location: FF_X75_Y6_N17
\wraddress[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \U1|data\(4),
	sclr => \ALT_INV_i2c_status.addr~q\,
	sload => VCC,
	ena => \wraddress[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wraddress(4));

-- Location: FF_X80_Y6_N47
\U1|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \U1|shift_reg\(5),
	sload => VCC,
	ena => \U1|data[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|data\(5));

-- Location: LABCELL_X75_Y6_N9
\wraddress[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \wraddress[5]~feeder_combout\ = ( \U1|data\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U1|ALT_INV_data\(5),
	combout => \wraddress[5]~feeder_combout\);

-- Location: FF_X75_Y6_N11
\wraddress[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \wraddress[5]~feeder_combout\,
	sclr => \ALT_INV_i2c_status.addr~q\,
	ena => \wraddress[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wraddress(5));

-- Location: FF_X80_Y6_N29
\U1|data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \U1|shift_reg\(6),
	sload => VCC,
	ena => \U1|data[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|data\(6));

-- Location: LABCELL_X75_Y6_N18
\wraddress[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \wraddress[6]~feeder_combout\ = ( \U1|data\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U1|ALT_INV_data\(6),
	combout => \wraddress[6]~feeder_combout\);

-- Location: FF_X75_Y6_N20
\wraddress[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \wraddress[6]~feeder_combout\,
	sclr => \ALT_INV_i2c_status.addr~q\,
	ena => \wraddress[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wraddress(6));

-- Location: FF_X79_Y5_N53
\U1|data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \U1|shift_reg\(7),
	sload => VCC,
	ena => \U1|data[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|data\(7));

-- Location: LABCELL_X75_Y6_N21
\wraddress[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \wraddress[7]~feeder_combout\ = ( \U1|data\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U1|ALT_INV_data\(7),
	combout => \wraddress[7]~feeder_combout\);

-- Location: FF_X75_Y6_N22
\wraddress[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \wraddress[7]~feeder_combout\,
	sclr => \ALT_INV_i2c_status.addr~q\,
	ena => \wraddress[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wraddress(7));

-- Location: IOIBUF_X12_Y0_N18
\sw[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(0),
	o => \sw[0]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\sw[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(1),
	o => \sw[1]~input_o\);

-- Location: IOIBUF_X8_Y0_N35
\sw[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(2),
	o => \sw[2]~input_o\);

-- Location: IOIBUF_X4_Y0_N52
\sw[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(3),
	o => \sw[3]~input_o\);

-- Location: IOIBUF_X2_Y0_N41
\sw[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(4),
	o => \sw[4]~input_o\);

-- Location: IOIBUF_X16_Y0_N18
\sw[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(5),
	o => \sw[5]~input_o\);

-- Location: IOIBUF_X4_Y0_N35
\sw[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(6),
	o => \sw[6]~input_o\);

-- Location: IOIBUF_X4_Y0_N1
\sw[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(7),
	o => \sw[7]~input_o\);

-- Location: FF_X80_Y5_N40
\wrdata[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \U1|data\(1),
	sclr => \ALT_INV_i2c_status.data_low~q\,
	sload => VCC,
	ena => \wrdata[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wrdata(1));

-- Location: LABCELL_X79_Y5_N0
\wrdata[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \wrdata[2]~feeder_combout\ = ( \U1|data\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U1|ALT_INV_data\(2),
	combout => \wrdata[2]~feeder_combout\);

-- Location: FF_X79_Y5_N1
\wrdata[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \wrdata[2]~feeder_combout\,
	sclr => \ALT_INV_i2c_status.data_low~q\,
	ena => \wrdata[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wrdata(2));

-- Location: LABCELL_X79_Y5_N3
\wrdata[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \wrdata[3]~feeder_combout\ = ( \U1|data\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U1|ALT_INV_data\(3),
	combout => \wrdata[3]~feeder_combout\);

-- Location: FF_X79_Y5_N5
\wrdata[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \wrdata[3]~feeder_combout\,
	sclr => \ALT_INV_i2c_status.data_low~q\,
	ena => \wrdata[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wrdata(3));

-- Location: FF_X80_Y5_N47
\wrdata[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \U1|data\(4),
	sclr => \ALT_INV_i2c_status.data_low~q\,
	sload => VCC,
	ena => \wrdata[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wrdata(4));

-- Location: LABCELL_X79_Y5_N36
\wrdata[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \wrdata[5]~feeder_combout\ = ( \U1|data\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U1|ALT_INV_data\(5),
	combout => \wrdata[5]~feeder_combout\);

-- Location: FF_X79_Y5_N37
\wrdata[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \wrdata[5]~feeder_combout\,
	sclr => \ALT_INV_i2c_status.data_low~q\,
	ena => \wrdata[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wrdata(5));

-- Location: FF_X79_Y5_N43
\wrdata[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \U1|data\(6),
	sclr => \ALT_INV_i2c_status.data_low~q\,
	sload => VCC,
	ena => \wrdata[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wrdata(6));

-- Location: LABCELL_X79_Y5_N39
\wrdata[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \wrdata[7]~feeder_combout\ = \U1|data\(7)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_data\(7),
	combout => \wrdata[7]~feeder_combout\);

-- Location: FF_X79_Y5_N40
\wrdata[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \wrdata[7]~feeder_combout\,
	sclr => \ALT_INV_i2c_status.data_low~q\,
	ena => \wrdata[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wrdata(7));

-- Location: LABCELL_X74_Y5_N57
\wrdata[9]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \wrdata[9]~0_combout\ = ( !\P2|LessThan0~1_combout\ & ( (!\U1|state.send_recv~q\ & (!\i2c_status.idle~DUPLICATE_q\ & ((\U1|busy~0_combout\)))) # (\U1|state.send_recv~q\ & (((!\i2c_status.idle~DUPLICATE_q\ & \U1|busy~0_combout\)) # 
-- (\i2c_status.data_hi~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111001101000001011100110100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_state.send_recv~q\,
	datab => \ALT_INV_i2c_status.idle~DUPLICATE_q\,
	datac => \ALT_INV_i2c_status.data_hi~q\,
	datad => \U1|ALT_INV_busy~0_combout\,
	dataf => \P2|ALT_INV_LessThan0~1_combout\,
	combout => \wrdata[9]~0_combout\);

-- Location: FF_X74_Y5_N4
\wrdata[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \U1|data\(0),
	sclr => \ALT_INV_i2c_status.data_hi~q\,
	sload => VCC,
	ena => \wrdata[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wrdata(8));

-- Location: FF_X77_Y6_N34
\wrdata[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \U1|data\(1),
	sclr => \ALT_INV_i2c_status.data_hi~q\,
	sload => VCC,
	ena => \wrdata[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wrdata(9));

-- Location: FF_X74_Y5_N7
\wrdata[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \U1|data\(2),
	sclr => \ALT_INV_i2c_status.data_hi~q\,
	sload => VCC,
	ena => \wrdata[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wrdata(10));

-- Location: FF_X77_Y6_N10
\wrdata[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \U1|data\(3),
	sclr => \ALT_INV_i2c_status.data_hi~q\,
	sload => VCC,
	ena => \wrdata[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wrdata(11));

-- Location: FF_X77_Y6_N16
\wrdata[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \U1|data\(4),
	sclr => \ALT_INV_i2c_status.data_hi~q\,
	sload => VCC,
	ena => \wrdata[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wrdata(12));

-- Location: LABCELL_X74_Y5_N0
\wrdata[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \wrdata[13]~feeder_combout\ = ( \U1|data\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U1|ALT_INV_data\(5),
	combout => \wrdata[13]~feeder_combout\);

-- Location: FF_X74_Y5_N1
\wrdata[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \wrdata[13]~feeder_combout\,
	sclr => \ALT_INV_i2c_status.data_hi~q\,
	ena => \wrdata[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wrdata(13));

-- Location: LABCELL_X74_Y5_N12
\wrdata[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \wrdata[14]~feeder_combout\ = ( \U1|data\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U1|ALT_INV_data\(6),
	combout => \wrdata[14]~feeder_combout\);

-- Location: FF_X74_Y5_N13
\wrdata[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \wrdata[14]~feeder_combout\,
	sclr => \ALT_INV_i2c_status.data_hi~q\,
	ena => \wrdata[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wrdata(14));

-- Location: LABCELL_X74_Y5_N9
\wrdata[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \wrdata[15]~feeder_combout\ = ( \U1|data\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U1|ALT_INV_data\(7),
	combout => \wrdata[15]~feeder_combout\);

-- Location: FF_X74_Y5_N10
\wrdata[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \wrdata[15]~feeder_combout\,
	sclr => \ALT_INV_i2c_status.data_hi~q\,
	ena => \wrdata[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wrdata(15));

-- Location: M10K_X76_Y6_N0
\M1|altsyncram_component|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "ram:M1|altsyncram:altsyncram_component|altsyncram_16u3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 40,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 8,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 40,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 255,
	port_b_logical_ram_depth => 256,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \i2c_status.mem_write~q\,
	portbre => VCC,
	clk0 => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	clk1 => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	ena0 => \i2c_status.mem_write~q\,
	portadatain => \M1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \M1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \M1|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \M1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: MLABCELL_X78_Y6_N21
\D1|D1|CNV0|B1|cnt[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|D1|CNV0|B1|cnt[0]~5_combout\ = ( \D1|D1|CNV0|B1|cnt\(0) & ( !\D1|D1|CNV0|B1|cnt[4]~0_combout\ ) ) # ( !\D1|D1|CNV0|B1|cnt\(0) & ( (\D1|D1|led7_status~q\ & \D1|D1|CNV0|B1|cnt[4]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101111111110000000000000000010101011111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D1|D1|ALT_INV_led7_status~q\,
	datad => \D1|D1|CNV0|B1|ALT_INV_cnt[4]~0_combout\,
	datae => \D1|D1|CNV0|B1|ALT_INV_cnt\(0),
	combout => \D1|D1|CNV0|B1|cnt[0]~5_combout\);

-- Location: FF_X78_Y6_N22
\D1|D1|CNV0|B1|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \D1|D1|CNV0|B1|cnt[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|D1|CNV0|B1|cnt\(0));

-- Location: MLABCELL_X78_Y6_N0
\D1|D1|CNV0|B1|cnt[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|D1|CNV0|B1|cnt[1]~3_combout\ = ( \D1|D1|CNV0|B1|cnt\(1) & ( \D1|D1|CNV0|B1|cnt\(0) & ( !\D1|D1|CNV0|B1|cnt[4]~0_combout\ ) ) ) # ( !\D1|D1|CNV0|B1|cnt\(1) & ( \D1|D1|CNV0|B1|cnt\(0) & ( (\D1|D1|CNV0|B1|cnt[4]~0_combout\ & \D1|D1|led7_status~q\) ) ) ) 
-- # ( \D1|D1|CNV0|B1|cnt\(1) & ( !\D1|D1|CNV0|B1|cnt\(0) & ( (!\D1|D1|CNV0|B1|cnt[4]~0_combout\) # (\D1|D1|led7_status~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101011111010111100000101000001011010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D1|D1|CNV0|B1|ALT_INV_cnt[4]~0_combout\,
	datac => \D1|D1|ALT_INV_led7_status~q\,
	datae => \D1|D1|CNV0|B1|ALT_INV_cnt\(1),
	dataf => \D1|D1|CNV0|B1|ALT_INV_cnt\(0),
	combout => \D1|D1|CNV0|B1|cnt[1]~3_combout\);

-- Location: FF_X78_Y6_N2
\D1|D1|CNV0|B1|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \D1|D1|CNV0|B1|cnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|D1|CNV0|B1|cnt\(1));

-- Location: FF_X78_Y6_N44
\D1|D1|CNV0|B1|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \D1|D1|CNV0|B1|cnt[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|D1|CNV0|B1|cnt\(3));

-- Location: MLABCELL_X78_Y6_N42
\D1|D1|CNV0|B1|cnt[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|D1|CNV0|B1|cnt[3]~1_combout\ = ( \D1|D1|CNV0|B1|cnt\(3) & ( \D1|D1|CNV0|B1|cnt\(0) & ( (\D1|D1|led7_status~q\ & (((!\D1|D1|CNV0|B1|cnt\(1)) # (!\D1|D1|CNV0|B1|cnt\(2))) # (\D1|D1|CNV0|B1|cnt\(4)))) ) ) ) # ( !\D1|D1|CNV0|B1|cnt\(3) & ( 
-- \D1|D1|CNV0|B1|cnt\(0) & ( (!\D1|D1|CNV0|B1|cnt\(4) & (\D1|D1|led7_status~q\ & (\D1|D1|CNV0|B1|cnt\(1) & \D1|D1|CNV0|B1|cnt\(2)))) ) ) ) # ( \D1|D1|CNV0|B1|cnt\(3) & ( !\D1|D1|CNV0|B1|cnt\(0) & ( \D1|D1|led7_status~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000100011001100110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D1|D1|CNV0|B1|ALT_INV_cnt\(4),
	datab => \D1|D1|ALT_INV_led7_status~q\,
	datac => \D1|D1|CNV0|B1|ALT_INV_cnt\(1),
	datad => \D1|D1|CNV0|B1|ALT_INV_cnt\(2),
	datae => \D1|D1|CNV0|B1|ALT_INV_cnt\(3),
	dataf => \D1|D1|CNV0|B1|ALT_INV_cnt\(0),
	combout => \D1|D1|CNV0|B1|cnt[3]~1_combout\);

-- Location: FF_X78_Y6_N43
\D1|D1|CNV0|B1|cnt[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \D1|D1|CNV0|B1|cnt[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|D1|CNV0|B1|cnt[3]~DUPLICATE_q\);

-- Location: FF_X78_Y6_N1
\D1|D1|CNV0|B1|cnt[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \D1|D1|CNV0|B1|cnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|D1|CNV0|B1|cnt[1]~DUPLICATE_q\);

-- Location: FF_X78_Y6_N40
\D1|D1|CNV0|B1|cnt[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \D1|D1|CNV0|B1|cnt[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|D1|CNV0|B1|cnt[2]~DUPLICATE_q\);

-- Location: LABCELL_X80_Y6_N39
\D1|D1|CNV0|B1|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|D1|CNV0|B1|LessThan0~0_combout\ = ( !\D1|D1|CNV0|B1|cnt[2]~DUPLICATE_q\ & ( (!\D1|D1|CNV0|B1|cnt[3]~DUPLICATE_q\ & !\D1|D1|CNV0|B1|cnt[1]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \D1|D1|CNV0|B1|ALT_INV_cnt[3]~DUPLICATE_q\,
	datad => \D1|D1|CNV0|B1|ALT_INV_cnt[1]~DUPLICATE_q\,
	dataf => \D1|D1|CNV0|B1|ALT_INV_cnt[2]~DUPLICATE_q\,
	combout => \D1|D1|CNV0|B1|LessThan0~0_combout\);

-- Location: LABCELL_X77_Y8_N15
\D1|D1|CNV0|B1|cnt[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|D1|CNV0|B1|cnt[4]~0_combout\ = ( \D1|D1|CNV0|B1|LessThan0~0_combout\ & ( (!\D1|D1|led7_status~q\) # ((!\D1|D1|CNV0|B1|cnt\(4)) # (!\D1|D1|CNV0|B1|cnt\(0))) ) ) # ( !\D1|D1|CNV0|B1|LessThan0~0_combout\ & ( (!\D1|D1|led7_status~q\) # 
-- (!\D1|D1|CNV0|B1|cnt\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010111110101111101011111111111110101111111111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D1|D1|ALT_INV_led7_status~q\,
	datac => \D1|D1|CNV0|B1|ALT_INV_cnt\(4),
	datad => \D1|D1|CNV0|B1|ALT_INV_cnt\(0),
	dataf => \D1|D1|CNV0|B1|ALT_INV_LessThan0~0_combout\,
	combout => \D1|D1|CNV0|B1|cnt[4]~0_combout\);

-- Location: MLABCELL_X78_Y6_N39
\D1|D1|CNV0|B1|cnt[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|D1|CNV0|B1|cnt[2]~2_combout\ = ( \D1|D1|CNV0|B1|cnt\(2) & ( \D1|D1|CNV0|B1|cnt\(0) & ( (!\D1|D1|CNV0|B1|cnt[4]~0_combout\) # ((\D1|D1|led7_status~q\ & !\D1|D1|CNV0|B1|cnt\(1))) ) ) ) # ( !\D1|D1|CNV0|B1|cnt\(2) & ( \D1|D1|CNV0|B1|cnt\(0) & ( 
-- (\D1|D1|led7_status~q\ & (\D1|D1|CNV0|B1|cnt[4]~0_combout\ & \D1|D1|CNV0|B1|cnt\(1))) ) ) ) # ( \D1|D1|CNV0|B1|cnt\(2) & ( !\D1|D1|CNV0|B1|cnt\(0) & ( (!\D1|D1|CNV0|B1|cnt[4]~0_combout\) # (\D1|D1|led7_status~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101011111010100000000000001011111010111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D1|D1|ALT_INV_led7_status~q\,
	datac => \D1|D1|CNV0|B1|ALT_INV_cnt[4]~0_combout\,
	datad => \D1|D1|CNV0|B1|ALT_INV_cnt\(1),
	datae => \D1|D1|CNV0|B1|ALT_INV_cnt\(2),
	dataf => \D1|D1|CNV0|B1|ALT_INV_cnt\(0),
	combout => \D1|D1|CNV0|B1|cnt[2]~2_combout\);

-- Location: FF_X78_Y6_N41
\D1|D1|CNV0|B1|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \D1|D1|CNV0|B1|cnt[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|D1|CNV0|B1|cnt\(2));

-- Location: MLABCELL_X78_Y6_N24
\D1|D1|CNV0|B1|cnt[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|D1|CNV0|B1|cnt[4]~4_combout\ = ( \D1|D1|CNV0|B1|cnt\(4) & ( \D1|D1|CNV0|B1|cnt\(0) & ( \D1|D1|led7_status~q\ ) ) ) # ( !\D1|D1|CNV0|B1|cnt\(4) & ( \D1|D1|CNV0|B1|cnt\(0) & ( (\D1|D1|led7_status~q\ & (\D1|D1|CNV0|B1|cnt\(2) & (\D1|D1|CNV0|B1|cnt\(1) & 
-- \D1|D1|CNV0|B1|cnt\(3)))) ) ) ) # ( \D1|D1|CNV0|B1|cnt\(4) & ( !\D1|D1|CNV0|B1|cnt\(0) & ( \D1|D1|led7_status~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D1|D1|ALT_INV_led7_status~q\,
	datab => \D1|D1|CNV0|B1|ALT_INV_cnt\(2),
	datac => \D1|D1|CNV0|B1|ALT_INV_cnt\(1),
	datad => \D1|D1|CNV0|B1|ALT_INV_cnt\(3),
	datae => \D1|D1|CNV0|B1|ALT_INV_cnt\(4),
	dataf => \D1|D1|CNV0|B1|ALT_INV_cnt\(0),
	combout => \D1|D1|CNV0|B1|cnt[4]~4_combout\);

-- Location: FF_X78_Y6_N26
\D1|D1|CNV0|B1|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \D1|D1|CNV0|B1|cnt[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|D1|CNV0|B1|cnt\(4));

-- Location: MLABCELL_X78_Y6_N15
\D1|D1|bcd_hold[0][3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|D1|bcd_hold[0][3]~0_combout\ = ( \D1|D1|led7_status~q\ & ( \D1|D1|CNV0|B1|LessThan0~0_combout\ & ( (!\D1|D1|CNV0|B1|cnt\(4)) # (!\D1|D1|CNV0|B1|cnt\(0)) ) ) ) # ( !\D1|D1|led7_status~q\ & ( \D1|D1|CNV0|B1|LessThan0~0_combout\ ) ) # ( 
-- \D1|D1|led7_status~q\ & ( !\D1|D1|CNV0|B1|LessThan0~0_combout\ ) ) # ( !\D1|D1|led7_status~q\ & ( !\D1|D1|CNV0|B1|LessThan0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D1|D1|CNV0|B1|ALT_INV_cnt\(4),
	datac => \D1|D1|CNV0|B1|ALT_INV_cnt\(0),
	datae => \D1|D1|ALT_INV_led7_status~q\,
	dataf => \D1|D1|CNV0|B1|ALT_INV_LessThan0~0_combout\,
	combout => \D1|D1|bcd_hold[0][3]~0_combout\);

-- Location: LABCELL_X77_Y7_N39
\D1|D1|led7_status~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|D1|led7_status~0_combout\ = ( \D1|D1|bcd_hold[0][3]~0_combout\ & ( !\P2|LessThan0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \P2|ALT_INV_LessThan0~1_combout\,
	dataf => \D1|D1|ALT_INV_bcd_hold[0][3]~0_combout\,
	combout => \D1|D1|led7_status~0_combout\);

-- Location: FF_X77_Y7_N41
\D1|D1|led7_status\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \D1|D1|led7_status~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|D1|led7_status~q\);

-- Location: FF_X79_Y6_N11
\D1|D1|CNV0|D1|bcd[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \D1|D1|CNV0|D1|Mux0~0_combout\,
	sclr => \D1|D1|ALT_INV_led7_status~q\,
	ena => \D1|D1|bcd_hold[0][3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|D1|CNV0|D1|bcd\(3));

-- Location: LABCELL_X79_Y6_N6
\D1|D1|CNV0|D1|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|D1|CNV0|D1|Mux1~0_combout\ = (!\D1|D1|CNV0|D1|bcd\(0) & (!\D1|D1|CNV0|D1|bcd\(2) & (!\D1|D1|CNV0|D1|bcd\(3) $ (!\D1|D1|CNV0|D1|bcd\(1))))) # (\D1|D1|CNV0|D1|bcd\(0) & (!\D1|D1|CNV0|D1|bcd\(3) & (\D1|D1|CNV0|D1|bcd\(1))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010110000000100001011000000010000101100000001000010110000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D1|D1|CNV0|D1|ALT_INV_bcd\(0),
	datab => \D1|D1|CNV0|D1|ALT_INV_bcd\(3),
	datac => \D1|D1|CNV0|D1|ALT_INV_bcd\(1),
	datad => \D1|D1|CNV0|D1|ALT_INV_bcd\(2),
	combout => \D1|D1|CNV0|D1|Mux1~0_combout\);

-- Location: FF_X79_Y6_N8
\D1|D1|CNV0|D1|bcd[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \D1|D1|CNV0|D1|Mux1~0_combout\,
	sclr => \D1|D1|ALT_INV_led7_status~q\,
	ena => \D1|D1|bcd_hold[0][3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|D1|CNV0|D1|bcd\(2));

-- Location: LABCELL_X79_Y6_N3
\D1|D1|CNV0|D1|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|D1|CNV0|D1|Mux2~0_combout\ = (!\D1|D1|CNV0|D1|bcd\(1) & (!\D1|D1|CNV0|D1|bcd\(2) & (!\D1|D1|CNV0|D1|bcd\(0) $ (!\D1|D1|CNV0|D1|bcd\(3))))) # (\D1|D1|CNV0|D1|bcd\(1) & (!\D1|D1|CNV0|D1|bcd\(3) & (!\D1|D1|CNV0|D1|bcd\(0) $ (!\D1|D1|CNV0|D1|bcd\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000001001000011000000100100001100000010010000110000001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D1|D1|CNV0|D1|ALT_INV_bcd\(0),
	datab => \D1|D1|CNV0|D1|ALT_INV_bcd\(3),
	datac => \D1|D1|CNV0|D1|ALT_INV_bcd\(2),
	datad => \D1|D1|CNV0|D1|ALT_INV_bcd\(1),
	combout => \D1|D1|CNV0|D1|Mux2~0_combout\);

-- Location: FF_X79_Y6_N5
\D1|D1|CNV0|D1|bcd[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \D1|D1|CNV0|D1|Mux2~0_combout\,
	sclr => \D1|D1|ALT_INV_led7_status~q\,
	ena => \D1|D1|bcd_hold[0][3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|D1|CNV0|D1|bcd\(1));

-- Location: LABCELL_X77_Y8_N30
\D1|D1|CNV0|B1|shiftreg[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|D1|CNV0|B1|shiftreg[15]~feeder_combout\ = \M1|altsyncram_component|auto_generated|q_b\(15)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(15),
	combout => \D1|D1|CNV0|B1|shiftreg[15]~feeder_combout\);

-- Location: LABCELL_X77_Y8_N33
\D1|D1|CNV0|B1|shiftreg[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|D1|CNV0|B1|shiftreg[14]~feeder_combout\ = \M1|altsyncram_component|auto_generated|q_b\(14)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(14),
	combout => \D1|D1|CNV0|B1|shiftreg[14]~feeder_combout\);

-- Location: LABCELL_X77_Y8_N6
\D1|D1|CNV0|B1|shiftreg[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|D1|CNV0|B1|shiftreg[13]~feeder_combout\ = \M1|altsyncram_component|auto_generated|q_b\(13)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(13),
	combout => \D1|D1|CNV0|B1|shiftreg[13]~feeder_combout\);

-- Location: LABCELL_X77_Y8_N9
\D1|D1|CNV0|B1|shiftreg[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|D1|CNV0|B1|shiftreg[12]~feeder_combout\ = \M1|altsyncram_component|auto_generated|q_b\(12)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(12),
	combout => \D1|D1|CNV0|B1|shiftreg[12]~feeder_combout\);

-- Location: LABCELL_X77_Y8_N42
\D1|D1|CNV0|B1|shiftreg[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|D1|CNV0|B1|shiftreg[11]~feeder_combout\ = ( \M1|altsyncram_component|auto_generated|q_b\(11) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(11),
	combout => \D1|D1|CNV0|B1|shiftreg[11]~feeder_combout\);

-- Location: LABCELL_X77_Y8_N18
\D1|D1|CNV0|B1|shiftreg[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|D1|CNV0|B1|shiftreg[10]~feeder_combout\ = ( \M1|altsyncram_component|auto_generated|q_b\(10) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(10),
	combout => \D1|D1|CNV0|B1|shiftreg[10]~feeder_combout\);

-- Location: LABCELL_X77_Y8_N45
\D1|D1|CNV0|B1|shiftreg[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|D1|CNV0|B1|shiftreg[9]~feeder_combout\ = \M1|altsyncram_component|auto_generated|q_b\(9)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(9),
	combout => \D1|D1|CNV0|B1|shiftreg[9]~feeder_combout\);

-- Location: LABCELL_X77_Y8_N54
\D1|D1|CNV0|B1|shiftreg[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|D1|CNV0|B1|shiftreg[8]~feeder_combout\ = \M1|altsyncram_component|auto_generated|q_b\(8)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(8),
	combout => \D1|D1|CNV0|B1|shiftreg[8]~feeder_combout\);

-- Location: LABCELL_X77_Y8_N57
\D1|D1|CNV0|B1|shiftreg[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|D1|CNV0|B1|shiftreg[7]~feeder_combout\ = ( \M1|altsyncram_component|auto_generated|q_b\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(7),
	combout => \D1|D1|CNV0|B1|shiftreg[7]~feeder_combout\);

-- Location: MLABCELL_X82_Y8_N0
\D1|D1|CNV0|B1|shiftreg[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|D1|CNV0|B1|shiftreg[6]~feeder_combout\ = \M1|altsyncram_component|auto_generated|q_b\(6)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(6),
	combout => \D1|D1|CNV0|B1|shiftreg[6]~feeder_combout\);

-- Location: LABCELL_X73_Y8_N0
\D1|D1|CNV0|B1|shiftreg[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|D1|CNV0|B1|shiftreg[5]~feeder_combout\ = \M1|altsyncram_component|auto_generated|q_b\(5)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(5),
	combout => \D1|D1|CNV0|B1|shiftreg[5]~feeder_combout\);

-- Location: LABCELL_X77_Y8_N3
\D1|D1|CNV0|B1|shiftreg[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|D1|CNV0|B1|shiftreg[4]~feeder_combout\ = \M1|altsyncram_component|auto_generated|q_b\(4)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(4),
	combout => \D1|D1|CNV0|B1|shiftreg[4]~feeder_combout\);

-- Location: LABCELL_X77_Y8_N36
\D1|D1|CNV0|B1|shiftreg[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|D1|CNV0|B1|shiftreg[3]~feeder_combout\ = \M1|altsyncram_component|auto_generated|q_b\(3)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(3),
	combout => \D1|D1|CNV0|B1|shiftreg[3]~feeder_combout\);

-- Location: LABCELL_X77_Y8_N39
\D1|D1|CNV0|B1|shiftreg[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|D1|CNV0|B1|shiftreg[2]~feeder_combout\ = \M1|altsyncram_component|auto_generated|q_b\(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(2),
	combout => \D1|D1|CNV0|B1|shiftreg[2]~feeder_combout\);

-- Location: LABCELL_X77_Y8_N0
\D1|D1|CNV0|B1|shiftreg[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|D1|CNV0|B1|shiftreg[1]~feeder_combout\ = \M1|altsyncram_component|auto_generated|q_b\(1)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(1),
	combout => \D1|D1|CNV0|B1|shiftreg[1]~feeder_combout\);

-- Location: LABCELL_X81_Y7_N33
\D1|D1|CNV0|B1|shiftreg~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|D1|CNV0|B1|shiftreg~0_combout\ = ( \D1|D1|CNV0|B1|shiftreg\(0) & ( \D1|D1|CNV0|B1|LessThan0~0_combout\ & ( (\D1|D1|CNV0|B1|cnt\(4) & \D1|D1|CNV0|B1|cnt\(0)) ) ) ) # ( \D1|D1|CNV0|B1|shiftreg\(0) & ( !\D1|D1|CNV0|B1|LessThan0~0_combout\ & ( 
-- \D1|D1|CNV0|B1|cnt\(4) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D1|D1|CNV0|B1|ALT_INV_cnt\(4),
	datac => \D1|D1|CNV0|B1|ALT_INV_cnt\(0),
	datae => \D1|D1|CNV0|B1|ALT_INV_shiftreg\(0),
	dataf => \D1|D1|CNV0|B1|ALT_INV_LessThan0~0_combout\,
	combout => \D1|D1|CNV0|B1|shiftreg~0_combout\);

-- Location: FF_X81_Y7_N34
\D1|D1|CNV0|B1|shiftreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \D1|D1|CNV0|B1|shiftreg~0_combout\,
	asdata => \M1|altsyncram_component|auto_generated|q_b\(0),
	sload => \D1|D1|ALT_INV_led7_status~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|D1|CNV0|B1|shiftreg\(0));

-- Location: FF_X77_Y8_N2
\D1|D1|CNV0|B1|shiftreg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \D1|D1|CNV0|B1|shiftreg[1]~feeder_combout\,
	asdata => \D1|D1|CNV0|B1|shiftreg\(0),
	sload => \D1|D1|led7_status~q\,
	ena => \D1|D1|CNV0|B1|cnt[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|D1|CNV0|B1|shiftreg\(1));

-- Location: FF_X77_Y8_N40
\D1|D1|CNV0|B1|shiftreg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \D1|D1|CNV0|B1|shiftreg[2]~feeder_combout\,
	asdata => \D1|D1|CNV0|B1|shiftreg\(1),
	sload => \D1|D1|led7_status~q\,
	ena => \D1|D1|CNV0|B1|cnt[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|D1|CNV0|B1|shiftreg\(2));

-- Location: FF_X77_Y8_N38
\D1|D1|CNV0|B1|shiftreg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \D1|D1|CNV0|B1|shiftreg[3]~feeder_combout\,
	asdata => \D1|D1|CNV0|B1|shiftreg\(2),
	sload => \D1|D1|led7_status~q\,
	ena => \D1|D1|CNV0|B1|cnt[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|D1|CNV0|B1|shiftreg\(3));

-- Location: FF_X77_Y8_N4
\D1|D1|CNV0|B1|shiftreg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \D1|D1|CNV0|B1|shiftreg[4]~feeder_combout\,
	asdata => \D1|D1|CNV0|B1|shiftreg\(3),
	sload => \D1|D1|led7_status~q\,
	ena => \D1|D1|CNV0|B1|cnt[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|D1|CNV0|B1|shiftreg\(4));

-- Location: FF_X73_Y8_N1
\D1|D1|CNV0|B1|shiftreg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \D1|D1|CNV0|B1|shiftreg[5]~feeder_combout\,
	asdata => \D1|D1|CNV0|B1|shiftreg\(4),
	sload => \D1|D1|led7_status~q\,
	ena => \D1|D1|CNV0|B1|cnt[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|D1|CNV0|B1|shiftreg\(5));

-- Location: FF_X82_Y8_N1
\D1|D1|CNV0|B1|shiftreg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \D1|D1|CNV0|B1|shiftreg[6]~feeder_combout\,
	asdata => \D1|D1|CNV0|B1|shiftreg\(5),
	sload => \D1|D1|led7_status~q\,
	ena => \D1|D1|CNV0|B1|cnt[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|D1|CNV0|B1|shiftreg\(6));

-- Location: FF_X77_Y8_N59
\D1|D1|CNV0|B1|shiftreg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \D1|D1|CNV0|B1|shiftreg[7]~feeder_combout\,
	asdata => \D1|D1|CNV0|B1|shiftreg\(6),
	sload => \D1|D1|led7_status~q\,
	ena => \D1|D1|CNV0|B1|cnt[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|D1|CNV0|B1|shiftreg\(7));

-- Location: FF_X77_Y8_N56
\D1|D1|CNV0|B1|shiftreg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \D1|D1|CNV0|B1|shiftreg[8]~feeder_combout\,
	asdata => \D1|D1|CNV0|B1|shiftreg\(7),
	sload => \D1|D1|led7_status~q\,
	ena => \D1|D1|CNV0|B1|cnt[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|D1|CNV0|B1|shiftreg\(8));

-- Location: FF_X77_Y8_N47
\D1|D1|CNV0|B1|shiftreg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \D1|D1|CNV0|B1|shiftreg[9]~feeder_combout\,
	asdata => \D1|D1|CNV0|B1|shiftreg\(8),
	sload => \D1|D1|led7_status~q\,
	ena => \D1|D1|CNV0|B1|cnt[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|D1|CNV0|B1|shiftreg\(9));

-- Location: FF_X77_Y8_N20
\D1|D1|CNV0|B1|shiftreg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \D1|D1|CNV0|B1|shiftreg[10]~feeder_combout\,
	asdata => \D1|D1|CNV0|B1|shiftreg\(9),
	sload => \D1|D1|led7_status~q\,
	ena => \D1|D1|CNV0|B1|cnt[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|D1|CNV0|B1|shiftreg\(10));

-- Location: FF_X77_Y8_N44
\D1|D1|CNV0|B1|shiftreg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \D1|D1|CNV0|B1|shiftreg[11]~feeder_combout\,
	asdata => \D1|D1|CNV0|B1|shiftreg\(10),
	sload => \D1|D1|led7_status~q\,
	ena => \D1|D1|CNV0|B1|cnt[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|D1|CNV0|B1|shiftreg\(11));

-- Location: FF_X77_Y8_N11
\D1|D1|CNV0|B1|shiftreg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \D1|D1|CNV0|B1|shiftreg[12]~feeder_combout\,
	asdata => \D1|D1|CNV0|B1|shiftreg\(11),
	sload => \D1|D1|led7_status~q\,
	ena => \D1|D1|CNV0|B1|cnt[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|D1|CNV0|B1|shiftreg\(12));

-- Location: FF_X77_Y8_N8
\D1|D1|CNV0|B1|shiftreg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \D1|D1|CNV0|B1|shiftreg[13]~feeder_combout\,
	asdata => \D1|D1|CNV0|B1|shiftreg\(12),
	sload => \D1|D1|led7_status~q\,
	ena => \D1|D1|CNV0|B1|cnt[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|D1|CNV0|B1|shiftreg\(13));

-- Location: FF_X77_Y8_N35
\D1|D1|CNV0|B1|shiftreg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \D1|D1|CNV0|B1|shiftreg[14]~feeder_combout\,
	asdata => \D1|D1|CNV0|B1|shiftreg\(13),
	sload => \D1|D1|led7_status~q\,
	ena => \D1|D1|CNV0|B1|cnt[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|D1|CNV0|B1|shiftreg\(14));

-- Location: FF_X77_Y8_N31
\D1|D1|CNV0|B1|shiftreg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \D1|D1|CNV0|B1|shiftreg[15]~feeder_combout\,
	asdata => \D1|D1|CNV0|B1|shiftreg\(14),
	sload => \D1|D1|led7_status~q\,
	ena => \D1|D1|CNV0|B1|cnt[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|D1|CNV0|B1|shiftreg\(15));

-- Location: LABCELL_X77_Y8_N12
\D1|D1|CNV0|B1|shiftreg[16]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|D1|CNV0|B1|shiftreg[16]~1_combout\ = ( \D1|D1|CNV0|B1|shiftreg\(15) & ( (!\D1|D1|CNV0|B1|cnt[4]~0_combout\ & ((\D1|D1|CNV0|B1|shiftreg\(16)))) # (\D1|D1|CNV0|B1|cnt[4]~0_combout\ & (\D1|D1|led7_status~q\)) ) ) # ( !\D1|D1|CNV0|B1|shiftreg\(15) & ( 
-- (!\D1|D1|CNV0|B1|cnt[4]~0_combout\ & \D1|D1|CNV0|B1|shiftreg\(16)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000010001110111010001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D1|D1|ALT_INV_led7_status~q\,
	datab => \D1|D1|CNV0|B1|ALT_INV_cnt[4]~0_combout\,
	datad => \D1|D1|CNV0|B1|ALT_INV_shiftreg\(16),
	dataf => \D1|D1|CNV0|B1|ALT_INV_shiftreg\(15),
	combout => \D1|D1|CNV0|B1|shiftreg[16]~1_combout\);

-- Location: FF_X77_Y8_N13
\D1|D1|CNV0|B1|shiftreg[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \D1|D1|CNV0|B1|shiftreg[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|D1|CNV0|B1|shiftreg\(16));

-- Location: LABCELL_X79_Y6_N0
\D1|D1|CNV0|D1|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|D1|CNV0|D1|Mux3~0_combout\ = ( \D1|D1|CNV0|D1|bcd\(2) & ( (!\D1|D1|CNV0|D1|bcd\(3) & \D1|D1|CNV0|B1|shiftreg\(16)) ) ) # ( !\D1|D1|CNV0|D1|bcd\(2) & ( (\D1|D1|CNV0|B1|shiftreg\(16) & ((!\D1|D1|CNV0|D1|bcd\(3)) # (!\D1|D1|CNV0|D1|bcd\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111100000000001111110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \D1|D1|CNV0|D1|ALT_INV_bcd\(3),
	datac => \D1|D1|CNV0|D1|ALT_INV_bcd\(1),
	datad => \D1|D1|CNV0|B1|ALT_INV_shiftreg\(16),
	dataf => \D1|D1|CNV0|D1|ALT_INV_bcd\(2),
	combout => \D1|D1|CNV0|D1|Mux3~0_combout\);

-- Location: FF_X79_Y6_N2
\D1|D1|CNV0|D1|bcd[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \D1|D1|CNV0|D1|Mux3~0_combout\,
	sclr => \D1|D1|ALT_INV_led7_status~q\,
	ena => \D1|D1|bcd_hold[0][3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|D1|CNV0|D1|bcd\(0));

-- Location: LABCELL_X79_Y6_N9
\D1|D1|CNV0|D1|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|D1|CNV0|D1|Mux0~0_combout\ = ( !\D1|D1|CNV0|D1|bcd\(1) & ( (!\D1|D1|CNV0|D1|bcd\(0) & (\D1|D1|CNV0|D1|bcd\(2) & !\D1|D1|CNV0|D1|bcd\(3))) # (\D1|D1|CNV0|D1|bcd\(0) & (!\D1|D1|CNV0|D1|bcd\(2) & \D1|D1|CNV0|D1|bcd\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001010000000010100101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D1|D1|CNV0|D1|ALT_INV_bcd\(0),
	datac => \D1|D1|CNV0|D1|ALT_INV_bcd\(2),
	datad => \D1|D1|CNV0|D1|ALT_INV_bcd\(3),
	dataf => \D1|D1|CNV0|D1|ALT_INV_bcd\(1),
	combout => \D1|D1|CNV0|D1|Mux0~0_combout\);

-- Location: FF_X79_Y6_N10
\D1|D1|CNV0|D1|bcd[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \D1|D1|CNV0|D1|Mux0~0_combout\,
	sclr => \D1|D1|ALT_INV_led7_status~q\,
	ena => \D1|D1|bcd_hold[0][3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|D1|CNV0|D1|bcd[3]~DUPLICATE_q\);

-- Location: LABCELL_X80_Y8_N30
\D1|D1|bcd_hold[0][3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|D1|bcd_hold[0][3]~1_combout\ = ( !\D1|D1|bcd_hold[0][3]~0_combout\ & ( !\P2|LessThan0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \D1|D1|ALT_INV_bcd_hold[0][3]~0_combout\,
	dataf => \P2|ALT_INV_LessThan0~1_combout\,
	combout => \D1|D1|bcd_hold[0][3]~1_combout\);

-- Location: FF_X80_Y5_N20
\D1|D1|bcd_hold[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \D1|D1|CNV0|D1|bcd[3]~DUPLICATE_q\,
	sload => VCC,
	ena => \D1|D1|bcd_hold[0][3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|D1|bcd_hold[0][3]~q\);

-- Location: FF_X79_Y6_N1
\D1|D1|CNV0|D1|bcd[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \D1|D1|CNV0|D1|Mux3~0_combout\,
	sclr => \D1|D1|ALT_INV_led7_status~q\,
	ena => \D1|D1|bcd_hold[0][3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|D1|CNV0|D1|bcd[0]~DUPLICATE_q\);

-- Location: FF_X80_Y5_N11
\D1|D1|bcd_hold[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \D1|D1|CNV0|D1|bcd[0]~DUPLICATE_q\,
	sload => VCC,
	ena => \D1|D1|bcd_hold[0][3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|D1|bcd_hold[0][0]~q\);

-- Location: FF_X80_Y5_N8
\D1|D1|bcd_hold[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \D1|D1|CNV0|D1|bcd\(2),
	sload => VCC,
	ena => \D1|D1|bcd_hold[0][3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|D1|bcd_hold[0][2]~q\);

-- Location: FF_X80_Y5_N14
\D1|D1|bcd_hold[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \D1|D1|CNV0|D1|bcd\(1),
	sload => VCC,
	ena => \D1|D1|bcd_hold[0][3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|D1|bcd_hold[0][1]~q\);

-- Location: LABCELL_X80_Y5_N57
\D1|hex0[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|hex0[0]~1_combout\ = ( \D1|D1|bcd_hold[0][1]~q\ & ( (\D1|D1|bcd_hold[0][3]~q\ & (\D1|D1|bcd_hold[0][0]~q\ & (!\D1|D1|bcd_hold[0][2]~q\ & \sw[9]~input_o\))) ) ) # ( !\D1|D1|bcd_hold[0][1]~q\ & ( (\sw[9]~input_o\ & ((!\D1|D1|bcd_hold[0][3]~q\ & 
-- (!\D1|D1|bcd_hold[0][0]~q\ $ (!\D1|D1|bcd_hold[0][2]~q\))) # (\D1|D1|bcd_hold[0][3]~q\ & (\D1|D1|bcd_hold[0][0]~q\ & \D1|D1|bcd_hold[0][2]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101001000000000010100100000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D1|D1|ALT_INV_bcd_hold[0][3]~q\,
	datab => \D1|D1|ALT_INV_bcd_hold[0][0]~q\,
	datac => \D1|D1|ALT_INV_bcd_hold[0][2]~q\,
	datad => \ALT_INV_sw[9]~input_o\,
	dataf => \D1|D1|ALT_INV_bcd_hold[0][1]~q\,
	combout => \D1|hex0[0]~1_combout\);

-- Location: LABCELL_X80_Y5_N36
\D1|hex0[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|hex0[0]~2_combout\ = ( \D1|hex0[0]~1_combout\ & ( \M1|altsyncram_component|auto_generated|q_b\(2) & ( ((!\M1|altsyncram_component|auto_generated|q_b\(1) & (!\M1|altsyncram_component|auto_generated|q_b\(0) $ 
-- (\M1|altsyncram_component|auto_generated|q_b\(3))))) # (\sw[9]~input_o\) ) ) ) # ( !\D1|hex0[0]~1_combout\ & ( \M1|altsyncram_component|auto_generated|q_b\(2) & ( (!\M1|altsyncram_component|auto_generated|q_b\(1) & (!\sw[9]~input_o\ & 
-- (!\M1|altsyncram_component|auto_generated|q_b\(0) $ (\M1|altsyncram_component|auto_generated|q_b\(3))))) ) ) ) # ( \D1|hex0[0]~1_combout\ & ( !\M1|altsyncram_component|auto_generated|q_b\(2) & ( ((\M1|altsyncram_component|auto_generated|q_b\(0) & 
-- (!\M1|altsyncram_component|auto_generated|q_b\(1) $ (\M1|altsyncram_component|auto_generated|q_b\(3))))) # (\sw[9]~input_o\) ) ) ) # ( !\D1|hex0[0]~1_combout\ & ( !\M1|altsyncram_component|auto_generated|q_b\(2) & ( (!\sw[9]~input_o\ & 
-- (\M1|altsyncram_component|auto_generated|q_b\(0) & (!\M1|altsyncram_component|auto_generated|q_b\(1) $ (\M1|altsyncram_component|auto_generated|q_b\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000100001110110011011110000000000010001011001100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(1),
	datab => \ALT_INV_sw[9]~input_o\,
	datac => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(0),
	datad => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(3),
	datae => \D1|ALT_INV_hex0[0]~1_combout\,
	dataf => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(2),
	combout => \D1|hex0[0]~2_combout\);

-- Location: LABCELL_X80_Y5_N15
\D1|hex0[6]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|hex0[6]~3_combout\ = ( \M1|altsyncram_component|auto_generated|q_b\(2) & ( (!\sw[9]~input_o\ & (((!\M1|altsyncram_component|auto_generated|q_b\(3))))) # (\sw[9]~input_o\ & ((!\D1|D1|bcd_hold[0][3]~q\) # ((!\D1|D1|bcd_hold[0][2]~q\)))) ) ) # ( 
-- !\M1|altsyncram_component|auto_generated|q_b\(2) & ( (!\D1|D1|bcd_hold[0][3]~q\) # ((!\D1|D1|bcd_hold[0][2]~q\) # (!\sw[9]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111101110111111111110111011110000111011101111000011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D1|D1|ALT_INV_bcd_hold[0][3]~q\,
	datab => \D1|D1|ALT_INV_bcd_hold[0][2]~q\,
	datac => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(3),
	datad => \ALT_INV_sw[9]~input_o\,
	dataf => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(2),
	combout => \D1|hex0[6]~3_combout\);

-- Location: LABCELL_X80_Y5_N6
\D1|hex0[1]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|hex0[1]~10_combout\ = ( \D1|D1|bcd_hold[0][0]~q\ & ( (!\D1|D1|bcd_hold[0][3]~q\ & ((!\D1|hex0[6]~3_combout\) # ((!\D1|D1|bcd_hold[0][1]~q\ & \D1|D1|bcd_hold[0][2]~q\)))) # (\D1|D1|bcd_hold[0][3]~q\ & ((!\D1|hex0[6]~3_combout\ $ 
-- (\D1|D1|bcd_hold[0][2]~q\)) # (\D1|D1|bcd_hold[0][1]~q\))) ) ) # ( !\D1|D1|bcd_hold[0][0]~q\ & ( (!\D1|hex0[6]~3_combout\) # ((\D1|D1|bcd_hold[0][2]~q\ & ((\D1|D1|bcd_hold[0][1]~q\) # (\D1|D1|bcd_hold[0][3]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110111111100001111011111110001101111011111000110111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D1|D1|ALT_INV_bcd_hold[0][3]~q\,
	datab => \D1|D1|ALT_INV_bcd_hold[0][1]~q\,
	datac => \D1|ALT_INV_hex0[6]~3_combout\,
	datad => \D1|D1|ALT_INV_bcd_hold[0][2]~q\,
	dataf => \D1|D1|ALT_INV_bcd_hold[0][0]~q\,
	combout => \D1|hex0[1]~10_combout\);

-- Location: LABCELL_X80_Y5_N0
\D1|hex0[1]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|hex0[1]~19_combout\ = ( !\sw[9]~input_o\ & ( (!\M1|altsyncram_component|auto_generated|q_b\(3) & ((!\D1|hex0[6]~3_combout\) # ((\M1|altsyncram_component|auto_generated|q_b\(2) & (!\M1|altsyncram_component|auto_generated|q_b\(0) $ 
-- (!\M1|altsyncram_component|auto_generated|q_b\(1))))))) # (\M1|altsyncram_component|auto_generated|q_b\(3) & ((!\M1|altsyncram_component|auto_generated|q_b\(0) & (((!\D1|hex0[6]~3_combout\)) # (\M1|altsyncram_component|auto_generated|q_b\(2)))) # 
-- (\M1|altsyncram_component|auto_generated|q_b\(0) & ((!\M1|altsyncram_component|auto_generated|q_b\(2) $ (\D1|hex0[6]~3_combout\)) # (\M1|altsyncram_component|auto_generated|q_b\(1)))))) ) ) # ( \sw[9]~input_o\ & ( (((\D1|hex0[1]~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1111111000010101000011110000111111111111010001110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(2),
	datab => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(0),
	datac => \D1|ALT_INV_hex0[1]~10_combout\,
	datad => \D1|ALT_INV_hex0[6]~3_combout\,
	datae => \ALT_INV_sw[9]~input_o\,
	dataf => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(1),
	datag => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(3),
	combout => \D1|hex0[1]~19_combout\);

-- Location: LABCELL_X80_Y5_N18
\D1|hex0[2]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|hex0[2]~9_combout\ = ( \D1|D1|bcd_hold[0][1]~q\ & ( (!\D1|hex0[6]~3_combout\) # ((!\D1|D1|bcd_hold[0][0]~q\ & (!\D1|D1|bcd_hold[0][2]~q\ & !\D1|D1|bcd_hold[0][3]~q\))) ) ) # ( !\D1|D1|bcd_hold[0][1]~q\ & ( (!\D1|hex0[6]~3_combout\ & 
-- ((!\D1|D1|bcd_hold[0][0]~q\) # ((!\D1|D1|bcd_hold[0][2]~q\) # (!\D1|D1|bcd_hold[0][3]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101000101010101010100011101010101010101110101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D1|ALT_INV_hex0[6]~3_combout\,
	datab => \D1|D1|ALT_INV_bcd_hold[0][0]~q\,
	datac => \D1|D1|ALT_INV_bcd_hold[0][2]~q\,
	datad => \D1|D1|ALT_INV_bcd_hold[0][3]~q\,
	dataf => \D1|D1|ALT_INV_bcd_hold[0][1]~q\,
	combout => \D1|hex0[2]~9_combout\);

-- Location: LABCELL_X80_Y5_N24
\D1|hex0[2]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|hex0[2]~15_combout\ = ( !\sw[9]~input_o\ & ( (!\M1|altsyncram_component|auto_generated|q_b\(2) & ((!\D1|hex0[6]~3_combout\) # ((!\M1|altsyncram_component|auto_generated|q_b\(0) & (!\M1|altsyncram_component|auto_generated|q_b\(3) & 
-- \M1|altsyncram_component|auto_generated|q_b\(1)))))) # (\M1|altsyncram_component|auto_generated|q_b\(2) & (!\D1|hex0[6]~3_combout\ & ((!\M1|altsyncram_component|auto_generated|q_b\(0)) # ((!\M1|altsyncram_component|auto_generated|q_b\(3)) # 
-- (\M1|altsyncram_component|auto_generated|q_b\(1)))))) ) ) # ( \sw[9]~input_o\ & ( (((\D1|hex0[2]~9_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1111111000000000000011110000111111111111100000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(2),
	datab => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(0),
	datac => \D1|ALT_INV_hex0[2]~9_combout\,
	datad => \D1|ALT_INV_hex0[6]~3_combout\,
	datae => \ALT_INV_sw[9]~input_o\,
	dataf => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(1),
	datag => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(3),
	combout => \D1|hex0[2]~15_combout\);

-- Location: LABCELL_X80_Y5_N54
\D1|D1|LED7_0|L2|y[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|D1|LED7_0|L2|y[3]~0_combout\ = ( \D1|D1|bcd_hold[0][1]~q\ & ( (\sw[9]~input_o\ & ((!\D1|D1|bcd_hold[0][0]~q\ & (\D1|D1|bcd_hold[0][3]~q\ & !\D1|D1|bcd_hold[0][2]~q\)) # (\D1|D1|bcd_hold[0][0]~q\ & ((\D1|D1|bcd_hold[0][2]~q\))))) ) ) # ( 
-- !\D1|D1|bcd_hold[0][1]~q\ & ( (!\D1|D1|bcd_hold[0][3]~q\ & (\sw[9]~input_o\ & (!\D1|D1|bcd_hold[0][0]~q\ $ (!\D1|D1|bcd_hold[0][2]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101000000000000010100000000000010000110000000001000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D1|D1|ALT_INV_bcd_hold[0][3]~q\,
	datab => \D1|D1|ALT_INV_bcd_hold[0][0]~q\,
	datac => \D1|D1|ALT_INV_bcd_hold[0][2]~q\,
	datad => \ALT_INV_sw[9]~input_o\,
	dataf => \D1|D1|ALT_INV_bcd_hold[0][1]~q\,
	combout => \D1|D1|LED7_0|L2|y[3]~0_combout\);

-- Location: LABCELL_X80_Y5_N42
\D1|hex0[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|hex0[3]~0_combout\ = ( \D1|D1|LED7_0|L2|y[3]~0_combout\ & ( \M1|altsyncram_component|auto_generated|q_b\(0) & ( ((!\M1|altsyncram_component|auto_generated|q_b\(1) & (!\M1|altsyncram_component|auto_generated|q_b\(2) & 
-- !\M1|altsyncram_component|auto_generated|q_b\(3))) # (\M1|altsyncram_component|auto_generated|q_b\(1) & (\M1|altsyncram_component|auto_generated|q_b\(2)))) # (\sw[9]~input_o\) ) ) ) # ( !\D1|D1|LED7_0|L2|y[3]~0_combout\ & ( 
-- \M1|altsyncram_component|auto_generated|q_b\(0) & ( (!\sw[9]~input_o\ & ((!\M1|altsyncram_component|auto_generated|q_b\(1) & (!\M1|altsyncram_component|auto_generated|q_b\(2) & !\M1|altsyncram_component|auto_generated|q_b\(3))) # 
-- (\M1|altsyncram_component|auto_generated|q_b\(1) & (\M1|altsyncram_component|auto_generated|q_b\(2))))) ) ) ) # ( \D1|D1|LED7_0|L2|y[3]~0_combout\ & ( !\M1|altsyncram_component|auto_generated|q_b\(0) & ( ((!\M1|altsyncram_component|auto_generated|q_b\(1) 
-- & (\M1|altsyncram_component|auto_generated|q_b\(2) & !\M1|altsyncram_component|auto_generated|q_b\(3))) # (\M1|altsyncram_component|auto_generated|q_b\(1) & (!\M1|altsyncram_component|auto_generated|q_b\(2) & 
-- \M1|altsyncram_component|auto_generated|q_b\(3)))) # (\sw[9]~input_o\) ) ) ) # ( !\D1|D1|LED7_0|L2|y[3]~0_combout\ & ( !\M1|altsyncram_component|auto_generated|q_b\(0) & ( (!\sw[9]~input_o\ & ((!\M1|altsyncram_component|auto_generated|q_b\(1) & 
-- (\M1|altsyncram_component|auto_generated|q_b\(2) & !\M1|altsyncram_component|auto_generated|q_b\(3))) # (\M1|altsyncram_component|auto_generated|q_b\(1) & (!\M1|altsyncram_component|auto_generated|q_b\(2) & 
-- \M1|altsyncram_component|auto_generated|q_b\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001000000001110110111001110000100000001001011011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(1),
	datab => \ALT_INV_sw[9]~input_o\,
	datac => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(2),
	datad => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(3),
	datae => \D1|D1|LED7_0|L2|ALT_INV_y[3]~0_combout\,
	dataf => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(0),
	combout => \D1|hex0[3]~0_combout\);

-- Location: LABCELL_X80_Y5_N12
\D1|hex0[4]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|hex0[4]~7_combout\ = ( \D1|D1|bcd_hold[0][0]~q\ & ( (\sw[9]~input_o\ & ((!\D1|D1|bcd_hold[0][3]~q\) # ((!\D1|D1|bcd_hold[0][2]~q\ & !\D1|D1|bcd_hold[0][1]~q\)))) ) ) # ( !\D1|D1|bcd_hold[0][0]~q\ & ( (!\D1|D1|bcd_hold[0][3]~q\ & 
-- (\D1|D1|bcd_hold[0][2]~q\ & (\sw[9]~input_o\ & !\D1|D1|bcd_hold[0][1]~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000000001110000010100000111000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D1|D1|ALT_INV_bcd_hold[0][3]~q\,
	datab => \D1|D1|ALT_INV_bcd_hold[0][2]~q\,
	datac => \ALT_INV_sw[9]~input_o\,
	datad => \D1|D1|ALT_INV_bcd_hold[0][1]~q\,
	dataf => \D1|D1|ALT_INV_bcd_hold[0][0]~q\,
	combout => \D1|hex0[4]~7_combout\);

-- Location: LABCELL_X80_Y5_N30
\D1|hex0[4]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|hex0[4]~8_combout\ = ( \sw[9]~input_o\ & ( \M1|altsyncram_component|auto_generated|q_b\(2) & ( \D1|hex0[4]~7_combout\ ) ) ) # ( !\sw[9]~input_o\ & ( \M1|altsyncram_component|auto_generated|q_b\(2) & ( (!\M1|altsyncram_component|auto_generated|q_b\(3) 
-- & ((!\M1|altsyncram_component|auto_generated|q_b\(1)) # (\M1|altsyncram_component|auto_generated|q_b\(0)))) ) ) ) # ( \sw[9]~input_o\ & ( !\M1|altsyncram_component|auto_generated|q_b\(2) & ( \D1|hex0[4]~7_combout\ ) ) ) # ( !\sw[9]~input_o\ & ( 
-- !\M1|altsyncram_component|auto_generated|q_b\(2) & ( (\M1|altsyncram_component|auto_generated|q_b\(0) & ((!\M1|altsyncram_component|auto_generated|q_b\(1)) # (!\M1|altsyncram_component|auto_generated|q_b\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001110000000001111111110001100100011000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(1),
	datab => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(3),
	datac => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(0),
	datad => \D1|ALT_INV_hex0[4]~7_combout\,
	datae => \ALT_INV_sw[9]~input_o\,
	dataf => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(2),
	combout => \D1|hex0[4]~8_combout\);

-- Location: LABCELL_X80_Y5_N9
\D1|hex0[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|hex0[5]~5_combout\ = ( \D1|D1|bcd_hold[0][2]~q\ & ( (\D1|D1|bcd_hold[0][3]~q\ & (!\D1|D1|bcd_hold[0][1]~q\ & (\sw[9]~input_o\ & \D1|D1|bcd_hold[0][0]~q\))) ) ) # ( !\D1|D1|bcd_hold[0][2]~q\ & ( (!\D1|D1|bcd_hold[0][3]~q\ & (\sw[9]~input_o\ & 
-- ((\D1|D1|bcd_hold[0][0]~q\) # (\D1|D1|bcd_hold[0][1]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000001010000000100000101000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D1|D1|ALT_INV_bcd_hold[0][3]~q\,
	datab => \D1|D1|ALT_INV_bcd_hold[0][1]~q\,
	datac => \ALT_INV_sw[9]~input_o\,
	datad => \D1|D1|ALT_INV_bcd_hold[0][0]~q\,
	dataf => \D1|D1|ALT_INV_bcd_hold[0][2]~q\,
	combout => \D1|hex0[5]~5_combout\);

-- Location: MLABCELL_X82_Y9_N54
\D1|hex0[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|hex0[5]~6_combout\ = ( \M1|altsyncram_component|auto_generated|q_b\(2) & ( \D1|hex0[5]~5_combout\ & ( ((\M1|altsyncram_component|auto_generated|q_b\(0) & (\M1|altsyncram_component|auto_generated|q_b\(3) & 
-- !\M1|altsyncram_component|auto_generated|q_b\(1)))) # (\sw[9]~input_o\) ) ) ) # ( !\M1|altsyncram_component|auto_generated|q_b\(2) & ( \D1|hex0[5]~5_combout\ & ( ((!\M1|altsyncram_component|auto_generated|q_b\(3) & 
-- ((\M1|altsyncram_component|auto_generated|q_b\(1)) # (\M1|altsyncram_component|auto_generated|q_b\(0))))) # (\sw[9]~input_o\) ) ) ) # ( \M1|altsyncram_component|auto_generated|q_b\(2) & ( !\D1|hex0[5]~5_combout\ & ( 
-- (\M1|altsyncram_component|auto_generated|q_b\(0) & (\M1|altsyncram_component|auto_generated|q_b\(3) & (!\sw[9]~input_o\ & !\M1|altsyncram_component|auto_generated|q_b\(1)))) ) ) ) # ( !\M1|altsyncram_component|auto_generated|q_b\(2) & ( 
-- !\D1|hex0[5]~5_combout\ & ( (!\M1|altsyncram_component|auto_generated|q_b\(3) & (!\sw[9]~input_o\ & ((\M1|altsyncram_component|auto_generated|q_b\(1)) # (\M1|altsyncram_component|auto_generated|q_b\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000011000000000100000000000001001111110011110001111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(0),
	datab => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(3),
	datac => \ALT_INV_sw[9]~input_o\,
	datad => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(1),
	datae => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(2),
	dataf => \D1|ALT_INV_hex0[5]~5_combout\,
	combout => \D1|hex0[5]~6_combout\);

-- Location: LABCELL_X80_Y5_N21
\D1|hex0[6]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|hex0[6]~4_combout\ = ( \D1|D1|bcd_hold[0][3]~q\ & ( (!\D1|hex0[6]~3_combout\ & (!\D1|D1|bcd_hold[0][0]~q\ & (!\D1|D1|bcd_hold[0][1]~q\ & \D1|D1|bcd_hold[0][2]~q\))) ) ) # ( !\D1|D1|bcd_hold[0][3]~q\ & ( (\D1|hex0[6]~3_combout\ & 
-- ((!\D1|D1|bcd_hold[0][1]~q\ & ((!\D1|D1|bcd_hold[0][2]~q\))) # (\D1|D1|bcd_hold[0][1]~q\ & (\D1|D1|bcd_hold[0][0]~q\ & \D1|D1|bcd_hold[0][2]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000001010100000000000100000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D1|ALT_INV_hex0[6]~3_combout\,
	datab => \D1|D1|ALT_INV_bcd_hold[0][0]~q\,
	datac => \D1|D1|ALT_INV_bcd_hold[0][1]~q\,
	datad => \D1|D1|ALT_INV_bcd_hold[0][2]~q\,
	dataf => \D1|D1|ALT_INV_bcd_hold[0][3]~q\,
	combout => \D1|hex0[6]~4_combout\);

-- Location: LABCELL_X80_Y5_N48
\D1|hex0[6]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|hex0[6]~11_combout\ = ( !\sw[9]~input_o\ & ( (!\M1|altsyncram_component|auto_generated|q_b\(3) & (\D1|hex0[6]~3_combout\ & ((!\M1|altsyncram_component|auto_generated|q_b\(2) & ((!\M1|altsyncram_component|auto_generated|q_b\(1)))) # 
-- (\M1|altsyncram_component|auto_generated|q_b\(2) & (\M1|altsyncram_component|auto_generated|q_b\(0) & \M1|altsyncram_component|auto_generated|q_b\(1)))))) # (\M1|altsyncram_component|auto_generated|q_b\(3) & 
-- (\M1|altsyncram_component|auto_generated|q_b\(2) & (!\M1|altsyncram_component|auto_generated|q_b\(0) & (!\D1|hex0[6]~3_combout\ & !\M1|altsyncram_component|auto_generated|q_b\(1))))) ) ) # ( \sw[9]~input_o\ & ( (((\D1|hex0[6]~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010010100000000011110000111100000000000100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(2),
	datab => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(0),
	datac => \D1|ALT_INV_hex0[6]~4_combout\,
	datad => \D1|ALT_INV_hex0[6]~3_combout\,
	datae => \ALT_INV_sw[9]~input_o\,
	dataf => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(1),
	datag => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(3),
	combout => \D1|hex0[6]~11_combout\);

-- Location: FF_X79_Y6_N4
\D1|D1|CNV0|D1|bcd[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \D1|D1|CNV0|D1|Mux2~0_combout\,
	sclr => \D1|D1|ALT_INV_led7_status~q\,
	ena => \D1|D1|bcd_hold[0][3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|D1|CNV0|D1|bcd[1]~DUPLICATE_q\);

-- Location: LABCELL_X79_Y5_N45
\D1|D1|CNV0|D2|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|D1|CNV0|D2|Mux3~0_combout\ = ( \D1|D1|CNV0|D1|bcd[0]~DUPLICATE_q\ & ( !\D1|D1|CNV0|D1|bcd[3]~DUPLICATE_q\ & ( !\D1|D1|CNV0|D1|bcd\(2) ) ) ) # ( !\D1|D1|CNV0|D1|bcd[0]~DUPLICATE_q\ & ( !\D1|D1|CNV0|D1|bcd[3]~DUPLICATE_q\ & ( 
-- (!\D1|D1|CNV0|D1|bcd[1]~DUPLICATE_q\) # (!\D1|D1|CNV0|D1|bcd\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D1|D1|CNV0|D1|ALT_INV_bcd[1]~DUPLICATE_q\,
	datac => \D1|D1|CNV0|D1|ALT_INV_bcd\(2),
	datae => \D1|D1|CNV0|D1|ALT_INV_bcd[0]~DUPLICATE_q\,
	dataf => \D1|D1|CNV0|D1|ALT_INV_bcd[3]~DUPLICATE_q\,
	combout => \D1|D1|CNV0|D2|Mux3~0_combout\);

-- Location: MLABCELL_X78_Y6_N33
\D1|D1|CNV0|D2|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|D1|CNV0|D2|Mux3~1_combout\ = ( !\D1|D1|CNV0|D2|Mux3~0_combout\ & ( (!\D1|D1|CNV0|D2|bcd\(3)) # ((!\D1|D1|CNV0|D2|bcd\(1) & !\D1|D1|CNV0|D2|bcd\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110100000111111111010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D1|D1|CNV0|D2|ALT_INV_bcd\(1),
	datac => \D1|D1|CNV0|D2|ALT_INV_bcd\(2),
	datad => \D1|D1|CNV0|D2|ALT_INV_bcd\(3),
	dataf => \D1|D1|CNV0|D2|ALT_INV_Mux3~0_combout\,
	combout => \D1|D1|CNV0|D2|Mux3~1_combout\);

-- Location: FF_X79_Y6_N44
\D1|D1|CNV0|D2|bcd[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \D1|D1|CNV0|D2|Mux3~1_combout\,
	sclr => \D1|D1|ALT_INV_led7_status~q\,
	sload => VCC,
	ena => \D1|D1|bcd_hold[0][3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|D1|CNV0|D2|bcd\(0));

-- Location: LABCELL_X79_Y6_N21
\D1|D1|CNV0|D2|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|D1|CNV0|D2|Mux0~0_combout\ = ( \D1|D1|CNV0|D2|bcd\(2) & ( (!\D1|D1|CNV0|D2|bcd\(1) & (!\D1|D1|CNV0|D2|bcd\(0) & !\D1|D1|CNV0|D2|bcd\(3))) ) ) # ( !\D1|D1|CNV0|D2|bcd\(2) & ( (!\D1|D1|CNV0|D2|bcd\(1) & (\D1|D1|CNV0|D2|bcd\(0) & \D1|D1|CNV0|D2|bcd\(3))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \D1|D1|CNV0|D2|ALT_INV_bcd\(1),
	datac => \D1|D1|CNV0|D2|ALT_INV_bcd\(0),
	datad => \D1|D1|CNV0|D2|ALT_INV_bcd\(3),
	dataf => \D1|D1|CNV0|D2|ALT_INV_bcd\(2),
	combout => \D1|D1|CNV0|D2|Mux0~0_combout\);

-- Location: FF_X79_Y6_N23
\D1|D1|CNV0|D2|bcd[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \D1|D1|CNV0|D2|Mux0~0_combout\,
	sclr => \D1|D1|ALT_INV_led7_status~q\,
	ena => \D1|D1|bcd_hold[0][3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|D1|CNV0|D2|bcd\(3));

-- Location: LABCELL_X79_Y6_N45
\D1|D1|CNV0|D2|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|D1|CNV0|D2|Mux2~0_combout\ = ( \D1|D1|CNV0|D2|bcd\(2) & ( (!\D1|D1|CNV0|D2|bcd\(3) & (!\D1|D1|CNV0|D2|bcd\(0) & \D1|D1|CNV0|D2|bcd\(1))) ) ) # ( !\D1|D1|CNV0|D2|bcd\(2) & ( (!\D1|D1|CNV0|D2|bcd\(3) & (\D1|D1|CNV0|D2|bcd\(0))) # (\D1|D1|CNV0|D2|bcd\(3) 
-- & (!\D1|D1|CNV0|D2|bcd\(0) & !\D1|D1|CNV0|D2|bcd\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101000001010010110100000101000000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D1|D1|CNV0|D2|ALT_INV_bcd\(3),
	datac => \D1|D1|CNV0|D2|ALT_INV_bcd\(0),
	datad => \D1|D1|CNV0|D2|ALT_INV_bcd\(1),
	dataf => \D1|D1|CNV0|D2|ALT_INV_bcd\(2),
	combout => \D1|D1|CNV0|D2|Mux2~0_combout\);

-- Location: FF_X79_Y6_N47
\D1|D1|CNV0|D2|bcd[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \D1|D1|CNV0|D2|Mux2~0_combout\,
	sclr => \D1|D1|ALT_INV_led7_status~q\,
	ena => \D1|D1|bcd_hold[0][3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|D1|CNV0|D2|bcd\(1));

-- Location: LABCELL_X79_Y6_N18
\D1|D1|CNV0|D2|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|D1|CNV0|D2|Mux1~0_combout\ = ( \D1|D1|CNV0|D2|bcd\(0) & ( (\D1|D1|CNV0|D2|bcd\(1) & !\D1|D1|CNV0|D2|bcd\(3)) ) ) # ( !\D1|D1|CNV0|D2|bcd\(0) & ( (!\D1|D1|CNV0|D2|bcd\(2) & (!\D1|D1|CNV0|D2|bcd\(1) $ (!\D1|D1|CNV0|D2|bcd\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000000000001111000000000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \D1|D1|CNV0|D2|ALT_INV_bcd\(1),
	datac => \D1|D1|CNV0|D2|ALT_INV_bcd\(3),
	datad => \D1|D1|CNV0|D2|ALT_INV_bcd\(2),
	dataf => \D1|D1|CNV0|D2|ALT_INV_bcd\(0),
	combout => \D1|D1|CNV0|D2|Mux1~0_combout\);

-- Location: FF_X79_Y6_N19
\D1|D1|CNV0|D2|bcd[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \D1|D1|CNV0|D2|Mux1~0_combout\,
	sclr => \D1|D1|ALT_INV_led7_status~q\,
	ena => \D1|D1|bcd_hold[0][3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|D1|CNV0|D2|bcd\(2));

-- Location: FF_X80_Y6_N38
\D1|D1|bcd_hold[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \D1|D1|CNV0|D2|bcd\(2),
	sload => VCC,
	ena => \D1|D1|bcd_hold[0][3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|D1|bcd_hold[1][2]~q\);

-- Location: FF_X80_Y6_N59
\D1|D1|bcd_hold[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \D1|D1|CNV0|D2|bcd\(1),
	sload => VCC,
	ena => \D1|D1|bcd_hold[0][3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|D1|bcd_hold[1][1]~q\);

-- Location: FF_X80_Y6_N56
\D1|D1|bcd_hold[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \D1|D1|CNV0|D2|bcd\(0),
	sload => VCC,
	ena => \D1|D1|bcd_hold[0][3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|D1|bcd_hold[1][0]~q\);

-- Location: LABCELL_X80_Y6_N21
\D1|hex1[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|hex1[0]~0_combout\ = ( !\sw[9]~input_o\ & ( (!\M1|altsyncram_component|auto_generated|q_b\(7) & (!\M1|altsyncram_component|auto_generated|q_b\(5) & (!\M1|altsyncram_component|auto_generated|q_b\(6) $ 
-- (!\M1|altsyncram_component|auto_generated|q_b\(4))))) # (\M1|altsyncram_component|auto_generated|q_b\(7) & (\M1|altsyncram_component|auto_generated|q_b\(4) & (!\M1|altsyncram_component|auto_generated|q_b\(6) $ 
-- (!\M1|altsyncram_component|auto_generated|q_b\(5))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100100000100001010010000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(7),
	datab => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(6),
	datac => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(4),
	datad => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(5),
	dataf => \ALT_INV_sw[9]~input_o\,
	combout => \D1|hex1[0]~0_combout\);

-- Location: FF_X80_Y6_N35
\D1|D1|bcd_hold[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \D1|D1|CNV0|D2|bcd\(3),
	sload => VCC,
	ena => \D1|D1|bcd_hold[0][3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|D1|bcd_hold[1][3]~q\);

-- Location: LABCELL_X80_Y6_N42
\D1|hex1[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|hex1[0]~1_combout\ = ( \D1|hex1[0]~0_combout\ & ( \D1|D1|bcd_hold[1][3]~q\ & ( (!\sw[9]~input_o\) # ((\D1|D1|bcd_hold[1][0]~q\ & (!\D1|D1|bcd_hold[1][2]~q\ $ (!\D1|D1|bcd_hold[1][1]~q\)))) ) ) ) # ( !\D1|hex1[0]~0_combout\ & ( \D1|D1|bcd_hold[1][3]~q\ 
-- & ( (\D1|D1|bcd_hold[1][0]~q\ & (\sw[9]~input_o\ & (!\D1|D1|bcd_hold[1][2]~q\ $ (!\D1|D1|bcd_hold[1][1]~q\)))) ) ) ) # ( \D1|hex1[0]~0_combout\ & ( !\D1|D1|bcd_hold[1][3]~q\ & ( (!\sw[9]~input_o\) # ((!\D1|D1|bcd_hold[1][1]~q\ & (!\D1|D1|bcd_hold[1][2]~q\ 
-- $ (!\D1|D1|bcd_hold[1][0]~q\)))) ) ) ) # ( !\D1|hex1[0]~0_combout\ & ( !\D1|D1|bcd_hold[1][3]~q\ & ( (!\D1|D1|bcd_hold[1][1]~q\ & (\sw[9]~input_o\ & (!\D1|D1|bcd_hold[1][2]~q\ $ (!\D1|D1|bcd_hold[1][0]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001001000111111110100100000000000000001101111111100000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D1|D1|ALT_INV_bcd_hold[1][2]~q\,
	datab => \D1|D1|ALT_INV_bcd_hold[1][1]~q\,
	datac => \D1|D1|ALT_INV_bcd_hold[1][0]~q\,
	datad => \ALT_INV_sw[9]~input_o\,
	datae => \D1|ALT_INV_hex1[0]~0_combout\,
	dataf => \D1|D1|ALT_INV_bcd_hold[1][3]~q\,
	combout => \D1|hex1[0]~1_combout\);

-- Location: LABCELL_X80_Y6_N18
\D1|hex1[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|hex1[1]~4_combout\ = ( \D1|D1|bcd_hold[1][3]~q\ & ( (!\sw[9]~input_o\ & ((!\M1|altsyncram_component|auto_generated|q_b\(7)) # ((!\M1|altsyncram_component|auto_generated|q_b\(6))))) # (\sw[9]~input_o\ & (((!\D1|D1|bcd_hold[1][2]~q\)))) ) ) # ( 
-- !\D1|D1|bcd_hold[1][3]~q\ & ( (!\M1|altsyncram_component|auto_generated|q_b\(7)) # ((!\M1|altsyncram_component|auto_generated|q_b\(6)) # (\sw[9]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011111111111011101111111111101110111100001110111011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(7),
	datab => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(6),
	datac => \D1|D1|ALT_INV_bcd_hold[1][2]~q\,
	datad => \ALT_INV_sw[9]~input_o\,
	dataf => \D1|D1|ALT_INV_bcd_hold[1][3]~q\,
	combout => \D1|hex1[1]~4_combout\);

-- Location: LABCELL_X80_Y6_N36
\D1|hex1[1]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|hex1[1]~11_combout\ = ( \D1|D1|bcd_hold[1][3]~q\ & ( (!\D1|D1|bcd_hold[1][0]~q\ & (((!\D1|hex1[1]~4_combout\) # (\D1|D1|bcd_hold[1][2]~q\)))) # (\D1|D1|bcd_hold[1][0]~q\ & ((!\D1|hex1[1]~4_combout\ $ (\D1|D1|bcd_hold[1][2]~q\)) # 
-- (\D1|D1|bcd_hold[1][1]~q\))) ) ) # ( !\D1|D1|bcd_hold[1][3]~q\ & ( (!\D1|hex1[1]~4_combout\) # ((\D1|D1|bcd_hold[1][2]~q\ & (!\D1|D1|bcd_hold[1][0]~q\ $ (!\D1|D1|bcd_hold[1][1]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110110111100001111011011110001101111111111000110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D1|D1|ALT_INV_bcd_hold[1][0]~q\,
	datab => \D1|D1|ALT_INV_bcd_hold[1][1]~q\,
	datac => \D1|ALT_INV_hex1[1]~4_combout\,
	datad => \D1|D1|ALT_INV_bcd_hold[1][2]~q\,
	dataf => \D1|D1|ALT_INV_bcd_hold[1][3]~q\,
	combout => \D1|hex1[1]~11_combout\);

-- Location: LABCELL_X80_Y6_N12
\D1|hex1[1]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|hex1[1]~20_combout\ = ( !\sw[9]~input_o\ & ( (!\M1|altsyncram_component|auto_generated|q_b\(7) & ((!\D1|hex1[1]~4_combout\) # ((\M1|altsyncram_component|auto_generated|q_b\(6) & (!\M1|altsyncram_component|auto_generated|q_b\(5) $ 
-- (!\M1|altsyncram_component|auto_generated|q_b\(4))))))) # (\M1|altsyncram_component|auto_generated|q_b\(7) & ((!\M1|altsyncram_component|auto_generated|q_b\(4) & (((!\D1|hex1[1]~4_combout\) # (\M1|altsyncram_component|auto_generated|q_b\(6))))) # 
-- (\M1|altsyncram_component|auto_generated|q_b\(4) & ((!\M1|altsyncram_component|auto_generated|q_b\(6) $ (\D1|hex1[1]~4_combout\)) # (\M1|altsyncram_component|auto_generated|q_b\(5)))))) ) ) # ( \sw[9]~input_o\ & ( (((\D1|hex1[1]~11_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1111111111111101000011110000111100000001011011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(5),
	datab => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(4),
	datac => \D1|ALT_INV_hex1[1]~11_combout\,
	datad => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(6),
	datae => \ALT_INV_sw[9]~input_o\,
	dataf => \D1|ALT_INV_hex1[1]~4_combout\,
	datag => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(7),
	combout => \D1|hex1[1]~20_combout\);

-- Location: LABCELL_X80_Y6_N33
\D1|hex1[2]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|hex1[2]~10_combout\ = ( \D1|hex1[1]~4_combout\ & ( (!\D1|D1|bcd_hold[1][2]~q\ & (\D1|D1|bcd_hold[1][1]~q\ & (!\D1|D1|bcd_hold[1][0]~q\ & !\D1|D1|bcd_hold[1][3]~q\))) ) ) # ( !\D1|hex1[1]~4_combout\ & ( (!\D1|D1|bcd_hold[1][2]~q\) # 
-- (((!\D1|D1|bcd_hold[1][0]~q\) # (!\D1|D1|bcd_hold[1][3]~q\)) # (\D1|D1|bcd_hold[1][1]~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111011111111111111101100100000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D1|D1|ALT_INV_bcd_hold[1][2]~q\,
	datab => \D1|D1|ALT_INV_bcd_hold[1][1]~q\,
	datac => \D1|D1|ALT_INV_bcd_hold[1][0]~q\,
	datad => \D1|D1|ALT_INV_bcd_hold[1][3]~q\,
	dataf => \D1|ALT_INV_hex1[1]~4_combout\,
	combout => \D1|hex1[2]~10_combout\);

-- Location: LABCELL_X80_Y6_N6
\D1|hex1[2]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|hex1[2]~16_combout\ = ( !\sw[9]~input_o\ & ( (!\M1|altsyncram_component|auto_generated|q_b\(5) & (!\D1|hex1[1]~4_combout\ & ((!\M1|altsyncram_component|auto_generated|q_b\(4)) # ((!\M1|altsyncram_component|auto_generated|q_b\(7)) # 
-- (!\M1|altsyncram_component|auto_generated|q_b\(6)))))) # (\M1|altsyncram_component|auto_generated|q_b\(5) & ((!\D1|hex1[1]~4_combout\) # ((!\M1|altsyncram_component|auto_generated|q_b\(4) & (!\M1|altsyncram_component|auto_generated|q_b\(7) & 
-- !\M1|altsyncram_component|auto_generated|q_b\(6)))))) ) ) # ( \sw[9]~input_o\ & ( (((\D1|hex1[2]~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1111111111111101000011110000111101000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(5),
	datab => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(4),
	datac => \D1|ALT_INV_hex1[2]~10_combout\,
	datad => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(6),
	datae => \ALT_INV_sw[9]~input_o\,
	dataf => \D1|ALT_INV_hex1[1]~4_combout\,
	datag => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(7),
	combout => \D1|hex1[2]~16_combout\);

-- Location: LABCELL_X80_Y6_N48
\D1|hex1[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|hex1[3]~2_combout\ = ( !\sw[9]~input_o\ & ( (!\M1|altsyncram_component|auto_generated|q_b\(5) & (!\M1|altsyncram_component|auto_generated|q_b\(7) & (!\M1|altsyncram_component|auto_generated|q_b\(4) $ 
-- (!\M1|altsyncram_component|auto_generated|q_b\(6))))) # (\M1|altsyncram_component|auto_generated|q_b\(5) & ((!\M1|altsyncram_component|auto_generated|q_b\(4) & (\M1|altsyncram_component|auto_generated|q_b\(7) & 
-- !\M1|altsyncram_component|auto_generated|q_b\(6))) # (\M1|altsyncram_component|auto_generated|q_b\(4) & ((\M1|altsyncram_component|auto_generated|q_b\(6)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010010000011000000000000000000100100100000110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(7),
	datab => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(4),
	datac => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(5),
	datad => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(6),
	datae => \ALT_INV_sw[9]~input_o\,
	combout => \D1|hex1[3]~2_combout\);

-- Location: LABCELL_X80_Y6_N24
\D1|hex1[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|hex1[3]~3_combout\ = ( \D1|hex1[3]~2_combout\ & ( \D1|D1|bcd_hold[1][3]~q\ & ( (!\sw[9]~input_o\) # ((\D1|D1|bcd_hold[1][1]~q\ & (!\D1|D1|bcd_hold[1][2]~q\ $ (\D1|D1|bcd_hold[1][0]~q\)))) ) ) ) # ( !\D1|hex1[3]~2_combout\ & ( \D1|D1|bcd_hold[1][3]~q\ 
-- & ( (\D1|D1|bcd_hold[1][1]~q\ & (\sw[9]~input_o\ & (!\D1|D1|bcd_hold[1][2]~q\ $ (\D1|D1|bcd_hold[1][0]~q\)))) ) ) ) # ( \D1|hex1[3]~2_combout\ & ( !\D1|D1|bcd_hold[1][3]~q\ & ( (!\sw[9]~input_o\) # ((!\D1|D1|bcd_hold[1][2]~q\ & (!\D1|D1|bcd_hold[1][1]~q\ 
-- & \D1|D1|bcd_hold[1][0]~q\)) # (\D1|D1|bcd_hold[1][2]~q\ & (!\D1|D1|bcd_hold[1][1]~q\ $ (\D1|D1|bcd_hold[1][0]~q\)))) ) ) ) # ( !\D1|hex1[3]~2_combout\ & ( !\D1|D1|bcd_hold[1][3]~q\ & ( (\sw[9]~input_o\ & ((!\D1|D1|bcd_hold[1][2]~q\ & 
-- (!\D1|D1|bcd_hold[1][1]~q\ & \D1|D1|bcd_hold[1][0]~q\)) # (\D1|D1|bcd_hold[1][2]~q\ & (!\D1|D1|bcd_hold[1][1]~q\ $ (\D1|D1|bcd_hold[1][0]~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001001001111111110100100100000000001000011111111100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D1|D1|ALT_INV_bcd_hold[1][2]~q\,
	datab => \D1|D1|ALT_INV_bcd_hold[1][1]~q\,
	datac => \D1|D1|ALT_INV_bcd_hold[1][0]~q\,
	datad => \ALT_INV_sw[9]~input_o\,
	datae => \D1|ALT_INV_hex1[3]~2_combout\,
	dataf => \D1|D1|ALT_INV_bcd_hold[1][3]~q\,
	combout => \D1|hex1[3]~3_combout\);

-- Location: LABCELL_X80_Y6_N57
\D1|hex1[4]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|hex1[4]~8_combout\ = ( \D1|D1|bcd_hold[1][3]~q\ & ( (!\D1|D1|bcd_hold[1][2]~q\ & (\sw[9]~input_o\ & (\D1|D1|bcd_hold[1][0]~q\ & !\D1|D1|bcd_hold[1][1]~q\))) ) ) # ( !\D1|D1|bcd_hold[1][3]~q\ & ( (\sw[9]~input_o\ & (((\D1|D1|bcd_hold[1][2]~q\ & 
-- !\D1|D1|bcd_hold[1][1]~q\)) # (\D1|D1|bcd_hold[1][0]~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100000011000100110000001100000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D1|D1|ALT_INV_bcd_hold[1][2]~q\,
	datab => \ALT_INV_sw[9]~input_o\,
	datac => \D1|D1|ALT_INV_bcd_hold[1][0]~q\,
	datad => \D1|D1|ALT_INV_bcd_hold[1][1]~q\,
	dataf => \D1|D1|ALT_INV_bcd_hold[1][3]~q\,
	combout => \D1|hex1[4]~8_combout\);

-- Location: MLABCELL_X82_Y9_N36
\D1|hex1[4]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|hex1[4]~9_combout\ = ( \M1|altsyncram_component|auto_generated|q_b\(6) & ( \D1|hex1[4]~8_combout\ & ( ((!\M1|altsyncram_component|auto_generated|q_b\(7) & ((!\M1|altsyncram_component|auto_generated|q_b\(5)) # 
-- (\M1|altsyncram_component|auto_generated|q_b\(4))))) # (\sw[9]~input_o\) ) ) ) # ( !\M1|altsyncram_component|auto_generated|q_b\(6) & ( \D1|hex1[4]~8_combout\ & ( ((\M1|altsyncram_component|auto_generated|q_b\(4) & 
-- ((!\M1|altsyncram_component|auto_generated|q_b\(7)) # (!\M1|altsyncram_component|auto_generated|q_b\(5))))) # (\sw[9]~input_o\) ) ) ) # ( \M1|altsyncram_component|auto_generated|q_b\(6) & ( !\D1|hex1[4]~8_combout\ & ( 
-- (!\M1|altsyncram_component|auto_generated|q_b\(7) & (!\sw[9]~input_o\ & ((!\M1|altsyncram_component|auto_generated|q_b\(5)) # (\M1|altsyncram_component|auto_generated|q_b\(4))))) ) ) ) # ( !\M1|altsyncram_component|auto_generated|q_b\(6) & ( 
-- !\D1|hex1[4]~8_combout\ & ( (\M1|altsyncram_component|auto_generated|q_b\(4) & (!\sw[9]~input_o\ & ((!\M1|altsyncram_component|auto_generated|q_b\(7)) # (!\M1|altsyncram_component|auto_generated|q_b\(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001000000110000000100000001011111010011111100111101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(4),
	datab => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(7),
	datac => \ALT_INV_sw[9]~input_o\,
	datad => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(5),
	datae => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(6),
	dataf => \D1|ALT_INV_hex1[4]~8_combout\,
	combout => \D1|hex1[4]~9_combout\);

-- Location: LABCELL_X80_Y6_N54
\D1|hex1[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|hex1[5]~6_combout\ = ( \D1|D1|bcd_hold[1][3]~q\ & ( (\D1|D1|bcd_hold[1][2]~q\ & (\sw[9]~input_o\ & (!\D1|D1|bcd_hold[1][1]~q\ & \D1|D1|bcd_hold[1][0]~q\))) ) ) # ( !\D1|D1|bcd_hold[1][3]~q\ & ( (!\D1|D1|bcd_hold[1][2]~q\ & (\sw[9]~input_o\ & 
-- ((\D1|D1|bcd_hold[1][0]~q\) # (\D1|D1|bcd_hold[1][1]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000100010000000100010001000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D1|D1|ALT_INV_bcd_hold[1][2]~q\,
	datab => \ALT_INV_sw[9]~input_o\,
	datac => \D1|D1|ALT_INV_bcd_hold[1][1]~q\,
	datad => \D1|D1|ALT_INV_bcd_hold[1][0]~q\,
	dataf => \D1|D1|ALT_INV_bcd_hold[1][3]~q\,
	combout => \D1|hex1[5]~6_combout\);

-- Location: MLABCELL_X82_Y9_N0
\D1|hex1[5]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|hex1[5]~7_combout\ = ( \M1|altsyncram_component|auto_generated|q_b\(6) & ( \sw[9]~input_o\ & ( \D1|hex1[5]~6_combout\ ) ) ) # ( !\M1|altsyncram_component|auto_generated|q_b\(6) & ( \sw[9]~input_o\ & ( \D1|hex1[5]~6_combout\ ) ) ) # ( 
-- \M1|altsyncram_component|auto_generated|q_b\(6) & ( !\sw[9]~input_o\ & ( (\M1|altsyncram_component|auto_generated|q_b\(4) & (\M1|altsyncram_component|auto_generated|q_b\(7) & !\M1|altsyncram_component|auto_generated|q_b\(5))) ) ) ) # ( 
-- !\M1|altsyncram_component|auto_generated|q_b\(6) & ( !\sw[9]~input_o\ & ( (!\M1|altsyncram_component|auto_generated|q_b\(7) & ((\M1|altsyncram_component|auto_generated|q_b\(5)) # (\M1|altsyncram_component|auto_generated|q_b\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010011001100000100010000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(4),
	datab => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(7),
	datac => \D1|ALT_INV_hex1[5]~6_combout\,
	datad => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(5),
	datae => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(6),
	dataf => \ALT_INV_sw[9]~input_o\,
	combout => \D1|hex1[5]~7_combout\);

-- Location: LABCELL_X80_Y6_N30
\D1|hex1[6]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|hex1[6]~5_combout\ = ( \D1|D1|bcd_hold[1][3]~q\ & ( (\D1|D1|bcd_hold[1][2]~q\ & (!\D1|D1|bcd_hold[1][1]~q\ & (!\D1|hex1[1]~4_combout\ & !\D1|D1|bcd_hold[1][0]~q\))) ) ) # ( !\D1|D1|bcd_hold[1][3]~q\ & ( (\D1|hex1[1]~4_combout\ & 
-- ((!\D1|D1|bcd_hold[1][2]~q\ & (!\D1|D1|bcd_hold[1][1]~q\)) # (\D1|D1|bcd_hold[1][2]~q\ & (\D1|D1|bcd_hold[1][1]~q\ & \D1|D1|bcd_hold[1][0]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001001000010000000100101000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D1|D1|ALT_INV_bcd_hold[1][2]~q\,
	datab => \D1|D1|ALT_INV_bcd_hold[1][1]~q\,
	datac => \D1|ALT_INV_hex1[1]~4_combout\,
	datad => \D1|D1|ALT_INV_bcd_hold[1][0]~q\,
	dataf => \D1|D1|ALT_INV_bcd_hold[1][3]~q\,
	combout => \D1|hex1[6]~5_combout\);

-- Location: LABCELL_X80_Y6_N0
\D1|hex1[6]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|hex1[6]~12_combout\ = ( !\sw[9]~input_o\ & ( (!\M1|altsyncram_component|auto_generated|q_b\(7) & (\D1|hex1[1]~4_combout\ & ((!\M1|altsyncram_component|auto_generated|q_b\(5) & ((!\M1|altsyncram_component|auto_generated|q_b\(6)))) # 
-- (\M1|altsyncram_component|auto_generated|q_b\(5) & (\M1|altsyncram_component|auto_generated|q_b\(4) & \M1|altsyncram_component|auto_generated|q_b\(6)))))) # (\M1|altsyncram_component|auto_generated|q_b\(7) & 
-- (!\M1|altsyncram_component|auto_generated|q_b\(5) & (!\M1|altsyncram_component|auto_generated|q_b\(4) & (\M1|altsyncram_component|auto_generated|q_b\(6) & !\D1|hex1[1]~4_combout\)))) ) ) # ( \sw[9]~input_o\ & ( (((\D1|hex1[6]~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001000000011110000111110100000000100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(5),
	datab => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(4),
	datac => \D1|ALT_INV_hex1[6]~5_combout\,
	datad => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(6),
	datae => \ALT_INV_sw[9]~input_o\,
	dataf => \D1|ALT_INV_hex1[1]~4_combout\,
	datag => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(7),
	combout => \D1|hex1[6]~12_combout\);

-- Location: FF_X79_Y6_N31
\D1|D1|CNV0|D3|bcd[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \D1|D1|CNV0|D3|Mux2~0_combout\,
	sclr => \D1|D1|ALT_INV_led7_status~q\,
	ena => \D1|D1|bcd_hold[0][3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|D1|CNV0|D3|bcd[1]~DUPLICATE_q\);

-- Location: LABCELL_X79_Y6_N33
\D1|D1|CNV0|D3|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|D1|CNV0|D3|Mux1~0_combout\ = ( \D1|D1|CNV0|D3|bcd[1]~DUPLICATE_q\ & ( (!\D1|D1|CNV0|D3|bcd[3]~DUPLICATE_q\ & ((!\D1|D1|CNV0|D3|bcd\(2)) # (\D1|D1|CNV0|D3|bcd\(0)))) ) ) # ( !\D1|D1|CNV0|D3|bcd[1]~DUPLICATE_q\ & ( (!\D1|D1|CNV0|D3|bcd\(0) & 
-- (\D1|D1|CNV0|D3|bcd[3]~DUPLICATE_q\ & !\D1|D1|CNV0|D3|bcd\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000001000100000000011001100010001001100110001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D1|D1|CNV0|D3|ALT_INV_bcd\(0),
	datab => \D1|D1|CNV0|D3|ALT_INV_bcd[3]~DUPLICATE_q\,
	datad => \D1|D1|CNV0|D3|ALT_INV_bcd\(2),
	dataf => \D1|D1|CNV0|D3|ALT_INV_bcd[1]~DUPLICATE_q\,
	combout => \D1|D1|CNV0|D3|Mux1~0_combout\);

-- Location: FF_X79_Y6_N35
\D1|D1|CNV0|D3|bcd[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \D1|D1|CNV0|D3|Mux1~0_combout\,
	sclr => \D1|D1|ALT_INV_led7_status~q\,
	ena => \D1|D1|bcd_hold[0][3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|D1|CNV0|D3|bcd\(2));

-- Location: LABCELL_X79_Y6_N42
\D1|D1|CNV0|D3|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|D1|CNV0|D3|Mux3~0_combout\ = ( \D1|D1|CNV0|D2|bcd\(1) & ( (!\D1|D1|CNV0|D2|bcd\(3) & !\D1|D1|CNV0|D2|bcd\(2)) ) ) # ( !\D1|D1|CNV0|D2|bcd\(1) & ( (!\D1|D1|CNV0|D2|bcd\(3) & ((!\D1|D1|CNV0|D2|bcd\(2)) # (!\D1|D1|CNV0|D2|bcd\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010001000101010101000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D1|D1|CNV0|D2|ALT_INV_bcd\(3),
	datab => \D1|D1|CNV0|D2|ALT_INV_bcd\(2),
	datad => \D1|D1|CNV0|D2|ALT_INV_bcd\(0),
	dataf => \D1|D1|CNV0|D2|ALT_INV_bcd\(1),
	combout => \D1|D1|CNV0|D3|Mux3~0_combout\);

-- Location: LABCELL_X79_Y6_N27
\D1|D1|CNV0|D3|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|D1|CNV0|D3|Mux3~1_combout\ = ( \D1|D1|CNV0|D3|bcd[3]~DUPLICATE_q\ & ( (!\D1|D1|CNV0|D3|bcd\(2) & (!\D1|D1|CNV0|D3|bcd\(1) & !\D1|D1|CNV0|D3|Mux3~0_combout\)) ) ) # ( !\D1|D1|CNV0|D3|bcd[3]~DUPLICATE_q\ & ( !\D1|D1|CNV0|D3|Mux3~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D1|D1|CNV0|D3|ALT_INV_bcd\(2),
	datac => \D1|D1|CNV0|D3|ALT_INV_bcd\(1),
	datad => \D1|D1|CNV0|D3|ALT_INV_Mux3~0_combout\,
	dataf => \D1|D1|CNV0|D3|ALT_INV_bcd[3]~DUPLICATE_q\,
	combout => \D1|D1|CNV0|D3|Mux3~1_combout\);

-- Location: FF_X79_Y6_N29
\D1|D1|CNV0|D3|bcd[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \D1|D1|CNV0|D3|Mux3~1_combout\,
	sclr => \D1|D1|ALT_INV_led7_status~q\,
	ena => \D1|D1|bcd_hold[0][3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|D1|CNV0|D3|bcd\(0));

-- Location: FF_X79_Y6_N26
\D1|D1|CNV0|D3|bcd[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \D1|D1|CNV0|D3|Mux0~0_combout\,
	sclr => \D1|D1|ALT_INV_led7_status~q\,
	ena => \D1|D1|bcd_hold[0][3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|D1|CNV0|D3|bcd\(3));

-- Location: FF_X79_Y6_N34
\D1|D1|CNV0|D3|bcd[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \D1|D1|CNV0|D3|Mux1~0_combout\,
	sclr => \D1|D1|ALT_INV_led7_status~q\,
	ena => \D1|D1|bcd_hold[0][3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|D1|CNV0|D3|bcd[2]~DUPLICATE_q\);

-- Location: LABCELL_X79_Y6_N30
\D1|D1|CNV0|D3|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|D1|CNV0|D3|Mux2~0_combout\ = ( \D1|D1|CNV0|D3|bcd[2]~DUPLICATE_q\ & ( (!\D1|D1|CNV0|D3|bcd\(0) & (!\D1|D1|CNV0|D3|bcd\(3) & \D1|D1|CNV0|D3|bcd\(1))) ) ) # ( !\D1|D1|CNV0|D3|bcd[2]~DUPLICATE_q\ & ( (!\D1|D1|CNV0|D3|bcd\(0) & (\D1|D1|CNV0|D3|bcd\(3) & 
-- !\D1|D1|CNV0|D3|bcd\(1))) # (\D1|D1|CNV0|D3|bcd\(0) & (!\D1|D1|CNV0|D3|bcd\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001010000010110100101000000000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D1|D1|CNV0|D3|ALT_INV_bcd\(0),
	datac => \D1|D1|CNV0|D3|ALT_INV_bcd\(3),
	datad => \D1|D1|CNV0|D3|ALT_INV_bcd\(1),
	dataf => \D1|D1|CNV0|D3|ALT_INV_bcd[2]~DUPLICATE_q\,
	combout => \D1|D1|CNV0|D3|Mux2~0_combout\);

-- Location: FF_X79_Y6_N32
\D1|D1|CNV0|D3|bcd[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \D1|D1|CNV0|D3|Mux2~0_combout\,
	sclr => \D1|D1|ALT_INV_led7_status~q\,
	ena => \D1|D1|bcd_hold[0][3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|D1|CNV0|D3|bcd\(1));

-- Location: LABCELL_X79_Y6_N24
\D1|D1|CNV0|D3|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|D1|CNV0|D3|Mux0~0_combout\ = ( \D1|D1|CNV0|D3|bcd\(0) & ( (!\D1|D1|CNV0|D3|bcd\(1) & (!\D1|D1|CNV0|D3|bcd\(2) & \D1|D1|CNV0|D3|bcd\(3))) ) ) # ( !\D1|D1|CNV0|D3|bcd\(0) & ( (!\D1|D1|CNV0|D3|bcd\(1) & (\D1|D1|CNV0|D3|bcd\(2) & !\D1|D1|CNV0|D3|bcd\(3))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \D1|D1|CNV0|D3|ALT_INV_bcd\(1),
	datac => \D1|D1|CNV0|D3|ALT_INV_bcd\(2),
	datad => \D1|D1|CNV0|D3|ALT_INV_bcd\(3),
	dataf => \D1|D1|CNV0|D3|ALT_INV_bcd\(0),
	combout => \D1|D1|CNV0|D3|Mux0~0_combout\);

-- Location: FF_X79_Y6_N25
\D1|D1|CNV0|D3|bcd[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \D1|D1|CNV0|D3|Mux0~0_combout\,
	sclr => \D1|D1|ALT_INV_led7_status~q\,
	ena => \D1|D1|bcd_hold[0][3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|D1|CNV0|D3|bcd[3]~DUPLICATE_q\);

-- Location: FF_X82_Y10_N35
\D1|D1|bcd_hold[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \D1|D1|CNV0|D3|bcd[3]~DUPLICATE_q\,
	sload => VCC,
	ena => \D1|D1|bcd_hold[0][3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|D1|bcd_hold[2][3]~q\);

-- Location: FF_X82_Y10_N58
\D1|D1|bcd_hold[2][1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \D1|D1|CNV0|D3|bcd[1]~DUPLICATE_q\,
	sload => VCC,
	ena => \D1|D1|bcd_hold[0][3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|D1|bcd_hold[2][1]~DUPLICATE_q\);

-- Location: FF_X82_Y10_N8
\D1|D1|bcd_hold[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \D1|D1|CNV0|D3|bcd[2]~DUPLICATE_q\,
	sload => VCC,
	ena => \D1|D1|bcd_hold[0][3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|D1|bcd_hold[2][2]~q\);

-- Location: FF_X82_Y10_N23
\D1|D1|bcd_hold[2][0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \D1|D1|CNV0|D3|bcd\(0),
	sload => VCC,
	ena => \D1|D1|bcd_hold[0][3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|D1|bcd_hold[2][0]~DUPLICATE_q\);

-- Location: MLABCELL_X82_Y8_N39
\D1|hex2[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|hex2[0]~0_combout\ = ( \M1|altsyncram_component|auto_generated|q_b\(9) & ( \M1|altsyncram_component|auto_generated|q_b\(11) & ( (!\M1|altsyncram_component|auto_generated|q_b\(10) & (\M1|altsyncram_component|auto_generated|q_b\(8) & !\sw[9]~input_o\)) 
-- ) ) ) # ( !\M1|altsyncram_component|auto_generated|q_b\(9) & ( \M1|altsyncram_component|auto_generated|q_b\(11) & ( (\M1|altsyncram_component|auto_generated|q_b\(10) & (\M1|altsyncram_component|auto_generated|q_b\(8) & !\sw[9]~input_o\)) ) ) ) # ( 
-- !\M1|altsyncram_component|auto_generated|q_b\(9) & ( !\M1|altsyncram_component|auto_generated|q_b\(11) & ( (!\sw[9]~input_o\ & (!\M1|altsyncram_component|auto_generated|q_b\(10) $ (!\M1|altsyncram_component|auto_generated|q_b\(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000001100000000000000000000000010000000100000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(10),
	datab => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(8),
	datac => \ALT_INV_sw[9]~input_o\,
	datae => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(9),
	dataf => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(11),
	combout => \D1|hex2[0]~0_combout\);

-- Location: MLABCELL_X82_Y10_N18
\D1|hex2[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|hex2[0]~1_combout\ = ( \D1|D1|bcd_hold[2][0]~DUPLICATE_q\ & ( \D1|hex2[0]~0_combout\ & ( (!\sw[9]~input_o\) # ((!\D1|D1|bcd_hold[2][3]~q\ & (!\D1|D1|bcd_hold[2][1]~DUPLICATE_q\ & !\D1|D1|bcd_hold[2][2]~q\)) # (\D1|D1|bcd_hold[2][3]~q\ & 
-- (!\D1|D1|bcd_hold[2][1]~DUPLICATE_q\ $ (!\D1|D1|bcd_hold[2][2]~q\)))) ) ) ) # ( !\D1|D1|bcd_hold[2][0]~DUPLICATE_q\ & ( \D1|hex2[0]~0_combout\ & ( (!\sw[9]~input_o\) # ((!\D1|D1|bcd_hold[2][3]~q\ & (!\D1|D1|bcd_hold[2][1]~DUPLICATE_q\ & 
-- \D1|D1|bcd_hold[2][2]~q\))) ) ) ) # ( \D1|D1|bcd_hold[2][0]~DUPLICATE_q\ & ( !\D1|hex2[0]~0_combout\ & ( (\sw[9]~input_o\ & ((!\D1|D1|bcd_hold[2][3]~q\ & (!\D1|D1|bcd_hold[2][1]~DUPLICATE_q\ & !\D1|D1|bcd_hold[2][2]~q\)) # (\D1|D1|bcd_hold[2][3]~q\ & 
-- (!\D1|D1|bcd_hold[2][1]~DUPLICATE_q\ $ (!\D1|D1|bcd_hold[2][2]~q\))))) ) ) ) # ( !\D1|D1|bcd_hold[2][0]~DUPLICATE_q\ & ( !\D1|hex2[0]~0_combout\ & ( (!\D1|D1|bcd_hold[2][3]~q\ & (\sw[9]~input_o\ & (!\D1|D1|bcd_hold[2][1]~DUPLICATE_q\ & 
-- \D1|D1|bcd_hold[2][2]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000001000010001000011001100111011001110110111011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D1|D1|ALT_INV_bcd_hold[2][3]~q\,
	datab => \ALT_INV_sw[9]~input_o\,
	datac => \D1|D1|ALT_INV_bcd_hold[2][1]~DUPLICATE_q\,
	datad => \D1|D1|ALT_INV_bcd_hold[2][2]~q\,
	datae => \D1|D1|ALT_INV_bcd_hold[2][0]~DUPLICATE_q\,
	dataf => \D1|ALT_INV_hex2[0]~0_combout\,
	combout => \D1|hex2[0]~1_combout\);

-- Location: FF_X82_Y10_N22
\D1|D1|bcd_hold[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \D1|D1|CNV0|D3|bcd\(0),
	sload => VCC,
	ena => \D1|D1|bcd_hold[0][3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|D1|bcd_hold[2][0]~q\);

-- Location: MLABCELL_X82_Y10_N12
\D1|hex2[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|hex2[1]~4_combout\ = ( \D1|D1|bcd_hold[2][2]~q\ & ( (!\sw[9]~input_o\ & ((!\M1|altsyncram_component|auto_generated|q_b\(10)) # ((!\M1|altsyncram_component|auto_generated|q_b\(11))))) # (\sw[9]~input_o\ & (((!\D1|D1|bcd_hold[2][3]~q\)))) ) ) # ( 
-- !\D1|D1|bcd_hold[2][2]~q\ & ( (!\M1|altsyncram_component|auto_generated|q_b\(10)) # ((!\M1|altsyncram_component|auto_generated|q_b\(11)) # (\sw[9]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011111111111011101111111111101110111100001110111011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(10),
	datab => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(11),
	datac => \D1|D1|ALT_INV_bcd_hold[2][3]~q\,
	datad => \ALT_INV_sw[9]~input_o\,
	dataf => \D1|D1|ALT_INV_bcd_hold[2][2]~q\,
	combout => \D1|hex2[1]~4_combout\);

-- Location: MLABCELL_X82_Y10_N6
\D1|hex2[1]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|hex2[1]~11_combout\ = ( \D1|D1|bcd_hold[2][2]~q\ & ( \D1|D1|bcd_hold[2][1]~DUPLICATE_q\ & ( (!\D1|D1|bcd_hold[2][0]~q\) # ((!\D1|hex2[1]~4_combout\) # (\D1|D1|bcd_hold[2][3]~q\)) ) ) ) # ( !\D1|D1|bcd_hold[2][2]~q\ & ( 
-- \D1|D1|bcd_hold[2][1]~DUPLICATE_q\ & ( (!\D1|hex2[1]~4_combout\) # ((\D1|D1|bcd_hold[2][0]~q\ & \D1|D1|bcd_hold[2][3]~q\)) ) ) ) # ( \D1|D1|bcd_hold[2][2]~q\ & ( !\D1|D1|bcd_hold[2][1]~DUPLICATE_q\ & ( (!\D1|D1|bcd_hold[2][0]~q\ & 
-- ((!\D1|hex2[1]~4_combout\) # (\D1|D1|bcd_hold[2][3]~q\))) # (\D1|D1|bcd_hold[2][0]~q\ & ((!\D1|D1|bcd_hold[2][3]~q\) # (\D1|hex2[1]~4_combout\))) ) ) ) # ( !\D1|D1|bcd_hold[2][2]~q\ & ( !\D1|D1|bcd_hold[2][1]~DUPLICATE_q\ & ( !\D1|hex2[1]~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111000011111111111111000000111111111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \D1|D1|ALT_INV_bcd_hold[2][0]~q\,
	datac => \D1|D1|ALT_INV_bcd_hold[2][3]~q\,
	datad => \D1|ALT_INV_hex2[1]~4_combout\,
	datae => \D1|D1|ALT_INV_bcd_hold[2][2]~q\,
	dataf => \D1|D1|ALT_INV_bcd_hold[2][1]~DUPLICATE_q\,
	combout => \D1|hex2[1]~11_combout\);

-- Location: MLABCELL_X82_Y10_N42
\D1|hex2[1]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|hex2[1]~20_combout\ = ( !\sw[9]~input_o\ & ( (!\M1|altsyncram_component|auto_generated|q_b\(11) & ((!\D1|hex2[1]~4_combout\) # ((\M1|altsyncram_component|auto_generated|q_b\(10) & (!\M1|altsyncram_component|auto_generated|q_b\(9) $ 
-- (!\M1|altsyncram_component|auto_generated|q_b\(8))))))) # (\M1|altsyncram_component|auto_generated|q_b\(11) & ((!\M1|altsyncram_component|auto_generated|q_b\(8) & (((!\D1|hex2[1]~4_combout\)) # (\M1|altsyncram_component|auto_generated|q_b\(10)))) # 
-- (\M1|altsyncram_component|auto_generated|q_b\(8) & ((!\M1|altsyncram_component|auto_generated|q_b\(10) $ (\D1|hex2[1]~4_combout\)) # (\M1|altsyncram_component|auto_generated|q_b\(9)))))) ) ) # ( \sw[9]~input_o\ & ( (((\D1|hex2[1]~11_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1111111111111011000011110000111100010101010001110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(10),
	datab => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(9),
	datac => \D1|ALT_INV_hex2[1]~11_combout\,
	datad => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(8),
	datae => \ALT_INV_sw[9]~input_o\,
	dataf => \D1|ALT_INV_hex2[1]~4_combout\,
	datag => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(11),
	combout => \D1|hex2[1]~20_combout\);

-- Location: MLABCELL_X82_Y10_N51
\D1|hex2[2]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|hex2[2]~10_combout\ = ( \D1|D1|bcd_hold[2][1]~DUPLICATE_q\ & ( (!\D1|hex2[1]~4_combout\) # ((!\D1|D1|bcd_hold[2][3]~q\ & (!\D1|D1|bcd_hold[2][2]~q\ & !\D1|D1|bcd_hold[2][0]~DUPLICATE_q\))) ) ) # ( !\D1|D1|bcd_hold[2][1]~DUPLICATE_q\ & ( 
-- (!\D1|hex2[1]~4_combout\ & ((!\D1|D1|bcd_hold[2][3]~q\) # ((!\D1|D1|bcd_hold[2][2]~q\) # (!\D1|D1|bcd_hold[2][0]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001000110011001100100011101100110011001110110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D1|D1|ALT_INV_bcd_hold[2][3]~q\,
	datab => \D1|ALT_INV_hex2[1]~4_combout\,
	datac => \D1|D1|ALT_INV_bcd_hold[2][2]~q\,
	datad => \D1|D1|ALT_INV_bcd_hold[2][0]~DUPLICATE_q\,
	dataf => \D1|D1|ALT_INV_bcd_hold[2][1]~DUPLICATE_q\,
	combout => \D1|hex2[2]~10_combout\);

-- Location: MLABCELL_X82_Y10_N36
\D1|hex2[2]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|hex2[2]~16_combout\ = ( !\sw[9]~input_o\ & ( (!\M1|altsyncram_component|auto_generated|q_b\(10) & ((!\D1|hex2[1]~4_combout\) # ((\M1|altsyncram_component|auto_generated|q_b\(9) & (!\M1|altsyncram_component|auto_generated|q_b\(11) & 
-- !\M1|altsyncram_component|auto_generated|q_b\(8)))))) # (\M1|altsyncram_component|auto_generated|q_b\(10) & (!\D1|hex2[1]~4_combout\ & (((!\M1|altsyncram_component|auto_generated|q_b\(11)) # (!\M1|altsyncram_component|auto_generated|q_b\(8))) # 
-- (\M1|altsyncram_component|auto_generated|q_b\(9))))) ) ) # ( \sw[9]~input_o\ & ( (((\D1|hex2[2]~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1111111111111011000011110000111100100000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(10),
	datab => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(9),
	datac => \D1|ALT_INV_hex2[2]~10_combout\,
	datad => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(8),
	datae => \ALT_INV_sw[9]~input_o\,
	dataf => \D1|ALT_INV_hex2[1]~4_combout\,
	datag => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(11),
	combout => \D1|hex2[2]~16_combout\);

-- Location: FF_X82_Y10_N59
\D1|D1|bcd_hold[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \D1|D1|CNV0|D3|bcd[1]~DUPLICATE_q\,
	sload => VCC,
	ena => \D1|D1|bcd_hold[0][3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|D1|bcd_hold[2][1]~q\);

-- Location: MLABCELL_X82_Y10_N15
\D1|hex2[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|hex2[3]~2_combout\ = ( \M1|altsyncram_component|auto_generated|q_b\(9) & ( (!\sw[9]~input_o\ & ((!\M1|altsyncram_component|auto_generated|q_b\(10) & (\M1|altsyncram_component|auto_generated|q_b\(11) & !\M1|altsyncram_component|auto_generated|q_b\(8))) 
-- # (\M1|altsyncram_component|auto_generated|q_b\(10) & ((\M1|altsyncram_component|auto_generated|q_b\(8)))))) ) ) # ( !\M1|altsyncram_component|auto_generated|q_b\(9) & ( (!\M1|altsyncram_component|auto_generated|q_b\(11) & (!\sw[9]~input_o\ & 
-- (!\M1|altsyncram_component|auto_generated|q_b\(10) $ (!\M1|altsyncram_component|auto_generated|q_b\(8))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100000000000010010000000000000100101000000000010010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(10),
	datab => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(11),
	datac => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(8),
	datad => \ALT_INV_sw[9]~input_o\,
	dataf => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(9),
	combout => \D1|hex2[3]~2_combout\);

-- Location: MLABCELL_X82_Y10_N54
\D1|hex2[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|hex2[3]~3_combout\ = ( \D1|D1|bcd_hold[2][1]~q\ & ( \D1|hex2[3]~2_combout\ & ( (!\sw[9]~input_o\) # ((!\D1|D1|bcd_hold[2][0]~q\ & (\D1|D1|bcd_hold[2][3]~q\ & !\D1|D1|bcd_hold[2][2]~q\)) # (\D1|D1|bcd_hold[2][0]~q\ & ((\D1|D1|bcd_hold[2][2]~q\)))) ) ) 
-- ) # ( !\D1|D1|bcd_hold[2][1]~q\ & ( \D1|hex2[3]~2_combout\ & ( (!\sw[9]~input_o\) # ((!\D1|D1|bcd_hold[2][3]~q\ & (!\D1|D1|bcd_hold[2][0]~q\ $ (!\D1|D1|bcd_hold[2][2]~q\)))) ) ) ) # ( \D1|D1|bcd_hold[2][1]~q\ & ( !\D1|hex2[3]~2_combout\ & ( 
-- (\sw[9]~input_o\ & ((!\D1|D1|bcd_hold[2][0]~q\ & (\D1|D1|bcd_hold[2][3]~q\ & !\D1|D1|bcd_hold[2][2]~q\)) # (\D1|D1|bcd_hold[2][0]~q\ & ((\D1|D1|bcd_hold[2][2]~q\))))) ) ) ) # ( !\D1|D1|bcd_hold[2][1]~q\ & ( !\D1|hex2[3]~2_combout\ & ( (\sw[9]~input_o\ & 
-- (!\D1|D1|bcd_hold[2][3]~q\ & (!\D1|D1|bcd_hold[2][0]~q\ $ (!\D1|D1|bcd_hold[2][2]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000001000000000001000001000110111010111010101010111010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw[9]~input_o\,
	datab => \D1|D1|ALT_INV_bcd_hold[2][0]~q\,
	datac => \D1|D1|ALT_INV_bcd_hold[2][3]~q\,
	datad => \D1|D1|ALT_INV_bcd_hold[2][2]~q\,
	datae => \D1|D1|ALT_INV_bcd_hold[2][1]~q\,
	dataf => \D1|ALT_INV_hex2[3]~2_combout\,
	combout => \D1|hex2[3]~3_combout\);

-- Location: MLABCELL_X82_Y10_N27
\D1|hex2[4]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|hex2[4]~8_combout\ = ( \D1|D1|bcd_hold[2][3]~q\ & ( (!\D1|D1|bcd_hold[2][1]~DUPLICATE_q\ & (!\D1|D1|bcd_hold[2][2]~q\ & (\sw[9]~input_o\ & \D1|D1|bcd_hold[2][0]~DUPLICATE_q\))) ) ) # ( !\D1|D1|bcd_hold[2][3]~q\ & ( (\sw[9]~input_o\ & 
-- (((!\D1|D1|bcd_hold[2][1]~DUPLICATE_q\ & \D1|D1|bcd_hold[2][2]~q\)) # (\D1|D1|bcd_hold[2][0]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000001111000000100000111100000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D1|D1|ALT_INV_bcd_hold[2][1]~DUPLICATE_q\,
	datab => \D1|D1|ALT_INV_bcd_hold[2][2]~q\,
	datac => \ALT_INV_sw[9]~input_o\,
	datad => \D1|D1|ALT_INV_bcd_hold[2][0]~DUPLICATE_q\,
	dataf => \D1|D1|ALT_INV_bcd_hold[2][3]~q\,
	combout => \D1|hex2[4]~8_combout\);

-- Location: MLABCELL_X82_Y10_N30
\D1|hex2[4]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|hex2[4]~9_combout\ = ( \D1|hex2[4]~8_combout\ & ( \sw[9]~input_o\ ) ) # ( \D1|hex2[4]~8_combout\ & ( !\sw[9]~input_o\ & ( (!\M1|altsyncram_component|auto_generated|q_b\(9) & ((!\M1|altsyncram_component|auto_generated|q_b\(10) & 
-- ((\M1|altsyncram_component|auto_generated|q_b\(8)))) # (\M1|altsyncram_component|auto_generated|q_b\(10) & (!\M1|altsyncram_component|auto_generated|q_b\(11))))) # (\M1|altsyncram_component|auto_generated|q_b\(9) & 
-- (!\M1|altsyncram_component|auto_generated|q_b\(11) & (\M1|altsyncram_component|auto_generated|q_b\(8)))) ) ) ) # ( !\D1|hex2[4]~8_combout\ & ( !\sw[9]~input_o\ & ( (!\M1|altsyncram_component|auto_generated|q_b\(9) & 
-- ((!\M1|altsyncram_component|auto_generated|q_b\(10) & ((\M1|altsyncram_component|auto_generated|q_b\(8)))) # (\M1|altsyncram_component|auto_generated|q_b\(10) & (!\M1|altsyncram_component|auto_generated|q_b\(11))))) # 
-- (\M1|altsyncram_component|auto_generated|q_b\(9) & (!\M1|altsyncram_component|auto_generated|q_b\(11) & (\M1|altsyncram_component|auto_generated|q_b\(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101000100010001110100010001000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(11),
	datab => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(8),
	datac => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(10),
	datad => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(9),
	datae => \D1|ALT_INV_hex2[4]~8_combout\,
	dataf => \ALT_INV_sw[9]~input_o\,
	combout => \D1|hex2[4]~9_combout\);

-- Location: MLABCELL_X82_Y10_N24
\D1|hex2[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|hex2[5]~6_combout\ = ( \sw[9]~input_o\ & ( (!\D1|D1|bcd_hold[2][1]~DUPLICATE_q\ & (\D1|D1|bcd_hold[2][0]~DUPLICATE_q\ & (!\D1|D1|bcd_hold[2][2]~q\ $ (\D1|D1|bcd_hold[2][3]~q\)))) # (\D1|D1|bcd_hold[2][1]~DUPLICATE_q\ & (!\D1|D1|bcd_hold[2][2]~q\ & 
-- (!\D1|D1|bcd_hold[2][3]~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000110000100100000011000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D1|D1|ALT_INV_bcd_hold[2][1]~DUPLICATE_q\,
	datab => \D1|D1|ALT_INV_bcd_hold[2][2]~q\,
	datac => \D1|D1|ALT_INV_bcd_hold[2][3]~q\,
	datad => \D1|D1|ALT_INV_bcd_hold[2][0]~DUPLICATE_q\,
	dataf => \ALT_INV_sw[9]~input_o\,
	combout => \D1|hex2[5]~6_combout\);

-- Location: MLABCELL_X82_Y8_N42
\D1|hex2[5]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|hex2[5]~7_combout\ = ( \M1|altsyncram_component|auto_generated|q_b\(9) & ( \M1|altsyncram_component|auto_generated|q_b\(11) & ( (\D1|hex2[5]~6_combout\ & \sw[9]~input_o\) ) ) ) # ( !\M1|altsyncram_component|auto_generated|q_b\(9) & ( 
-- \M1|altsyncram_component|auto_generated|q_b\(11) & ( (!\sw[9]~input_o\ & (((\M1|altsyncram_component|auto_generated|q_b\(10) & \M1|altsyncram_component|auto_generated|q_b\(8))))) # (\sw[9]~input_o\ & (\D1|hex2[5]~6_combout\)) ) ) ) # ( 
-- \M1|altsyncram_component|auto_generated|q_b\(9) & ( !\M1|altsyncram_component|auto_generated|q_b\(11) & ( (!\sw[9]~input_o\ & ((!\M1|altsyncram_component|auto_generated|q_b\(10)))) # (\sw[9]~input_o\ & (\D1|hex2[5]~6_combout\)) ) ) ) # ( 
-- !\M1|altsyncram_component|auto_generated|q_b\(9) & ( !\M1|altsyncram_component|auto_generated|q_b\(11) & ( (!\sw[9]~input_o\ & (((!\M1|altsyncram_component|auto_generated|q_b\(10) & \M1|altsyncram_component|auto_generated|q_b\(8))))) # (\sw[9]~input_o\ & 
-- (\D1|hex2[5]~6_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111010001110100011101000100010001000111010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D1|ALT_INV_hex2[5]~6_combout\,
	datab => \ALT_INV_sw[9]~input_o\,
	datac => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(10),
	datad => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(8),
	datae => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(9),
	dataf => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(11),
	combout => \D1|hex2[5]~7_combout\);

-- Location: MLABCELL_X82_Y10_N48
\D1|hex2[6]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|hex2[6]~5_combout\ = ( \D1|D1|bcd_hold[2][2]~q\ & ( (!\D1|D1|bcd_hold[2][3]~q\ & (\D1|hex2[1]~4_combout\ & (\D1|D1|bcd_hold[2][1]~DUPLICATE_q\ & \D1|D1|bcd_hold[2][0]~DUPLICATE_q\))) # (\D1|D1|bcd_hold[2][3]~q\ & (!\D1|hex2[1]~4_combout\ & 
-- (!\D1|D1|bcd_hold[2][1]~DUPLICATE_q\ & !\D1|D1|bcd_hold[2][0]~DUPLICATE_q\))) ) ) # ( !\D1|D1|bcd_hold[2][2]~q\ & ( (!\D1|D1|bcd_hold[2][3]~q\ & (\D1|hex2[1]~4_combout\ & !\D1|D1|bcd_hold[2][1]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000001000000000000100100000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D1|D1|ALT_INV_bcd_hold[2][3]~q\,
	datab => \D1|ALT_INV_hex2[1]~4_combout\,
	datac => \D1|D1|ALT_INV_bcd_hold[2][1]~DUPLICATE_q\,
	datad => \D1|D1|ALT_INV_bcd_hold[2][0]~DUPLICATE_q\,
	dataf => \D1|D1|ALT_INV_bcd_hold[2][2]~q\,
	combout => \D1|hex2[6]~5_combout\);

-- Location: MLABCELL_X82_Y10_N0
\D1|hex2[6]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|hex2[6]~12_combout\ = ( !\sw[9]~input_o\ & ( (!\M1|altsyncram_component|auto_generated|q_b\(11) & (\D1|hex2[1]~4_combout\ & ((!\M1|altsyncram_component|auto_generated|q_b\(10) & (!\M1|altsyncram_component|auto_generated|q_b\(9))) # 
-- (\M1|altsyncram_component|auto_generated|q_b\(10) & (\M1|altsyncram_component|auto_generated|q_b\(9) & \M1|altsyncram_component|auto_generated|q_b\(8)))))) # (\M1|altsyncram_component|auto_generated|q_b\(11) & 
-- (\M1|altsyncram_component|auto_generated|q_b\(10) & (!\M1|altsyncram_component|auto_generated|q_b\(9) & (!\M1|altsyncram_component|auto_generated|q_b\(8) & !\D1|hex2[1]~4_combout\)))) ) ) # ( \sw[9]~input_o\ & ( (((\D1|hex2[6]~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010000000000000011110000111110000000100100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(10),
	datab => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(9),
	datac => \D1|ALT_INV_hex2[6]~5_combout\,
	datad => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(8),
	datae => \ALT_INV_sw[9]~input_o\,
	dataf => \D1|ALT_INV_hex2[1]~4_combout\,
	datag => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(11),
	combout => \D1|hex2[6]~12_combout\);

-- Location: FF_X79_Y6_N41
\D1|D1|CNV0|D4|bcd[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \D1|D1|CNV0|D4|Mux1~0_combout\,
	sclr => \D1|D1|ALT_INV_led7_status~q\,
	ena => \D1|D1|bcd_hold[0][3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|D1|CNV0|D4|bcd\(2));

-- Location: LABCELL_X79_Y6_N12
\D1|D1|CNV0|D4|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|D1|CNV0|D4|Mux2~0_combout\ = ( \D1|D1|CNV0|D4|bcd\(3) & ( (!\D1|D1|CNV0|D4|bcd\(2) & (!\D1|D1|CNV0|D4|bcd[0]~DUPLICATE_q\ & !\D1|D1|CNV0|D4|bcd\(1))) ) ) # ( !\D1|D1|CNV0|D4|bcd\(3) & ( (!\D1|D1|CNV0|D4|bcd\(2) & (\D1|D1|CNV0|D4|bcd[0]~DUPLICATE_q\)) 
-- # (\D1|D1|CNV0|D4|bcd\(2) & (!\D1|D1|CNV0|D4|bcd[0]~DUPLICATE_q\ & \D1|D1|CNV0|D4|bcd\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111100000011000011110011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \D1|D1|CNV0|D4|ALT_INV_bcd\(2),
	datac => \D1|D1|CNV0|D4|ALT_INV_bcd[0]~DUPLICATE_q\,
	datad => \D1|D1|CNV0|D4|ALT_INV_bcd\(1),
	dataf => \D1|D1|CNV0|D4|ALT_INV_bcd\(3),
	combout => \D1|D1|CNV0|D4|Mux2~0_combout\);

-- Location: FF_X79_Y6_N14
\D1|D1|CNV0|D4|bcd[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \D1|D1|CNV0|D4|Mux2~0_combout\,
	sclr => \D1|D1|ALT_INV_led7_status~q\,
	ena => \D1|D1|bcd_hold[0][3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|D1|CNV0|D4|bcd\(1));

-- Location: MLABCELL_X84_Y5_N0
\D1|D1|CNV0|D4|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|D1|CNV0|D4|Mux3~0_combout\ = ( \D1|D1|CNV0|D3|bcd\(0) & ( !\D1|D1|CNV0|D3|bcd[3]~DUPLICATE_q\ & ( !\D1|D1|CNV0|D3|bcd[2]~DUPLICATE_q\ ) ) ) # ( !\D1|D1|CNV0|D3|bcd\(0) & ( !\D1|D1|CNV0|D3|bcd[3]~DUPLICATE_q\ & ( (!\D1|D1|CNV0|D3|bcd[1]~DUPLICATE_q\) # 
-- (!\D1|D1|CNV0|D3|bcd[2]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D1|D1|CNV0|D3|ALT_INV_bcd[1]~DUPLICATE_q\,
	datab => \D1|D1|CNV0|D3|ALT_INV_bcd[2]~DUPLICATE_q\,
	datae => \D1|D1|CNV0|D3|ALT_INV_bcd\(0),
	dataf => \D1|D1|CNV0|D3|ALT_INV_bcd[3]~DUPLICATE_q\,
	combout => \D1|D1|CNV0|D4|Mux3~0_combout\);

-- Location: LABCELL_X79_Y6_N36
\D1|D1|CNV0|D4|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|D1|CNV0|D4|Mux3~1_combout\ = ( \D1|D1|CNV0|D4|bcd\(3) & ( (!\D1|D1|CNV0|D4|bcd\(1) & (!\D1|D1|CNV0|D4|Mux3~0_combout\ & !\D1|D1|CNV0|D4|bcd[2]~DUPLICATE_q\)) ) ) # ( !\D1|D1|CNV0|D4|bcd\(3) & ( !\D1|D1|CNV0|D4|Mux3~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \D1|D1|CNV0|D4|ALT_INV_bcd\(1),
	datac => \D1|D1|CNV0|D4|ALT_INV_Mux3~0_combout\,
	datad => \D1|D1|CNV0|D4|ALT_INV_bcd[2]~DUPLICATE_q\,
	dataf => \D1|D1|CNV0|D4|ALT_INV_bcd\(3),
	combout => \D1|D1|CNV0|D4|Mux3~1_combout\);

-- Location: FF_X79_Y6_N38
\D1|D1|CNV0|D4|bcd[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \D1|D1|CNV0|D4|Mux3~1_combout\,
	sclr => \D1|D1|ALT_INV_led7_status~q\,
	ena => \D1|D1|bcd_hold[0][3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|D1|CNV0|D4|bcd[0]~DUPLICATE_q\);

-- Location: LABCELL_X79_Y6_N15
\D1|D1|CNV0|D4|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|D1|CNV0|D4|Mux0~0_combout\ = (!\D1|D1|CNV0|D4|bcd\(1) & ((!\D1|D1|CNV0|D4|bcd[0]~DUPLICATE_q\ & (\D1|D1|CNV0|D4|bcd\(2) & !\D1|D1|CNV0|D4|bcd\(3))) # (\D1|D1|CNV0|D4|bcd[0]~DUPLICATE_q\ & (!\D1|D1|CNV0|D4|bcd\(2) & \D1|D1|CNV0|D4|bcd\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001000000001000000100000000100000010000000010000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D1|D1|CNV0|D4|ALT_INV_bcd[0]~DUPLICATE_q\,
	datab => \D1|D1|CNV0|D4|ALT_INV_bcd\(2),
	datac => \D1|D1|CNV0|D4|ALT_INV_bcd\(1),
	datad => \D1|D1|CNV0|D4|ALT_INV_bcd\(3),
	combout => \D1|D1|CNV0|D4|Mux0~0_combout\);

-- Location: FF_X79_Y6_N16
\D1|D1|CNV0|D4|bcd[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \D1|D1|CNV0|D4|Mux0~0_combout\,
	sclr => \D1|D1|ALT_INV_led7_status~q\,
	ena => \D1|D1|bcd_hold[0][3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|D1|CNV0|D4|bcd\(3));

-- Location: FF_X79_Y6_N37
\D1|D1|CNV0|D4|bcd[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \D1|D1|CNV0|D4|Mux3~1_combout\,
	sclr => \D1|D1|ALT_INV_led7_status~q\,
	ena => \D1|D1|bcd_hold[0][3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|D1|CNV0|D4|bcd\(0));

-- Location: LABCELL_X79_Y6_N39
\D1|D1|CNV0|D4|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|D1|CNV0|D4|Mux1~0_combout\ = ( \D1|D1|CNV0|D4|bcd\(0) & ( (!\D1|D1|CNV0|D4|bcd\(3) & \D1|D1|CNV0|D4|bcd\(1)) ) ) # ( !\D1|D1|CNV0|D4|bcd\(0) & ( (!\D1|D1|CNV0|D4|bcd\(2) & (!\D1|D1|CNV0|D4|bcd\(3) $ (!\D1|D1|CNV0|D4|bcd\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101000000000010110100000000000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D1|D1|CNV0|D4|ALT_INV_bcd\(3),
	datac => \D1|D1|CNV0|D4|ALT_INV_bcd\(1),
	datad => \D1|D1|CNV0|D4|ALT_INV_bcd\(2),
	dataf => \D1|D1|CNV0|D4|ALT_INV_bcd\(0),
	combout => \D1|D1|CNV0|D4|Mux1~0_combout\);

-- Location: FF_X79_Y6_N40
\D1|D1|CNV0|D4|bcd[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \D1|D1|CNV0|D4|Mux1~0_combout\,
	sclr => \D1|D1|ALT_INV_led7_status~q\,
	ena => \D1|D1|bcd_hold[0][3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|D1|CNV0|D4|bcd[2]~DUPLICATE_q\);

-- Location: FF_X77_Y6_N26
\D1|D1|bcd_hold[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \D1|D1|CNV0|D4|bcd[2]~DUPLICATE_q\,
	sload => VCC,
	ena => \D1|D1|bcd_hold[0][3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|D1|bcd_hold[3][2]~q\);

-- Location: FF_X79_Y6_N13
\D1|D1|CNV0|D4|bcd[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \D1|D1|CNV0|D4|Mux2~0_combout\,
	sclr => \D1|D1|ALT_INV_led7_status~q\,
	ena => \D1|D1|bcd_hold[0][3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|D1|CNV0|D4|bcd[1]~DUPLICATE_q\);

-- Location: FF_X77_Y6_N44
\D1|D1|bcd_hold[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \D1|D1|CNV0|D4|bcd[1]~DUPLICATE_q\,
	sload => VCC,
	ena => \D1|D1|bcd_hold[0][3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|D1|bcd_hold[3][1]~q\);

-- Location: FF_X77_Y6_N20
\D1|D1|bcd_hold[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \D1|D1|CNV0|D4|bcd\(3),
	sload => VCC,
	ena => \D1|D1|bcd_hold[0][3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|D1|bcd_hold[3][3]~q\);

-- Location: FF_X77_Y6_N41
\D1|D1|bcd_hold[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \D1|D1|CNV0|D4|bcd[0]~DUPLICATE_q\,
	sload => VCC,
	ena => \D1|D1|bcd_hold[0][3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|D1|bcd_hold[3][0]~q\);

-- Location: LABCELL_X77_Y6_N36
\D1|hex3[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|hex3[0]~1_combout\ = ( \D1|D1|bcd_hold[3][0]~q\ & ( (\sw[9]~input_o\ & ((!\D1|D1|bcd_hold[3][2]~q\ & (!\D1|D1|bcd_hold[3][1]~q\ $ (\D1|D1|bcd_hold[3][3]~q\))) # (\D1|D1|bcd_hold[3][2]~q\ & (!\D1|D1|bcd_hold[3][1]~q\ & \D1|D1|bcd_hold[3][3]~q\)))) ) ) 
-- # ( !\D1|D1|bcd_hold[3][0]~q\ & ( (\D1|D1|bcd_hold[3][2]~q\ & (!\D1|D1|bcd_hold[3][1]~q\ & (!\D1|D1|bcd_hold[3][3]~q\ & \sw[9]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000100001100000000010000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D1|D1|ALT_INV_bcd_hold[3][2]~q\,
	datab => \D1|D1|ALT_INV_bcd_hold[3][1]~q\,
	datac => \D1|D1|ALT_INV_bcd_hold[3][3]~q\,
	datad => \ALT_INV_sw[9]~input_o\,
	dataf => \D1|D1|ALT_INV_bcd_hold[3][0]~q\,
	combout => \D1|hex3[0]~1_combout\);

-- Location: LABCELL_X77_Y8_N48
\D1|hex3[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|hex3[0]~2_combout\ = ( \D1|hex3[0]~1_combout\ & ( \sw[9]~input_o\ ) ) # ( \D1|hex3[0]~1_combout\ & ( !\sw[9]~input_o\ & ( (!\M1|altsyncram_component|auto_generated|q_b\(15) & (!\M1|altsyncram_component|auto_generated|q_b\(13) & 
-- (!\M1|altsyncram_component|auto_generated|q_b\(12) $ (!\M1|altsyncram_component|auto_generated|q_b\(14))))) # (\M1|altsyncram_component|auto_generated|q_b\(15) & (\M1|altsyncram_component|auto_generated|q_b\(12) & 
-- (!\M1|altsyncram_component|auto_generated|q_b\(14) $ (!\M1|altsyncram_component|auto_generated|q_b\(13))))) ) ) ) # ( !\D1|hex3[0]~1_combout\ & ( !\sw[9]~input_o\ & ( (!\M1|altsyncram_component|auto_generated|q_b\(15) & 
-- (!\M1|altsyncram_component|auto_generated|q_b\(13) & (!\M1|altsyncram_component|auto_generated|q_b\(12) $ (!\M1|altsyncram_component|auto_generated|q_b\(14))))) # (\M1|altsyncram_component|auto_generated|q_b\(15) & 
-- (\M1|altsyncram_component|auto_generated|q_b\(12) & (!\M1|altsyncram_component|auto_generated|q_b\(14) $ (!\M1|altsyncram_component|auto_generated|q_b\(13))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100100010000001010010001000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(15),
	datab => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(12),
	datac => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(14),
	datad => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(13),
	datae => \D1|ALT_INV_hex3[0]~1_combout\,
	dataf => \ALT_INV_sw[9]~input_o\,
	combout => \D1|hex3[0]~2_combout\);

-- Location: LABCELL_X77_Y6_N45
\D1|hex3[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|hex3[2]~3_combout\ = ( \D1|D1|bcd_hold[3][3]~q\ & ( (!\sw[9]~input_o\ & (((!\M1|altsyncram_component|auto_generated|q_b\(14)) # (!\M1|altsyncram_component|auto_generated|q_b\(15))))) # (\sw[9]~input_o\ & (!\D1|D1|bcd_hold[3][2]~q\)) ) ) # ( 
-- !\D1|D1|bcd_hold[3][3]~q\ & ( ((!\M1|altsyncram_component|auto_generated|q_b\(14)) # (!\M1|altsyncram_component|auto_generated|q_b\(15))) # (\sw[9]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110011111111111111001111101110111000101110111011100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D1|D1|ALT_INV_bcd_hold[3][2]~q\,
	datab => \ALT_INV_sw[9]~input_o\,
	datac => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(14),
	datad => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(15),
	dataf => \D1|D1|ALT_INV_bcd_hold[3][3]~q\,
	combout => \D1|hex3[2]~3_combout\);

-- Location: LABCELL_X77_Y6_N24
\D1|hex3[1]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|hex3[1]~10_combout\ = ( \D1|hex3[2]~3_combout\ & ( (!\D1|D1|bcd_hold[3][3]~q\ & (\D1|D1|bcd_hold[3][2]~q\ & (!\D1|D1|bcd_hold[3][1]~q\ $ (!\D1|D1|bcd_hold[3][0]~q\)))) # (\D1|D1|bcd_hold[3][3]~q\ & (((\D1|D1|bcd_hold[3][1]~q\ & 
-- \D1|D1|bcd_hold[3][0]~q\)) # (\D1|D1|bcd_hold[3][2]~q\))) ) ) # ( !\D1|hex3[2]~3_combout\ & ( (!\D1|D1|bcd_hold[3][3]~q\) # (((!\D1|D1|bcd_hold[3][0]~q\) # (!\D1|D1|bcd_hold[3][2]~q\)) # (\D1|D1|bcd_hold[3][1]~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111011111111111111101100000001011111010000000101111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D1|D1|ALT_INV_bcd_hold[3][3]~q\,
	datab => \D1|D1|ALT_INV_bcd_hold[3][1]~q\,
	datac => \D1|D1|ALT_INV_bcd_hold[3][0]~q\,
	datad => \D1|D1|ALT_INV_bcd_hold[3][2]~q\,
	dataf => \D1|ALT_INV_hex3[2]~3_combout\,
	combout => \D1|hex3[1]~10_combout\);

-- Location: LABCELL_X77_Y6_N0
\D1|hex3[1]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|hex3[1]~19_combout\ = ( !\sw[9]~input_o\ & ( (!\M1|altsyncram_component|auto_generated|q_b\(15) & ((!\D1|hex3[2]~3_combout\) # ((\M1|altsyncram_component|auto_generated|q_b\(14) & (!\M1|altsyncram_component|auto_generated|q_b\(13) $ 
-- (!\M1|altsyncram_component|auto_generated|q_b\(12))))))) # (\M1|altsyncram_component|auto_generated|q_b\(15) & ((!\M1|altsyncram_component|auto_generated|q_b\(12) & (((!\D1|hex3[2]~3_combout\) # (\M1|altsyncram_component|auto_generated|q_b\(14))))) # 
-- (\M1|altsyncram_component|auto_generated|q_b\(12) & ((!\M1|altsyncram_component|auto_generated|q_b\(14) $ (\D1|hex3[2]~3_combout\)) # (\M1|altsyncram_component|auto_generated|q_b\(13)))))) ) ) # ( \sw[9]~input_o\ & ( (((\D1|hex3[1]~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1111111100010011000011110000111111111101001001110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(13),
	datab => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(14),
	datac => \D1|ALT_INV_hex3[1]~10_combout\,
	datad => \D1|ALT_INV_hex3[2]~3_combout\,
	datae => \ALT_INV_sw[9]~input_o\,
	dataf => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(12),
	datag => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(15),
	combout => \D1|hex3[1]~19_combout\);

-- Location: LABCELL_X77_Y6_N18
\D1|hex3[2]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|hex3[2]~9_combout\ = ( \D1|D1|bcd_hold[3][0]~q\ & ( (!\D1|hex3[2]~3_combout\ & ((!\D1|D1|bcd_hold[3][2]~q\) # ((!\D1|D1|bcd_hold[3][3]~q\) # (\D1|D1|bcd_hold[3][1]~q\)))) ) ) # ( !\D1|D1|bcd_hold[3][0]~q\ & ( (!\D1|hex3[2]~3_combout\) # 
-- ((!\D1|D1|bcd_hold[3][2]~q\ & (\D1|D1|bcd_hold[3][1]~q\ & !\D1|D1|bcd_hold[3][3]~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001011110000111100101111000011110000101100001111000010110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D1|D1|ALT_INV_bcd_hold[3][2]~q\,
	datab => \D1|D1|ALT_INV_bcd_hold[3][1]~q\,
	datac => \D1|ALT_INV_hex3[2]~3_combout\,
	datad => \D1|D1|ALT_INV_bcd_hold[3][3]~q\,
	dataf => \D1|D1|ALT_INV_bcd_hold[3][0]~q\,
	combout => \D1|hex3[2]~9_combout\);

-- Location: LABCELL_X77_Y6_N54
\D1|hex3[2]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|hex3[2]~15_combout\ = ( !\sw[9]~input_o\ & ( (!\M1|altsyncram_component|auto_generated|q_b\(13) & (!\D1|hex3[2]~3_combout\ & ((!\M1|altsyncram_component|auto_generated|q_b\(14)) # ((!\M1|altsyncram_component|auto_generated|q_b\(15)) # 
-- (!\M1|altsyncram_component|auto_generated|q_b\(12)))))) # (\M1|altsyncram_component|auto_generated|q_b\(13) & ((!\D1|hex3[2]~3_combout\) # ((!\M1|altsyncram_component|auto_generated|q_b\(14) & (!\M1|altsyncram_component|auto_generated|q_b\(15) & 
-- !\M1|altsyncram_component|auto_generated|q_b\(12)))))) ) ) # ( \sw[9]~input_o\ & ( (((\D1|hex3[2]~9_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1111111101000000000011110000111111111101000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(13),
	datab => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(14),
	datac => \D1|ALT_INV_hex3[2]~9_combout\,
	datad => \D1|ALT_INV_hex3[2]~3_combout\,
	datae => \ALT_INV_sw[9]~input_o\,
	dataf => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(12),
	datag => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(15),
	combout => \D1|hex3[2]~15_combout\);

-- Location: LABCELL_X77_Y6_N27
\D1|D1|LED7_3|L2|y[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|D1|LED7_3|L2|y[3]~0_combout\ = ( \D1|D1|bcd_hold[3][2]~q\ & ( (\sw[9]~input_o\ & ((!\D1|D1|bcd_hold[3][1]~q\ & (!\D1|D1|bcd_hold[3][3]~q\ & !\D1|D1|bcd_hold[3][0]~q\)) # (\D1|D1|bcd_hold[3][1]~q\ & ((\D1|D1|bcd_hold[3][0]~q\))))) ) ) # ( 
-- !\D1|D1|bcd_hold[3][2]~q\ & ( (\sw[9]~input_o\ & ((!\D1|D1|bcd_hold[3][3]~q\ & (!\D1|D1|bcd_hold[3][1]~q\ & \D1|D1|bcd_hold[3][0]~q\)) # (\D1|D1|bcd_hold[3][3]~q\ & (\D1|D1|bcd_hold[3][1]~q\ & !\D1|D1|bcd_hold[3][0]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001000000000010000100000001000000000110000100000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D1|D1|ALT_INV_bcd_hold[3][3]~q\,
	datab => \D1|D1|ALT_INV_bcd_hold[3][1]~q\,
	datac => \ALT_INV_sw[9]~input_o\,
	datad => \D1|D1|ALT_INV_bcd_hold[3][0]~q\,
	dataf => \D1|D1|ALT_INV_bcd_hold[3][2]~q\,
	combout => \D1|D1|LED7_3|L2|y[3]~0_combout\);

-- Location: LABCELL_X77_Y6_N30
\D1|hex3[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|hex3[3]~0_combout\ = ( \M1|altsyncram_component|auto_generated|q_b\(15) & ( \M1|altsyncram_component|auto_generated|q_b\(13) & ( (!\sw[9]~input_o\ & ((!\M1|altsyncram_component|auto_generated|q_b\(12) $ 
-- (\M1|altsyncram_component|auto_generated|q_b\(14))))) # (\sw[9]~input_o\ & (\D1|D1|LED7_3|L2|y[3]~0_combout\)) ) ) ) # ( !\M1|altsyncram_component|auto_generated|q_b\(15) & ( \M1|altsyncram_component|auto_generated|q_b\(13) & ( (!\sw[9]~input_o\ & 
-- (((\M1|altsyncram_component|auto_generated|q_b\(12) & \M1|altsyncram_component|auto_generated|q_b\(14))))) # (\sw[9]~input_o\ & (\D1|D1|LED7_3|L2|y[3]~0_combout\)) ) ) ) # ( \M1|altsyncram_component|auto_generated|q_b\(15) & ( 
-- !\M1|altsyncram_component|auto_generated|q_b\(13) & ( (\D1|D1|LED7_3|L2|y[3]~0_combout\ & \sw[9]~input_o\) ) ) ) # ( !\M1|altsyncram_component|auto_generated|q_b\(15) & ( !\M1|altsyncram_component|auto_generated|q_b\(13) & ( (!\sw[9]~input_o\ & 
-- ((!\M1|altsyncram_component|auto_generated|q_b\(12) $ (!\M1|altsyncram_component|auto_generated|q_b\(14))))) # (\sw[9]~input_o\ & (\D1|D1|LED7_3|L2|y[3]~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110111010001000100010001000100010001000111011101000100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D1|D1|LED7_3|L2|ALT_INV_y[3]~0_combout\,
	datab => \ALT_INV_sw[9]~input_o\,
	datac => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(12),
	datad => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(14),
	datae => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(15),
	dataf => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(13),
	combout => \D1|hex3[3]~0_combout\);

-- Location: LABCELL_X77_Y6_N42
\D1|hex3[4]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|hex3[4]~7_combout\ = ( \D1|D1|bcd_hold[3][0]~q\ & ( (\sw[9]~input_o\ & ((!\D1|D1|bcd_hold[3][3]~q\) # ((!\D1|D1|bcd_hold[3][2]~q\ & !\D1|D1|bcd_hold[3][1]~q\)))) ) ) # ( !\D1|D1|bcd_hold[3][0]~q\ & ( (\D1|D1|bcd_hold[3][2]~q\ & (\sw[9]~input_o\ & 
-- (!\D1|D1|bcd_hold[3][3]~q\ & !\D1|D1|bcd_hold[3][1]~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000100000000000000110010001100000011001000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D1|D1|ALT_INV_bcd_hold[3][2]~q\,
	datab => \ALT_INV_sw[9]~input_o\,
	datac => \D1|D1|ALT_INV_bcd_hold[3][3]~q\,
	datad => \D1|D1|ALT_INV_bcd_hold[3][1]~q\,
	dataf => \D1|D1|ALT_INV_bcd_hold[3][0]~q\,
	combout => \D1|hex3[4]~7_combout\);

-- Location: LABCELL_X77_Y6_N12
\D1|hex3[4]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|hex3[4]~8_combout\ = ( \M1|altsyncram_component|auto_generated|q_b\(15) & ( \sw[9]~input_o\ & ( \D1|hex3[4]~7_combout\ ) ) ) # ( !\M1|altsyncram_component|auto_generated|q_b\(15) & ( \sw[9]~input_o\ & ( \D1|hex3[4]~7_combout\ ) ) ) # ( 
-- \M1|altsyncram_component|auto_generated|q_b\(15) & ( !\sw[9]~input_o\ & ( (\M1|altsyncram_component|auto_generated|q_b\(12) & (!\M1|altsyncram_component|auto_generated|q_b\(13) & !\M1|altsyncram_component|auto_generated|q_b\(14))) ) ) ) # ( 
-- !\M1|altsyncram_component|auto_generated|q_b\(15) & ( !\sw[9]~input_o\ & ( ((!\M1|altsyncram_component|auto_generated|q_b\(13) & \M1|altsyncram_component|auto_generated|q_b\(14))) # (\M1|altsyncram_component|auto_generated|q_b\(12)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111110101010100000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(12),
	datab => \D1|ALT_INV_hex3[4]~7_combout\,
	datac => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(13),
	datad => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(14),
	datae => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(15),
	dataf => \ALT_INV_sw[9]~input_o\,
	combout => \D1|hex3[4]~8_combout\);

-- Location: LABCELL_X77_Y6_N39
\D1|hex3[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|hex3[5]~5_combout\ = ( \D1|D1|bcd_hold[3][3]~q\ & ( (\D1|D1|bcd_hold[3][2]~q\ & (!\D1|D1|bcd_hold[3][1]~q\ & (\sw[9]~input_o\ & \D1|D1|bcd_hold[3][0]~q\))) ) ) # ( !\D1|D1|bcd_hold[3][3]~q\ & ( (!\D1|D1|bcd_hold[3][2]~q\ & (\sw[9]~input_o\ & 
-- ((\D1|D1|bcd_hold[3][0]~q\) # (\D1|D1|bcd_hold[3][1]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000001010000000100000101000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D1|D1|ALT_INV_bcd_hold[3][2]~q\,
	datab => \D1|D1|ALT_INV_bcd_hold[3][1]~q\,
	datac => \ALT_INV_sw[9]~input_o\,
	datad => \D1|D1|ALT_INV_bcd_hold[3][0]~q\,
	dataf => \D1|D1|ALT_INV_bcd_hold[3][3]~q\,
	combout => \D1|hex3[5]~5_combout\);

-- Location: LABCELL_X77_Y6_N6
\D1|hex3[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|hex3[5]~6_combout\ = ( \M1|altsyncram_component|auto_generated|q_b\(15) & ( \D1|hex3[5]~5_combout\ & ( ((\M1|altsyncram_component|auto_generated|q_b\(12) & (!\M1|altsyncram_component|auto_generated|q_b\(13) & 
-- \M1|altsyncram_component|auto_generated|q_b\(14)))) # (\sw[9]~input_o\) ) ) ) # ( !\M1|altsyncram_component|auto_generated|q_b\(15) & ( \D1|hex3[5]~5_combout\ & ( ((!\M1|altsyncram_component|auto_generated|q_b\(14) & 
-- ((\M1|altsyncram_component|auto_generated|q_b\(13)) # (\M1|altsyncram_component|auto_generated|q_b\(12))))) # (\sw[9]~input_o\) ) ) ) # ( \M1|altsyncram_component|auto_generated|q_b\(15) & ( !\D1|hex3[5]~5_combout\ & ( 
-- (\M1|altsyncram_component|auto_generated|q_b\(12) & (!\sw[9]~input_o\ & (!\M1|altsyncram_component|auto_generated|q_b\(13) & \M1|altsyncram_component|auto_generated|q_b\(14)))) ) ) ) # ( !\M1|altsyncram_component|auto_generated|q_b\(15) & ( 
-- !\D1|hex3[5]~5_combout\ & ( (!\sw[9]~input_o\ & (!\M1|altsyncram_component|auto_generated|q_b\(14) & ((\M1|altsyncram_component|auto_generated|q_b\(13)) # (\M1|altsyncram_component|auto_generated|q_b\(12))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110000000000000000000100000001111111001100110011001101110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(12),
	datab => \ALT_INV_sw[9]~input_o\,
	datac => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(13),
	datad => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(14),
	datae => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(15),
	dataf => \D1|ALT_INV_hex3[5]~5_combout\,
	combout => \D1|hex3[5]~6_combout\);

-- Location: LABCELL_X77_Y6_N21
\D1|hex3[6]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|hex3[6]~4_combout\ = ( \D1|D1|bcd_hold[3][3]~q\ & ( (\D1|D1|bcd_hold[3][2]~q\ & (!\D1|D1|bcd_hold[3][1]~q\ & (!\D1|hex3[2]~3_combout\ & !\D1|D1|bcd_hold[3][0]~q\))) ) ) # ( !\D1|D1|bcd_hold[3][3]~q\ & ( (\D1|hex3[2]~3_combout\ & 
-- ((!\D1|D1|bcd_hold[3][2]~q\ & (!\D1|D1|bcd_hold[3][1]~q\)) # (\D1|D1|bcd_hold[3][2]~q\ & (\D1|D1|bcd_hold[3][1]~q\ & \D1|D1|bcd_hold[3][0]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001001000010000000100101000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D1|D1|ALT_INV_bcd_hold[3][2]~q\,
	datab => \D1|D1|ALT_INV_bcd_hold[3][1]~q\,
	datac => \D1|ALT_INV_hex3[2]~3_combout\,
	datad => \D1|D1|ALT_INV_bcd_hold[3][0]~q\,
	dataf => \D1|D1|ALT_INV_bcd_hold[3][3]~q\,
	combout => \D1|hex3[6]~4_combout\);

-- Location: LABCELL_X77_Y6_N48
\D1|hex3[6]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|hex3[6]~11_combout\ = ( !\sw[9]~input_o\ & ( (!\M1|altsyncram_component|auto_generated|q_b\(15) & (\D1|hex3[2]~3_combout\ & ((!\M1|altsyncram_component|auto_generated|q_b\(13) & (!\M1|altsyncram_component|auto_generated|q_b\(14))) # 
-- (\M1|altsyncram_component|auto_generated|q_b\(13) & (\M1|altsyncram_component|auto_generated|q_b\(14) & \M1|altsyncram_component|auto_generated|q_b\(12)))))) # (\M1|altsyncram_component|auto_generated|q_b\(15) & 
-- (!\M1|altsyncram_component|auto_generated|q_b\(13) & (\M1|altsyncram_component|auto_generated|q_b\(14) & (!\D1|hex3[2]~3_combout\ & !\M1|altsyncram_component|auto_generated|q_b\(12))))) ) ) # ( \sw[9]~input_o\ & ( (((\D1|hex3[6]~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001010000000000011110000111100000000100100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(13),
	datab => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(14),
	datac => \D1|ALT_INV_hex3[6]~4_combout\,
	datad => \D1|ALT_INV_hex3[2]~3_combout\,
	datae => \ALT_INV_sw[9]~input_o\,
	dataf => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(12),
	datag => \M1|altsyncram_component|auto_generated|ALT_INV_q_b\(15),
	combout => \D1|hex3[6]~11_combout\);

-- Location: FF_X79_Y6_N50
\D1|D1|CNV0|D5|bcd[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \D1|D1|CNV0|D5|Mux3~1_combout\,
	sclr => \D1|D1|ALT_INV_led7_status~q\,
	ena => \D1|D1|bcd_hold[0][3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|D1|CNV0|D5|bcd\(0));

-- Location: FF_X79_Y6_N58
\D1|D1|CNV0|D5|bcd[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \D1|D1|CNV0|D5|Mux1~0_combout\,
	sclr => \D1|D1|ALT_INV_led7_status~q\,
	ena => \D1|D1|bcd_hold[0][3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|D1|CNV0|D5|bcd[2]~DUPLICATE_q\);

-- Location: LABCELL_X79_Y6_N54
\D1|D1|CNV0|D5|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|D1|CNV0|D5|Mux2~0_combout\ = ( \D1|D1|CNV0|D5|bcd[2]~DUPLICATE_q\ & ( (!\D1|D1|CNV0|D5|bcd\(0) & (!\D1|D1|CNV0|D5|bcd[3]~DUPLICATE_q\ & \D1|D1|CNV0|D5|bcd\(1))) ) ) # ( !\D1|D1|CNV0|D5|bcd[2]~DUPLICATE_q\ & ( (!\D1|D1|CNV0|D5|bcd\(0) & 
-- (\D1|D1|CNV0|D5|bcd[3]~DUPLICATE_q\ & !\D1|D1|CNV0|D5|bcd\(1))) # (\D1|D1|CNV0|D5|bcd\(0) & (!\D1|D1|CNV0|D5|bcd[3]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001000100011001100100010000000000100010000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D1|D1|CNV0|D5|ALT_INV_bcd\(0),
	datab => \D1|D1|CNV0|D5|ALT_INV_bcd[3]~DUPLICATE_q\,
	datad => \D1|D1|CNV0|D5|ALT_INV_bcd\(1),
	dataf => \D1|D1|CNV0|D5|ALT_INV_bcd[2]~DUPLICATE_q\,
	combout => \D1|D1|CNV0|D5|Mux2~0_combout\);

-- Location: FF_X79_Y6_N56
\D1|D1|CNV0|D5|bcd[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \D1|D1|CNV0|D5|Mux2~0_combout\,
	sclr => \D1|D1|ALT_INV_led7_status~q\,
	ena => \D1|D1|bcd_hold[0][3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|D1|CNV0|D5|bcd\(1));

-- Location: FF_X79_Y6_N53
\D1|D1|CNV0|D5|bcd[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \D1|D1|CNV0|D5|Mux0~0_combout\,
	sclr => \D1|D1|ALT_INV_led7_status~q\,
	ena => \D1|D1|bcd_hold[0][3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|D1|CNV0|D5|bcd\(3));

-- Location: LABCELL_X79_Y6_N51
\D1|D1|CNV0|D5|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|D1|CNV0|D5|Mux0~0_combout\ = ( \D1|D1|CNV0|D5|bcd\(0) & ( (!\D1|D1|CNV0|D5|bcd\(1) & (!\D1|D1|CNV0|D5|bcd\(2) & \D1|D1|CNV0|D5|bcd\(3))) ) ) # ( !\D1|D1|CNV0|D5|bcd\(0) & ( (!\D1|D1|CNV0|D5|bcd\(1) & (\D1|D1|CNV0|D5|bcd\(2) & !\D1|D1|CNV0|D5|bcd\(3))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000001000100000000000000000100010000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D1|D1|CNV0|D5|ALT_INV_bcd\(1),
	datab => \D1|D1|CNV0|D5|ALT_INV_bcd\(2),
	datad => \D1|D1|CNV0|D5|ALT_INV_bcd\(3),
	dataf => \D1|D1|CNV0|D5|ALT_INV_bcd\(0),
	combout => \D1|D1|CNV0|D5|Mux0~0_combout\);

-- Location: FF_X79_Y6_N52
\D1|D1|CNV0|D5|bcd[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \D1|D1|CNV0|D5|Mux0~0_combout\,
	sclr => \D1|D1|ALT_INV_led7_status~q\,
	ena => \D1|D1|bcd_hold[0][3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|D1|CNV0|D5|bcd[3]~DUPLICATE_q\);

-- Location: LABCELL_X79_Y6_N57
\D1|D1|CNV0|D5|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|D1|CNV0|D5|Mux1~0_combout\ = ( \D1|D1|CNV0|D5|bcd\(1) & ( (!\D1|D1|CNV0|D5|bcd[3]~DUPLICATE_q\ & ((!\D1|D1|CNV0|D5|bcd\(2)) # (\D1|D1|CNV0|D5|bcd\(0)))) ) ) # ( !\D1|D1|CNV0|D5|bcd\(1) & ( (!\D1|D1|CNV0|D5|bcd\(0) & (\D1|D1|CNV0|D5|bcd[3]~DUPLICATE_q\ 
-- & !\D1|D1|CNV0|D5|bcd\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000001000100000000011001100010001001100110001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D1|D1|CNV0|D5|ALT_INV_bcd\(0),
	datab => \D1|D1|CNV0|D5|ALT_INV_bcd[3]~DUPLICATE_q\,
	datad => \D1|D1|CNV0|D5|ALT_INV_bcd\(2),
	dataf => \D1|D1|CNV0|D5|ALT_INV_bcd\(1),
	combout => \D1|D1|CNV0|D5|Mux1~0_combout\);

-- Location: FF_X79_Y6_N59
\D1|D1|CNV0|D5|bcd[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \D1|D1|CNV0|D5|Mux1~0_combout\,
	sclr => \D1|D1|ALT_INV_led7_status~q\,
	ena => \D1|D1|bcd_hold[0][3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|D1|CNV0|D5|bcd\(2));

-- Location: MLABCELL_X78_Y6_N9
\D1|D1|CNV0|D5|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|D1|CNV0|D5|Mux3~0_combout\ = ( \D1|D1|CNV0|D4|bcd[1]~DUPLICATE_q\ & ( (!\D1|D1|CNV0|D4|bcd\(3) & !\D1|D1|CNV0|D4|bcd[2]~DUPLICATE_q\) ) ) # ( !\D1|D1|CNV0|D4|bcd[1]~DUPLICATE_q\ & ( (!\D1|D1|CNV0|D4|bcd\(3) & ((!\D1|D1|CNV0|D4|bcd[0]~DUPLICATE_q\) # 
-- (!\D1|D1|CNV0|D4|bcd[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100011001000110010001100100011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D1|D1|CNV0|D4|ALT_INV_bcd[0]~DUPLICATE_q\,
	datab => \D1|D1|CNV0|D4|ALT_INV_bcd\(3),
	datac => \D1|D1|CNV0|D4|ALT_INV_bcd[2]~DUPLICATE_q\,
	dataf => \D1|D1|CNV0|D4|ALT_INV_bcd[1]~DUPLICATE_q\,
	combout => \D1|D1|CNV0|D5|Mux3~0_combout\);

-- Location: LABCELL_X79_Y6_N48
\D1|D1|CNV0|D5|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|D1|CNV0|D5|Mux3~1_combout\ = ( \D1|D1|CNV0|D5|bcd\(1) & ( (!\D1|D1|CNV0|D5|bcd\(3) & !\D1|D1|CNV0|D5|Mux3~0_combout\) ) ) # ( !\D1|D1|CNV0|D5|bcd\(1) & ( (!\D1|D1|CNV0|D5|Mux3~0_combout\ & ((!\D1|D1|CNV0|D5|bcd\(2)) # (!\D1|D1|CNV0|D5|bcd\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110000000000111111000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \D1|D1|CNV0|D5|ALT_INV_bcd\(2),
	datac => \D1|D1|CNV0|D5|ALT_INV_bcd\(3),
	datad => \D1|D1|CNV0|D5|ALT_INV_Mux3~0_combout\,
	dataf => \D1|D1|CNV0|D5|ALT_INV_bcd\(1),
	combout => \D1|D1|CNV0|D5|Mux3~1_combout\);

-- Location: FF_X79_Y6_N49
\D1|D1|CNV0|D5|bcd[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \D1|D1|CNV0|D5|Mux3~1_combout\,
	sclr => \D1|D1|ALT_INV_led7_status~q\,
	ena => \D1|D1|bcd_hold[0][3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|D1|CNV0|D5|bcd[0]~DUPLICATE_q\);

-- Location: LABCELL_X77_Y7_N51
\D1|D1|bcd_hold[4][0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|D1|bcd_hold[4][0]~feeder_combout\ = ( \D1|D1|CNV0|D5|bcd[0]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \D1|D1|CNV0|D5|ALT_INV_bcd[0]~DUPLICATE_q\,
	combout => \D1|D1|bcd_hold[4][0]~feeder_combout\);

-- Location: FF_X77_Y7_N53
\D1|D1|bcd_hold[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \D1|D1|bcd_hold[4][0]~feeder_combout\,
	ena => \D1|D1|bcd_hold[0][3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|D1|bcd_hold[4][0]~q\);

-- Location: FF_X77_Y7_N49
\D1|D1|bcd_hold[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \D1|D1|CNV0|D5|bcd[2]~DUPLICATE_q\,
	sload => VCC,
	ena => \D1|D1|bcd_hold[0][3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|D1|bcd_hold[4][2]~q\);

-- Location: FF_X77_Y7_N5
\D1|D1|bcd_hold[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \D1|D1|CNV0|D5|bcd[3]~DUPLICATE_q\,
	sload => VCC,
	ena => \D1|D1|bcd_hold[0][3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|D1|bcd_hold[4][3]~q\);

-- Location: FF_X77_Y7_N28
\D1|D1|bcd_hold[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \P1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \D1|D1|CNV0|D5|bcd\(1),
	sload => VCC,
	ena => \D1|D1|bcd_hold[0][3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1|D1|bcd_hold[4][1]~q\);

-- Location: LABCELL_X66_Y7_N30
\D1|hex4[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|hex4[0]~1_combout\ = ( \sw[0]~input_o\ & ( \sw[1]~input_o\ & ( (!\sw[9]~input_o\ & (\sw[3]~input_o\ & !\sw[2]~input_o\)) ) ) ) # ( \sw[0]~input_o\ & ( !\sw[1]~input_o\ & ( (!\sw[9]~input_o\ & (!\sw[3]~input_o\ $ (\sw[2]~input_o\))) ) ) ) # ( 
-- !\sw[0]~input_o\ & ( !\sw[1]~input_o\ & ( (!\sw[9]~input_o\ & (!\sw[3]~input_o\ & \sw[2]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000110000000000110000000000000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sw[9]~input_o\,
	datac => \ALT_INV_sw[3]~input_o\,
	datad => \ALT_INV_sw[2]~input_o\,
	datae => \ALT_INV_sw[0]~input_o\,
	dataf => \ALT_INV_sw[1]~input_o\,
	combout => \D1|hex4[0]~1_combout\);

-- Location: LABCELL_X77_Y7_N0
\D1|hex4[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|hex4[0]~2_combout\ = ( \sw[9]~input_o\ & ( \D1|hex4[0]~1_combout\ & ( (!\D1|D1|bcd_hold[4][2]~q\ & (\D1|D1|bcd_hold[4][0]~q\ & (!\D1|D1|bcd_hold[4][3]~q\ $ (\D1|D1|bcd_hold[4][1]~q\)))) # (\D1|D1|bcd_hold[4][2]~q\ & (!\D1|D1|bcd_hold[4][1]~q\ & 
-- (!\D1|D1|bcd_hold[4][0]~q\ $ (\D1|D1|bcd_hold[4][3]~q\)))) ) ) ) # ( !\sw[9]~input_o\ & ( \D1|hex4[0]~1_combout\ ) ) # ( \sw[9]~input_o\ & ( !\D1|hex4[0]~1_combout\ & ( (!\D1|D1|bcd_hold[4][2]~q\ & (\D1|D1|bcd_hold[4][0]~q\ & (!\D1|D1|bcd_hold[4][3]~q\ $ 
-- (\D1|D1|bcd_hold[4][1]~q\)))) # (\D1|D1|bcd_hold[4][2]~q\ & (!\D1|D1|bcd_hold[4][1]~q\ & (!\D1|D1|bcd_hold[4][0]~q\ $ (\D1|D1|bcd_hold[4][3]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011000010000010011111111111111110110000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D1|D1|ALT_INV_bcd_hold[4][0]~q\,
	datab => \D1|D1|ALT_INV_bcd_hold[4][2]~q\,
	datac => \D1|D1|ALT_INV_bcd_hold[4][3]~q\,
	datad => \D1|D1|ALT_INV_bcd_hold[4][1]~q\,
	datae => \ALT_INV_sw[9]~input_o\,
	dataf => \D1|ALT_INV_hex4[0]~1_combout\,
	combout => \D1|hex4[0]~2_combout\);

-- Location: LABCELL_X77_Y7_N15
\D1|hex4[6]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|hex4[6]~3_combout\ = ( \sw[3]~input_o\ & ( (!\sw[9]~input_o\ & (((!\sw[2]~input_o\)))) # (\sw[9]~input_o\ & ((!\D1|D1|bcd_hold[4][3]~q\) # ((!\D1|D1|bcd_hold[4][2]~q\)))) ) ) # ( !\sw[3]~input_o\ & ( (!\D1|D1|bcd_hold[4][3]~q\) # 
-- ((!\D1|D1|bcd_hold[4][2]~q\) # (!\sw[9]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111101110111111111110111011110000111011101111000011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D1|D1|ALT_INV_bcd_hold[4][3]~q\,
	datab => \D1|D1|ALT_INV_bcd_hold[4][2]~q\,
	datac => \ALT_INV_sw[2]~input_o\,
	datad => \ALT_INV_sw[9]~input_o\,
	dataf => \ALT_INV_sw[3]~input_o\,
	combout => \D1|hex4[6]~3_combout\);

-- Location: LABCELL_X77_Y7_N54
\D1|hex4[1]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|hex4[1]~10_combout\ = ( \D1|hex4[6]~3_combout\ & ( (!\D1|D1|bcd_hold[4][3]~q\ & (\D1|D1|bcd_hold[4][2]~q\ & (!\D1|D1|bcd_hold[4][1]~q\ $ (!\D1|D1|bcd_hold[4][0]~q\)))) # (\D1|D1|bcd_hold[4][3]~q\ & (((\D1|D1|bcd_hold[4][1]~q\ & 
-- \D1|D1|bcd_hold[4][0]~q\)) # (\D1|D1|bcd_hold[4][2]~q\))) ) ) # ( !\D1|hex4[6]~3_combout\ & ( (!\D1|D1|bcd_hold[4][3]~q\) # (((!\D1|D1|bcd_hold[4][0]~q\) # (!\D1|D1|bcd_hold[4][2]~q\)) # (\D1|D1|bcd_hold[4][1]~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111011111111111111101100000001011111010000000101111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D1|D1|ALT_INV_bcd_hold[4][3]~q\,
	datab => \D1|D1|ALT_INV_bcd_hold[4][1]~q\,
	datac => \D1|D1|ALT_INV_bcd_hold[4][0]~q\,
	datad => \D1|D1|ALT_INV_bcd_hold[4][2]~q\,
	dataf => \D1|ALT_INV_hex4[6]~3_combout\,
	combout => \D1|hex4[1]~10_combout\);

-- Location: LABCELL_X77_Y7_N42
\D1|hex4[1]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|hex4[1]~19_combout\ = ( !\sw[9]~input_o\ & ( (!\sw[3]~input_o\ & ((!\D1|hex4[6]~3_combout\) # ((\sw[2]~input_o\ & (!\sw[0]~input_o\ $ (!\sw[1]~input_o\)))))) # (\sw[3]~input_o\ & ((!\sw[0]~input_o\ & ((!\D1|hex4[6]~3_combout\) # ((\sw[2]~input_o\)))) 
-- # (\sw[0]~input_o\ & ((!\D1|hex4[6]~3_combout\ $ (\sw[2]~input_o\)) # (\sw[1]~input_o\))))) ) ) # ( \sw[9]~input_o\ & ( (((\D1|hex4[1]~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1100110011001101000011110000111111011011111011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw[0]~input_o\,
	datab => \D1|ALT_INV_hex4[6]~3_combout\,
	datac => \D1|ALT_INV_hex4[1]~10_combout\,
	datad => \ALT_INV_sw[1]~input_o\,
	datae => \ALT_INV_sw[9]~input_o\,
	dataf => \ALT_INV_sw[2]~input_o\,
	datag => \ALT_INV_sw[3]~input_o\,
	combout => \D1|hex4[1]~19_combout\);

-- Location: LABCELL_X77_Y7_N18
\D1|hex4[2]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|hex4[2]~9_combout\ = ( \D1|D1|bcd_hold[4][1]~q\ & ( (!\D1|hex4[6]~3_combout\) # ((!\D1|D1|bcd_hold[4][0]~q\ & (!\D1|D1|bcd_hold[4][3]~q\ & !\D1|D1|bcd_hold[4][2]~q\))) ) ) # ( !\D1|D1|bcd_hold[4][1]~q\ & ( (!\D1|hex4[6]~3_combout\ & 
-- ((!\D1|D1|bcd_hold[4][0]~q\) # ((!\D1|D1|bcd_hold[4][3]~q\) # (!\D1|D1|bcd_hold[4][2]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001000110011001100100011101100110011001110110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D1|D1|ALT_INV_bcd_hold[4][0]~q\,
	datab => \D1|ALT_INV_hex4[6]~3_combout\,
	datac => \D1|D1|ALT_INV_bcd_hold[4][3]~q\,
	datad => \D1|D1|ALT_INV_bcd_hold[4][2]~q\,
	dataf => \D1|D1|ALT_INV_bcd_hold[4][1]~q\,
	combout => \D1|hex4[2]~9_combout\);

-- Location: LABCELL_X77_Y7_N6
\D1|hex4[2]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|hex4[2]~15_combout\ = ( !\sw[9]~input_o\ & ( (!\sw[0]~input_o\ & ((!\D1|hex4[6]~3_combout\) # ((!\sw[3]~input_o\ & (\sw[1]~input_o\ & !\sw[2]~input_o\))))) # (\sw[0]~input_o\ & (!\D1|hex4[6]~3_combout\ & ((!\sw[3]~input_o\) # ((!\sw[2]~input_o\) # 
-- (\sw[1]~input_o\))))) ) ) # ( \sw[9]~input_o\ & ( (((\D1|hex4[2]~9_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1100110011101100000011110000111111001000110011000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw[0]~input_o\,
	datab => \D1|ALT_INV_hex4[6]~3_combout\,
	datac => \D1|ALT_INV_hex4[2]~9_combout\,
	datad => \ALT_INV_sw[1]~input_o\,
	datae => \ALT_INV_sw[9]~input_o\,
	dataf => \ALT_INV_sw[2]~input_o\,
	datag => \ALT_INV_sw[3]~input_o\,
	combout => \D1|hex4[2]~15_combout\);

-- Location: LABCELL_X77_Y7_N36
\D1|BD4|L2|y[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|BD4|L2|y[3]~0_combout\ = ( \sw[3]~input_o\ & ( (!\sw[9]~input_o\ & (\sw[1]~input_o\ & (!\sw[0]~input_o\ $ (\sw[2]~input_o\)))) ) ) # ( !\sw[3]~input_o\ & ( (!\sw[9]~input_o\ & ((!\sw[0]~input_o\ & (\sw[2]~input_o\ & !\sw[1]~input_o\)) # 
-- (\sw[0]~input_o\ & (!\sw[2]~input_o\ $ (\sw[1]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000000010000011000000001000000000000100100000000000010010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw[0]~input_o\,
	datab => \ALT_INV_sw[2]~input_o\,
	datac => \ALT_INV_sw[9]~input_o\,
	datad => \ALT_INV_sw[1]~input_o\,
	dataf => \ALT_INV_sw[3]~input_o\,
	combout => \D1|BD4|L2|y[3]~0_combout\);

-- Location: LABCELL_X77_Y7_N24
\D1|hex4[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|hex4[3]~0_combout\ = ( \D1|BD4|L2|y[3]~0_combout\ & ( \D1|D1|bcd_hold[4][0]~q\ & ( (!\sw[9]~input_o\) # ((!\D1|D1|bcd_hold[4][2]~q\ & (!\D1|D1|bcd_hold[4][3]~q\ & !\D1|D1|bcd_hold[4][1]~q\)) # (\D1|D1|bcd_hold[4][2]~q\ & ((\D1|D1|bcd_hold[4][1]~q\)))) 
-- ) ) ) # ( !\D1|BD4|L2|y[3]~0_combout\ & ( \D1|D1|bcd_hold[4][0]~q\ & ( (\sw[9]~input_o\ & ((!\D1|D1|bcd_hold[4][2]~q\ & (!\D1|D1|bcd_hold[4][3]~q\ & !\D1|D1|bcd_hold[4][1]~q\)) # (\D1|D1|bcd_hold[4][2]~q\ & ((\D1|D1|bcd_hold[4][1]~q\))))) ) ) ) # ( 
-- \D1|BD4|L2|y[3]~0_combout\ & ( !\D1|D1|bcd_hold[4][0]~q\ & ( (!\sw[9]~input_o\) # ((!\D1|D1|bcd_hold[4][3]~q\ & (\D1|D1|bcd_hold[4][2]~q\ & !\D1|D1|bcd_hold[4][1]~q\)) # (\D1|D1|bcd_hold[4][3]~q\ & (!\D1|D1|bcd_hold[4][2]~q\ & \D1|D1|bcd_hold[4][1]~q\))) 
-- ) ) ) # ( !\D1|BD4|L2|y[3]~0_combout\ & ( !\D1|D1|bcd_hold[4][0]~q\ & ( (\sw[9]~input_o\ & ((!\D1|D1|bcd_hold[4][3]~q\ & (\D1|D1|bcd_hold[4][2]~q\ & !\D1|D1|bcd_hold[4][1]~q\)) # (\D1|D1|bcd_hold[4][3]~q\ & (!\D1|D1|bcd_hold[4][2]~q\ & 
-- \D1|D1|bcd_hold[4][1]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000100111100101111010000001000000000111111100011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D1|D1|ALT_INV_bcd_hold[4][3]~q\,
	datab => \D1|D1|ALT_INV_bcd_hold[4][2]~q\,
	datac => \ALT_INV_sw[9]~input_o\,
	datad => \D1|D1|ALT_INV_bcd_hold[4][1]~q\,
	datae => \D1|BD4|L2|ALT_INV_y[3]~0_combout\,
	dataf => \D1|D1|ALT_INV_bcd_hold[4][0]~q\,
	combout => \D1|hex4[3]~0_combout\);

-- Location: LABCELL_X77_Y7_N12
\D1|hex4[4]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|hex4[4]~7_combout\ = ( \D1|D1|bcd_hold[4][1]~q\ & ( (!\D1|D1|bcd_hold[4][3]~q\ & (\D1|D1|bcd_hold[4][0]~q\ & \sw[9]~input_o\)) ) ) # ( !\D1|D1|bcd_hold[4][1]~q\ & ( (\sw[9]~input_o\ & ((!\D1|D1|bcd_hold[4][2]~q\ & ((\D1|D1|bcd_hold[4][0]~q\))) # 
-- (\D1|D1|bcd_hold[4][2]~q\ & (!\D1|D1|bcd_hold[4][3]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101110000000000010111000000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D1|D1|ALT_INV_bcd_hold[4][3]~q\,
	datab => \D1|D1|ALT_INV_bcd_hold[4][2]~q\,
	datac => \D1|D1|ALT_INV_bcd_hold[4][0]~q\,
	datad => \ALT_INV_sw[9]~input_o\,
	dataf => \D1|D1|ALT_INV_bcd_hold[4][1]~q\,
	combout => \D1|hex4[4]~7_combout\);

-- Location: MLABCELL_X82_Y9_N18
\D1|hex4[4]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|hex4[4]~8_combout\ = ( \sw[2]~input_o\ & ( \D1|hex4[4]~7_combout\ & ( ((!\sw[3]~input_o\ & ((!\sw[1]~input_o\) # (\sw[0]~input_o\)))) # (\sw[9]~input_o\) ) ) ) # ( !\sw[2]~input_o\ & ( \D1|hex4[4]~7_combout\ & ( ((\sw[0]~input_o\ & ((!\sw[3]~input_o\) 
-- # (!\sw[1]~input_o\)))) # (\sw[9]~input_o\) ) ) ) # ( \sw[2]~input_o\ & ( !\D1|hex4[4]~7_combout\ & ( (!\sw[3]~input_o\ & (!\sw[9]~input_o\ & ((!\sw[1]~input_o\) # (\sw[0]~input_o\)))) ) ) ) # ( !\sw[2]~input_o\ & ( !\D1|hex4[4]~7_combout\ & ( 
-- (\sw[0]~input_o\ & (!\sw[9]~input_o\ & ((!\sw[3]~input_o\) # (!\sw[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001000000110000000100000001011111010011111100111101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw[0]~input_o\,
	datab => \ALT_INV_sw[3]~input_o\,
	datac => \ALT_INV_sw[9]~input_o\,
	datad => \ALT_INV_sw[1]~input_o\,
	datae => \ALT_INV_sw[2]~input_o\,
	dataf => \D1|ALT_INV_hex4[4]~7_combout\,
	combout => \D1|hex4[4]~8_combout\);

-- Location: LABCELL_X77_Y7_N57
\D1|hex4[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|hex4[5]~5_combout\ = ( \D1|D1|bcd_hold[4][0]~q\ & ( (\sw[9]~input_o\ & ((!\D1|D1|bcd_hold[4][3]~q\ & ((!\D1|D1|bcd_hold[4][2]~q\))) # (\D1|D1|bcd_hold[4][3]~q\ & (!\D1|D1|bcd_hold[4][1]~q\ & \D1|D1|bcd_hold[4][2]~q\)))) ) ) # ( 
-- !\D1|D1|bcd_hold[4][0]~q\ & ( (!\D1|D1|bcd_hold[4][3]~q\ & (\D1|D1|bcd_hold[4][1]~q\ & (!\D1|D1|bcd_hold[4][2]~q\ & \sw[9]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000101001000000000010100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D1|D1|ALT_INV_bcd_hold[4][3]~q\,
	datab => \D1|D1|ALT_INV_bcd_hold[4][1]~q\,
	datac => \D1|D1|ALT_INV_bcd_hold[4][2]~q\,
	datad => \ALT_INV_sw[9]~input_o\,
	dataf => \D1|D1|ALT_INV_bcd_hold[4][0]~q\,
	combout => \D1|hex4[5]~5_combout\);

-- Location: MLABCELL_X82_Y9_N42
\D1|hex4[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|hex4[5]~6_combout\ = ( \sw[2]~input_o\ & ( \D1|hex4[5]~5_combout\ & ( ((\sw[0]~input_o\ & (\sw[3]~input_o\ & !\sw[1]~input_o\))) # (\sw[9]~input_o\) ) ) ) # ( !\sw[2]~input_o\ & ( \D1|hex4[5]~5_combout\ & ( ((!\sw[3]~input_o\ & ((\sw[1]~input_o\) # 
-- (\sw[0]~input_o\)))) # (\sw[9]~input_o\) ) ) ) # ( \sw[2]~input_o\ & ( !\D1|hex4[5]~5_combout\ & ( (\sw[0]~input_o\ & (\sw[3]~input_o\ & (!\sw[9]~input_o\ & !\sw[1]~input_o\))) ) ) ) # ( !\sw[2]~input_o\ & ( !\D1|hex4[5]~5_combout\ & ( (!\sw[3]~input_o\ & 
-- (!\sw[9]~input_o\ & ((\sw[1]~input_o\) # (\sw[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000011000000000100000000000001001111110011110001111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw[0]~input_o\,
	datab => \ALT_INV_sw[3]~input_o\,
	datac => \ALT_INV_sw[9]~input_o\,
	datad => \ALT_INV_sw[1]~input_o\,
	datae => \ALT_INV_sw[2]~input_o\,
	dataf => \D1|ALT_INV_hex4[5]~5_combout\,
	combout => \D1|hex4[5]~6_combout\);

-- Location: LABCELL_X77_Y7_N21
\D1|hex4[6]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|hex4[6]~4_combout\ = ( \D1|D1|bcd_hold[4][1]~q\ & ( (\D1|D1|bcd_hold[4][0]~q\ & (\D1|hex4[6]~3_combout\ & (\D1|D1|bcd_hold[4][2]~q\ & !\D1|D1|bcd_hold[4][3]~q\))) ) ) # ( !\D1|D1|bcd_hold[4][1]~q\ & ( (!\D1|hex4[6]~3_combout\ & 
-- (!\D1|D1|bcd_hold[4][0]~q\ & (\D1|D1|bcd_hold[4][2]~q\ & \D1|D1|bcd_hold[4][3]~q\))) # (\D1|hex4[6]~3_combout\ & (((!\D1|D1|bcd_hold[4][2]~q\ & !\D1|D1|bcd_hold[4][3]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000001000001100000000100000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D1|D1|ALT_INV_bcd_hold[4][0]~q\,
	datab => \D1|ALT_INV_hex4[6]~3_combout\,
	datac => \D1|D1|ALT_INV_bcd_hold[4][2]~q\,
	datad => \D1|D1|ALT_INV_bcd_hold[4][3]~q\,
	dataf => \D1|D1|ALT_INV_bcd_hold[4][1]~q\,
	combout => \D1|hex4[6]~4_combout\);

-- Location: LABCELL_X77_Y7_N30
\D1|hex4[6]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|hex4[6]~11_combout\ = ( !\sw[9]~input_o\ & ( (!\D1|hex4[6]~3_combout\ & (!\sw[0]~input_o\ & (\sw[3]~input_o\ & (!\sw[1]~input_o\ & \sw[2]~input_o\)))) # (\D1|hex4[6]~3_combout\ & (!\sw[3]~input_o\ & ((!\sw[1]~input_o\ & ((!\sw[2]~input_o\))) # 
-- (\sw[1]~input_o\ & (\sw[0]~input_o\ & \sw[2]~input_o\))))) ) ) # ( \sw[9]~input_o\ & ( (((\D1|hex4[6]~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011000000000000000011110000111100001000000100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw[0]~input_o\,
	datab => \D1|ALT_INV_hex4[6]~3_combout\,
	datac => \D1|ALT_INV_hex4[6]~4_combout\,
	datad => \ALT_INV_sw[1]~input_o\,
	datae => \ALT_INV_sw[9]~input_o\,
	dataf => \ALT_INV_sw[2]~input_o\,
	datag => \ALT_INV_sw[3]~input_o\,
	combout => \D1|hex4[6]~11_combout\);

-- Location: MLABCELL_X82_Y9_N33
\D1|hex5[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|hex5[0]~0_combout\ = ( \sw[6]~input_o\ & ( \sw[5]~input_o\ & ( \sw[9]~input_o\ ) ) ) # ( !\sw[6]~input_o\ & ( \sw[5]~input_o\ & ( ((\sw[4]~input_o\ & \sw[7]~input_o\)) # (\sw[9]~input_o\) ) ) ) # ( \sw[6]~input_o\ & ( !\sw[5]~input_o\ & ( 
-- (!\sw[4]~input_o\ $ (\sw[7]~input_o\)) # (\sw[9]~input_o\) ) ) ) # ( !\sw[6]~input_o\ & ( !\sw[5]~input_o\ & ( ((\sw[4]~input_o\ & !\sw[7]~input_o\)) # (\sw[9]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101010101111101010101111101010101010111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw[9]~input_o\,
	datac => \ALT_INV_sw[4]~input_o\,
	datad => \ALT_INV_sw[7]~input_o\,
	datae => \ALT_INV_sw[6]~input_o\,
	dataf => \ALT_INV_sw[5]~input_o\,
	combout => \D1|hex5[0]~0_combout\);

-- Location: MLABCELL_X82_Y9_N6
\D1|hex5[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|hex5[1]~1_combout\ = ( \sw[5]~input_o\ & ( ((!\sw[4]~input_o\ & ((\sw[6]~input_o\))) # (\sw[4]~input_o\ & (\sw[7]~input_o\))) # (\sw[9]~input_o\) ) ) # ( !\sw[5]~input_o\ & ( ((\sw[6]~input_o\ & (!\sw[7]~input_o\ $ (!\sw[4]~input_o\)))) # 
-- (\sw[9]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101101111000011110110111100011111110111110001111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw[7]~input_o\,
	datab => \ALT_INV_sw[4]~input_o\,
	datac => \ALT_INV_sw[9]~input_o\,
	datad => \ALT_INV_sw[6]~input_o\,
	dataf => \ALT_INV_sw[5]~input_o\,
	combout => \D1|hex5[1]~1_combout\);

-- Location: MLABCELL_X82_Y9_N9
\D1|hex5[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|hex5[2]~2_combout\ = ( \sw[9]~input_o\ ) # ( !\sw[9]~input_o\ & ( (!\sw[7]~input_o\ & (!\sw[4]~input_o\ & (\sw[5]~input_o\ & !\sw[6]~input_o\))) # (\sw[7]~input_o\ & (\sw[6]~input_o\ & ((!\sw[4]~input_o\) # (\sw[5]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001000101000010000100010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw[7]~input_o\,
	datab => \ALT_INV_sw[4]~input_o\,
	datac => \ALT_INV_sw[5]~input_o\,
	datad => \ALT_INV_sw[6]~input_o\,
	dataf => \ALT_INV_sw[9]~input_o\,
	combout => \D1|hex5[2]~2_combout\);

-- Location: MLABCELL_X82_Y9_N12
\D1|hex5[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|hex5[3]~3_combout\ = ( \sw[9]~input_o\ ) # ( !\sw[9]~input_o\ & ( (!\sw[5]~input_o\ & (!\sw[7]~input_o\ & (!\sw[4]~input_o\ $ (!\sw[6]~input_o\)))) # (\sw[5]~input_o\ & ((!\sw[4]~input_o\ & (\sw[7]~input_o\ & !\sw[6]~input_o\)) # (\sw[4]~input_o\ & 
-- ((\sw[6]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100001000011001010000100001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw[7]~input_o\,
	datab => \ALT_INV_sw[4]~input_o\,
	datac => \ALT_INV_sw[6]~input_o\,
	datad => \ALT_INV_sw[5]~input_o\,
	dataf => \ALT_INV_sw[9]~input_o\,
	combout => \D1|hex5[3]~3_combout\);

-- Location: MLABCELL_X84_Y9_N30
\D1|hex5[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|hex5[4]~4_combout\ = ( \sw[7]~input_o\ & ( \sw[5]~input_o\ & ( \sw[9]~input_o\ ) ) ) # ( !\sw[7]~input_o\ & ( \sw[5]~input_o\ & ( (\sw[4]~input_o\) # (\sw[9]~input_o\) ) ) ) # ( \sw[7]~input_o\ & ( !\sw[5]~input_o\ & ( ((!\sw[6]~input_o\ & 
-- \sw[4]~input_o\)) # (\sw[9]~input_o\) ) ) ) # ( !\sw[7]~input_o\ & ( !\sw[5]~input_o\ & ( ((\sw[4]~input_o\) # (\sw[6]~input_o\)) # (\sw[9]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101111111010111010101110101011111010111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw[9]~input_o\,
	datab => \ALT_INV_sw[6]~input_o\,
	datac => \ALT_INV_sw[4]~input_o\,
	datae => \ALT_INV_sw[7]~input_o\,
	dataf => \ALT_INV_sw[5]~input_o\,
	combout => \D1|hex5[4]~4_combout\);

-- Location: MLABCELL_X82_Y9_N15
\D1|hex5[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|hex5[5]~5_combout\ = ( \sw[9]~input_o\ ) # ( !\sw[9]~input_o\ & ( (!\sw[5]~input_o\ & (\sw[4]~input_o\ & (!\sw[7]~input_o\ $ (\sw[6]~input_o\)))) # (\sw[5]~input_o\ & (!\sw[7]~input_o\ & ((!\sw[6]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101000010000001010100001000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw[7]~input_o\,
	datab => \ALT_INV_sw[4]~input_o\,
	datac => \ALT_INV_sw[5]~input_o\,
	datad => \ALT_INV_sw[6]~input_o\,
	dataf => \ALT_INV_sw[9]~input_o\,
	combout => \D1|hex5[5]~5_combout\);

-- Location: MLABCELL_X82_Y9_N48
\D1|hex5[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|hex5[6]~6_combout\ = ( \sw[6]~input_o\ & ( \sw[5]~input_o\ & ( ((!\sw[7]~input_o\ & \sw[4]~input_o\)) # (\sw[9]~input_o\) ) ) ) # ( !\sw[6]~input_o\ & ( \sw[5]~input_o\ & ( \sw[9]~input_o\ ) ) ) # ( \sw[6]~input_o\ & ( !\sw[5]~input_o\ & ( 
-- ((\sw[7]~input_o\ & !\sw[4]~input_o\)) # (\sw[9]~input_o\) ) ) ) # ( !\sw[6]~input_o\ & ( !\sw[5]~input_o\ & ( (!\sw[7]~input_o\) # (\sw[9]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110101111010011110100111100001111000011110010111100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw[7]~input_o\,
	datab => \ALT_INV_sw[4]~input_o\,
	datac => \ALT_INV_sw[9]~input_o\,
	datae => \ALT_INV_sw[6]~input_o\,
	dataf => \ALT_INV_sw[5]~input_o\,
	combout => \D1|hex5[6]~6_combout\);

-- Location: IOIBUF_X4_Y0_N18
\sw[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(8),
	o => \sw[8]~input_o\);

-- Location: IOIBUF_X40_Y0_N1
\key[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(2),
	o => \key[2]~input_o\);

-- Location: IOIBUF_X40_Y0_N18
\key[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(3),
	o => \key[3]~input_o\);

-- Location: LABCELL_X79_Y18_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;


pll_reconfig_inst_tasks : altera_pll_reconfig_tasks
-- pragma translate_off
GENERIC MAP (
      number_of_fplls => 1);
-- pragma translate_on
END structure;


