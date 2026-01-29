.text
.globl main
main:
    li x5, 0x200 # base adress of a
    li x22, 0 # i = 0 
    li x23, 0 # sum
    li x24, 10

L1:
    beq x22, x24, END1
    j loop1
loop1:
    slli x6, x22, 2
    add x7, x5, x6
    sw x22, 0(x7)  
    addi x22, x22, 1
    j L1
END1:
    li x22, 0 # reset i = 0

L2:
    beq x22, x24, END2
    j loop2
loop2:
    slli x6, x22, 2
    add x7, x5, x6
    lw x6, 0(x7)
    add x23, x23, x6
    addi x22, x22, 1
    j L2
END2:

end:
    j end



