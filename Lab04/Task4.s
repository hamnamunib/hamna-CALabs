    .text
    .globl main

main:
    li   x10, 123456       # number to count digits
    jal  x1, count_digits # call function

    # x10 gets final result
end:
    j end                 # infinite loop

# int count_digits(int n)
count_digits:
    addi sp, sp, -16
    sw   x1, 12(sp)      
    sw   x10, 0(sp)       # save n

    li   x11, 0
    beq  x10, x11, base_case  # if n == 0, return 1

    # recursive case: count_digits(n / 10)
    li   x12, 10
    div  x10, x10, x12        # n / 10
    jal  x1, count_digits

    addi x10, x10, 1          # add 1 for current digit
    j    count_end

base_case:
    li   x10, 1               # 0 has 1 digit

count_end:
    lw   x1, 12(sp)           # restore return address
    addi sp, sp, 16
    jr   x1
