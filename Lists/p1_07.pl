% 1.07 (**) Flatten a nested list structure.

% my_flatten(L, X) :- X is a 1-D list of the list of lists L
%       (list, list)

my_flatten([], []).

my_flatten([H|T], X) :-
    is_list(H),
    my_flatten(H, New_H),
    my_flatten(T, New_T),
    append(New_H, New_T, X), !.

my_flatten([H|T], X) :-
    \+is_list(H),
    my_flatten(T, New_T),
    append([H], New_T, X), !.