-module(raindrops).

-export([convert/1]).

-define(DROPS, [{3, "Pling"}, {5, "Plang"}, {7, "Plong"}]).



convert(Number) ->
  case [Sound || {Factor, Sound} <- ?DROPS, Number rem Factor =:= 0] of
    [] -> integer_to_list(Number);
    Music -> lists:flatten(Music)
  end.
