#rax = rdi / rsi; rdx = remainder
#The quotient is placed in rax, the remainder is placed in rdx.
#Please compute the following:
#speed = distance / time, where:
#distance = rdi
#time = rsi
.intel_syntax   noprefix
.global         _start

.section                .text
_start:
	mov	rax,rdi
	div	rsi
	mov	rax,rdx	
