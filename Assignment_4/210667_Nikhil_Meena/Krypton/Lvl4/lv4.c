#include <stdio.h>

int main()
{
    FILE *fp;
    char ch;
    int chr[26], flag=0;
    for(int i=0; 26>i ;i++)
    {
        chr[i]=0;
    }
    fp = fopen( "found1.txt", "r" );

    if(fp == NULL){
        printf("FILE NOT FOUND\n");
        fclose(fp);
        exit(1);
    }

    //ch = fgetc(fp);
    //ch = fgetc(fp);
    //ch = fgetc(fp);
    //ch = fgetc(fp);

    while (1)
    {
        ch = fgetc(fp);
        if(ch==EOF ) break;
        char T=ch;
        chr[T-65]++;
        for(int i=0; 5>i; i++){
            ch=fgetc(fp);
            if(ch == EOF) flag =1;
        }
        if(flag) break;
    }
    fclose(fp);

    for(int i=0; 26>i; i++)
    {
        printf("%c -> %d\n",i+65, chr[i]);
    }

    return 0;
}