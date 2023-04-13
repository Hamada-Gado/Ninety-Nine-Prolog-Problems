% 1.12 (**) Decode a run-length encoded list.

% decode(L1,L2) :- L2 is the uncompressed version of the run-length
%    encoded list L1.
%    (list,list)

decode([], []).

decode([[N, H]|T], L) :-
    repeat_head(N, H, L1),
    decode(T, L2),
    append(L1, L2, L), !.

decode([H|T], [H|L]) :-
    decode(T, L).

% repeat_head(N, H, L) :- make list L of element H N times.
%   (integer, element, list)

repeat_head(1, H, [H]).
repeat_head(N1, H, [H|T]) :-
    N2 is N1 - 1,
    repeat_head(N2, H, T).