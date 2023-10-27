from pwn import *
import subprocess
io1=subprocess.Popen("/challenge/embryoio_level57",stdout=PIPE)
io2=subprocess.Popen('rev',stdin=io1.stdout)
output=io2.communicate()[0]
print(output)
