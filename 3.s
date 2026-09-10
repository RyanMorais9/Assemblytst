.data 
array: .word 2, 5, 7, 8, 10, -2
.text
main:
    la a0, array
    li a1, 6
    li a2, 0
loop_pares:
    beq a1, zero, fim_pares
    lw t0, 0(a0)
    andi t1, t0, 1
    bne t1, zero, proximo
    addi a2, a2, 1

proximo:
    addi a0, a0, 4
    addi a1, a1, -1
    j loop_pares

fim_pares:
    nop