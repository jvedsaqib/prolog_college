transDFA(q0, a, q1).
transDFA(q0, b, q3).

transDFA(q1, a, q3).
transDFA(q1, b, q2).

transDFA(q2, a, q3).
transDFA(q2, b, q3).

transDFA(q3, a, q3).
transDFA(q3, b, q3).

final(q2).

accept(K, []) :-
    final(K), !.

accept(K, [H|T]) :-
    transDFA(K, H, N),
    accept(N, T), !.






