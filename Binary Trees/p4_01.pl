% 4.01 (*) Check whether a given term represents a binary tree

% istree(T) :- T is a term representing a binary tree.

is_tree(t(_, nil, nil)).
is_tree(t(_, L, R)) :- is_tree(L), is_tree(R).
