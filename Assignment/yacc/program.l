%{
#include<stdio.h>
#include"y.tab.h"

int yylex();
int yyerror(char *);
int yylval;
%}
%%
[0-9]+ {yylval = atoi(yytext); return NUMBER}
[a-z A-Z]+ {return ID;}
[\t]+ {;}
\n {return 0;}
. {return yytext[0];}
%%