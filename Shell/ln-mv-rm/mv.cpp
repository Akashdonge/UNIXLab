#include<stdio.h>
#include<iostream>
#include<unistd.h>
using namespace std;

int main(int argc, char* argv[])
{
    if(argc!=3)
    {
        cerr<<"Usage: ./<executable file> <rename_from> <rename_2>"<<endl;
        exit(0);
    }
    if(rename(argv[1], argv[2])==0)
        cout<<"File successfully moved/renamed. "<<endl;
    else 
        perror("Rename/Move unsuccessful. ");
}