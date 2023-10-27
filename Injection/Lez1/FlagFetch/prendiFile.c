#include<stdio.h>
#include<stdlib.h>

void main(){
	FILE* fp;
	char c;

	fp=fopen("/Flag","r");
	while((c=getc(fp))!=EOF){
		printf("%c",c);
	}
	fclose(fp);
}
