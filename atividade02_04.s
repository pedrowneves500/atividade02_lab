addi x11, x0, 1024     #endereço da TELA
addi x12, str1           #deixa o simulador achar o endereço da frase

Loop:
    lb x10, 0(x12)         #lê uma letra
    beq x10, x0, Fim       #se chegar no fim (0), pula para o fim
    
    sb x10, 0(x11)         #manda para a tela
    
    addi x12, x12, 1       #próxima letra
    addi x11, x11, 1       

    jal x0, Loop          #volta para o início do loop
Fim:
    halt

str1:
    .string "Hello World"
