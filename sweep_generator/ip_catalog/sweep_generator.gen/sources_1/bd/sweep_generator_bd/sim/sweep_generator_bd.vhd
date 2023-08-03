--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
--Date        : Thu Aug  3 12:02:05 2023
--Host        : DESKTOP-JEI2OF3 running 64-bit major release  (build 9200)
--Command     : generate_target sweep_generator_bd.bd
--Design      : sweep_generator_bd
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity sweep_generator_bd is
  port (
    clk : in STD_LOGIC;
    freq1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    freq2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ii : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rr : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of sweep_generator_bd : entity is "sweep_generator_bd,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=sweep_generator_bd,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=1,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SYSGEN,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of sweep_generator_bd : entity is "sweep_generator_bd.hwdef";
end sweep_generator_bd;

architecture STRUCTURE of sweep_generator_bd is
  component sweep_generator_bd_sweep_generator_1_0 is
  port (
    freq1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    freq2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC;
    ii : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rr : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component sweep_generator_bd_sweep_generator_1_0;
  signal clk_1 : STD_LOGIC;
  signal freq1_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal freq2_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal sweep_generator_1_ii : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal sweep_generator_1_rr : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN sweep_generator_bd_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of freq1 : signal is "xilinx.com:signal:data:1.0 DATA.FREQ1 DATA";
  attribute X_INTERFACE_PARAMETER of freq1 : signal is "XIL_INTERFACENAME DATA.FREQ1, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of freq2 : signal is "xilinx.com:signal:data:1.0 DATA.FREQ2 DATA";
  attribute X_INTERFACE_PARAMETER of freq2 : signal is "XIL_INTERFACENAME DATA.FREQ2, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of ii : signal is "xilinx.com:signal:data:1.0 DATA.II DATA";
  attribute X_INTERFACE_PARAMETER of ii : signal is "XIL_INTERFACENAME DATA.II, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 15} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}";
  attribute X_INTERFACE_INFO of rr : signal is "xilinx.com:signal:data:1.0 DATA.RR DATA";
  attribute X_INTERFACE_PARAMETER of rr : signal is "XIL_INTERFACENAME DATA.RR, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 15} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}";
begin
  clk_1 <= clk;
  freq1_1(15 downto 0) <= freq1(15 downto 0);
  freq2_1(15 downto 0) <= freq2(15 downto 0);
  ii(15 downto 0) <= sweep_generator_1_ii(15 downto 0);
  rr(15 downto 0) <= sweep_generator_1_rr(15 downto 0);
sweep_generator_1: component sweep_generator_bd_sweep_generator_1_0
     port map (
      clk => clk_1,
      freq1(15 downto 0) => freq1_1(15 downto 0),
      freq2(15 downto 0) => freq2_1(15 downto 0),
      ii(15 downto 0) => sweep_generator_1_ii(15 downto 0),
      rr(15 downto 0) => sweep_generator_1_rr(15 downto 0)
    );
end STRUCTURE;
