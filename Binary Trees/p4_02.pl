% 4.02 (**) Construct completely balanced binary trees

% cbal_tree(N,T) :- T is a completely balanced binary tree with N nodes.
% (integer, tree)

cbal_tree(0, nil) :- !.

cbal_tree(N, t(x, L, R)) :-
    N > 0,
    Div is (N - 1) // 2,
    NL is Div,
    NR is N - 1 - Div,
    cbal_tree(NL, L),
    cbal_tree(NR, R).

cbal_tree(N, t(x, L, R)) :-
    N > 0,
    Div is (N - 1) // 2,
    NR is Div,
    NL is N - 1 - Div,
    NR =\= NL,
    cbal_tree(NL, L),
    cbal_tree(NR, R).