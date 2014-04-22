# Codigo para analisar instrucoes do codigo do DOS

# Arquivos a serem abertos
asm_modulo = 'ASM.ASM'
command_modulo = 'COMMAND.ASM'
hex2bin_modulo = 'HEX2BIN.ASM'
io_modulo = 'IO.ASM'
msdos_modulo = 'MSDOS.ASM'
stddos_modulo = 'STDDOS.ASM'
trans_modulo = 'TRANS.ASM'

# Instrucoes a serem procuradas
mov_instrucao = 'MOV'
add_instrucao = 'ADD'
adc_instrucao = 'ADC'
sub_instrucao = 'SUB'
sbb_instrucao = 'SBB'
or_instrucao = 'OR'
and_instrucao = 'AND'
xor_instrucao = 'XOR'
cmp_instrucao = 'CMP'

# Contadores para as instrucoes buscadas
mov_contador = 0
add_contador = 0
adc_contador = 0
sub_contador = 0
sbb_contador = 0
or_contador = 0
and_contador = 0
xor_contador = 0
cmp_contador = 0

# Metodo para abrir os arquivos
def abrirArquivos(arquivo_param, instrucao):
    cont = 0
    arquivo = open(arquivo_param)
    linha = arquivo.readline()
    while (linha != ''):
        if (instrucao in linha):
            cont += 1
        linha = arquivo.readline()
    return cont

# Metodo principal
def main():
    mov_contador = abrirArquivos(asm_modulo, mov_instrucao)
    add_contador = abrirArquivos(asm_modulo, add_instrucao)
    adc_contador = abrirArquivos(asm_modulo, adc_instrucao)
    sub_contador = abrirArquivos(asm_modulo, sub_instrucao)
    sbb_contador = abrirArquivos(asm_modulo, sbb_instrucao)
    or_contador = abrirArquivos(asm_modulo, or_instrucao)
    and_contador = abrirArquivos(asm_modulo, and_instrucao)
    xor_contador = abrirArquivos(asm_modulo, xor_instrucao)
    cmp_contador = abrirArquivos(asm_modulo, cmp_instrucao)

    print ('MOV: ' + str(mov_contador))
    print ('ADD: ' + str(add_contador))
    print ('ADC: ' + str(adc_contador))
    print ('SUB: ' + str(sub_contador))
    print ('SBB: ' + str(sbb_contador))
    print ('OR: ' + str(or_contador))
    print ('AND: ' + str(and_contador))
    print ('XOR: ' + str(xor_contador))
    print ('CMP: ' + str(cmp_contador))
main();
        
