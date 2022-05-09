// Q1: Write a lex program to print number and identifier
%{

%}
%%
[0-9] {printf("\n %d positve integer detected", atoi(yytext));}
[a-z A-Z][a-z A-Z 0-9]* {printf("\n %s identifier detected", yytext);}
%%
