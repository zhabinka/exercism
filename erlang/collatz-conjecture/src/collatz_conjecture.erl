-module(collatz_conjecture).

-export([steps/1]).


steps(N) when is_integer(N), N > 0 -> steps(N, 0);
steps(_) -> error(badarg).

steps(1, Acc) -> Acc;
steps(N, Acc) when N rem 2 == 0 -> steps(N div 2, Acc + 1);
steps(N, Acc) when N rem 2 == 1 -> steps(N * 3 + 1, Acc + 1).
