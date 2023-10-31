#include<stdio.h>
int x=0;
int function(){
	int * ret;
	x=x+13;
	ret=(int *)&ret + 16;
	(*ret)=(*ret)+16;
}

int main(){
	x=function();
	x=10;
	printf("value of x=%d\n",x);
}
