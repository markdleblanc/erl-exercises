-module(sort).
-export([bubble_sort/1]).

%% Slow O(N*N) but simple sort algorithm.
bubble_sort([H|T]) ->
    bubble_sort([H|T], [], false).

bubble_sort([], Acc, true) -> lists:reverse(Acc);
bubble_sort([], Acc, false) -> bubble_sort(lists:reverse(Acc), [], true);
bubble_sort([P, S | T], Acc, _) when P > S -> bubble_sort([P | T], [S | Acc], false);
bubble_sort([H|T], Acc, Halt) -> bubble_sort(T, [H | Acc], Halt).


