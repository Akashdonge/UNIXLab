#include<stdio.h>
#include<stdlib.h>
#include<iostream>
#include<unistd.h>
#include<sys/types.h>
using namespace std;

int main(){
    pid_t pid;
    pid = fork();
    if(pid<0) {
        cerr<<"process generation failed."<<endl;
        exit(-1);
    }
    if(pid==0) {
        sleep(5);
        cout<<"Child process ID: "<<getpid()<<endl;
        cout<<"Parent process ID (Orphan): "<<getppid()<<endl;
        exit(0);
    }
    if(pid>0) {
        cout<<"Parent process ID: "<<getpid()<<endl;
        exit(-1);
    }
    return 0;
}