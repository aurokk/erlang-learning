-module lesson_003.

-compile export_all.

head([H|_]) ->
    H.

same(X, X) ->
    true;
same(_, _) ->
    false.

valid_time({Date = {Y,M,D}, Time = {H,Min,S}}) ->
    io:format("Кортеж даты (~p) говорит сегодня: ~p/~p/~p,~n",[Date,Y,M, D]),
    io:format("Кортеж времени (~p) показывает: ~p:~p:~p.~n", [Time,H,Min,S]);
valid_time(_) ->
    io:format("Перестань давать мне незнакомые данные!~n").

old_enough(X) when X >= 16 ->
    true;
old_enough(_) ->
    false.

right_age(X) when X >= 16, X =< 104 ->
    true;
right_age(_) ->
    false.

len([]) ->
    0;

len([_|T]) ->
    1 + len(T).

tail_len(L) ->
    tail_len(L, 0).

tail_len([], Acc) ->
    Acc;
tail_len([_|T], Acc) ->
    tail_len(T, Acc + 1).