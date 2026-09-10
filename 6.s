.text
.globl main
main:
    li a0, 5
    li a1, 1
    jal ra, fat
fim:
    addi a7, 10
    ecall
fat:
    bge a0, a1, else
    li a0, 1
    ret
else:
    