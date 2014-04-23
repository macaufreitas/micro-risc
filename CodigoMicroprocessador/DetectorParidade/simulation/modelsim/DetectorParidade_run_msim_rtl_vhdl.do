transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Marcos Aurelio/Desktop/RepositorioLocal/CodigoMicroprocessador/DetectorParidade/DetectorParidade.vhd}

vcom -93 -work work {C:/Users/Marcos Aurelio/Desktop/RepositorioLocal/CodigoMicroprocessador/DetectorParidade/DetectorParidadeTB.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiv_hssi -L cycloneiv_pcie_hip -L cycloneiv -L rtl_work -L work -voptargs="+acc"  DetectorParidadeTB

add wave *
view structure
view signals
run -all
