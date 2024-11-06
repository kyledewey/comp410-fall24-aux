addTwo([], []).
addTwo([H|T], [NewHead|NewTail]) :-
    NewHead is H + 2,
    addTwo(T, NewTail).

addAmount(Amount, To, Result) :-
    Result is Amount + To.
