% 1.09 (**) Pack consecutive duplicates of list elements into sublists.

% pack(L1, L2) :- L2 a list of lists of consecutive repeated elements of L1
%   (list, list)

pack([], []).
pack(L, X) :- 
    one_pack(L, One_Pack, New_L),
    pack(New_L, New_One_Pack),
    append([One_Pack], New_One_Pack, X), !.

% one_pack(X, One_Pack, L) :- L is the rest of X after removing first element of X, and 
% One_Pack is a list of the consecutive repeated first element of X

one_pack([H|T], One_Pack, L) :- one_pack([H|T], H, One_Pack, L).
one_pack([H|T], H, [H|One_Pack], L) :- one_pack(T, H, One_Pack, L), !.
one_pack(L, _, [], L).