gcdL(X, Y, G) :-
    Y mod X =:= 0,
    G = X.

gcdL(X, Y, G) :-
    Y1 is Y mod X,
    Y1 =\= 0,
    gcdL(Y1, X, G).

gcd(X, Y, G) :-
    X > Y,
    gcdL(Y, X, G), !;
    gcdL(X, Y, G).

gcd_list([X,Y], G) :-
    gcd(X, Y, G), !.

gcd_list([X, Y | Z], G) :-
    gcd(X, Y, G1),
    gcd_list([G1|Z], G).

