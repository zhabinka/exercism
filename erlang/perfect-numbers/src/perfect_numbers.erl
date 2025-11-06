-module(perfect_numbers).

-export([classify/1]).


classify(Number) when Number =< 0 -> error(badarg);
classify(Number) -> 
  Sum = lists:sum(factors(Number)),
  if
    Sum == Number -> perfect;
    Sum > Number -> abundant;
    Sum < Number -> deficient
  end.

factors(Num) ->
  [N || N <- lists:seq(1, trunc(Num/2)), Num rem N == 0].
