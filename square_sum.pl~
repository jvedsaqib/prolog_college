square(X, Y) :-
    Y is X*X.

squared_sum([], 0) :- !.

squared_sum([H|T], Y) :-
    square(H, Z),
    squared_sum(T, Y1),
    Y is Y1 + Z.


