checkNum(X) :-
    X mod 2 =:= 0,
    write('Even'), ! ; write('Odd').
