onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix hexadecimal /microprocessadortb/clock_tb
add wave -noupdate -radix hexadecimal /microprocessadortb/reset_tb
add wave -noupdate -radix hexadecimal /microprocessadortb/data_tb
add wave -noupdate -radix hexadecimal /microprocessadortb/addr_tb
add wave -noupdate -radix hexadecimal /microprocessadortb/Micro/RegistroDados/habilita
add wave -noupdate -radix hexadecimal /microprocessadortb/Micro/RegistroDados/leitura_Escrita
add wave -noupdate -radix hexadecimal /microprocessadortb/Micro/RegistroDados/seletor
add wave -noupdate -radix hexadecimal /microprocessadortb/Micro/RegistroDados/entradaDados
add wave -noupdate -radix hexadecimal /microprocessadortb/Micro/RegistroDados/saidaDados
add wave -noupdate -radix hexadecimal /microprocessadortb/Micro/RegistroDados/AX
add wave -noupdate -radix hexadecimal /microprocessadortb/Micro/RegistroDados/BX
add wave -noupdate -radix hexadecimal /microprocessadortb/Micro/RegistroDados/CX
add wave -noupdate -radix hexadecimal /microprocessadortb/Micro/RegistroDados/DX
add wave -noupdate -radix hexadecimal /microprocessadortb/Micro/RegistroDados/SP
add wave -noupdate -radix hexadecimal /microprocessadortb/Micro/RegistroDados/BP
add wave -noupdate -radix hexadecimal /microprocessadortb/Micro/RegistroDados/SI
add wave -noupdate -radix hexadecimal /microprocessadortb/Micro/RegistroDados/DI
add wave -noupdate -radix hexadecimal /microprocessadortb/Micro/UnidadeLogicaArit/seletor
add wave -noupdate -radix hexadecimal /microprocessadortb/Micro/UnidadeLogicaArit/vemUm
add wave -noupdate -radix hexadecimal /microprocessadortb/Micro/UnidadeLogicaArit/entradaA
add wave -noupdate -radix hexadecimal /microprocessadortb/Micro/UnidadeLogicaArit/entradaB
add wave -noupdate -radix hexadecimal /microprocessadortb/Micro/UnidadeLogicaArit/habilitaULA
add wave -noupdate -radix hexadecimal /microprocessadortb/Micro/UnidadeLogicaArit/vaiUm
add wave -noupdate -radix hexadecimal /microprocessadortb/Micro/UnidadeLogicaArit/zero
add wave -noupdate -radix hexadecimal /microprocessadortb/Micro/UnidadeLogicaArit/resultado
add wave -noupdate -radix hexadecimal /microprocessadortb/Micro/UnidadeLogicaArit/enum_op
add wave -noupdate -radix hexadecimal /microprocessadortb/Micro/UnidadeLogicaArit/reg
add wave -noupdate -radix hexadecimal /microprocessadortb/Micro/UnidadeLogicaArit/regZero
add wave -noupdate -radix hexadecimal /microprocessadortb/Micro/UnidadeLogicaArit/regA
add wave -noupdate -radix hexadecimal /microprocessadortb/Micro/UnidadeLogicaArit/regB
add wave -noupdate -radix hexadecimal /microprocessadortb/Micro/D1/entrada
add wave -noupdate -radix hexadecimal /microprocessadortb/Micro/D1/saida_01
add wave -noupdate -radix hexadecimal /microprocessadortb/Micro/D1/saida_02
add wave -noupdate -radix hexadecimal /microprocessadortb/Micro/D1/seletor
add wave -noupdate -radix hexadecimal /microprocessadortb/Micro/UC/opcode
add wave -noupdate -radix hexadecimal /microprocessadortb/Micro/UC/sitFila
add wave -noupdate -radix hexadecimal /microprocessadortb/Micro/UC/leFila
add wave -noupdate -radix hexadecimal /microprocessadortb/Micro/UC/habULA
add wave -noupdate -radix hexadecimal /microprocessadortb/Micro/UC/ctrlULA
add wave -noupdate -radix hexadecimal /microprocessadortb/Micro/UC/regDataLe
add wave -noupdate -radix hexadecimal /microprocessadortb/Micro/UC/habRegData
add wave -noupdate -radix hexadecimal /microprocessadortb/Micro/UC/ctrlRegData
add wave -noupdate -radix hexadecimal /microprocessadortb/Micro/UC/ctrlDemuxData
add wave -noupdate -radix hexadecimal /microprocessadortb/Micro/UC/Estado
add wave -noupdate -radix hexadecimal /microprocessadortb/Micro/UC/opcodeFetch
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1688596 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 353
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {2895175 ps}
