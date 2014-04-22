#-----------------------------------------------------------------------#
#Objetivo: Codigo para analisar instrucoes do codigo do DOS
#Desenvolvedor(es):
#   Marcos Aurelio Freitas de Almeida Costa
#   Denis Araujo da Silva
#Data: 03/04/2014
#-----------------------------------------------------------------------#

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
equ_instrucao = 'EQU'

# Contadores
mov_contador = 0
add_contador = 0
adc_contador = 0
sub_contador = 0
sbb_contador = 0
or_contador = 0
and_contador = 0
xor_contador = 0
cmp_contador = 0
etc_contador = 0
equ_contador = 0

# Analisa Modulo
def analise_modulo(nome_modulo):
    global mov_contador
    global add_contador
    global adc_contador
    global sub_contador
    global sbb_contador
    global or_contador
    global and_contador
    global xor_contador
    global cmp_contador
    global etc_contador
    global equ_contador
    arquivo = open(nome_modulo)
    linha = arquivo.readline()
    while(linha != ''):
        # Quebra a linha ate o inicio dos comentarios
        codigo = linha.split(';')
        # Busca os opcodes na linha sem os comentarios
        if(codigo[0] != ''):
            if(mov_instrucao in codigo[0]):
                mov_contador += 1
            elif(add_instrucao in codigo[0]):
                add_contador += 1
            elif(adc_instrucao in codigo[0]):
                adc_contador += 1
            elif(sub_instrucao in codigo[0]):
                sub_contador += 1
            elif(sbb_instrucao in codigo[0]):
                sbb_contador += 1
            elif(or_instrucao in codigo[0]):
                or_contador += 1
            elif(and_instrucao in codigo[0]):
                and_contador += 1
            elif(xor_instrucao in codigo[0]):
                xor_contador += 1
            elif(cmp_instrucao in codigo[0]):
                cmp_contador += 1
            elif(equ_instrucao in codigo[0]):
                equ_contador += 1
            else:
                etc_contador += 1
        # le a proxima linha
        linha = arquivo.readline()

    print (nome_modulo)

# Metodo principal
def main():

    print ('Modulos Analisados:')
    print ('Modulo: ' + str(asm_modulo))
    analise_modulo(asm_modulo)
    print ('Modulo: ' + str(command_modulo))
    analise_modulo(command_modulo)
    print ('Modulo: ' + str(hex2bin_modulo))
    analise_modulo(hex2bin_modulo)
    print ('Modulo: ' + str(io_modulo))
    analise_modulo(io_modulo)
    print ('Modulo: ' + str(msdos_modulo))
    analise_modulo(msdos_modulo)
    print ('Modulo: ' + str(stddos_modulo))
    analise_modulo(stddos_modulo)
    print ('Modulo: ' + str(trans_modulo))
    analise_modulo(trans_modulo)

    print ('-------------------------------------------------------')
    
    print ('Quantidade de vezes que as instrucoes foram utilizadas:')
    print ('MOV: ' + str(mov_contador))
    print ('ADD: ' + str(add_contador))
    print ('ADC: ' + str(adc_contador))
    print ('SUB: ' + str(sub_contador))
    print ('SBB: ' + str(sbb_contador))
    print ('OR: '  + str(or_contador))
    print ('AND: ' + str(and_contador))
    print ('XOR: ' + str(xor_contador))
    print ('CMP: ' + str(cmp_contador))
    print ('EQU: ' + str(equ_contador))
    print ('ETC: ' + str(etc_contador))

    print ('-------------------------------------------------------')    
main();
        
