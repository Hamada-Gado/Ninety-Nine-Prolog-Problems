% 2.10 (**) Calculate Euler's totient function phi(m) (2).

% totient_phi_2(M,Phi) :- Phi is the value of Euler's totient function
%    for the argument M, but using list of the prime factors of M.
%    (integer,integer)

:- ensure_loaded(p2_03).

totient_phi_2(M, Phi) :- 
    prime_factors_mult(M, L),
    calc_totient_phi(L, Phi), !.

calc_totient_phi([], 1).

calc_totient_phi([H|T], Phi) :-
    one_iter(H, N),
    calc_totient_phi(T, N_Phi),
    Phi is N_Phi * N.

one_iter([P, M], N) :- N is (P - 1) * P ** (M - 1).

:- arithmetic_function(totient_phi_2/1).