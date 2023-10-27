#!/usr/bin/python

import subprocess
from pwn import *
io1=subprocess.Popen('/challenge/embryoio_level49',stdout=PIPE)
io2=subprocess.Popen(['grep','pwn'],stdin=io1 .stdout , stdout=PIPE)
output=io2.communicate()[0]
print(output)
