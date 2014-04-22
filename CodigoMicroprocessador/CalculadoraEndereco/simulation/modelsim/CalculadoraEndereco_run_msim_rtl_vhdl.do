transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/silvadenisaraujo/Dropbox/TFG/CodigoMicroprocessador/CalculadoraEndereco/CalculadoraEndereco.vhd}

vcom -93 -work work {C:/Users/silvadenisaraujo/Dropbox/TFG/CodigoMicroprocessador/CalculadoraEndereco/CalculadoraEnderecoTB.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiii -L rtl_work -L work -voptargs="+acc"  CalculadoraEnderecoTB

add wave *
view structure
view signals
run -all
