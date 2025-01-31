# Function: int my_fib(int n)
# Input: a0 = n
# Output: a0 = fib(n)

.globl my_fib
my_fib:
    li t0, 2              
    blt a0, t0, end

    addi sp, sp, -12
    sw ra, 8(sp)
    sw a0, 4(sp)

    addi a0, a0, -1
    jal my_fib
    sw a0, 0(sp)

    lw a0, 4(sp)
    addi a0, a0, -2
    jal my_fib

    lw t0, 0(sp)
    add a0, a0, t0

    lw ra, 8(sp)
    addi sp, sp, 12
    ret

end:
    li a0, 1
    ret