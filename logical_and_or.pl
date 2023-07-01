% Logical AND
and(X, Y) :-
    X,
    Y.

% Logical OR
or(X, _) :-
    X.
or(_, Y) :-
    Y.
