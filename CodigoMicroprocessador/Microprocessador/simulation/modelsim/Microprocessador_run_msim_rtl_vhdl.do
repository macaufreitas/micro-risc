transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/silvadenisaraujo/Dropbox/TFG/CodigoMicroprocessador/RegistroFlags/RegistroFlags.vhd}
vcom -93 -work work {C:/Users/silvadenisaraujo/Dropbox/TFG/CodigoMicroprocessador/UnidadeDeControle/uc_aux.vhd}
vcom -93 -work work {C:/Users/silvadenisaraujo/Dropbox/TFG/CodigoMicroprocessador/Microprocessador/Microprocessador.vhd}
vcom -93 -work work {C:/Users/silvadenisaraujo/Dropbox/TFG/CodigoMicroprocessador/ULA/ULA.vhd}
vcom -93 -work work {C:/Users/silvadenisaraujo/Dropbox/TFG/CodigoMicroprocessador/RegistroPropositoGeral/RegistroPropositoGeral.vhd}
vcom -93 -work work {C:/Users/silvadenisaraujo/Dropbox/TFG/CodigoMicroprocessador/Demultiplexador/Demultiplexador.vhd}
vcom -93 -work work {C:/Users/silvadenisaraujo/Dropbox/TFG/CodigoMicroprocessador/UnidadeDeControle/UnidadeDeControle.vhd}

vcom -93 -work work {C:/Users/silvadenisaraujo/Dropbox/TFG/CodigoMicroprocessador/Microprocessador/MicroprocessadorTB.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiv_hssi -L cycloneiv_pcie_hip -L cycloneiv -L rtl_work -L work -voptargs="+acc"  MicroprocessadorTB

add wave *
view structure
view signals
run -all
