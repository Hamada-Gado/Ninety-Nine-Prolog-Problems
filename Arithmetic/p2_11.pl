% 2.11 (*) Compare the two methods of calculating Euler's totient function.

:- ensure_loaded(p2_09).
:- ensure_loaded(p2_10).

totient_test(N) :-
   write('totient_phi (p2_09):'),
   time(totient_phi(N,Phi1)),
   write('result = '), write(Phi1), nl,
   write('totient_phi_2 (p2_10):'),
   time(totient_phi_2(N,Phi2)),
   write('result = '), write(Phi2), nl.