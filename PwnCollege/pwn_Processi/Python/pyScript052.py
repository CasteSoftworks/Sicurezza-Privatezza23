from pwn import *
import subprocess
io1=subprocess.Popen('cat',stdout=PIPE)
io2=subprocess.Popen("/challenge/embryoio_level52",stdin=io1.stdout)
output=io2.communicate()[0]
print(output)
