% 2.05 (**) Goldbach's conjecture.

% goldbach(N, L) :- L is list of two prime number and their sum is equal to N.
%   (integer, list)

:- ensure_loaded(p2_01).
:- ensure_loaded(p2_04).

goldbach(Number, L) :-
    Number > 2,
    prime_range(2, Number, P_Range),
    goldbach(Number, P_Range, L).

goldbach(Number, [H|_], [H, Sub]) :-
    Sub is Number - H,
    is_prime(Sub).

goldbach(Number, [_|T], L) :- goldbach(Number, T, L).