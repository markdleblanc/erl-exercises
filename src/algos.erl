-module(algos).
-export([binary_search/2]).

%% Binary search implementation
%% Subdivide a sorted list and drop the half that cannot have
%% the search term.
binary_search([], _) -> -1;
binary_search(List, _) when not is_list(List) -> io:format("Binary search must be performed on a list.~n");
binary_search(List, N) -> Length = length(List), binary_search(List, N, 0, Length).

binary_search(_, _, Left, Right) when Left > Right -> -1;
binary_search(List, N, Left, Right) ->
    Middle = Left + (Right - Left) div 2,
    Item = lists:nth(Middle, List),

    case Item == N of
        true -> Middle - 1;
        false ->

            case Item > N of
                true -> binary_search(List, N, Left, Middle - 1);
                false -> binary_search(List, N, Middle + 1, Right)
            end
    end.



