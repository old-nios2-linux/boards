-- megafunction wizard: %ALTCLKCTRL%CBX%
-- GENERATION: STANDARD
-- VERSION: WM1.0
-- MODULE: altclkctrl 

-- ============================================================
-- File Name: mtx_sdram_ddr_clk_ctrl.vhd
-- Megafunction Name(s):
-- 			altclkctrl
-- ============================================================
-- ************************************************************
-- THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
--
-- 6.0 Build 202 06/20/2006 SP 1 SJ Full Version
-- ************************************************************


--Copyright (C) 1991-2006 Altera Corporation
--Your use of Altera Corporation's design tools, logic functions 
--and other software and tools, and its AMPP partner logic 
--functions, and any output files any of the foregoing 
--(including device programming or simulation files), and any 
--associated documentation or information are expressly subject 
--to the terms and conditions of the Altera Program License 
--Subscription Agreement, Altera MegaCore Function License 
--Agreement, or other applicable license agreement, including, 
--without limitation, that your use is for the sole purpose of 
--programming logic devices manufactured by Altera and sold by 
--Altera or its authorized distributors.  Please refer to the 
--applicable agreement for further details.


--altclkctrl clock_type="Global Clock" DEVICE_FAMILY="CYCLONE II" ena_register_mode="falling edge" clkselect ena inclk outclk
--VERSION_BEGIN 6.0 cbx_altclkbuf 2006:01:26:13:09:22:SJ cbx_mgl 2006:05:17:10:06:16:SJ cbx_stratixii 2006:03:03:09:35:36:SJ  VERSION_END

 LIBRARY cycloneii;
 USE cycloneii.all;

--synthesis_resources = clkctrl 1 
 LIBRARY ieee;
 USE ieee.std_logic_1164.all;

 ENTITY  mtx_sdram_ddr_clk_ctrl_altclkctrl_cdb IS 
	 PORT 
	 ( 
		 clkselect	:	IN  STD_LOGIC_VECTOR (1 DOWNTO 0) := (OTHERS => '0');
		 ena	:	IN  STD_LOGIC := '1';
		 inclk	:	IN  STD_LOGIC_VECTOR (3 DOWNTO 0) := (OTHERS => '0');
		 outclk	:	OUT  STD_LOGIC
	 ); 
 END mtx_sdram_ddr_clk_ctrl_altclkctrl_cdb;

 ARCHITECTURE RTL OF mtx_sdram_ddr_clk_ctrl_altclkctrl_cdb IS

	 ATTRIBUTE synthesis_clearbox : boolean;
	 ATTRIBUTE synthesis_clearbox OF RTL : ARCHITECTURE IS true;
	 SIGNAL  wire_clkctrl1_outclk	:	STD_LOGIC;
	 COMPONENT  cycloneii_clkctrl
	 GENERIC 
	 (
		clock_type	:	STRING;
		ena_register_mode	:	STRING := "falling edge";
		lpm_type	:	STRING := "cycloneii_clkctrl"
	 );
	 PORT
	 ( 
		clkselect	:	IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		ena	:	IN STD_LOGIC;
		inclk	:	IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		outclk	:	OUT STD_LOGIC
	 ); 
	 END COMPONENT;
 BEGIN

	outclk <= wire_clkctrl1_outclk;
	clkctrl1 :  cycloneii_clkctrl
	  GENERIC MAP (
		clock_type => "Global Clock",
		ena_register_mode => "falling edge"
	  )
	  PORT MAP ( 
		clkselect => clkselect,
		ena => ena,
		inclk => inclk,
		outclk => wire_clkctrl1_outclk
	  );

 END RTL; --mtx_sdram_ddr_clk_ctrl_altclkctrl_cdb
--VALID FILE


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY mtx_sdram_ddr_clk_ctrl IS
	PORT
	(
		ena		: IN STD_LOGIC  := '1';
		inclk		: IN STD_LOGIC ;
		outclk		: OUT STD_LOGIC 
	);
END mtx_sdram_ddr_clk_ctrl;


ARCHITECTURE RTL OF mtx_sdram_ddr_clk_ctrl IS

	ATTRIBUTE synthesis_clearbox: boolean;
	ATTRIBUTE synthesis_clearbox OF RTL: ARCHITECTURE IS TRUE;
	SIGNAL sub_wire0	: STD_LOGIC ;
	SIGNAL sub_wire1	: STD_LOGIC ;
	SIGNAL sub_wire2	: STD_LOGIC_VECTOR (3 DOWNTO 0);
	SIGNAL sub_wire3_bv	: BIT_VECTOR (2 DOWNTO 0);
	SIGNAL sub_wire3	: STD_LOGIC_VECTOR (2 DOWNTO 0);
	SIGNAL sub_wire4_bv	: BIT_VECTOR (1 DOWNTO 0);
	SIGNAL sub_wire4	: STD_LOGIC_VECTOR (1 DOWNTO 0);



	COMPONENT mtx_sdram_ddr_clk_ctrl_altclkctrl_cdb
	PORT (
			ena	: IN STD_LOGIC ;
			outclk	: OUT STD_LOGIC ;
			inclk	: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
			clkselect	: IN STD_LOGIC_VECTOR (1 DOWNTO 0)
	);
	END COMPONENT;

BEGIN
	sub_wire3_bv(2 DOWNTO 0) <= "000";
	sub_wire3    <= To_stdlogicvector(sub_wire3_bv);
	sub_wire4_bv(1 DOWNTO 0) <= "00";
	sub_wire4    <= To_stdlogicvector(sub_wire4_bv);
	outclk    <= sub_wire0;
	sub_wire1    <= inclk;
	sub_wire2    <= sub_wire3(2 DOWNTO 0) & sub_wire1;

	mtx_sdram_ddr_clk_ctrl_altclkctrl_cdb_component : mtx_sdram_ddr_clk_ctrl_altclkctrl_cdb
	PORT MAP (
		ena => ena,
		inclk => sub_wire2,
		clkselect => sub_wire4,
		outclk => sub_wire0
	);



END RTL;

-- ============================================================
-- CNX file retrieval info
-- ============================================================
-- Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone II"
-- Retrieval info: PRIVATE: clock_inputs NUMERIC "1"
-- Retrieval info: CONSTANT: ENA_REGISTER_MODE STRING "falling edge"
-- Retrieval info: CONSTANT: INTENDED_DEVICE_FAMILY STRING "Cyclone II"
-- Retrieval info: CONSTANT: clock_type STRING "Global Clock"
-- Retrieval info: USED_PORT: ena 0 0 0 0 INPUT VCC "ena"
-- Retrieval info: USED_PORT: inclk 0 0 0 0 INPUT NODEFVAL "inclk"
-- Retrieval info: USED_PORT: outclk 0 0 0 0 OUTPUT NODEFVAL "outclk"
-- Retrieval info: CONNECT: @ena 0 0 0 0 ena 0 0 0 0
-- Retrieval info: CONNECT: @inclk 0 0 1 0 inclk 0 0 0 0
-- Retrieval info: CONNECT: @clkselect 0 0 2 0 GND 0 0 2 0
-- Retrieval info: CONNECT: outclk 0 0 0 0 @outclk 0 0 0 0
-- Retrieval info: CONNECT: @inclk 0 0 3 1 GND 0 0 3 0
-- Retrieval info: GEN_FILE: TYPE_NORMAL mtx_sdram_ddr_clk_ctrl.vhd TRUE FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL mtx_sdram_ddr_clk_ctrl.inc FALSE FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL mtx_sdram_ddr_clk_ctrl.cmp FALSE FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL mtx_sdram_ddr_clk_ctrl.bsf FALSE FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL mtx_sdram_ddr_clk_ctrl_inst.vhd FALSE FALSE