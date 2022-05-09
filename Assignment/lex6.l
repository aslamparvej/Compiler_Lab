Q6: Write a lex program to count number of characters,words, spaces and lines in a given input file.

%{
#include<stdio.h>
int lines=0,words=0,chars=0,nums=0,digits=0,sp_char=0,spaces=0;
%}
%%
\n {lines++; chars++;}
[\t] {spaces++; words++; chars++;}
[a-z A-Z]+ {chars=chars+yyleng; words++}
[0-9]+ {nums++; digits=digits+yyleng;}
[^\n] {sp_char++; chars++}
%%
int main(){
    yyin = fopen("myFile.txt","r");
    yylex();
    printf("\nNo of lines=%d", lines);
    printf("\nNo of words=%d", words);
    printf("\nNo of spaces=%d", spaces);
    printf("\nNo of chars=%d", chars);
    printf("\nNo of nums=%d", nums);
    printf("\nNo of digits=%d", digits);
    printf("\nNo of sp_char=%d", sp_char);
    return 0;
}
