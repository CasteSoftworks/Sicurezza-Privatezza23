#!/usr/bin/env python
# yy=buffer dimensions

buf=b"\x90"* yy

#indirizzo di riscrittura ra
buf+=b"\xaa\xbb\xcc\xdd\xee\xff\xgg\xhh"

f=open("in.txt","wb")
f.write(buf)
