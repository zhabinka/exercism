-module(darts).

-export([score/2]).


score(X, Y) ->
  Result = math:sqrt(math:pow(X, 2) + math:pow(Y, 2)),
  if
    Result =< 1 -> 10;
    Result =< 5 -> 5;
    Result =< 10 -> 1;
    true -> 0
  end.
