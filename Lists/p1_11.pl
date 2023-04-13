% 1.11 (*) Modified run-length encoding.

% encode_modified(L1,L2) :- the list L2 is obtained from the list L1 by 
%    run-length encoding. Consecutive duplicates of elements are encoded 
%    as terms [N,E], where N is the number of duplicates of the element E.
%    However, if N equals 1 then the element is simply copied into the 
%    output list.
%    (list,list)

:- ensure_loaded(p1_10).

encode_modified(L1, L2) :- 
    encode(L1, L3),
    remove_ones(L3, L2).

remove_ones([], []).
remove_ones([[1, H]|T1], [H|T2]) :- remove_ones(T1, T2).
remove_ones([H|T1], [H|T2]) :- remove_ones(T1, T2).