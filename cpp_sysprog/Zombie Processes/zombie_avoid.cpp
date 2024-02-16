#include<iostream>
#include<stdio.h>
#include<unistd.h>
#include<sys/types.h>
#include<sys/wait.h>
#include<stdlib.h>
using namespace std;

int main() {
    pid_t pid;
    int status;
    pid = fork();
    if(pid<0) {
        cerr<<"process generation error. "<<endl;
        exit(-1);
    }
    if(pid==0) {
        cout<<"Child Process ID: "<<getpid()<<endl;
        cout<<"Waiting for parent to retrive exit status..."<<endl;
        exit(0);
    }
    if(pid>0) {
        wait(&status);
        cout<<"Parent: "<<getpid()<<endl;
        system("ps u");
    }
    return 0;
}