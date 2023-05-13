transNFA(q0, a, q0).
transNFA(q0, a, q1).
transNFA(q0, [], q2).
transNFA(q1, b, q2).
transNFA(q1, b, q3).

finalNFA(q2).

acceptNFA(K, []) :-
    finalNFA(K), !.

acceptNFA(K, [H|T]) :-
    transNFA(K, H, N),
    acceptNFA(N, T),!.

acceptNFA(K, X) :-
    transNFA(K, [], N),
    acceptNFA(N, X), !.


