% 1.03 (*) Find the K'th element of a list

% element_at(X, L, C) :- X is the element of list L in index C
%   (element, list, integer)

element_at(X, [X|_], 1).
element_at(X, [_|T], C) :-
    C > 1,
    New_C is C - 1,
    element_at(X, T, New_C).