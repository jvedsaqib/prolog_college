gcd(X, X, X) :- !.

%gcd(X, 0, X) :- !.

%gcd(0, Y, Y) :- !.

gcd(X, Y, G) :-
    X >= Y,
    X1 is X - Y,
    gcd(X1, Y, G).

gcd(X, Y, G) :-
    Y >= X,
    Y1 is Y - X,
    gcd(X, Y1, G).


