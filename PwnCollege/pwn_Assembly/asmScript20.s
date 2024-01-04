#calcolare la media della somma tra QWord che iniziano da [rdi]
#usare rsi come massimo del for
#su rax la media

xor rax, rax
mov r8, 0
loop:
cmp r8, rsi
je fine
mov r9, r8
imul r9, 8
add rax, [rdi+r9]
inc r8
jmp loop
#calcolo la media
fine:
div rsi

#4831C049C7C0000000004939F074104D89C14D6BC9084A03040F49FFC0EBEB48F7F6
