
#!/usr/bin/python
import subprocess
import os

file=open("/tmp/kigiky","w")
file.write("ohbrolav")
file=open("/tmp/kigiky","r")

subprocess.run( [ "/challenge/embryoio_level26" ],stdin=file )
