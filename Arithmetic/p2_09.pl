% 2.09 (**) Calculate Euler's totient function phi(m).

% totient_phi(M,Phi) :- Phi is the value of the Euler's totient function
%    phi for the argument M.
%    (integer, integer)

:- ensure_loaded(p2_08).

totient_phi(1, 1).

totient_phi(M, Phi) :- totient_phi(1, M, Phi), !.

totient_phi(M, M, 0).

totient_phi(N, M, Phi) :-
    coprime(N, M),
    N_N is N + 1,
    totient_phi(N_N, M, N_Phi),
    Phi is N_Phi + 1.

totient_phi(N, M, Phi) :-
    N_N is N + 1,
    totient_phi(N_N, M, Phi).

:- arithmetic_function(totient_phi/1).