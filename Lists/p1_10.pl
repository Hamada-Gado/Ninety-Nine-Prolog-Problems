% 1.10 (*) Run-length encoding of a list.

% encode(L1,L2) :- the list L2 is obtained from the list L1 by run-length
%    encoding. Consecutive duplicates of elements are encoded as terms [N,E],
%    where N is the number of duplicates of the element E.
%    (list,list)

:- ensure_loaded(p1_09).

encode(L, X) :-
    pack(L, New_L),
    find_length_all(New_L, X).

find_length([H|T], X) :-
    length([H|T], L),
    X = [L, H].

find_length_all([], []).
find_length_all([H|T], [X1|X2]) :-
    find_length(H, X1),
    find_length_all(T, X2).