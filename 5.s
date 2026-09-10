.text
.globl main
main:
    li a0, 3
    li a1, 4
    jal ra, soma_dobros
fim:
    li a7, 10
    ecall
soma_dobros:
    addi sp, sp, -16
    sw ra, 0(sp)
    sw s0, 4(sp) #guarda b
    sw s1, 8(sp) #guarda dobro

    mv s0, a1

    jal ra, dobro
    mv s1, a0

    mv a0, s0
    jal ra, dobro

    add a0, s1, a0

    lw ra, 0(sp)
    lw s0, 4(sp)
    lw s1, 8(sp)
    addi sp, sp, 16
    ret
    
dobro:
    add a0, a0, a0
    ret
