#include <stdio.h>
#include <string.h>
#include <ctype.h>
void keyword(char str[20])
{
    if (strcmp("auto", str) == 0 || strcmp("const", str) == 0 || strcmp("double", str) == 0 || strcmp("float", str) == 0 || strcmp("int", str) == 0 || strcmp("short", str) == 0 || strcmp("struct", str) == 0 || strcmp("break", str) == 0 || strcmp("continue", str) == 0 || strcmp("else", str) == 0 || strcmp("switch", str) == 0 || strcmp("case", str) == 0 || strcmp("void", str) == 0 || strcmp("sizeof", str) == 0 || strcmp("char", str) == 0 || strcmp("do", str) == 0 || strcmp("if", str) == 0 || strcmp("return", str) == 0 || strcmp("while", str) == 0)
    {
        printf("%s is an keyword\n", str);
    }
    else
    {
        printf("%s is an identifier\n", str);
    }
}

int main()
{
    int num[100];
    FILE *f1, *f2, *f3;
    char c, f[20], str[20],str1[20], str2[20];
    int lineNo = 0, tokenValue = 0, i = 0, j = 0, k = 0;
    printf("\n Enter name of the c programe : ");
    scanf("%s", f);
    f1 = fopen(f, "r");
    f2 = fopen("identifier.txt", "w");
    f3 = fopen("spchar.txt", "w");
    while ((c = getc(f1)) != EOF)
    {
        if (isdigit(c))
        {
            tokenValue = c - '0';
            c = getc(f1);
            while (isdigit(c))
            {
                tokenValue = tokenValue * 10 + c - '0';
                c = getc(f1);
            }
            num[i] = tokenValue;
            i++;
            ungetc(c, f1);
        }
        else if(isalpha(c)){
            putc(c,f2);
            c=getc(f1);
            while(isdigit(c) || isalpha(c) || c=='_' || c=='$'){
                putc(c,f2);
                c=getc(f1);
            }
            putc(' ',f2);
            ungetc(c,f1);
        }
        else if (c==' ' || c=='\t')
        {
            printf("%c white space detected ",c);
        }
        else if(c=='\n'){
            lineNo++;
        }
        else{
            putc(c,f3);
        }
    }
    fclose(f1);
    fclose(f2);
    fclose(f3);
    printf("\n the numbers in the programme are\n");
    for(j=0;j<i;j++){
        printf("%d ",num[j]);
    }

    f2=fopen("identifier.txt","r");
    printf("\n the identifiers in the programme are\n");
    while((c=getc(f2))!=EOF){
        if(c != ' '){
            str[k++]=c;
        }
        else{
            str[k]='\0';
            keyword(str);
            k=0;
        }
    }
    fclose(f2);
    f3=fopen("spchar.txt","r");

     printf("\n the special charecters in the programme are\n");
    while((c=getc(f3))!=EOF){
       printf("\t %c",c);
    }
    printf("\n");
    fclose(f3);
    fclose(f2);
    printf("\n Number of lines in the program is %d ",lineNo);
}