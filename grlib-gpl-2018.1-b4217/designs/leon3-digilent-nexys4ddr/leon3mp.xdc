## This file is a general .xdc for the Nexys4 DDR Rev. C
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project

## Clock signal

##Bank = 35, Pin name = IO_L12P_T1_MRCC_35,					Sch name = CLK100MHZ

set_property PACKAGE_PIN E3 [get_ports sys_clk_i]
set_property IOSTANDARD LVCMOS33 [get_ports sys_clk_i]
#set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets sys_clk_i_IBUF]

create_clock -period 10.000 -name sys_clk_pin -waveform {0.000 5.000} -add [get_ports sys_clk_i]

create_generated_clock -name eth_clk90 -source [get_pins ethclk.PLLE2_ADV_inst/CLKIN1] [get_pins ethclk.PLLE2_ADV_inst/CLKOUT1]
create_generated_clock -name clkm -source [get_pins clkgen_gen.clkgen0/xc7l.v/PLLE2_ADV_inst/CLKIN1] [get_pins clkgen_gen.clkgen0/xc7l.v/PLLE2_ADV_inst/CLKOUT0]

## if DDR2SPA is used
set_false_path -from [get_clocks eth_clk90] -to [get_clocks clkm]
set_false_path -from [get_clocks clkm] -to [get_clocks eth_clk90]

## if MIG is used
#set_false_path -from [get_clocks eth_clk90] -to [get_clocks clk_pll_i]
#set_false_path -from [get_clocks clk_pll_i] -to [get_clocks eth_clk90]

## for DPRC clock-domain crossing when set in async mode
# if DDR2SPA is used
set_false_path -from [get_clocks sys_clk_pin] -to [get_clocks clkm]
set_false_path -from [get_clocks clkm] -to [get_clocks sys_clk_pin]
# if MIG is used
#set_false_path -from [get_clocks sys_clk_pin] -to [get_clocks clk_pll_i]
#set_false_path -from [get_clocks clk_pll_i] -to [get_clocks sys_clk_pin]

## Switches

set_property PACKAGE_PIN J15 [get_ports {sw[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sw[0]}]
set_property PACKAGE_PIN L16 [get_ports {sw[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sw[1]}]
set_property PACKAGE_PIN M13 [get_ports {sw[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sw[2]}]
set_property PACKAGE_PIN R15 [get_ports {sw[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sw[3]}]
set_property PACKAGE_PIN R17 [get_ports {sw[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sw[4]}]
set_property PACKAGE_PIN T18 [get_ports {sw[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sw[5]}]
set_property PACKAGE_PIN U18 [get_ports {sw[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sw[6]}]
set_property PACKAGE_PIN R13 [get_ports {sw[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sw[7]}]

# SW8 and SW9 are in the same bank of the DDR2 interface, which requires 1.8 V
set_property PACKAGE_PIN T8 [get_ports {sw[8]}]
set_property IOSTANDARD LVCMOS18 [get_ports {sw[8]}]
set_property PACKAGE_PIN U8 [get_ports {sw[9]}]
set_property IOSTANDARD LVCMOS18 [get_ports {sw[9]}]
set_property PACKAGE_PIN R16 [get_ports {sw[10]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sw[10]}]
set_property PACKAGE_PIN T13 [get_ports {sw[11]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sw[11]}]
set_property PACKAGE_PIN H6 [get_ports {sw[12]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sw[12]}]
set_property PACKAGE_PIN U12 [get_ports {sw[13]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sw[13]}]
set_property PACKAGE_PIN U11 [get_ports {sw[14]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sw[14]}]
set_property PACKAGE_PIN V10 [get_ports {sw[15]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sw[15]}]


## LEDs

set_property PACKAGE_PIN H17 [get_ports {Led[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Led[0]}]
set_property PACKAGE_PIN K15 [get_ports {Led[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Led[1]}]
set_property PACKAGE_PIN J13 [get_ports {Led[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Led[2]}]
set_property PACKAGE_PIN N14 [get_ports {Led[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Led[3]}]
set_property PACKAGE_PIN R18 [get_ports {Led[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Led[4]}]
set_property PACKAGE_PIN V17 [get_ports {Led[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Led[5]}]
set_property PACKAGE_PIN U17 [get_ports {Led[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Led[6]}]
set_property PACKAGE_PIN U16 [get_ports {Led[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Led[7]}]
set_property PACKAGE_PIN V16 [get_ports {Led[8]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Led[8]}]
set_property PACKAGE_PIN T15 [get_ports {Led[9]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Led[9]}]
set_property PACKAGE_PIN U14 [get_ports {Led[10]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Led[10]}]
set_property PACKAGE_PIN T16 [get_ports {Led[11]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Led[11]}]
set_property PACKAGE_PIN V15 [get_ports {Led[12]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Led[12]}]
set_property PACKAGE_PIN V14 [get_ports {Led[13]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Led[13]}]
set_property PACKAGE_PIN V12 [get_ports {Led[14]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Led[14]}]
set_property PACKAGE_PIN V11 [get_ports {Led[15]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Led[15]}]

## 7 segment display

#### Anodes
set_property PACKAGE_PIN J17 [get_ports {an[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {an[0]}]
set_property PACKAGE_PIN J18 [get_ports {an[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {an[1]}]
set_property PACKAGE_PIN T9 [get_ports {an[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {an[2]}]
set_property PACKAGE_PIN J14 [get_ports {an[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {an[3]}]
set_property PACKAGE_PIN P14 [get_ports {an[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {an[4]}]
set_property PACKAGE_PIN T14 [get_ports {an[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {an[5]}]
set_property PACKAGE_PIN K2 [get_ports {an[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {an[6]}]
set_property PACKAGE_PIN U13 [get_ports {an[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {an[7]}]

#### Cathodes
set_property PACKAGE_PIN H15 [get_ports {seg[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg[0]}]
set_property PACKAGE_PIN T10 [get_ports {seg[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg[1]}]
set_property PACKAGE_PIN R10 [get_ports {seg[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg[2]}]
set_property PACKAGE_PIN K16 [get_ports {seg[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg[3]}]
set_property PACKAGE_PIN K13 [get_ports {seg[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg[4]}]
set_property PACKAGE_PIN P15 [get_ports {seg[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg[5]}]
set_property PACKAGE_PIN T11 [get_ports {seg[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg[6]}]
set_property PACKAGE_PIN L18 [get_ports {seg[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg[7]}]

#set_property -dict { PACKAGE_PIN R12   IOSTANDARD LVCMOS33 } [get_ports { LED16_B }]; #IO_L5P_T0_D06_14 Sch=led16_b
#set_property -dict { PACKAGE_PIN M16   IOSTANDARD LVCMOS33 } [get_ports { LED16_G }]; #IO_L10P_T1_D14_14 Sch=led16_g
#set_property -dict { PACKAGE_PIN N15   IOSTANDARD LVCMOS33 } [get_ports { LED16_R }]; #IO_L11P_T1_SRCC_14 Sch=led16_r
#set_property -dict { PACKAGE_PIN G14   IOSTANDARD LVCMOS33 } [get_ports { LED17_B }]; #IO_L15N_T2_DQS_ADV_B_15 Sch=led17_b
#set_property -dict { PACKAGE_PIN R11   IOSTANDARD LVCMOS33 } [get_ports { LED17_G }]; #IO_0_14 Sch=led17_g
#set_property -dict { PACKAGE_PIN N16   IOSTANDARD LVCMOS33 } [get_ports { LED17_R }]; #IO_L11N_T1_SRCC_14 Sch=led17_r


##Buttons

set_property PACKAGE_PIN C12 [get_ports btnCpuResetn]
set_property IOSTANDARD LVCMOS33 [get_ports btnCpuResetn]

set_property PACKAGE_PIN N17 [get_ports {btn[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {btn[0]}]
set_property PACKAGE_PIN M18 [get_ports {btn[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {btn[1]}]
set_property PACKAGE_PIN P17 [get_ports {btn[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {btn[2]}]
set_property PACKAGE_PIN M17 [get_ports {btn[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {btn[3]}]
set_property PACKAGE_PIN P18 [get_ports {btn[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {btn[4]}]

##USB-RS232 Interface

set_property PACKAGE_PIN C4 [get_ports uart_txd_in]
set_property IOSTANDARD LVCMOS33 [get_ports uart_txd_in]
set_property PACKAGE_PIN D4 [get_ports uart_rxd_out]
set_property IOSTANDARD LVCMOS33 [get_ports uart_rxd_out]
#set_property -dict { PACKAGE_PIN D3    IOSTANDARD LVCMOS33 } [get_ports { UART_CTS }]; #IO_L12N_T1_MRCC_35 Sch=uart_cts
#set_property -dict { PACKAGE_PIN E5    IOSTANDARD LVCMOS33 } [get_ports { UART_RTS }]; #IO_L5N_T0_AD13N_35 Sch=uart_rts

#DDR2 Memory interface
set_property PACKAGE_PIN R7 [get_ports {ddr2_dq[0]}]
set_property IOSTANDARD SSTL18_II [get_ports {ddr2_dq[0]}]
set_property SLEW FAST [get_ports {ddr2_dq[0]}]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddr2_dq[0]}]
set_property PACKAGE_PIN V6 [get_ports {ddr2_dq[1]}]
set_property IOSTANDARD SSTL18_II [get_ports {ddr2_dq[1]}]
set_property SLEW FAST [get_ports {ddr2_dq[1]}]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddr2_dq[1]}]
set_property PACKAGE_PIN R8 [get_ports {ddr2_dq[2]}]
set_property IOSTANDARD SSTL18_II [get_ports {ddr2_dq[2]}]
set_property SLEW FAST [get_ports {ddr2_dq[2]}]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddr2_dq[2]}]
set_property PACKAGE_PIN U7 [get_ports {ddr2_dq[3]}]
set_property IOSTANDARD SSTL18_II [get_ports {ddr2_dq[3]}]
set_property SLEW FAST [get_ports {ddr2_dq[3]}]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddr2_dq[3]}]
set_property PACKAGE_PIN V7 [get_ports {ddr2_dq[4]}]
set_property IOSTANDARD SSTL18_II [get_ports {ddr2_dq[4]}]
set_property SLEW FAST [get_ports {ddr2_dq[4]}]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddr2_dq[4]}]
set_property PACKAGE_PIN R6 [get_ports {ddr2_dq[5]}]
set_property IOSTANDARD SSTL18_II [get_ports {ddr2_dq[5]}]
set_property SLEW FAST [get_ports {ddr2_dq[5]}]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddr2_dq[5]}]
set_property PACKAGE_PIN U6 [get_ports {ddr2_dq[6]}]
set_property IOSTANDARD SSTL18_II [get_ports {ddr2_dq[6]}]
set_property SLEW FAST [get_ports {ddr2_dq[6]}]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddr2_dq[6]}]
set_property PACKAGE_PIN R5 [get_ports {ddr2_dq[7]}]
set_property IOSTANDARD SSTL18_II [get_ports {ddr2_dq[7]}]
set_property SLEW FAST [get_ports {ddr2_dq[7]}]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddr2_dq[7]}]
set_property PACKAGE_PIN T5 [get_ports {ddr2_dq[8]}]
set_property IOSTANDARD SSTL18_II [get_ports {ddr2_dq[8]}]
set_property SLEW FAST [get_ports {ddr2_dq[8]}]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddr2_dq[8]}]
set_property PACKAGE_PIN U3 [get_ports {ddr2_dq[9]}]
set_property IOSTANDARD SSTL18_II [get_ports {ddr2_dq[9]}]
set_property SLEW FAST [get_ports {ddr2_dq[9]}]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddr2_dq[9]}]
set_property PACKAGE_PIN V5 [get_ports {ddr2_dq[10]}]
set_property IOSTANDARD SSTL18_II [get_ports {ddr2_dq[10]}]
set_property SLEW FAST [get_ports {ddr2_dq[10]}]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddr2_dq[10]}]
set_property PACKAGE_PIN U4 [get_ports {ddr2_dq[11]}]
set_property IOSTANDARD SSTL18_II [get_ports {ddr2_dq[11]}]
set_property SLEW FAST [get_ports {ddr2_dq[11]}]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddr2_dq[11]}]
set_property PACKAGE_PIN V4 [get_ports {ddr2_dq[12]}]
set_property IOSTANDARD SSTL18_II [get_ports {ddr2_dq[12]}]
set_property SLEW FAST [get_ports {ddr2_dq[12]}]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddr2_dq[12]}]
set_property PACKAGE_PIN T4 [get_ports {ddr2_dq[13]}]
set_property IOSTANDARD SSTL18_II [get_ports {ddr2_dq[13]}]
set_property SLEW FAST [get_ports {ddr2_dq[13]}]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddr2_dq[13]}]
set_property PACKAGE_PIN V1 [get_ports {ddr2_dq[14]}]
set_property IOSTANDARD SSTL18_II [get_ports {ddr2_dq[14]}]
set_property SLEW FAST [get_ports {ddr2_dq[14]}]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddr2_dq[14]}]
set_property PACKAGE_PIN T3 [get_ports {ddr2_dq[15]}]
set_property IOSTANDARD SSTL18_II [get_ports {ddr2_dq[15]}]
set_property SLEW FAST [get_ports {ddr2_dq[15]}]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddr2_dq[15]}]

set_property PACKAGE_PIN N6 [get_ports {ddr2_addr[12]}]
set_property IOSTANDARD SSTL18_II [get_ports {ddr2_addr[12]}]
set_property SLEW FAST [get_ports {ddr2_addr[12]}]
set_property PACKAGE_PIN K5 [get_ports {ddr2_addr[11]}]
set_property IOSTANDARD SSTL18_II [get_ports {ddr2_addr[11]}]
set_property SLEW FAST [get_ports {ddr2_addr[11]}]
set_property PACKAGE_PIN R2 [get_ports {ddr2_addr[10]}]
set_property IOSTANDARD SSTL18_II [get_ports {ddr2_addr[10]}]
set_property SLEW FAST [get_ports {ddr2_addr[10]}]
set_property PACKAGE_PIN N5 [get_ports {ddr2_addr[9]}]
set_property IOSTANDARD SSTL18_II [get_ports {ddr2_addr[9]}]
set_property SLEW FAST [get_ports {ddr2_addr[9]}]
set_property PACKAGE_PIN L4 [get_ports {ddr2_addr[8]}]
set_property IOSTANDARD SSTL18_II [get_ports {ddr2_addr[8]}]
set_property SLEW FAST [get_ports {ddr2_addr[8]}]
set_property PACKAGE_PIN N1 [get_ports {ddr2_addr[7]}]
set_property IOSTANDARD SSTL18_II [get_ports {ddr2_addr[7]}]
set_property SLEW FAST [get_ports {ddr2_addr[7]}]
set_property PACKAGE_PIN M2 [get_ports {ddr2_addr[6]}]
set_property IOSTANDARD SSTL18_II [get_ports {ddr2_addr[6]}]
set_property SLEW FAST [get_ports {ddr2_addr[6]}]
set_property PACKAGE_PIN P5 [get_ports {ddr2_addr[5]}]
set_property IOSTANDARD SSTL18_II [get_ports {ddr2_addr[5]}]
set_property SLEW FAST [get_ports {ddr2_addr[5]}]
set_property PACKAGE_PIN L3 [get_ports {ddr2_addr[4]}]
set_property IOSTANDARD SSTL18_II [get_ports {ddr2_addr[4]}]
set_property SLEW FAST [get_ports {ddr2_addr[4]}]
set_property PACKAGE_PIN T1 [get_ports {ddr2_addr[3]}]
set_property IOSTANDARD SSTL18_II [get_ports {ddr2_addr[3]}]
set_property SLEW FAST [get_ports {ddr2_addr[3]}]
set_property PACKAGE_PIN M6 [get_ports {ddr2_addr[2]}]
set_property IOSTANDARD SSTL18_II [get_ports {ddr2_addr[2]}]
set_property SLEW FAST [get_ports {ddr2_addr[2]}]
set_property PACKAGE_PIN P4 [get_ports {ddr2_addr[1]}]
set_property IOSTANDARD SSTL18_II [get_ports {ddr2_addr[1]}]
set_property SLEW FAST [get_ports {ddr2_addr[1]}]
set_property PACKAGE_PIN M4 [get_ports {ddr2_addr[0]}]
set_property IOSTANDARD SSTL18_II [get_ports {ddr2_addr[0]}]
set_property SLEW FAST [get_ports {ddr2_addr[0]}]
set_property PACKAGE_PIN R1 [get_ports {ddr2_ba[2]}]
set_property IOSTANDARD SSTL18_II [get_ports {ddr2_ba[2]}]
set_property SLEW FAST [get_ports {ddr2_ba[2]}]
set_property PACKAGE_PIN P3 [get_ports {ddr2_ba[1]}]
set_property IOSTANDARD SSTL18_II [get_ports {ddr2_ba[1]}]
set_property SLEW FAST [get_ports {ddr2_ba[1]}]
set_property PACKAGE_PIN P2 [get_ports {ddr2_ba[0]}]
set_property IOSTANDARD SSTL18_II [get_ports {ddr2_ba[0]}]
set_property SLEW FAST [get_ports {ddr2_ba[0]}]

set_property PACKAGE_PIN N4 [get_ports ddr2_ras_n]
set_property IOSTANDARD SSTL18_II [get_ports ddr2_ras_n]
set_property SLEW FAST [get_ports ddr2_ras_n]
set_property PACKAGE_PIN L1 [get_ports ddr2_cas_n]
set_property IOSTANDARD SSTL18_II [get_ports ddr2_cas_n]
set_property SLEW FAST [get_ports ddr2_cas_n]
set_property PACKAGE_PIN N2 [get_ports ddr2_we_n]
set_property IOSTANDARD SSTL18_II [get_ports ddr2_we_n]
set_property SLEW FAST [get_ports ddr2_we_n]
set_property PACKAGE_PIN M1 [get_ports {ddr2_cke[0]}]
set_property IOSTANDARD SSTL18_II [get_ports {ddr2_cke[0]}]
set_property SLEW FAST [get_ports {ddr2_cke[0]}]
set_property PACKAGE_PIN M3 [get_ports {ddr2_odt[0]}]
set_property IOSTANDARD SSTL18_II [get_ports {ddr2_odt[0]}]
set_property SLEW FAST [get_ports {ddr2_odt[0]}]
set_property PACKAGE_PIN K6 [get_ports {ddr2_cs_n[0]}]
set_property IOSTANDARD SSTL18_II [get_ports {ddr2_cs_n[0]}]
set_property SLEW FAST [get_ports {ddr2_cs_n[0]}]
set_property PACKAGE_PIN T6 [get_ports {ddr2_dm[0]}]
set_property IOSTANDARD SSTL18_II [get_ports {ddr2_dm[0]}]
set_property SLEW FAST [get_ports {ddr2_dm[0]}]
set_property PACKAGE_PIN U1 [get_ports {ddr2_dm[1]}]
set_property IOSTANDARD SSTL18_II [get_ports {ddr2_dm[1]}]
set_property SLEW FAST [get_ports {ddr2_dm[1]}]

set_property IOSTANDARD DIFF_SSTL18_II [get_ports {ddr2_dqs_p[0]}]
set_property SLEW FAST [get_ports {ddr2_dqs_p[0]}]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddr2_dqs_p[0]}]

set_property PACKAGE_PIN V9 [get_ports {ddr2_dqs_n[0]}]
set_property IOSTANDARD DIFF_SSTL18_II [get_ports {ddr2_dqs_n[0]}]
set_property SLEW FAST [get_ports {ddr2_dqs_n[0]}]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddr2_dqs_n[0]}]

set_property IOSTANDARD DIFF_SSTL18_II [get_ports {ddr2_dqs_p[1]}]
set_property SLEW FAST [get_ports {ddr2_dqs_p[1]}]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddr2_dqs_p[1]}]

set_property PACKAGE_PIN V2 [get_ports {ddr2_dqs_n[1]}]
set_property IOSTANDARD DIFF_SSTL18_II [get_ports {ddr2_dqs_n[1]}]
set_property SLEW FAST [get_ports {ddr2_dqs_n[1]}]
set_property IN_TERM UNTUNED_SPLIT_50 [get_ports {ddr2_dqs_n[1]}]

set_property IOSTANDARD DIFF_SSTL18_II [get_ports {ddr2_ck_p[0]}]
set_property SLEW FAST [get_ports {ddr2_ck_p[0]}]

set_property PACKAGE_PIN L5 [get_ports {ddr2_ck_n[0]}]
set_property IOSTANDARD DIFF_SSTL18_II [get_ports {ddr2_ck_n[0]}]
set_property SLEW FAST [get_ports {ddr2_ck_n[0]}]

set_property INTERNAL_VREF 0.9 [get_iobanks 34]
#set_max_delay -from [get_clocks mclkfx] -to [get_clocks CLKOUT2_1] 3.5

#SPI interface
set_property PACKAGE_PIN K17 [get_ports {QspiDB[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {QspiDB[0]}]
set_property PACKAGE_PIN K18 [get_ports {QspiDB[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {QspiDB[1]}]
set_property PACKAGE_PIN L14 [get_ports {QspiDB[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {QspiDB[2]}]
set_property PACKAGE_PIN M14 [get_ports {QspiDB[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {QspiDB[3]}]
set_property PACKAGE_PIN L13 [get_ports QspiCSn]
set_property IOSTANDARD LVCMOS33 [get_ports QspiCSn]


##SMSC Ethernet PHY
set_property PACKAGE_PIN C9 [get_ports eth_mdc]
set_property IOSTANDARD LVCMOS33 [get_ports eth_mdc]
set_property PACKAGE_PIN A9 [get_ports eth_mdio]
set_property IOSTANDARD LVCMOS33 [get_ports eth_mdio]
set_property PACKAGE_PIN B3 [get_ports eth_rstn]
set_property IOSTANDARD LVCMOS33 [get_ports eth_rstn]
set_property PACKAGE_PIN D9 [get_ports eth_crsdv]
set_property IOSTANDARD LVCMOS33 [get_ports eth_crsdv]
set_property PACKAGE_PIN C10 [get_ports eth_rxerr]
set_property IOSTANDARD LVCMOS33 [get_ports eth_rxerr]
set_property PACKAGE_PIN C11 [get_ports {eth_rxd[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {eth_rxd[0]}]
set_property PACKAGE_PIN D10 [get_ports {eth_rxd[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {eth_rxd[1]}]
set_property PACKAGE_PIN B9 [get_ports eth_txen]
set_property IOSTANDARD LVCMOS33 [get_ports eth_txen]
set_property PACKAGE_PIN A10 [get_ports {eth_txd[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {eth_txd[0]}]
set_property PACKAGE_PIN A8 [get_ports {eth_txd[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {eth_txd[1]}]
set_property PACKAGE_PIN D5 [get_ports eth_refclk]
set_property IOSTANDARD LVCMOS33 [get_ports eth_refclk]
#set_property -dict { PACKAGE_PIN B8    IOSTANDARD LVCMOS33 } [get_ports { eth_intn }]; #IO_L12P_T1_MRCC_16 Sch=eth_intn

