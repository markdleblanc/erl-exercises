-module(time).
-export([swedish_date/0]).
-import(list_utils, [duplicate/2]).

swedish_date() ->
    {Y, M, D} = date(),
    lpad(Y rem 100) ++ lpad(M) ++ lpad(D).

lpad(Number) ->
    Str = integer_to_list(Number),
    Padding = max(2 - length(Str), 0),
    duplicate(Padding, 48) ++ Str.
