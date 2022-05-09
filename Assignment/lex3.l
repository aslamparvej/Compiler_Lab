// Q3: Write a lex program to recognize your name and print "name is found"

%{

%}
%%
"Aslam" {printf("\n %s name is found", yytext);}
[a-z A-Z (^Aslam)]+ {printf("\n %s name is not found", yytext);}
%%