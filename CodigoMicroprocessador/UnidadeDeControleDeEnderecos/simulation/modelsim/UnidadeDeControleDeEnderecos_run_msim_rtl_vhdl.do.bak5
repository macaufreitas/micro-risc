transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/silvadenisaraujo/Desktop/TFG8086/micro-8086-risc/CodigoMicroprocessador/UnidadeDeControleDeEnderecos/uce_aux.vhd}
vcom -93 -work work {C:/Users/silvadenisaraujo/Desktop/TFG8086/micro-8086-risc/CodigoMicroprocessador/UnidadeDeControleDeEnderecos/UnidadeDeControleDeEnderecos.vhd}

vcom -93 -work work {C:/Users/silvadenisaraujo/Desktop/TFG8086/micro-8086-risc/CodigoMicroprocessador/UnidadeDeControleDeEnderecos/UnidadeDeControleDeEnderecosTB.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiii -L rtl_work -L work -voptargs="+acc"  UnidadeDeControleDeEnderecosTB

add wave *
view structure
view signals
run -all
