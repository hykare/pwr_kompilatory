digit         [0-9]
id            [a-zA-Z_][a-zA-Z0-9\-_]*
whitespace    [ \t\r\n\f]+
string        \".*\"

%%

{digit}+                      { printf("%s\t\t INTEGER(%d)   \n", yytext, atoi(yytext)); }
{digit}+"."{digit}+           { printf("%s\t\t FLOAT(%f)     \n", yytext, atof(yytext)); }
{string}                      { printf("%s\t\t STRING        \n", yytext); }
"+"                           { printf("%s\t\t PLUS          \n", yytext); }
"-"                           { printf("%s\t\t MINUS         \n", yytext); }
"*"                           { printf("%s\t\t TIMES         \n", yytext); }
"/"                           { printf("%s\t\t SLASH         \n", yytext); }
"("                           { printf("%s\t\t LPAREN        \n", yytext); }
")"                           { printf("%s\t\t RPAREN        \n", yytext); }
"["                           { printf("%s\t\t LSQUARE       \n", yytext); }
"]"                           { printf("%s\t\t RSQUARE       \n", yytext); }
"{"                           { printf("%s\t\t LCURLY        \n", yytext); }
"}"                           { printf("%s\t\t RCURLY        \n", yytext); }
";"                           { printf("%s\t\t SEMICOL       \n", yytext); }
","                           { printf("%s\t\t COMMA         \n", yytext); }
"."                           { printf("%s\t\t PERIOD        \n", yytext); }
"#"                           { printf("%s\t\t OCTOTHORPE    \n", yytext); }
"&"                           { printf("%s\t\t AMPERSAND     \n", yytext); }
"="                           { printf("%s\t\t ASSIGN        \n", yytext); }
"=="                          { printf("%s\t\t EQUALS        \n", yytext); }
"<"                           { printf("%s\t\t LESS          \n", yytext); }
">"                           { printf("%s\t\t GREATER       \n", yytext); }
"<="                          { printf("%s\t\t LESSEQ        \n", yytext); }
">="                          { printf("%s\t\t GREATEQ       \n", yytext); }
"true"                        { printf("%s\t\t TRUE          \n", yytext); }
"false"                       { printf("%s\t\t FALSE         \n", yytext); }
"and"                         { printf("%s\t\t AND           \n", yytext); }
"or"                          { printf("%s\t\t OR            \n", yytext); }
"not"                         { printf("%s\t\t NOT           \n", yytext); }
"do"                          { printf("%s\t\t DO            \n", yytext); }
"end"                         { printf("%s\t\t END           \n", yytext); }
"def"                         { printf("%s\t\t DEF           \n", yytext); }
"class"                       { printf("%s\t\t CLASS         \n", yytext); }
"if"                          { printf("%s\t\t IF            \n", yytext); }
"else"                        { printf("%s\t\t ELSE          \n", yytext); }
"while"                       { printf("%s\t\t WHILE         \n", yytext); }
{id}                          { printf("%s\t\t IDENT(%s)     \n", yytext, yytext); }

{whitespace}
.                             { printf("unrecognized character(%s)\n", yytext); }

%%

int yywrap(){}
int main() {
  yylex();
}
