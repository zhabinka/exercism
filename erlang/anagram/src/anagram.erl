-module(anagram).

-export([find_anagrams/2]).


find_anagrams(Subject, Candidates) -> 
  [Word || Word <- Candidates, is_anagram(Word, Subject)].

is_anagram(Word1, Word2) ->
  Upper1 = string:to_upper(Word1),
  Upper2 = string:to_upper(Word2),

  (Upper1 /= Upper2) and (lists:sort(Upper1) == lists:sort(Upper2)).
