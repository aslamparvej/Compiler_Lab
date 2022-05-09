%{
#include<stdio.h>
#include<stdlib.h>

int yylex();
int yyerror(char *);
%}
%token NUMBER ID
%left '+' '-'
%left '*' '/'
expr:expr '+' expr
    |expr '-' expr
    |expr '*' expr
    |expr '/' expr
    |'-'NUMBER
    |'-'ID
    |NUMBER
    |ID
    ;
%%
int main(){
    printf("Enter the expression");
    if(yyparse()==0){
        printf("\n expression is valid");
    }
    else{
        exit(0)
    }
    return 0;
}
int error(char *s){
    printf("\n expression is invalid");
    exit(0);
    return 0;
}