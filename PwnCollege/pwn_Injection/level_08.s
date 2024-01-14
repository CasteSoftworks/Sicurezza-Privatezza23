.global _start
_start:
.intel_syntax noprefix
        push 0x46
        mov rdi, rsp
        mov si,4
        mov al, 90
        syscall