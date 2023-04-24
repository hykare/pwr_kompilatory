%{
#include <iostream>
#include <map>
#include <cctype>
#include <algorithm>
using namespace std;

void update_count(string word);
void downcase(string& text);
map<string, int> word_frequency;

%}

letter       [a-zA-Z]
word         {letter}{4,}
whitespace    [ \t\r\n\f]+

%%

{word} { update_count(string(yytext)); }
{whitespace}
.

%%

void update_count(string word) {
  downcase(word);
  bool word_found = word_frequency.find(word) != word_frequency.end();
  if(word_found) {
    word_frequency[word] += 1;
  }
  else {
    word_frequency[word] = 1;
  }
}

void downcase(string& text) {
  text[0] = tolower(text[0]);
}

int yywrap(void){
}

int main() {
  yylex();

  vector<pair<string, int>> top_ten(10);
  
  partial_sort_copy(word_frequency.begin(),
                    word_frequency.end(),
                    top_ten.begin(),
                    top_ten.end(),
                    [](std::pair<const std::string, int> const& l,
                        std::pair<const std::string, int> const& r)
                    {
                        return l.second > r.second;
                    });

  cout << "10 most common words:" << "\n";
  for(auto elem : top_ten) {
    cout << elem.first << "\t" << elem.second << "\n";
  }
}