traversal([]) :-
    !.

traversal([H|T]) :-
    write(H),
    write('\n'),
    traversal(T).

