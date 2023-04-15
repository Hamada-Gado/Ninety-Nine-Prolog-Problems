% 2.07 (**) Determine the greatest common divisor of two positive integer numbers.

% gcd(A,B,G) :- G is the greatest common divisor of A and B
%    (integer, integer, integer)

gcd(0, B, B).
gcd(A, 0, A).

gcd(A, B, G) :-
    A > 0,
    B > 0,
    R is A mod B,
    gcd(B, R, G), !.

:- arithmetic_function(gcd/2).