#include<stdio.h>
#include<iostream>
#include<unistd.h>
using namespace std;

int main(int argc, char* argv[]) {
    if(argc != 3) {
        cerr<<"usage: <exe_file> <filename1> <filename2>"<<endl;
        exit(-1);
    }
    if(link(argv[1], argv[2])!=0) {
        cerr<<"link error"<<endl;
    }
}