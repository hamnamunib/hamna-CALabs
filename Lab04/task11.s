.text
.globl main

main:
    li   x10, 5
    jal  x1, fact_iter

after_call:
    addi x11, x10, 0

end:
    j end

fact_iter:
    li   x5, 1

loop:
    ble  x10, x0, done
    mul  x5, x5, x10
    addi x10, x10, -1
    j loop

done:
    addi x10, x5, 0
    jalr x0, 0(x1)
