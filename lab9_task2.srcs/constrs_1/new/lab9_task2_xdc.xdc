set_property PACKAGE_PIN W5 [get_ports clock]							
set_property IOSTANDARD LVCMOS33 [get_ports clock]
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clock]




set_property PACKAGE_PIN V2 [get_ports {switch[0]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {switch[0]}]

set_property PACKAGE_PIN T3 [get_ports {switch[1]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {switch[1]}]

set_property PACKAGE_PIN T2 [get_ports {switch[2]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {switch[2]}]

set_property PACKAGE_PIN R3 [get_ports {switch[3]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {switch[3]}]

set_property PACKAGE_PIN W2 [get_ports {switch[4]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {switch[4]}]

set_property PACKAGE_PIN U1 [get_ports {switch[5]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {switch[5]}]

set_property PACKAGE_PIN T1 [get_ports {switch[6]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {switch[6]}]

set_property PACKAGE_PIN R2 [get_ports {switch[7]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {switch[7]}]




set_property PACKAGE_PIN V17 [get_ports control_inverter]					
set_property IOSTANDARD LVCMOS33 [get_ports control_inverter]




set_property PACKAGE_PIN W19 [get_ports control_reg1]						
set_property IOSTANDARD LVCMOS33 [get_ports control_reg1]

set_property PACKAGE_PIN T17 [get_ports control_reg2]						
set_property IOSTANDARD LVCMOS33 [get_ports control_reg2]




set_property PACKAGE_PIN U16 [get_ports {led[0]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {led[0]}]

set_property PACKAGE_PIN E19 [get_ports {led[1]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {led[1]}]

set_property PACKAGE_PIN U19 [get_ports {led[2]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {led[2]}]

set_property PACKAGE_PIN V19 [get_ports {led[3]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {led[3]}]

set_property PACKAGE_PIN W18 [get_ports {led[4]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {led[4]}]

set_property PACKAGE_PIN U15 [get_ports {led[5]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {led[5]}]

set_property PACKAGE_PIN U14 [get_ports {led[6]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {led[6]}]

set_property PACKAGE_PIN V14 [get_ports {led[7]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {led[7]}]




set_property PACKAGE_PIN P1 [get_ports negative_control_led]					
set_property IOSTANDARD LVCMOS33 [get_ports negative_control_led]

set_property PACKAGE_PIN L1 [get_ports flow_control_led]					
set_property IOSTANDARD LVCMOS33 [get_ports flow_control_led]




set_property PACKAGE_PIN W7 [get_ports {seg[6]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {seg[6]}]

set_property PACKAGE_PIN W6 [get_ports {seg[5]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {seg[5]}]

set_property PACKAGE_PIN U8 [get_ports {seg[4]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {seg[4]}]

set_property PACKAGE_PIN V8 [get_ports {seg[3]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {seg[3]}]

set_property PACKAGE_PIN U5 [get_ports {seg[2]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {seg[2]}]

set_property PACKAGE_PIN V5 [get_ports {seg[1]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {seg[1]}]

set_property PACKAGE_PIN U7 [get_ports {seg[0]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {seg[0]}]




set_property PACKAGE_PIN U2 [get_ports {AN[0]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {AN[0]}]

set_property PACKAGE_PIN U4 [get_ports {AN[1]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {AN[1]}]

set_property PACKAGE_PIN V4 [get_ports {AN[2]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {AN[2]}]

set_property PACKAGE_PIN W4 [get_ports {AN[3]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {AN[3]}]




set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets control_inverter_IBUF]








































