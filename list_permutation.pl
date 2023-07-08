del(X, [X|LIST1], LIST1).

del(X, [Y|LIST], [Y|LIST1]) :-
    del(X, LIST, LIST1).

list_permutation([], []).

list_permutation(L, [X|P]) :-
    del(X, L, L1),
    list_permutation(L1, P).
