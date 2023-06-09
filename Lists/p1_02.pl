% 1.02 (*) Find the last but one element of a list.

% last_but_one(X, L) :- X is the last but one element of list L
%           (element, list)

last_but_one(X, [X, _]).
last_but_one(X, [_|T]) :-
    last_but_one(X, T).