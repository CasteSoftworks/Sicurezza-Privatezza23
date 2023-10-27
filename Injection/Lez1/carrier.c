#include <sys/mman.h>
#include<unistd.h>

int main(void){
	void *page=mmap(0x1337000, 0x1000, PROT_READ|PROT_WRITE|PROT_EXEC, MAP_PRIVATE|MAP_ANON, 0, 0);
	read(0,page,0x1000);
	((void(*)())page)();
	return 0;
}
