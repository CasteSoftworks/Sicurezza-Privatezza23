from pwn import *
import subprocess
io1=subprocess.Popen("/challenge/embryoio_level50",stdout=PIPE)
io2=subprocess.Popen(['sed','1d'],stdin=io1.stdout,stdout=PIPE)
output=io2.communicate()[0]
print(output)
