% 2.01 (**) Determine whether a given integer number is prime.

% is_prime(P) :- P is a prime number
%    (integer)


is_prime(Number) :- 
    Number >= 2,
    Divisor is Number - 1,
    check_prime(Number, Divisor), !.

check_prime(_, 1).
check_prime(Number, Divisor) :-
    Number mod Divisor =\= 0,
    New_Divisor is Divisor - 1,
    check_prime(Number, New_Divisor).