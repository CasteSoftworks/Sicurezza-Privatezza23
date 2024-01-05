#setto rax a 0, r10 a indirizzo di foo  e controllo che rdi sia uguale a 0, se lo è termino altrimenti continuo
mov rax, 0
mov r10, 0x403000
cmp rdi, 0
je fine

#loop di controllo
loop:
mov r9, 0 #annullo r9
mov r9d, [rdi] #carico il B all'indirizzo rdi sul B meno significativo di r9

#controllo terminazione
cmp r9d, 0
je fine

#controllo se <=Z
cmp r9b, 0x5a
jg aumentaLoop #se sì skippo
#se no eseguo sotto
#pusho rdi e rax
push rdi #salvo rdi sullo stack
push rax #salvo rax sullo stack

#annullo rdi e lo rendo utile
mov rdi, 0 #metto su rdi 0
mov dil, r9b #metto sul B meno significativo di rdi r9b

#lancio foo e salvo il ritorno
call r10 #chiamo foo
mov r9b, al #mi salvo il rax di ritorno (solo B meno significativo)

#poppo rax e rdi
pop rax #recupero rax
pop rdi #recupero rdi

#riscrivo la memoria
mov [rdi], r9b #riscrivo in memoria al posto del vecchio r9b il nuovo r9b

#aumento
add rax, 1 #aumeno rax

#aumento rdi per il loop
aumentaLoop:
inc rdi
jmp loop


#siccome è una funzione da scrivere devo ritornare --> rax èil ritorno
fine:
ret

#48C7C00000000049C7C2003040004883FF00743649C7C100000000448B0F4183F90074264180F95A7F1B575048C7C7000000004488CF41FFD24188C1585F44880F4883C00148FFC7EBCAC3
