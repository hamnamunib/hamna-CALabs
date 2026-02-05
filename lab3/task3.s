li x10, 0x100 # array d base address
li x11, 0 # temp variable
li x5, 10
li x6, 11
li x7, 12
li x8, 13
sw x5, 0(x10)      # d[0] = a
sw x6, 4(x10)      # d[1] = b
sw x7, 8(x10)      # d[2] = c
sw x8, 12(x10)     # d[3] = d
jal x1, swap_func
j end
swap_func:
    lw x11, 4(x10) #d[1] in temp
    lw x12, 8(x10) #d[2] in x12
    sw x12, 4(x10) #d[1] = d[2]
    sw x11, 8(x10) #d[2] = temp
    jalr x0, 0(x1)
end:
    j end

