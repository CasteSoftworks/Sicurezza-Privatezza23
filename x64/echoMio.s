#in input una stringa, faccio l'eco della stessa e esco

#inizializzazione
.intel_syntax 	noprefix
.global		_start

#spazio per il testo
.section 		.text

#la main
_start:	call	input
	call	output
	call	exit

#prende in input una stringa da stdin(0), lunga 50 caratteri, e la salva su BUFFER_INP
input:	mov	rdi,0
	lea	rsi,BUFFER_INP
	mov	rdx,50
	mov	rax,0
	syscall
	ret

#prende la stringa su BUFFER_INP, la stampa su stdout(1) ed è max 50 caratteri
output:	mov	rdi,1
	lea	rsi,BUFFER_INP
	mov	rdx,50
	mov	rax,1
	syscall
	ret

#esco
exit:	mov	rax,60
	xor	rdi,rdi
	syscall
	
.section		.bss
BUFFER_INP:	.space 50
