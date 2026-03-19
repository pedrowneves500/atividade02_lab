addi x11, x0, 1024
addi x12, str1

Loop:
    lb x10, 0(x12)
    beq x10, x0, Fim
    
    sb x10, 0(x11)
    
    addi x12, x12, 1
    addi x11, x11, 1

    jal x0, Loop
Fim:
    halt

str1:
    .string "Hello World"
