#include<stdio.h>
#include<unistd.h>

void pwncollege(char * argv[],char *env[]){
	execve("/challenge/embryoio_level33",argv,env);
	return;
}

int main(int argc,char *argv[],char *env[]){
	pid_t fpid;
	fpid=fork();
	if(fpid<0){
		printf("error in the forking process!");
	}
	if(fpid==0){
		printf("I'm the process son");
		pwncollege(argv,env);
	}else{
		printf("I'm the process father!");
		wait(NULL);
	}
	return 0;
}
