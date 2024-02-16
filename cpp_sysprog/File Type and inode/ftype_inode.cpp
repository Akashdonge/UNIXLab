#include<stdio.h>
#include<iostream>
#include<unistd.h>
#include<sys/stat.h>
#include<sys/types.h>
#include<stdlib.h>

using namespace std;
int main(int argc, char* argv[]) {
    if(argc!=2) {
        cerr<<"usage: <exe_file> <filename>"<<endl;
        exit(-1);
    }
    struct stat filedata;
    if(stat(argv[1],&filedata)==-1) {
        cerr<<"unable to obtain file stats"<<endl;
        exit(-1);
    }
    switch (filedata.st_mode& S_IFMT)
    {
        case S_IFBLK:
        cout<<"Block device file"<<endl;
        break;

        case S_IFCHR:
        cout<<"Character device file"<<endl;
        break;

        case S_IFIFO:
        cout<<"FIFO/PIPE File"<<endl;
        break;

        case S_IFREG:
        cout<<"Regular file"<<endl;
        break;

        case S_IFLNK:
        cout<<"Link file"<<endl;
        break;

        case S_IFDIR:
        cout<<"Directory file"<<endl;
        break;
        
        default:
        cout<<"Unknown file type."<<endl;
    }
    cout<<"Inode number: "<<filedata.st_ino<<endl;
    return 0;
}