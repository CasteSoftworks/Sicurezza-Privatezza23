#include<stdio.h>
int main(){
	char buf[80];
	int cookie;
	printf("buf: %16x cookie: %16x\n",&buf,&cookie);
	
	gets(buf);
	
	//printf("%08x\n", cookie);
	
	if(cookie==0x41424344){
		printf("You win!\n");
	}
}
