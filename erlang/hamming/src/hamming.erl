-module(hamming).

-export([distance/2]).


% distance(Strand1, Strand2) ->
%   try lists:zip(Strand1, Strand2) of
%     Pairs when is_list(Pairs) ->
%       Errors = lists:filter(fun({Nuc1, Nuc2}) -> Nuc1 =/= Nuc2 end, Pairs),
%       length(Errors)
%     catch
%       error:_ -> {error, badarg}
%   end.

distance(Strand1, Strand2) ->
  try
    lists:foldl(fun({X, X}, Errors_count) -> Errors_count;
                   (_, Errors_count) -> Errors_count + 1 end,
                0, lists:zip(Strand1, Strand2))
    catch
      error:_ -> {error, badarg}
  end.
