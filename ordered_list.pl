checkList(L):-
    write('Given List'),
    write(L),
    write('\n'),
    xsort(L,L1),
    write(L1),!.

xsort([X,Y],[Y,X]):-
    X>Y,!.
xsort([X,Y],[X,Y]):-
    X=<Y,!.

xsort([X,Y|Z],[Y|L1]):-
    X>Y,
    xsort([X|Z],L1).

xsort([X,Y|Z],[X|L1]):-
    X=<Y,
    xsort([Y|Z],L1).
