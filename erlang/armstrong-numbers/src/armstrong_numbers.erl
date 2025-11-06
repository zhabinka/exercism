-module(armstrong_numbers).

-export([is_armstrong_number/1]).


is_armstrong_number(Number) -> 
  Digits = integer_to_list(Number),
  Pow = length(Digits),
  PowDigits = lists:map(
              fun (Num) -> math:pow(list_to_integer([Num]), Pow) end,
              Digits),
  % PowDigits = [math:pow(NumCode - $0, Pow) || NumCode <- Digits],
  lists:sum(PowDigits) == Number.


