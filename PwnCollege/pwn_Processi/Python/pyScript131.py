import subprocess
import re

#def calculate_result(equation):
#    solution=eval(equation)
#    return solution


#def main():
program_path = "/challenge/embryoio_level131"

daRisolvere = 500
linee_Inutili=17
    # Launch the program
process = subprocess.Popen(program_path, stdout=subprocess.PIPE,stdin=subprocess.PIPE ,text=True)
try:
        # Read and discard any initial lines until the first line with an equation
    while True:
        #if lineeInutili>0:
        #    linee_Inutili=linee_Inutili-1
        #else:    
        #    line = process.stdout.readline()
        #    equ=line[41:]
        #    risultato=eval(equ)
        #    print(ristultato)
        line=process.stdout.readline()
        if linee_Inutili > 0:
            print(linee_Inutili,line)
            linee_Inutili=linee_Inutili-1
        else:
            if daRisolvere>0: 
                equ=line[48:]
                print(equ)
                risu=eval(equ)
                print(risu)
                process.stdin.write(f"{risu}\n")
                process.stdin.flush()
                daRisolvere=daRisolvere-1
                _=process.stdout.readline()                
            else:
                print(line)
                line=process.stdout.readline()
                print(line)
                line=process.stdout.readline()
                print(line)
                break
except Exception as e:
    print(e)
