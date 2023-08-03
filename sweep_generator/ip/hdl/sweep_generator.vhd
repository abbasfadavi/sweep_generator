-- Generated from Simulink block sweep_generator/cw
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity sweep_generator_cw is
  port (
    in_x0 : in std_logic_vector( 16-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    c : out std_logic_vector( 16-1 downto 0 );
    s : out std_logic_vector( 16-1 downto 0 )
  );
end sweep_generator_cw;
architecture structural of sweep_generator_cw is 
  signal register2_q_net : std_logic_vector( 16-1 downto 0 );
  signal addsub_s_net : std_logic_vector( 16-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal register1_q_net : std_logic_vector( 16-1 downto 0 );
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal dds_compiler_6_0_m_axis_data_tdata_cosine_net : std_logic_vector( 16-1 downto 0 );
  signal dds_compiler_6_0_m_axis_data_tvalid_net : std_logic;
  signal dds_compiler_6_0_m_axis_data_tdata_sine_net : std_logic_vector( 16-1 downto 0 );
begin
  c <= register1_q_net;
  s <= register2_q_net;
  addsub_s_net <= in_x0;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_5b60d5bceb 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  dds_compiler_6_0 : entity xil_defaultlib.xldds_compiler_185e104fd817ffcbde4514a2e20a71b0 
  port map (
    s_axis_phase_tvalid => constant_op_net(0),
    s_axis_phase_tdata_pinc => addsub_s_net,
    clk => clk_net,
    ce => ce_net,
    m_axis_data_tvalid => dds_compiler_6_0_m_axis_data_tvalid_net,
    m_axis_data_tdata_sine => dds_compiler_6_0_m_axis_data_tdata_sine_net,
    m_axis_data_tdata_cosine => dds_compiler_6_0_m_axis_data_tdata_cosine_net
  );
  register1 : entity xil_defaultlib.sweep_generator_xlregister 
  generic map (
    d_width => 16,
    init_value => b"0000000000000000"
  )
  port map (
    rst => "0",
    d => dds_compiler_6_0_m_axis_data_tdata_cosine_net,
    en(0) => dds_compiler_6_0_m_axis_data_tvalid_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  register2 : entity xil_defaultlib.sweep_generator_xlregister 
  generic map (
    d_width => 16,
    init_value => b"0000000000000000"
  )
  port map (
    rst => "0",
    d => dds_compiler_6_0_m_axis_data_tdata_sine_net,
    en(0) => dds_compiler_6_0_m_axis_data_tvalid_net,
    clk => clk_net,
    ce => ce_net,
    q => register2_q_net
  );
end structural;
-- Generated from Simulink block sweep_generator_struct
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity sweep_generator_struct is
  port (
    freq1 : in std_logic_vector( 16-1 downto 0 );
    freq2 : in std_logic_vector( 16-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    ii : out std_logic_vector( 16-1 downto 0 );
    rr : out std_logic_vector( 16-1 downto 0 )
  );
end sweep_generator_struct;
architecture structural of sweep_generator_struct is 
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal addsub_s_net : std_logic_vector( 16-1 downto 0 );
  signal freq1_net : std_logic_vector( 16-1 downto 0 );
  signal register2_q_net : std_logic_vector( 16-1 downto 0 );
  signal register1_q_net : std_logic_vector( 16-1 downto 0 );
  signal freq2_net : std_logic_vector( 16-1 downto 0 );
  signal addsub1_s_net : std_logic_vector( 16-1 downto 0 );
  signal counter_op_net : std_logic_vector( 16-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
begin
  freq1_net <= freq1;
  freq2_net <= freq2;
  ii <= register2_q_net;
  rr <= register1_q_net;
  clk_net <= clk_1;
  ce_net <= ce_1;
  cw : entity xil_defaultlib.sweep_generator_cw 
  port map (
    in_x0 => addsub_s_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    c => register1_q_net,
    s => register2_q_net
  );
  addsub : entity xil_defaultlib.sweep_generator_xladdsub 
  generic map (
    a_arith => xlUnsigned,
    a_bin_pt => 16,
    a_width => 16,
    b_arith => xlUnsigned,
    b_bin_pt => 16,
    b_width => 16,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 17,
    core_name0 => "sweep_generator_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 1,
    full_s_width => 17,
    latency => 0,
    overflow => 2,
    quantization => 2,
    s_arith => xlUnsigned,
    s_bin_pt => 16,
    s_width => 16
  )
  port map (
    clr => '0',
    en => "1",
    a => freq1_net,
    b => counter_op_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub_s_net
  );
  addsub1 : entity xil_defaultlib.sweep_generator_xladdsub 
  generic map (
    a_arith => xlUnsigned,
    a_bin_pt => 16,
    a_width => 16,
    b_arith => xlUnsigned,
    b_bin_pt => 16,
    b_width => 16,
    c_has_c_out => 0,
    c_latency => 0,
    c_output_width => 17,
    core_name0 => "sweep_generator_c_addsub_v12_0_i1",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 17,
    latency => 0,
    overflow => 2,
    quantization => 2,
    s_arith => xlUnsigned,
    s_bin_pt => 16,
    s_width => 16
  )
  port map (
    clr => '0',
    en => "1",
    a => freq2_net,
    b => freq1_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub1_s_net
  );
  counter : entity xil_defaultlib.sweep_generator_xlcounter_free 
  generic map (
    core_name0 => "sweep_generator_c_counter_binary_v12_0_i0",
    op_arith => xlUnsigned,
    op_width => 16
  )
  port map (
    en => "1",
    clr => '0',
    rst => relational_op_net,
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  relational : entity xil_defaultlib.sysgen_relational_28eab582f9 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => counter_op_net,
    b => addsub1_s_net,
    op => relational_op_net
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity sweep_generator_default_clock_driver is
  port (
    sweep_generator_sysclk : in std_logic;
    sweep_generator_sysce : in std_logic;
    sweep_generator_sysclr : in std_logic;
    sweep_generator_clk1 : out std_logic;
    sweep_generator_ce1 : out std_logic
  );
end sweep_generator_default_clock_driver;
architecture structural of sweep_generator_default_clock_driver is 
begin
  clockdriver : entity xil_defaultlib.xlclockdriver 
  generic map (
    period => 1,
    log_2_period => 1
  )
  port map (
    sysclk => sweep_generator_sysclk,
    sysce => sweep_generator_sysce,
    sysclr => sweep_generator_sysclr,
    clk => sweep_generator_clk1,
    ce => sweep_generator_ce1
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity sweep_generator is
  port (
    freq1 : in std_logic_vector( 16-1 downto 0 );
    freq2 : in std_logic_vector( 16-1 downto 0 );
    clk : in std_logic;
    ii : out std_logic_vector( 16-1 downto 0 );
    rr : out std_logic_vector( 16-1 downto 0 )
  );
end sweep_generator;
architecture structural of sweep_generator is 
  attribute core_generation_info : string;
  attribute core_generation_info of structural : architecture is "sweep_generator,sysgen_core_2021_2,{,compilation=IP Catalog,block_icon_display=Default,family=kintex7,part=xc7k160t,speed=-2,package=fbg484,synthesis_language=vhdl,hdl_library=xil_defaultlib,synthesis_strategy=Vivado Synthesis Defaults,implementation_strategy=Vivado Implementation Defaults,testbench=0,interface_doc=0,ce_clr=0,clock_period=10,system_simulink_period=1e-08,waveform_viewer=0,axilite_interface=0,ip_catalog_plugin=0,hwcosim_burst_mode=0,simulation_time=0.001,addsub=2,constant=1,counter=1,dds_compiler_v6_0=1,register=2,relational=1,}";
  signal clk_1_net : std_logic;
  signal ce_1_net : std_logic;
begin
  sweep_generator_default_clock_driver : entity xil_defaultlib.sweep_generator_default_clock_driver 
  port map (
    sweep_generator_sysclk => clk,
    sweep_generator_sysce => '1',
    sweep_generator_sysclr => '0',
    sweep_generator_clk1 => clk_1_net,
    sweep_generator_ce1 => ce_1_net
  );
  sweep_generator_struct : entity xil_defaultlib.sweep_generator_struct 
  port map (
    freq1 => freq1,
    freq2 => freq2,
    clk_1 => clk_1_net,
    ce_1 => ce_1_net,
    ii => ii,
    rr => rr
  );
end structural;
