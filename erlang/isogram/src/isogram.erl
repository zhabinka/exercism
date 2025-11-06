-module(isogram).

-export([is_isogram/1]).


is_isogram(Phrase) ->
  % Chars = [Char || Char <- string:lowercase(Phrase), not lists:member(Char, " -")],
  % sets:size(sets:from_list(Chars)) == length(Chars).

  Chars = re:replace(string:to_lower(Phrase), " |-", "", [global, {return, list}]),
  length(lists:uniq(Chars)) == length(Chars).
