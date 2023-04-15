% 2.08 (*) Determine whether two positive integer numbers are coprime.

% coprime(A,B) :- A and B are coprime if their greatest common divisor equals 1.
%    (integer, integer)

:- ensure_loaded(p2_07).

coprime(A,B) :- gcd(A,B,1).