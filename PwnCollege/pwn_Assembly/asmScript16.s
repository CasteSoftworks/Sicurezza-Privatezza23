mov rax, [rsp+24]
mov r9, [rsp+16]
mov r10, [rsp+8]
mov r11, [rsp]
add rax, r9
add rax, r10
add rax, r11
shr rax, 2
mov [rsp-8], rax

#488B4424184C8B4C24104C8B5424084C8B1C244C01C84C01D04C01D848C1E80248894424F8
