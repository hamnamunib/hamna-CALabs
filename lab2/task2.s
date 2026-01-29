.text
.globl main

main:
    li x1, 1 # for case 1
    li x2, 2 # for case 2
    li x3, 3 # for case 3
    li x4, 4 # for case 4

    #sample values for a,b,c,d
    li x20, 8 # x
    li x21, 1 # a
    li x22, 2 # b
    li x23, 3 # c
    beq x1, x20, case1
    beq x2, x20, case2
    beq x3, x20, case3
    beq x4, x20, case4
    beq x0, x0, default

    case1:
    add x21, x22, x23 # a = b+c
    beq x0, x0, default

    case2: sub x21, x22, x23 #a = b-c
    j Exit

    case3: slli x21, x22, 1 #a = b*2
    j Exit

    case4: srli x21, x22, 1 #a = b/2
    j Exit

    default: 
    li x21, 0 # a= 0
    j Exit

Exit:
    j Exit  