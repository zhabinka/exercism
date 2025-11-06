-module(triangle).

-export([kind/3]).


kind(0, 0, 0) -> {error, "all side lengths must be positive"};

kind(A, B, C) when A > B + C; B > A + C; C > A + B ->
  {error, "side lengths violate triangle inequality"};

kind(A, A, A) -> equilateral;
kind(A, A, _) -> isosceles;
kind(_, A, A) -> isosceles;
kind(A, _, A) -> isosceles;
kind(_, _, _) -> scalene.
