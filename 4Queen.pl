solution([]).

solution([X/Y | Other]) :-
    solution(Other),
    member(Y, [1,2,3,4,5,6,7,8]),
    noattack(X/Y, Other).

noattack(_, []).

noattack(X/Y, [X1/Y1 | Other]) :-
    Y =\= Y1,
    X1 - X =\= Y1 - Y,
    X - X1 =\= Y1 - Y,
    noattack(X/Y, Other).

member(X, [X | _]).

member(X, [_|L]) :-
    member(X, L).

template([1/_, 2/_, 3/_, 4/_, 5/_, 6/_, 7/_, 8/_]).

% template([1/_, 2/_, 3/_, 4/_, 5/_, 6/_, 7/_, 8/_, 9/_, 10/_, 11/_,
% 12/_, 13/_, 14/_, 15/_, 16/_]).
