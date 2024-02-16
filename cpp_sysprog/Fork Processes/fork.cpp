#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>
#include<iostream>
#include<sys/types.h>
using namespace std;

int main() {
    pid_t pid;
    cout<<"Original Process ID: "<<getpid()<<endl<<"Parent Process ID: "<<getppid()<<endl;
    pid = fork();
    if (pid < 0) {
        cerr << "Process generation error." << endl;
        exit(1);
    } else if (pid == 0) {
        cout << "Child Process ID: " << getpid() << endl;
        cout << "Parent Process ID: " << getppid() << endl;
    } else {
        cout << "Original Process ID: " << getpid() << endl;
        cout << "Parent Process ID: " << getppid() << endl;
    }
}