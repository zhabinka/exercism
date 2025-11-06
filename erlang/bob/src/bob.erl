-module(bob).

-export([response/1]).


response(String) ->
  Str = string:trim(String),
  case {string:right(Str, 1), re:run(Str, "[A-Z? ]+$"), Str} of
    {_, _, []} -> "Fine. Be that way!";
    {"?", {match, _}, _} -> "Calm down, I know what I'm doing!";
    {"?", _, _}  -> "Sure.";
    {_, {match, _}, _} -> "Whoa, chill out!";
    _ -> "Whatever."
  end.
