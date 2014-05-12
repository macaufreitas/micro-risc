transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/silvadenisaraujo/Desktop/TFG8086/micro-risc/CodigoMicroprocessador/Multiplexador/Multiplexador.vhd}
vcom -93 -work work {C:/Users/silvadenisaraujo/Desktop/TFG8086/micro-risc/CodigoMicroprocessador/DetectorAuxiliarFlag/Subtrator.vhd}
vcom -93 -work work {C:/Users/silvadenisaraujo/Desktop/TFG8086/micro-risc/CodigoMicroprocessador/DetectorAuxiliarFlag/Somador.vhd}
vcom -93 -work work {C:/Users/silvadenisaraujo/Desktop/TFG8086/micro-risc/CodigoMicroprocessador/UnidadeDeControleDeEnderecos/uce_aux.vhd}
vcom -93 -work work {C:/Users/silvadenisaraujo/Desktop/TFG8086/micro-risc/CodigoMicroprocessador/UnidadeDeControle/uc_aux.vhd}
vcom -93 -work work {C:/Users/silvadenisaraujo/Desktop/TFG8086/micro-risc/CodigoMicroprocessador/ULA/ULA.vhd}
vcom -93 -work work {C:/Users/silvadenisaraujo/Desktop/TFG8086/micro-risc/CodigoMicroprocessador/RegistroSegmento/RegistroSegmento.vhd}
vcom -93 -work work {C:/Users/silvadenisaraujo/Desktop/TFG8086/micro-risc/CodigoMicroprocessador/RegistroPropositoGeral/RegistroPropositoGeral.vhd}
vcom -93 -work work {C:/Users/silvadenisaraujo/Desktop/TFG8086/micro-risc/CodigoMicroprocessador/RegistroFlags/RegistroFlags.vhd}
vcom -93 -work work {C:/Users/silvadenisaraujo/Desktop/TFG8086/micro-risc/CodigoMicroprocessador/DetectorZeroFlag/DetectorZeroFlag.vhd}
vcom -93 -work work {C:/Users/silvadenisaraujo/Desktop/TFG8086/micro-risc/CodigoMicroprocessador/DetectorParidade/DetectorParidade.vhd}
vcom -93 -work work {C:/Users/silvadenisaraujo/Desktop/TFG8086/micro-risc/CodigoMicroprocessador/DetectorAuxiliarFlag/DetectorAuxiliarFlag.vhd}
vcom -93 -work work {C:/Users/silvadenisaraujo/Desktop/TFG8086/micro-risc/CodigoMicroprocessador/Demultiplexador/Demultiplexador.vhd}
vcom -93 -work work {C:/Users/silvadenisaraujo/Desktop/TFG8086/micro-risc/CodigoMicroprocessador/CalculadoraEndereco/CalculadoraEndereco.vhd}
vcom -93 -work work {C:/Users/silvadenisaraujo/Desktop/TFG8086/micro-risc/CodigoMicroprocessador/MicroprocessadorCompleto/MicroprocessadorCompleto.vhd}
vcom -93 -work work {C:/Users/silvadenisaraujo/Desktop/TFG8086/micro-risc/CodigoMicroprocessador/ROM/memoriaROM.vhd}
vcom -93 -work work {C:/Users/silvadenisaraujo/Desktop/TFG8086/micro-risc/CodigoMicroprocessador/MicroprocessadorCompletoROMFinal/MicroprocessadorCompletoROMFinal.vhd}
vcom -93 -work work {C:/Users/silvadenisaraujo/Desktop/TFG8086/micro-risc/CodigoMicroprocessador/UnidadeDeControleDeEnderecos/UnidadeDeControleDeEnderecos.vhd}
vcom -93 -work work {C:/Users/silvadenisaraujo/Desktop/TFG8086/micro-risc/CodigoMicroprocessador/UnidadeDeControle/UnidadeDeControle.vhd}

vcom -93 -work work {C:/Users/silvadenisaraujo/Desktop/TFG8086/micro-risc/CodigoMicroprocessador/MicroprocessadorCompletoROMFinal/MicroprocessadorCompletoROMFinalTB.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiii -L rtl_work -L work -voptargs="+acc"  MicroprocessadorCompletoROMFinalTB

add wave *
view structure
view signals
run -all
