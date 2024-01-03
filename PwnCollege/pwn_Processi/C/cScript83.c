#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

void pwncollege(){}

int main() {
    char *argv1[] = {"/challenge/embryoio_level83", NULL};

    //riempio di " dsfgmowvhe  "
    for (int i = 0; i < 32; ++i) {
        argv1[i + 1] = "dsfgmowvhe";
    }

    // Ensure the last element is NULL to terminate the array
    argv1[33] = NULL;
	
    clearenv();
    setenv("279","kspknwnaig",1);

    // Create a child process
    pid_t pid = fork();

    if (pid == 0) {
        // Child process
        execv("/challenge/embryoio_level83", argv1);

        // If execv fails, report an error
    } else {
        // Parent process
        // Optionally, you can wait for the child process to finish
        wait();
    }

    return 0;
}
