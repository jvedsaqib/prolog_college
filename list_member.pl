listMember(H, Key) :-
    H =:= Key,
    !.

listMember([H|T], Key) :-
    not(H =:= Key),
    listMember(T, Key).
