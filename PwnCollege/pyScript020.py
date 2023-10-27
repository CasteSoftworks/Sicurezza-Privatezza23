
#!/usr/bin/python
import subprocess
import os

file=open("/tmp/tqrzwt","w")

subprocess.run( [ "/challenge/embryoio_level20" ],stdout=file )

file=open("/tmp/tqrzwt","r")
print(file.read())
