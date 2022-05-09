// Q5: Write a lex program that will recognize whether a given input is keyword or identifier or special character

%{
    
%}
%%
"auto"|"while"|"for"|"if"|"else"|"do" {printf("\n %s is a keyword", yytext);}

[a-z A-Z][a-z A-Z 0-9]* {printf("\n %s is a identifier", yytext);}

"~"|"!"|"@"|"#"|"$"|"%"|"^"|"&"|"*" {printf("\n %s is a special character", yytext);}
%%