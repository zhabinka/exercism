-module(queen_attack).

-export([can_attack/2]).


can_attack({X, _} = _WhiteQueen, {X, _} = _BlackQueen) -> true;
can_attack({_, Y}, {_, Y}) -> true;
can_attack({Xw, Yw}, {Xb, Yb}) -> abs(Xw - Xb) == abs(Yw - Yb).


  % (WX == BX) orelse
  % (WY == BY) orelse
  % (WX + WY == BX + BY) orelse
  % (WX - WY == BX - BY).
