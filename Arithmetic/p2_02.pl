% 2.02 (**) Determine the prime factors of a given positive integer.

% prime_factors(Number, L) :- L is the list of prime factors of Number.
%    (integer,list)

% prime_factors(Number, Divisor, L) :- Divisor is a possible prime factor of initial Number.
%       (integer, integer, list)

:- ensure_loaded(p2_01).

prime_factors(Number, L) :- Number > 0, prime_factors(Number, 2, L), !.

prime_factors(1, _, []).

prime_factors(Number, Divisor, [H|T]) :-
    is_prime(Divisor),
    Number mod Divisor =:= 0,
    H is Divisor,
    New_Number is Number / Divisor,
    prime_factors(New_Number, Divisor, T).

prime_factors(Number, Divisor, L) :-
    New_Divisor is Divisor + 1,
    prime_factors(Number, New_Divisor, L).