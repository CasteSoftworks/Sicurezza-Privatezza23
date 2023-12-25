#Using only the following instruction(s)
#mov
#Please compute the following:
#rax = rdi modulo 256
#rbx = rsi modulo 65536
.intel_syntax   noprefix
.global         _start

.section                .text
_start:
	#sul registo a 8b di rax metto il valore presente sul registro a 8b di rdi 
	#--> contenete 0xff
	mov al, dil
	#sul registro a 16b di rbx metto il valore presente sul registro a 16b di rsi 
	#--> contenente 0xfff
	mov bx, si

#codice in hex solo istruzioni
# - 4088F86689F3
