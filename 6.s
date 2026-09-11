.text
.globl main
main:
    li a0, 5
    jal ra, fat
fim:
    addi a7, 10
    ecall
fat:
    addi sp, sp, -16
    sw ra, 0(sp) #retorno
    sw a0, 4(sp) #n

    li t0, 1
    ble a0, t0, caso_base

    addi a0, a0, -1
    jal ra, fat

    lw t1, 4(sp)
    mul a0, a0, t1
    j epilogo

caso_base:
    li a0, 1

epilogo:
    lw ra, 0(sp)
    addi sp, sp, 16
    ret
