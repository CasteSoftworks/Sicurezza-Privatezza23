#controllo se rdi>3, e nel caso vado al caso base
cmp rdi, 3
jg casoBase
#se è <= allora moltiplico rdi*8 e poi salto all'indirizzo rsi+rdi
imul rdi, 8 #0, 8, 16 o 24
jmp [rsi+rdi]
casoBase:
jmp [rsi+32] #4a QWord da rsi

#4883FF037F07486BFF08FF243EFF6620
