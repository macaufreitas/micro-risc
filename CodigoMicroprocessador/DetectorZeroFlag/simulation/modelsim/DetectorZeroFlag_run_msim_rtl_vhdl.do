transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Marcos Aurelio/Desktop/micro-8086-risc/CodigoMicroprocessador/DetectorZeroFlag/DetectorZeroFlag.vhd}

vcom -93 -work work {C:/Users/Marcos Aurelio/Desktop/micro-8086-risc/CodigoMicroprocessador/DetectorZeroFlag/DetectorZeroFlagTB.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiv_hssi -L cycloneiv_pcie_hip -L cycloneiv -L rtl_work -L work -voptargs="+acc"  DetectorZeroFlagTB

add wave *
view structure
view signals
run -all
