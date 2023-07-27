same_elem([]).
same_elem([_]).

same_elem([H | T]) :-
    reverse(T, [H | _]).
