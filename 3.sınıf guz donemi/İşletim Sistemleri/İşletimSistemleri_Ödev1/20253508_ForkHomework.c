// -----------------------------
//  Author: Mert BALKAN
//  Date:   20.10.2022
//  answer of first homework
// -----------------------------

#include <stdio.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <stdlib.h>
#include <unistd.h>

int main(){
    pid_t pid = fork(); // first fork assigning to Process ID

    fork(); // second fork
    fork(); // third fork

    // if process id is greater than 0, than it's parent...
    if(pid > 0){ 
        printf("as a parent, my current program id: %d and my parent is: %d\n", getpid(), getppid());
    }
    
    // if process id is equals to 0, than it's child...
    else if(pid == 0){
        printf("as a child, my current program id: %d and my parent is: %d\n", getpid(), getppid());    
    }

    // if process id is less than 0, than an error has occured while it's trying to create process...
    else{
        printf("ERROR OCCURED!");
        return -1;
    }

    return 0;
}