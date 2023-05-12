list_elem([]) :- !.

list_elem([X], L) :-
    L = X.

list_elem([_ | T], Last) :-
    list_elem(T, Last).

check(L) :-
    [H|_] = L,
    list_elem(L, Last),
    write(H),
    write(' '),
    write(Last),
    H =:= Last.
