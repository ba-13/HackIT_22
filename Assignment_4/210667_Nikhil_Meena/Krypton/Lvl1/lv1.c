#include <stdio.h>

int main()
{
    char ch[] = "YRIRY GJB CNFFJBEQ EBGGRA";
    for (int i=0; 26>i; i++)
    {
        if(ch[i]==' '){
             printf(" ");
             continue;
        } 
        if(ch[i]-13 < 65) ch[i]+=26;
        printf("%c",ch[i]-13);
    }
    
    return 0;
}