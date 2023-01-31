-module(temp).
-export([convert/1]).

ftoc(F) -> (F - 32) * 5 / 9.
ctof(C) -> (C * 9/5) + 32.

convert({c, D}) ->
    ctof(D);
convert({f, D}) ->
    ftoc(D).
