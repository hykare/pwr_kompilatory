%{
  int line_number = 0;
%}

line          ^.*
empty_line     \n

%%

{line}|{empty_line} { 
  printf("%d\t%s", ++line_number, yytext);
}


%%

int yywrap(){}
int main() {
  // FILE *fp;
  // fp = fopen("input.txt","r");
  // yyin = fp;

  yylex();
}