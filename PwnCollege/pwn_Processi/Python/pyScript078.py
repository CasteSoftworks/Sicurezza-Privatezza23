import subprocess
import os

executable_path = "/challenge/embryoio_level78"
file_path = "nntggy"
cwd_path = "/tmp/delmvl"

os.chdir(cwd_path)

with open(file_path, 'r') as fp:
	subprocess.run(executable_path, stdin=fp)
