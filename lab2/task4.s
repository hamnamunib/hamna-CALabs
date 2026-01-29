.text
.globl 
main:
li x5, 5  # a = 5
li x6, 5  # b = 5
li x7, 0 # i = 0
li x10, 0x200  # base address of D

C1:
    beq x7, x5, end
    li x29, 0 # j = 0

C2: 
    beq x29, x6, C3
    j innerloop

innerloop: 
    add x20, x7, x29 # storing j + i into temp register
    slli x21, x29, 2  # storing j*4 into temp register
    add x21, x21, x10 
    sb x20, 0(x21)
    addi x29, x29 , 1  # j = j + 1
    j C2

C3: 
    addi x7, x7, 1  # i = i + 1
    j C1

end:
    j end
