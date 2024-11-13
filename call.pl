increment(X, Y) :-
    X is Y + 1.

myLength([], 0).
myLength([_|T], Len) :-
    myLength(T, TLen),
    increment(Len, TLen).
    % Len is TLen + 1.

addTwo([], []).
addTwo([H|T], [NewHead|NewTail]) :-
    NewHead is H + 2,
    addTwo(T, NewTail).

addAmount(Amount, To, Result) :-
    Result is Amount + To.
