#input di una stringa e poi stampa al contrario (su stack?)
.intel_syntax	noprefix
.global		_start

.section	.text
_start:	call inpStack
	call outStack
	call exit

inpStack:	#se 0 termina, sennò continua
	mov	rax,0
	mov	rdi,0
	lea	rsi,lettera
	mov	rdx,1
	syscall

	lea	r8,lettera
	
	cmp	r8,0
	push	r8

	je	fineIn
	jmp	inpStack
fineIn:
	ret

outStack:
	pop	r8

	mov	rax,1
	mov	rdi,1
	mov	rsi,r8
	mov	rdx,1
	syscall
	
	cmp	r8,0

	je	fineOut
	jmp	outStack
fineOut:
	ret

exit:
	mov	rax,60
	xor	rdi,rdi
	syscall

.section	.data
lettera:	.space	1
