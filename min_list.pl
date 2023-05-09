min(X, Y, X) :-
    X =< Y, !.

min(_, Y, Y).

minList([L], L).

minList([H|T], X) :-
    minList(T, M), min(H, M, X).
