add_element(_, [], []) :- !.

add_element(X, [X|T], L) :-
    add_element(X,T,L).

add_element(X, [Y|T], [Y|L]) :-
    add_element(X, T, L).
