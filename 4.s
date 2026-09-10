.text
.globl main
main:
    li a0, 5 #x
    li a1, 4 #y
    jal ra, calc
fim:
    j fim
calc:
    addi sp, sp, -16
    sw s0, 0(sp)
    sw s1, 4(sp)
    #(2*x + y) - (x + 3)
    add s0, a0, a0 #s0 = 2 * x
    add s0, s0, a1 # 2*x + y
    addi s1, a1, 3 #(x + 3)
    sub a0, s0, s1 #a0 = retorno = s0 - s1

    lw s0, 0(sp)        # 1. Lê da memória de volta para s0 (s0 volta a ter o valor original do main)
    lw s1, 4(sp)        # 2. Lê da memória de volta para s1 (s1 volta a ter o valor original do main)
    addi sp, sp, 16     # 3. Sobe o sp 16 bytes (desfaz o -16 do início, liberando a pilha)
    ret                 # 4. Volta para quem chamou (jr ra)