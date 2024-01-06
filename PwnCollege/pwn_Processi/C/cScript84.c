//aa
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

void pwncollege(){}

int main(){

	 pid_t pid = fork();

 	 if (pid == 0) {
 		// Child process
		chdir("/tmp/panvxp");
		FILE *file = freopen("uuzatu", "w", stdin);
		
		execl("/challenge/embryoio_level84",file,(char *)NULL);
 	        // If execv fails, report an error
		fclose(file);
 	 } else {
 	       // Parent process
 	       // Optionally, you can wait for the child process to finish
 	       wait();
 	 }

 	 return 0;
}
