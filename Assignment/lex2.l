// Write a lex program to detect weather a string written in UPPERCASE or lowercase
%{

%}
%%
[a-z]+ {printf("\n The following string is lowercase: %s", yytext);}
[A-A]+ {printf("\n The following string is UPPERCASE: %s", yytext);}
%%