#include<iostream>
#include<stdio.h>
#include<unistd.h>

using namespace std;

int main(int argc, char* argv[]) {
    if(argc <= 1) {
        cerr<<"usage: <exe_file> <filename1>"<<endl;
        exit(-1);
    }
    for(int i = 1; i < argc; i++) {
        if(unlink(argv[i])!=0) {
            cerr<<"unlink error: "<<argv[i]<<endl;
        }
    }
}