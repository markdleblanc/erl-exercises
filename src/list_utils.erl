-module(list_utils).
-export([min/1,max/1,min_max/1]).

min_max([]) -> io:format("Cannot find min and max value of empty list.~n");
min_max([H|T]) ->
    Min = min([H|T]),
    Max = max([H|T]),
    { Min, Max }.

min([]) -> io:format("Cannot find min value of empty list.~n");
min([H|T]) ->
    lmin(H, T).

lmin(Min, [H|T]) ->
    case Min < H of
    true -> lmin(Min, T);
    false -> lmin(H, T)
    end;
lmin(Min, []) -> Min.

max([]) -> io:format("Cannot find max value of empty list.~n");
max([H|T]) ->
    lmax(H, T).

lmax(Max, [H|T]) ->
    case Max > H of
    true -> lmax(Max, T);
    false -> lmax(H, T)
    end;
lmax(Max, []) -> Max.
