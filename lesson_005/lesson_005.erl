-module lesson_005.

-compile export_all.

duplicate(0, _) ->
    [];
duplicate(N, Term) when N > 0 ->
    [Term | duplicate(N-1, Term)].


tail_duplicate(N, Term) ->
    tail_duplicate(N, Term, []).
tail_duplicate(0, _, List) ->
    List;
tail_duplicate(N, Term, List) when N > 0 ->
    tail_duplicate(N-1, Term, [Term | List]).

reverse([]) ->
    [];
reverse([H|T]) ->
    reverse(T)++[H].

zip([], []) ->
    [];
zip([X|Xs], [Y|Ys]) ->
    [{X,Y} | zip(Xs, Ys)].

zip_tail(X, Y) -> 
    reverse(zip_tail(X, Y, [])). 
zip_tail([], [], Acc) ->
    Acc;
zip_tail([X|Xs], [Y|Ys], Acc) ->
    zip_tail(Xs, Ys, [{X,Y} | Acc]).

lenient_zip([], _) ->
    [];
lenient_zip(_, []) ->
    [];
lenient_zip([X|Xs], [Y|Ys]) ->
    [{X,Y} | lenient_zip(Xs, Ys)].

lenient_zip_tail(X, Y) -> 
    reverse(lenient_zip_tail(X, Y, [])). 
lenient_zip_tail(_, [], Acc) ->
    Acc;
lenient_zip_tail([], _, Acc) ->
    Acc;
lenient_zip_tail([X|Xs], [Y|Ys], Acc) ->
    lenient_zip_tail(Xs, Ys, [{X,Y} | Acc]).