% 1.04 (*) Find the number of elements of a list

% my_length(X, L) :- X is the number of elements of list L
%       (integer, list)

my_length(0, []).
my_length(X, [_|T]) :-
    my_length(New_X, T),
    X is New_X + 1.