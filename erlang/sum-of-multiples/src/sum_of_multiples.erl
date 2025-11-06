-module(sum_of_multiples).

-export([sum/2]).


sum(Factors, Limit) -> 
  All = lists:map(fun (Factor) -> calculate(Factor, Limit) end, Factors),
  lists:sum(lists:uniq(lists:flatten(All))).


calculate(Factor, Limit) -> 
  [N || N <- lists:seq(1, Limit), N rem Factor == 0, N < Limit].
