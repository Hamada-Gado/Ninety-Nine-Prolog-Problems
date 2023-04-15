% 2.03 (**) Determine the prime factors of a given positive integer (2).

:- ensure_loaded(p2_02).
:- ensure_loaded("../Lists/p1_10").

prime_factors_mult(Number, L) :- 
    prime_factors(Number, L2),
    encode(L2, L3),
    switch(L3, L).

switch([], []).
switch([[H1, H2]|T1], [[H2, H1]|T2]) :- switch(T1, T2).