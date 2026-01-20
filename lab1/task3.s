

text
.globl main

main:
    li x20, 5        # int a = 5
    li x21, 0        # b
    # li x22, 0      # c
    # li x23, 0      # d
    # li x24, 0      # e

    # x01 = a + b
    # x02 = a - d

    addi x21, x22, 0     # int b = 0
    addi x20, x21, 32    # int a = b + 32
    add x30, x20, x21    # int random = a + b
    addi x23, x30, -5    # int d = random - 5
    sub x2, x20, x23     # a - d
    sub x3, x21, x20     # b - a
    add x24, x2, x3      # e = (a - d) + (b - a)
    add x24, x24, x23    # e = (a - d) + (b - a) - 5
    add x4, x20, x21     # random = a + b
    add x5, x23, x24     # random = d + e
    add x24, x4, x5      # e = a + b + d + e

end:
    j end





