#setto r8 a 0 e controllo che rdi sia uguale a 0, se lo è vado alla zona pariZero
mov r8, 0
cmp rdi, 0
je pariZero

#loop di controllo
loop:
mov r9d, [rdi+r8]
cmp r9d, 0
je fine
#aumento il contatore r8
aumentaLoop:
inc r8
jmp loop

#se rdi=0 allora rax e r8 =0
pariZero:
mov r8, 0
mov rax, 0

#metto rax=r8 per terminare
fine:
mov rax, r8

#49C7C0000000004883FF00740F468B0C074183F900741349FFC0EBF149C7C00000000048C7C0000000004C89C0
