last([X], L) :-
    L = X.

last([_|T], L) :-
    last(T,L).
