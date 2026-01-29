.text
.globl main

main:
    li x22, 3 # i
    li x23, 4 # j 
    li x20, 6 # g
    li x21, 1 # h

    bne x22, x23, Else
    add x19, x20, x21
    beq x0, x0, Exit   

Else:
    sub x19, x20, x21

Exit:
    j Exit   