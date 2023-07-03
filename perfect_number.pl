is_perfect(Number) :-
    Number > 0,
    sum_of_divisors(Number, Sum),
    Number =:= Sum.

sum_of_divisors(Number, Sum) :-
    Number > 0,
    Sum is 0,
    calculate_sum_of_divisors(Number, 1, Sum).

calculate_sum_of_divisors(Number, Divisor, Sum) :-
    Divisor > Number // 2,
    Sum is 0.
calculate_sum_of_divisors(Number, Divisor, Sum) :-
    Number mod Divisor =:= 0,
    NextDivisor is Divisor + 1,
    calculate_sum_of_divisors(Number, NextDivisor, TempSum),
    Sum is TempSum + Divisor.

calculate_sum_of_divisors(Number, Divisor, Sum) :-
    NextDivisor is Divisor + 1,
    calculate_sum_of_divisors(Number, NextDivisor, Sum).
