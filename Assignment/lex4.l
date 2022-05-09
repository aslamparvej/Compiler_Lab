// Q4: Write a lex program that will identify tge vowels and consonants of a given input

%{

%}
%%
[a|e|i|o|u|A|E|I|O|U] {printf("\n %s is a vowel",yytext);}
[a-z A-Z (^a|e|i|o|u|A|E|I|O|U)] {printf("\n %s is a consonants",yytext);}
%%