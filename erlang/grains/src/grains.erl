-module(grains).

-export([square/1, total/0]).


square(Square) when Square < 1; Square > 64 ->
  {error , "square must be between 1 and 64"};

square(Square) -> round(math:pow(2, Square - 1)).

total() -> round(math:pow(2, 64)) - 1.

% erlang:float_to_list(789.1234,[{decimals,0}]).
