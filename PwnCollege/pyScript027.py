
#!/usr/bin/python
import subprocess
import os

file=open("/tmp/fluuno","w")

subprocess.run( [ "/challenge/embryoio_level27" ],stdout=file )

file=open("/tmp/fluuno","r")
print(file.read())
