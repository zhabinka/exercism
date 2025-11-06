-module(resistor_color).

-export([colors/0, color_code/1]).

-define(ENCODES, [{black, 0},
                  {brown, 1},
                  {red, 2},
                  {orange, 3},
                  {yellow, 4},
                  {green, 5},
                  {blue, 6},
                  {violet, 7},
                  {grey, 8},
                  {white, 9}]).


colors() -> lists:map(fun ({Key, _}) -> Key end, ?ENCODES).
% colors() -> {Colors, _} = lists:unzip(?ENCODES), Colors.

color_code(Color) -> proplists:get_value(Color, ?ENCODES).
