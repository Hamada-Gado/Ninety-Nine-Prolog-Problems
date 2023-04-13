% 1.06 (*) Find out whether a list is a palindrome.

% palindrome(L) :- checks if list L is a palindrome
%       (list)

% palindrome(L1, L2, X) :- X is the first element in L1 and L2 is the rest of list L1 repeat until last element then compare them and do it again with L2.
%       (list, list, element)

% Note: this was solved without using built-in predict reverse
% so, alternative solution is: palindrome(L) :- reverse(L,L). -_-

palindrome([]).
palindrome([H|T]) :- palindrome(T, [], H), !.

palindrome([X], [], X) .
palindrome([], [], _).

palindrome([X], [H|T], X) :-
    palindrome(T, [], H).

palindrome([H|T], L, X) :-
    palindrome(T, [H|L], X).