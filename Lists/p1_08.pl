% 1.08 (**) Eliminate consecutive duplicates of list elements.

% compress(L, X) :- Eliminate consecutive duplicates of list elements.
%       (list, list)

compress([H|T], X) :- 
    compress([H|T], New_X, H),
    X = [H|New_X], !.

compress([], [], _).

compress([H|T], X, Acc) :-
    H = Acc,
    compress(T, X, H).

compress([H|T], X, Acc) :-
    H \= Acc,
    compress(T, New_X, H),
    X = [H|New_X].