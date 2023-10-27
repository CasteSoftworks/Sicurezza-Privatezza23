.intel_syntax noprefix
.globl _start
.section .text
_start:
	#open
	mov	rax, 2 #syscall di sys_open
	lea	rdi,[rip+flag]
	mov	rsi, 0
	mov	rdx, 0
	syscall
	mov	r8,rax #salvo su r8 l'fd

	#read
	mov	rax, 0
	mov	rdi, r8
	lea	rsi,BUFF
	mov	rdx, 64
	syscall

	#write
	mov	rax, 1
	mov	rdi, 1
	lea	rsi, BUFF
	mov	rdx, 64
	syscall
	
	#filesend
	#mov	rax, 40
	#mov	rdi, 1
	#mov	rsi, r8
	#mov	rdx, 0
	#mov	r10, 100
	#syscall

	#close
	mov	rax, 3
	mov	rdi, r8
	syscall

	#exit
	mov	rax, 60
	xor	rdi,rdi
	syscall

flag: .string "Flag"
.section .bss
BUFF: .space 64
