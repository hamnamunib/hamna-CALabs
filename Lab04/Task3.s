.text
.globl main

main:
    li x10, 0x100

    li x5, 1
    sw x5, 0(x10)
    li x5, 2
    sw x5, 4(x10)
    li x5, 4
    sw x5, 8(x10)
    li x5, 3
    sw x5, 12(x10)
    li x5, 5
    sw x5, 16(x10)
    li x5, 6
    sw x5, 20(x10)

    li x11, 6
    jal x1, bubble

    li a7, 10
    ecall

bubble:
    li x5, 0

outer_loop:
    bge x5, x11, exit

    li x6, 0

inner_loop:
    addi x12, x11, -1
    sub  x12, x12, x5
    bge  x6, x12, next_i

    slli x7, x6, 2
    add  x7, x10, x7
    lw   x28, 0(x7)

    addi x8, x6, 1
    slli x8, x8, 2
    add  x8, x10, x8
    lw   x29, 0(x8)

    ble  x28, x29, next_j

    sw x29, 0(x7)
    sw x28, 0(x8)

next_j:
    addi x6, x6, 1
    j inner_loop

next_i:
    addi x5, x5, 1
    j outer_loop

exit:
    ret
