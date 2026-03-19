addi x11, x0, 4
addi x12, x0, 128
addi x13, x0, 1026
addi x14, x0, 1029

inicio:
sb x11, 0(x14)

wait_press:
lb x10, 0(x13)
andi x10, x10, 1
beq x10, x0, wait_press

slli x11, x11, 1
sb x11, 0(x14)
beq x11, x12, fim

wait_release:
lb x10, 0(x13)
andi x10, x10, 1
bne x10, x0, wait_release
jal x0, wait_press

fim:
halt
