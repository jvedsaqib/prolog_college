divisible(X, Y) :-
    X mod Y =:= 0, !.
    % if we get a number that is divisible by any other number rather than itselt then not prime

divisible(X, Y) :-
    X > Y + 1,
    Y1 is Y + 1,
    divisible(X, Y1).
/*
 * i) Check if the loop-number is less than the given number
 * ii) increment and assign loop-number to Y1
 * iii) check if the given number is divisible by the loop number or not
 */

isPrime(2) :- true, !. % 2 is prime

isPrime(X) :- X < 2, !, false. % lesser than 2 is not prime

isPrime(X) :- not(divisible(X, 2)). % if it is divisible then no prime


