checkNum(Num) :-
    Num =:= 0,
    write('Zero'), !.


checkNum(Num) :-
    Num > 0,
    write('Positive'), !.

checkNum(Num) :-
    Num < 0,
    write('Negative'), !.
