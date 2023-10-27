#Giacomo Castellana
#ciao mondo in assembly - 19 ottobre 2023
.intel_syntax 	noprefix
.global		_start

.section 		.text

_start:	mov	rax,1		#syscall per la write
	mov	rdi,1		#file handler è stdout
	lea	rsi,mesg	#indirizzo stringa ciao mondo
	mov	rdx,13		#numero di bytes
	syscall			#chiamata a syscall write

	mov	rax,60		#syscall per uscire
	xor	rdi,rdi
	syscall

	.section	.data
mesg:	.asciz		"hello world"
