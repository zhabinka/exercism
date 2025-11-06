-module(series).

-export([slices/2]).


slices(0, _Series) -> error("slice length cannot be zero");
slices(_, []) -> error("empty series is invalid");
slices(Length, Series) when Length > length(Series) ->
  error("slice length is too large");

slices(Length, Series) -> 
  % Steps = lists:seq(0, string:len(Series) - SliceLength),
  % lists:map(fun(Step) -> string:slice(Series, Step, SliceLength) end, Steps).

  [string:slice(Series, Step, Length) || Step <- lists:seq(0, string:len(Series) - Length)].
