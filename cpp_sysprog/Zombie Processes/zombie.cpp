#include<iostream>
#include<stdio.h>
#include<unistd.h>
#include<sys/types.h>
#include<stdlib.h>
using namespace std;

int main() {
    pid_t pid;
    pid = fork();
    if(pid<0) {
        cerr<<"process generation error. "<<endl;
        exit(0);
    }
    if(pid==0) {
        cout<<"Child Process ID: "<<getpid()<<endl;
        cout<<"Waiting for parent to retrive exit status..."<<endl;
        exit(0);
    }
    if(pid>0) {
        sleep(2);
        cout<<"Parent: "<<getpid()<<endl;
        system("ps u");
    }
    return 0;
}