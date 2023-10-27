from pwn import *
import subprocess
io1=subprocess.Popen('rev',stdout=PIPE)
io2=subprocess.Popen("/challenge/embryoio_level53",stdin=io1.stdout)
output=io2.communicate()[0]
print(output)
