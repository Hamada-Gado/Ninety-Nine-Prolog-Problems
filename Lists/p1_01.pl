% 1.01 (*) Find the last element of a list.

% my_last(X, L) :- X is the last element in list L
%   (element, list)

my_last(X, [X]).
my_last(X, [_|T]) :-
    my_last(X, T).