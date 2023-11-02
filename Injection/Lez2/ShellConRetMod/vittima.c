#include<stdio.h>
int main(){
	int cookie;
	char buf[80];
	//printf("buf: %16x cookie: %16x\n",&buf,&cookie);
	gets(buf);
	if(cookie==0x000d0a00){
		printf("You win!\n"); //anziché questo bisgna aprire una shell
	}

	return 0;
}
