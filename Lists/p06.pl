% 1.06 (*) Find out whether a list is a palindrome.

% palindrome(L) :- checks if list L is a palindrome
%       (list)

% store first element and rest of list except last element then compare
% and do it again with the rest of the list that was stored.

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