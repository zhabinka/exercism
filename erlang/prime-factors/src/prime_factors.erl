-module(prime_factors).

-export([factors/1]).


factors(Num) -> factors(Num, 2).

factors(1, _) -> [];

factors(Num, Divisor) when Num rem Divisor == 0 ->
  [Divisor | factors(Num div Divisor, Divisor)];

factors(Num, Divisor) -> factors(Num, Divisor + 1).
