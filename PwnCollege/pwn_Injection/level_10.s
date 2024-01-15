.global _start
_start:
.intel_syntax noprefix
        push 0x46
        mov rdi, rsp
        mov al, 90
        mov si,4
        syscall
