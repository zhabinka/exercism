-module(resistor_color_duo).

-export([value/1]).

% -define(ENCODES, #{
%         black => "0",
%         brown => "1",
%         red => "2",
%         orange => "3",
%         yellow => "4",
%         green => "5",
%         blue => "6",
%         violet => "7",
%         grey => "8",
%         white => "9"
%      }).


% value(Colors) ->
%     List = [maps:get(Resistor, ?ENCODES) || Resistor <- Colors],
%     String = string:join(List, ""),
%     list_to_integer(string:slice(String, 0, 2)).

% value([Color1, Color2 | _]) ->
%     list_to_integer(maps:get(Color1, ?ENCODES) ++ maps:get(Color2, ?ENCODES)).

value([Color1, Color2 | _]) ->
    encode(Color1) * 10 + encode(Color2).

encode(black) -> 0;
encode(brown) -> 1;
encode(red) -> 2;
encode(orange) -> 3;
encode(yellow) -> 4;
encode(green) -> 5;
encode(blue) -> 6;
encode(violet) -> 7;
encode(grey) -> 8;
encode(white) -> 9.
