mov r8, [rdi]
mov r9, [rdi+4]
mov r10, [rdi+8]
mov r11, [rdi+12]
cmp r8d, 0x7f454c46
jne noPrimoCaso
mov esi, r9d
add esi, r10d
add esi, r11d
jmp fine
noPrimoCaso:
cmp r8d, 0x00005a4d
jne casoFinale
mov esi, r9d
sub esi, r10d
sub esi, r11d
jmp fine
casoFinale:
mov esi, r9d
imul esi, r10d
imul esi, r11d
fine:
mov rax, rsi

#4C8B074C8B4F044C8B57084C8B5F0C4181F8464C457F750B4489CE4401D64401DEEB1F4181F84D5A0000750B4489CE4429D64429DEEB0B4489CE410FAFF2410FAFF34889F0
