% 1.05 (*) Reverse a list.

% my_reverse(L1, L2) :- L2 is the reverse of the list L1
%   (list, list)

my_reverse(L1, L2) :- my_reverse(L1, L2, []).
my_reverse([], L, L).
my_reverse([H|T], L2, L3) :-
    my_reverse(T, L2, [H|L3]).