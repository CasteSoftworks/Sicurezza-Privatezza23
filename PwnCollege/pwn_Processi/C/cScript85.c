//aa
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

void pwncollege(){}

int main(){

	 pid_t pid = fork();
	 chdir("..");
 	 if (pid == 0) {
		pid_t pid2=fork();
		//primo figlio
		if (pid2==0){
			//secondo figlio
			//
			//FA LA SUA COSA
			chdir("/tmp/zlobqw");
			execl("/challenge/embryoio_level85",(char *)NULL);
		}else{
			wait();
			printf("lol primo figlio");
		}
	 } else {
 	        // Parent process
 	        // Optionally, you can wait for the child process to finish
 	        wait();
		printf("lol papa'");
 	 }

 	 return 0;
}
