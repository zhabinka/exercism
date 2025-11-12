-module(run_length_encoding).

-export([decode/1, encode/1]).


decode([]) -> [];
decode([Head | Tail] = String) ->
	case string:to_integer(String) of
		{error, no_integer} -> [Head | decode(Tail)];
		{Length, [Char | Rest]} -> lists:duplicate(Length, Char) ++ decode(Rest)
	end.

encode([]) -> [];
encode([Head | Tail]) ->
	case lists:splitwith(fun(Char) -> Char =:= Head end, Tail) of
		{[], Rest} -> [Head | encode(Rest)];
		{Duplicates, Rest} -> integer_to_list(length(Duplicates) + 1) ++ [Head | encode(Rest)]
	end.

% encode(Str) ->
%   {match, Groups} = re:run(Str, "(.)\\1*", [global]),
%
%   lists:foldl(fun ([{I, Len}, _], Acc) ->
% 							Length = if
% 												 Len == 1 -> [];
% 												 true -> integer_to_list(Len)
% 											 end,
% 							Acc ++ Length ++ [lists:nth(I + 1, Str)]
%               end, [], Groups).


% re:compile("^[a-z]$").
% re:inspect(MP, namelist).

% re:replace("asdf", "a", "1", [{return, list}]).
% re:replace("asdf", "a", "1", [{return, binary}]).
