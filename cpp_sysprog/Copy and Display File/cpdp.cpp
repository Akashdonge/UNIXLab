#include<stdio.h>
#include<iostream>
#include<unistd.h>
#include<sys/stat.h>
#include<fcntl.h>
using namespace std;

int main(int argc, char* argv[]) {
    if(argc != 3) {
        cerr<<"usage: <exe_file> <filename1> <filename2>"<<endl;
        exit(-1);
    }
    int fd1, fd2, n;
    char buf[1];
    if((fd1=open(argv[1],O_RDONLY))==-1) {
        cerr<<"Unable to read file "<<argv[1]<<endl;
        exit(-1);
    }
    if((fd2=open(argv[2],O_WRONLY|O_CREAT|O_TRUNC,0744))==-1) {
        cerr<<"Unable to write file "<<argv[2]<<endl;
        exit(-1);
    }
    while((n=read(fd1,buf,1))>0) {
        write(1,buf,n);
        write(fd2,buf,n);
    }
    close(fd1);
    close(fd2);
}