% 2.04 (*) A list of prime numbers.

% prime_range(N, L) :- L is all prime Numbers =< N.
%   (integer, list)

:- ensure_loaded(p2_01).

prime_range(N, N, [N]) :- is_prime(N).
prime_range(N, N, []) :- \+is_prime(N).

prime_range(Lower, Upper, [Lower|T]) :-
    Lower >= 2,
    Lower < Upper,
    is_prime(Lower),
    New_Lower is Lower + 1,
    prime_range(New_Lower, Upper, T), !.

prime_range(Lower, Upper, L) :-
    Lower >= 2,
    Lower < Upper,
    New_Lower is Lower + 1,
    prime_range(New_Lower, Upper, L).