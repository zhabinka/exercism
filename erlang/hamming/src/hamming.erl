-module(hamming).

-export([distance/2]).


distance(Strand1, Strand2) ->
  try lists:zip(Strand1, Strand2) of
    Pairs when is_list(Pairs) ->
      Errors = lists:filter(fun({Nuc1, Nuc2}) -> Nuc1 =/= Nuc2 end, Pairs),
      length(Errors)
    catch
      error:_ -> {error, badarg}
  end.
