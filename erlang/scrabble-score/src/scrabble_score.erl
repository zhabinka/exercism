-module(scrabble_score).

-export([score/1]).

-define(COAST, #{"A" => 1,
                 "E" => 1,
                 "I" => 1,
                 "O" => 1,
                 "U" => 1,
                 "L" => 1,
                 "N" => 1,
                 "R" => 1,
                 "S" => 1,
                 "T" => 1,
                 "D" => 2,
                 "G" => 2,
                 "B" => 3,
                 "C" => 3,
                 "M" => 3,
                 "P" => 3,
                 "F" => 4,
                 "H" => 4,
                 "V" => 4,
                 "W" => 4,
                 "Y" => 4,
                 "K" => 5,
                 "J" => 8,
                 "X" => 8,
                 "Q" => 10,
                 "Z" => 10
                }).


score([]) -> 0;
score([H | T]) -> maps:get(string:uppercase([H]), ?COAST) + score(T).

% -define(ValueMap, <<0,1,3,3,2,1,4,2,4,1,8,5,1,3,1,1,3,10,1,1,1,1,4,4,8,4,10,0,0,0,0,0>>).
%
% value_of(C) -> binary:at(?ValueMap, C band 16#1f).
%
% score(Word) -> lists:foldl(fun (C, Sum) -> Sum + value_of(C) end, 0, Word).
