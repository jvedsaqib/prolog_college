concat_list([], L, L).

concat_list([X1|L1], L2, [X1|L3]) :-
    concat_list(L1, L2, L3).
