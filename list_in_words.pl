inTerm(0, 'zero').
inTerm(1, 'one').
inTerm(2, 'two').
inTerm(3, 'three').
inTerm(4, 'four').
inTerm(5, 'five').
inTerm(6, 'six').
inTerm(7, 'seven').
inTerm(8, 'eight').
inTerm(9, 'nine').

inWords([], []).

inWords([H | T], [X | Y]) :-
    inTerm(H, X),
    inWords(T, Y).


