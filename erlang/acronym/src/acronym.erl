-module(acronym).

-export([abbreviate/1]).


abbreviate(Phrase) -> 
  % Words1 = string:tokens(Phrase, " "),
  % Words2 = lists:foldr(fun(El, Acc) -> string:tokens(El,"-") ++ Acc end, [], Words1),
  % Words3 = lists:map(fun(Word) -> string:trim(Word, both, " _") end, Words2),
  %
  % Chars = lists:map(fun(Word) -> string:slice(Word, 0, 1) end, Words3),
  %
  % string:uppercase(string:join(Chars, "")).

  Words = string:lexemes(string:uppercase(Phrase), " _-"),
  [Char || [Char|_] <- Words].
