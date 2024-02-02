#include<stdio.h>
#include<iostream>
#include<unistd.h>
using namespace std;

int main(int argc, char* argv[])
{
    if(argc!=3)
    {
        cerr<<"Usage: ./<executable file> <source> <link>"<<endl;
        exit(0);
    }
    if(link(argv[1], argv[2]) == 0)
        cout<<"Link has been created successfully with the name "<<argv[2]<<"."<<endl;
    else
        perror("Link creation failed.");
}