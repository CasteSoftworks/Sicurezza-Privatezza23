#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

void pwncollege(){}

int main() {
    char *argv1[] = {"/challenge/embryoio_level82", NULL};

    clearenv();
    setenv("136","eepvxpiusn",1); //136:eepvxpiusn

    // Create a child process
    pid_t pid = fork();

    if (pid == 0) {
        // Child process
        execv("/challenge/embryoio_level82", argv1);

        // If execv fails, report an error
    } else {
        // Parent process
        // Optionally, you can wait for the child process to finish
        wait();
    }

    return 0;
}
