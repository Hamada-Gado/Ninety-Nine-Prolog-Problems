% 2.06 (**) A list of Goldbach compositions.

% goldbach_list(A,B) :- print a list of the Goldbach composition
%    of all even numbers N in the range A <= N <= B
%    (integer,integer)

% goldbach_list(A,B,L) :- perform goldbach_list(A,B), but suppress
% all output when the first prime number is less than the limit L.

:- ensure_loaded(p2_05).

goldbach_list(Lower, Upper) :- Lower < 4, goldbach_list(4, Upper, 2).
goldbach_list(Lower, Upper) :- goldbach_list(Lower, Upper, 2).
goldbach_list(Lower, Upper, Limit) :- Lower < 4, goldbach_list(4, Upper, Limit).

goldbach_list(N, N, Limit) :-
    N mod 2 =:= 0,
    goldbach(N, [P, Q]),
    print_goldbach(N, P, Q, Limit), !.

goldbach_list(Lower, Upper, Limit) :-
    Lower < Upper,
    Lower mod 2 =:= 0,
    goldbach(Lower, [P, Q]),
    print_goldbach(Lower, P, Q, Limit),
    New_Lower is Lower + 2,
    goldbach_list(New_Lower, Upper, Limit), !.

goldbach_list(Lower, Upper, Limit) :-
    Lower < Upper,
    Lower mod 2 =:= 1,
    New_Lower is Lower + 1,
    goldbach_list(New_Lower, Upper, Limit).

print_goldbach(A,P,Q,L) :- P >= L, !,
   writef('%t = %t + %t',[A,P,Q]), nl.
print_goldbach(_,_,_,_).