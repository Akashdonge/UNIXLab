#include<stdio.h>
#include<iostream>
#include<unistd.h>
using namespace std;

int main(int argc, char* argv[])
{
    if(argc<=1)
    {
        cerr<<"Usage: ./<executable> <filename1> <filename2> <filename3>..."<<endl;
        exit(0);
    }
    for(int i = 1; i < argc; i++)
    {
        if(unlink(argv[i])==0)
            cout<<"File "<<argv[i]<<" is successfully deleted."<<endl;
        else
            perror("Unable to delete file.\n");
    }
}