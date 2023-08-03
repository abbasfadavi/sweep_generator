namespace eval ::xilinx::dsp::planaheaddriver {
	set Compilation {IP Catalog}
	set CompilationFlow {IP}
	set CreateInterfaceDocument {off}
	set DSPDevice {xc7k160t}
	set DSPFamily {kintex7}
	set DSPPackage {fbg484}
	set DSPSpeed {-2}
	set FPGAClockPeriod 10
	set GenerateTestBench 0
	set HDLLanguage {vhdl}
	set IP_Auto_Infer {1}
	set IP_Categories_Text {System_Generator_for_DSP}
	set IP_Common_Repos {0}
	set IP_Description {}
	set IP_Dir {}
	set IP_Library_Text {SysGen}
	set IP_LifeCycle_Menu {2}
	set IP_Logo {sysgen_icon_100.png}
	set IP_Name {}
	set IP_Revision {321969715}
	set IP_Socket_IP {0}
	set IP_Socket_IP_Proj_Path {}
	set IP_Vendor_Text {User_Company}
	set IP_Version_Text {1.0}
	set ImplStrategyName {Vivado Implementation Defaults}
	set PostProjectCreationProc {dsp_package_for_vivado_ip_integrator}
	set Project {sweep_generator}
	set ProjectFiles {
		{{conv_pkg.vhd} -lib {xil_defaultlib}}
		{{synth_reg.vhd} -lib {xil_defaultlib}}
		{{synth_reg_w_init.vhd} -lib {xil_defaultlib}}
		{{srl17e.vhd} -lib {xil_defaultlib}}
		{{srl33e.vhd} -lib {xil_defaultlib}}
		{{synth_reg_reg.vhd} -lib {xil_defaultlib}}
		{{single_reg_w_init.vhd} -lib {xil_defaultlib}}
		{{xlclockdriver_rd.vhd} -lib {xil_defaultlib}}
		{{vivado_ip.tcl}}
		{{sweep_generator_entity_declarations.vhd} -lib {xil_defaultlib}}
		{{sweep_generator.vhd} -lib {xil_defaultlib}}
		{{sweep_generator_clock.xdc}}
		{{sweep_generator.xdc}}
	}
	set SimPeriod 1e-08
	set SimTime 0.001
	set SimulationTime {1000210.00000000 ns}
	set SynthStrategyName {Vivado Synthesis Defaults}
	set SynthesisTool {Vivado}
	set TopLevelModule {sweep_generator}
	set TopLevelSimulinkHandle 0.000244141
	set VHDLLib {xil_defaultlib}
	set TopLevelPortInterface {}
	dict set TopLevelPortInterface freq2 Name {freq2}
	dict set TopLevelPortInterface freq2 Type UFix_16_16
	dict set TopLevelPortInterface freq2 ArithmeticType xlUnsigned
	dict set TopLevelPortInterface freq2 BinaryPoint 16
	dict set TopLevelPortInterface freq2 Width 16
	dict set TopLevelPortInterface freq2 DatFile {sweep_generator_freq2.dat}
	dict set TopLevelPortInterface freq2 IconText {freq2}
	dict set TopLevelPortInterface freq2 Direction in
	dict set TopLevelPortInterface freq2 Period 1
	dict set TopLevelPortInterface freq2 Interface 0
	dict set TopLevelPortInterface freq2 InterfaceName {}
	dict set TopLevelPortInterface freq2 InterfaceString {DATA}
	dict set TopLevelPortInterface freq2 ClockDomain {sweep_generator}
	dict set TopLevelPortInterface freq2 Locs {}
	dict set TopLevelPortInterface freq2 IOStandard {}
	dict set TopLevelPortInterface freq1 Name {freq1}
	dict set TopLevelPortInterface freq1 Type UFix_16_16
	dict set TopLevelPortInterface freq1 ArithmeticType xlUnsigned
	dict set TopLevelPortInterface freq1 BinaryPoint 16
	dict set TopLevelPortInterface freq1 Width 16
	dict set TopLevelPortInterface freq1 DatFile {sweep_generator_freq1.dat}
	dict set TopLevelPortInterface freq1 IconText {freq1}
	dict set TopLevelPortInterface freq1 Direction in
	dict set TopLevelPortInterface freq1 Period 1
	dict set TopLevelPortInterface freq1 Interface 0
	dict set TopLevelPortInterface freq1 InterfaceName {}
	dict set TopLevelPortInterface freq1 InterfaceString {DATA}
	dict set TopLevelPortInterface freq1 ClockDomain {sweep_generator}
	dict set TopLevelPortInterface freq1 Locs {}
	dict set TopLevelPortInterface freq1 IOStandard {}
	dict set TopLevelPortInterface ii Name {ii}
	dict set TopLevelPortInterface ii Type Fix_16_15
	dict set TopLevelPortInterface ii ArithmeticType xlSigned
	dict set TopLevelPortInterface ii BinaryPoint 15
	dict set TopLevelPortInterface ii Width 16
	dict set TopLevelPortInterface ii DatFile {sweep_generator_ii.dat}
	dict set TopLevelPortInterface ii IconText {ii}
	dict set TopLevelPortInterface ii Direction out
	dict set TopLevelPortInterface ii Period 1
	dict set TopLevelPortInterface ii Interface 0
	dict set TopLevelPortInterface ii InterfaceName {}
	dict set TopLevelPortInterface ii InterfaceString {DATA}
	dict set TopLevelPortInterface ii ClockDomain {sweep_generator}
	dict set TopLevelPortInterface ii Locs {}
	dict set TopLevelPortInterface ii IOStandard {}
	dict set TopLevelPortInterface rr Name {rr}
	dict set TopLevelPortInterface rr Type Fix_16_15
	dict set TopLevelPortInterface rr ArithmeticType xlSigned
	dict set TopLevelPortInterface rr BinaryPoint 15
	dict set TopLevelPortInterface rr Width 16
	dict set TopLevelPortInterface rr DatFile {sweep_generator_rr.dat}
	dict set TopLevelPortInterface rr IconText {rr}
	dict set TopLevelPortInterface rr Direction out
	dict set TopLevelPortInterface rr Period 1
	dict set TopLevelPortInterface rr Interface 0
	dict set TopLevelPortInterface rr InterfaceName {}
	dict set TopLevelPortInterface rr InterfaceString {DATA}
	dict set TopLevelPortInterface rr ClockDomain {sweep_generator}
	dict set TopLevelPortInterface rr Locs {}
	dict set TopLevelPortInterface rr IOStandard {}
	dict set TopLevelPortInterface clk Name {clk}
	dict set TopLevelPortInterface clk Type -
	dict set TopLevelPortInterface clk ArithmeticType xlUnsigned
	dict set TopLevelPortInterface clk BinaryPoint 0
	dict set TopLevelPortInterface clk Width 1
	dict set TopLevelPortInterface clk DatFile {}
	dict set TopLevelPortInterface clk Direction in
	dict set TopLevelPortInterface clk Period 1
	dict set TopLevelPortInterface clk Interface 6
	dict set TopLevelPortInterface clk InterfaceName {}
	dict set TopLevelPortInterface clk InterfaceString {CLOCK}
	dict set TopLevelPortInterface clk ClockDomain {sweep_generator}
	dict set TopLevelPortInterface clk Locs {}
	dict set TopLevelPortInterface clk IOStandard {}
	dict set TopLevelPortInterface clk AssociatedInterfaces {}
	dict set TopLevelPortInterface clk AssociatedResets {}
	set MemoryMappedPort {}
}

source SgPaProject.tcl
::xilinx::dsp::planaheadworker::dsp_create_project