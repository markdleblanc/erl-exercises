-module(list_utils).
-export([min/1,max/1]).

min([H|T]) ->
    lmin(T, H).

max([H|_]) -> H.

lmin([H|T], C) when H > C ->
    lmin(T, C);
lmin([H|T], C) when H < C ->
    lmin(T, H);
lmin([H|T], C) when H =:= C ->
    lmin(T, C);
lmin([], C) -> C.
