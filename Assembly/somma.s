#sommo due numeri HARD-CODED in due registri e stampo la somma
.intel_syntax   noprefix
.global         _start

.section                .text
_start:	mov	r8,10
	mov	r9,24
	add	r8,r9
	mov	rax,r8 #operando su op1 di div
	
	mov	r9,0
	call	converti	

	#call	print
	call	exit

print:	mov	rax,1
	mov	rdi,1
	lea	rsi,BUFFER_OUT
	mov	rdx,r9
	syscall
	ret

converti:
	mov	rcx,10
	lea	rsi,[BUFFER_OUT+9]
loop:	xor	rdx,rdx
	div	rcx
	add	rdx,'0'
	dec	rsi
	mov	[rsi],rdx
	test	rax,rax
	add	r9,1
	jnz	loop

	call	print

	ret

exit:	mov	rax,60
	xor	rdi,rdi
	syscall

.section		.data
BUFFER_OUT:	.space 10
