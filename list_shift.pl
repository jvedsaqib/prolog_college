shift([First | Rest], Shifted) :-
	concatenation(Rest, [First], Shifted).

concatenation([], L, L).
concatenation([X1 | L1], L2, [X1 | L3]) :-
	concatenation(L1, L2, L3).
