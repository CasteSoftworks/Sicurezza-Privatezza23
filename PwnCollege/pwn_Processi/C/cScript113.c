//aa
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

void pwncollege(){}

int main(){

	 pid_t pid = fork();
	 chdir("..");
 	 if (pid == 0) {
	 	execl("/challenge/embryoio_level113",(char *)NULL);
	 } else {
 	        // Parent process
 	        // Optionally, you can wait for the child process to finish
 	        wait();
		printf("lol papa'");
 	 }

 	 return 0;
}
