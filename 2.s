.data
array: .word 10, 12, 55, 32, 7
.text
main:
    la a0, array
    li a1, 5 #tamanho array
    li a2, 0 #result

loop:
    beq a1, zero, fim
    lw t0, 0(a0)
    add a2, a2, t0
    addi a0, a0, 4
    addi a1, a1, -1
    j loop

    fim:
        nop