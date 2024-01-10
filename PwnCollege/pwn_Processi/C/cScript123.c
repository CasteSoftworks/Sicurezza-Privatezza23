//aa
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

void pwncollege(){}

int main(){

	 pid_t pid = fork();
 	 if (pid == 0) {
	 	execl("/challenge/embryoio_level123",(char *)NULL);
	 } else {
 	        // Parent process
 	        // Optionally, you can wait for the child process to finish
 	        wait();
 	 }

 	 return 0;
}
