addi x11, x0, 1024
addi x12, x0, 1025
addi x13, x0, 42

Loop:
    lb x10, 0(x12)
    
    beq x10, x0, Loop   

    beq x10, x13, Fim

    sb x10, 0(x11)

    jal x0, Loop

Fim:
    halt
