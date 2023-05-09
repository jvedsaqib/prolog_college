max(X, Y, X) :-
    X >= Y, !.

max(_, Y, Y).

maxList([L], L).

maxList([H|T], X) :-
    maxList(T, M), max(H, M, X).
