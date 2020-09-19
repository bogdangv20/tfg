# 
# Synthesis run script generated by Vivado
# 

namespace eval rt {
    variable rc
}
set rt::rc [catch {
  uplevel #0 {
    set ::env(BUILTIN_SYNTH) true
    source $::env(HRT_TCL_PATH)/rtSynthPrep.tcl
    rt::HARTNDb_resetJobStats
    rt::HARTNDb_resetSystemStats
    rt::HARTNDb_startSystemStats
    rt::HARTNDb_startJobStats
    set rt::cmdEcho 0
    rt::set_parameter writeXmsg true
    rt::set_parameter enableParallelHelperSpawn true
    set ::env(RT_TMP) "./.Xil/Vivado-14901-UBUNTU/realtime/tmp"
    if { [ info exists ::env(RT_TMP) ] } {
      file delete -force $::env(RT_TMP)
      file mkdir $::env(RT_TMP)
    }

    rt::delete_design

    set rt::partid xc7a100tcsg324-1

    set rt::multiChipSynthesisFlow false
    source $::env(SYNTH_COMMON)/common_vhdl.tcl
    set rt::defaultWorkLibName xil_defaultlib

    set rt::useElabCache false
    if {$rt::useElabCache == false} {
      rt::read_vhdl -lib grlib {
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/grlib/stdlib/config_types.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/grlib/stdlib/config.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/grlib/stdlib/version.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/grlib/stdlib/stdlib.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/grlib/amba/amba.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/grlib/amba/devices.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/grlib/amba/ahbctrl.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/grlib/amba/ahbmst.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/grlib/amba/apbctrl.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/grlib/amba/apbctrlx.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/grlib/amba/dma2ahb_pkg.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/grlib/sparc/sparc.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/grlib/modgen/leaves.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/grlib/modgen/multlib.vhd
    }
      rt::read_vhdl -lib techmap {
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/techmap/gencomp/gencomp.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/techmap/maps/allclkgen.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/techmap/maps/allddr.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/techmap/maps/allmem.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/techmap/maps/allmul.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/techmap/maps/allpads.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/techmap/maps/alltap.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/techmap/unisim/buffer_unisim.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/techmap/maps/clkand.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/techmap/maps/clkgen.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/techmap/unisim/clkgen_unisim.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/techmap/maps/clkmux.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/techmap/inferred/ddr_phy_inferred.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/techmap/unisim/ddr_unisim.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/techmap/unisim/ddr_phy_unisim.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/techmap/maps/ddrphy.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/techmap/maps/grfpw_net.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/techmap/gencomp/netcomp.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/techmap/maps/grgates.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/techmap/maps/grlfpw_net.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/techmap/maps/inpad.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/techmap/maps/iopad.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/techmap/maps/iopad_ds.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/techmap/maps/leon3_net.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/techmap/inferred/memory_inferred.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/techmap/unisim/memory_unisim.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/techmap/maps/memrwcol.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/techmap/inferred/mul_inferred.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/techmap/maps/outpad.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/techmap/maps/outpad_ds.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/techmap/unisim/pads_unisim.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/techmap/maps/regfile_3p.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/techmap/maps/syncram.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/techmap/maps/syncram64.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/techmap/maps/syncram_2p.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/techmap/maps/syncram_dp.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/techmap/maps/syncreg.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/techmap/maps/tap.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/techmap/unisim/tap_unisim.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/techmap/maps/techbuf.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/techmap/maps/techmult.vhd
    }
      rt::read_vhdl -lib gaisler {
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/gaisler/ddr/ddrpkg.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/gaisler/ddr/ddrintpkg.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/gaisler/misc/misc.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/gaisler/ddr/ahb2mig_7series_pkg.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/gaisler/ddr/ahb2mig_7series_ddr2_dq16_ad13_ba3.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/gaisler/jtag/libjtagcom.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/gaisler/jtag/jtag.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/gaisler/jtag/ahbjtag.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/gaisler/misc/ahbram.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/gaisler/uart/uart.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/gaisler/uart/libdcom.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/gaisler/uart/ahbuart.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/gaisler/uart/apbuart.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/gaisler/arith/arith.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/gaisler/leon3/leon3.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/gaisler/leon3v3/libfpu.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/gaisler/srmmu/mmuconfig.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/gaisler/leon3v3/libiu.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/gaisler/srmmu/mmuiface.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/gaisler/leon3v3/libcache.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/gaisler/leon3v3/cachemem.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/gaisler/leon3v3/cmvalidbits.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/gaisler/uart/dcom.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/gaisler/uart/dcom_uart.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/gaisler/ddr/ddr2buf.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/gaisler/ddr/ddr2spa.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/gaisler/ddr/ddr2spax.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/gaisler/ddr/ddr2spax_ahb.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/gaisler/ddr/ddr2spax_ddr.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/gaisler/ddr/ddrphy_wrap.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/gaisler/arith/div32.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/gaisler/leon3v3/dsu3.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/gaisler/leon3v3/dsu3x.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/gaisler/net/net.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/gaisler/greth/ethernet_mac.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/gaisler/misc/gptimer.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/gaisler/greth/greth.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/gaisler/greth/greth_gbit.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/gaisler/greth/grethm.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/gaisler/leon3v3/libleon3.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/gaisler/leon3v3/grfpwx.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/gaisler/leon3v3/grfpwxsh.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/gaisler/leon3v3/grlfpwx.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/gaisler/irqmp/irqmp.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/gaisler/leon3v3/iu3.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/gaisler/jtag/jtagcom.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/gaisler/jtag/jtagcom2.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/gaisler/memctrl/memctrl.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/gaisler/spi/spi.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/gaisler/leon3v3/leon3s.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/gaisler/leon3v3/leon3x.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/gaisler/srmmu/libmmu.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/gaisler/srmmu/mmu.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/gaisler/leon3v3/mmu_acache.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/gaisler/leon3v3/mmu_cache.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/gaisler/leon3v3/mmu_dcache.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/gaisler/leon3v3/mmu_icache.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/gaisler/srmmu/mmulru.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/gaisler/srmmu/mmulrue.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/gaisler/srmmu/mmutlb.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/gaisler/srmmu/mmutlbcam.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/gaisler/srmmu/mmutw.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/gaisler/arith/mul32.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/gaisler/leon3v3/proc3.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/gaisler/leon3v3/regfile_3p_l3.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/gaisler/misc/rstgen.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/gaisler/spi/spimctrl.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/gaisler/leon3v3/tbufmem.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/gaisler/leon3v3/tbufmem_2p.vhd
    }
      rt::read_vhdl -lib work {
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/designs/leon3-digilent-nexys4ddr/ahbrom.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/designs/leon3-digilent-nexys4ddr/config.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/designs/leon3-digilent-nexys4ddr/leon3mp.vhd
    }
      rt::read_vhdl -lib testgrouppolito {
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/testgrouppolito/pr/dprc_pkg.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/testgrouppolito/pr/async_dprc.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/testgrouppolito/pr/d2prc.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/testgrouppolito/pr/d2prc_edac.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/testgrouppolito/pr/dprc.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/testgrouppolito/pr/sync_dprc.vhd
    }
      rt::read_vhdl -lib eth {
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/eth/core/greth_pkg.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/eth/core/eth_ahb_mst.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/eth/core/eth_edcl_ahb_mst.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/eth/core/eth_rstgen.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/eth/comp/ethcomp.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/eth/core/greth_rx.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/eth/core/greth_tx.vhd
      /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/eth/core/grethc.vhd
    }
      rt::read_vhdl -lib esa /home/bogdan/Escritorio/tfg/3.Work/grlib-gpl-2018.1-b4217/lib/esa/memoryctrl/memoryctrl.vhd
      rt::filesetChecksum
    }
    rt::set_parameter usePostFindUniquification false
    set rt::top leon3mp
    set rt::reportTiming false
    rt::set_parameter elaborateOnly true
    rt::set_parameter elaborateRtl true
    rt::set_parameter eliminateRedundantBitOperator false
    rt::set_parameter writeBlackboxInterface true
    rt::set_parameter merge_flipflops true
    rt::set_parameter srlDepthThreshold 3
    rt::set_parameter rstSrlDepthThreshold 4
# MODE: 
    rt::set_parameter webTalkPath {}
    rt::set_parameter enableSplitFlowPath "./.Xil/Vivado-14901-UBUNTU/"
    set ok_to_delete_rt_tmp true 
    if { [rt::get_parameter parallelDebug] } { 
       set ok_to_delete_rt_tmp false 
    } 
    if {$rt::useElabCache == false} {
        set oldMIITMVal [rt::get_parameter maxInputIncreaseToMerge]; rt::set_parameter maxInputIncreaseToMerge 1000
        set oldCDPCRL [rt::get_parameter createDfgPartConstrRecurLimit]; rt::set_parameter createDfgPartConstrRecurLimit 1
      rt::run_rtlelab -module $rt::top
        rt::set_parameter maxInputIncreaseToMerge $oldMIITMVal
        rt::set_parameter createDfgPartConstrRecurLimit $oldCDPCRL
    }

    set rt::flowresult [ source $::env(SYNTH_COMMON)/flow.tcl ]
    rt::HARTNDb_stopJobStats
    if { $rt::flowresult == 1 } { return -code error }


  set hsKey [rt::get_parameter helper_shm_key] 
  if { $hsKey != "" && [info exists ::env(BUILTIN_SYNTH)] && [rt::get_parameter enableParallelHelperSpawn] && [info exists rt::doParallel] && $rt::doParallel} { 
     $rt::db killSynthHelper $hsKey
  } 
  rt::set_parameter helper_shm_key "" 
    if { [ info exists ::env(RT_TMP) ] } {
      if { [info exists ok_to_delete_rt_tmp] && $ok_to_delete_rt_tmp } { 
        file delete -force $::env(RT_TMP)
      }
    }

    source $::env(HRT_TCL_PATH)/rtSynthCleanup.tcl
  } ; #end uplevel
} rt::result]

if { $rt::rc } {
  $rt::db resetHdlParse
  set hsKey [rt::get_parameter helper_shm_key] 
  if { $hsKey != "" && [info exists ::env(BUILTIN_SYNTH)] && [rt::get_parameter enableParallelHelperSpawn] && [info exists rt::doParallel] && $rt::doParallel} { 
     $rt::db killSynthHelper $hsKey
  } 
  source $::env(HRT_TCL_PATH)/rtSynthCleanup.tcl
  return -code "error" $rt::result
}
