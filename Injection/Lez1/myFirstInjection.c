#include<stdio.h>
#include<stdlib.h>
#include<time.h>

void bye1(){
	printf("Addio");
}
void bye2(){
        printf("Arrivederci");
}
void hello(char *name,void (*bye_func)()){
	printf("Ciao %s\n",name);
	bye_func();
}
int main(int argc,char **argv){
	char name[1024];
	gets(name);
	srand(time(0));
	if(rand()%2==0)
		hello(bye1,name);
	else
		hello(name,bye2);
	return 0;
}


