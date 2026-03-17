lw x10, a
lw x11, b

add x12, x10, x0
bge x11, x10, pular_soma 

add x12, x10, x11
beq x0, x0, salvar_resultado

pular_soma:
sub x12, x10, x11     

salvar_resultado:
sw x12, m
halt

a: .word 6
b: .word 15
m: .word 0
