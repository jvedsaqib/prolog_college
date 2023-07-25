max(X,Y,Y) :- Y >= X.
max(X,Y,X) :- X > Y.

min(X,Y,Y) :- Y =< X.
min(X,Y,X) :- X =< Y.

fuzzy_union([], [], []).
fuzzy_union([X|Xs], [Y|Ys], [Z|Zs]) :-
    max(X, Y, Z),
    fuzzy_union(Xs, Ys, Zs).
