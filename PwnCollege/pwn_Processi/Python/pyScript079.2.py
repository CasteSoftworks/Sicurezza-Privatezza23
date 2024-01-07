import subprocess
import os

executable_path = "/challenge/embryoio_level79"
cwd_path = "/tmp/hsdnbd"

#os.chdir(cwd_path)

subprocess.run(executable_path,cwd=cwd_path)
