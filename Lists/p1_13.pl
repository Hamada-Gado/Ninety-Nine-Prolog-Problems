% 1.13 (**) Run-length encoding of a list (direct solution).

% encode_direct(L1,L2) :- the list L2 is obtained from the list L1 by 
%    run-length encoding. Consecutive duplicates of elements are encoded 
%    as terms [N,E], where N is the number of duplicates of the element E.
%    However, if N equals 1 then the element is simply copied into the 
%    output list.
%    (list,list)


encode_direct([], []).

encode_direct([H|T], [H|X]) :-
    find_occurences([H|T], 1, R),
    encode_direct(R, X), !.

encode_direct([H|T], [[L, H]|X]) :-
    find_occurences([H|T], L, R),
    encode_direct(R, X), !.


% find_occurences(L, N, R) :- find the number of occurences of first consecutive duplicate in list L, and R is
% the remaining list after removing them.
%       (list, integer, list)

find_occurences([H|T], N, R) :- find_occurences([H|T], H, 0, N, R).

find_occurences([], _, N, N, []).

find_occurences([H|T], H, N, FN, R) :-
    NN is N + 1,
    find_occurences(T, H, NN, FN, R).

find_occurences([H1|T], H2, N, N, [H1|T]) :- H1 \= H2.