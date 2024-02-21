#include<iostream>
#include<stdio.h>
#include<unistd.h>
#include<fcntl.h>
#include<sys/stat.h>
using namespace std;
int main(int argc, char* argv[]) {
    int fd, skval;
    char c;
    if(argc!=2) {
        cerr<<"usage: <exe_file> <filename> "<<endl;
        exit(-1);
    }
    if((fd=open(argv[1],O_RDONLY))==-1) {
        cerr<<"unable to read file: "<<argv[1]<<endl;
        exit(-1);
    }
    while(read(fd,&c,1)>0) {
        cout<<"\nChar: "<<c;
        skval = lseek(fd,99,1);
        cout<<endl<<skval;
    }
}
