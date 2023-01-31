-module(geom).
-export([perimeter/1]).

perimeter({square, Side}) ->
    4 * Side;
perimeter({circle, Radius}) ->
    2 * math:pi() * Radius;
perimeter({triangle, A, B, C}) ->
    math:sqrt((A + B + C) * (-A + B + C) * (A - B + C) * (A + B - C)) / 4.
