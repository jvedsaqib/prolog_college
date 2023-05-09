conc([], L1, L1).
conc([H|L1], L2, [H|L3]) :-
    conc(L1, L2, L3).

/*
 * i) reverse([X],[X]). --> one element idhr udhr
 * ii) recursooonnnnnnn
 */

reverse([X],[X]).
reverse([X|L1], L2):-
    reverse(L1, R1), conc(R1,[X],L2).

% What is palindrome? Nation wants to know

palin(P):-
    reverse(P, P).


/*
 * max of two num
 * (1,2) -> max = 2  # a
 * (2,1) -> max = 2  # b
 * i) 1st element max --> max(X|Y):- X > Y, X.
 * ii) 2nd element max --> max(X|Y):- Y > X, Y.
 */

max(X, Y, X) :- X >= Y, !.
max(X, Y, Y) :- X < Y.

/* max of a list
 *  min of a list
 *  prime number
 */





