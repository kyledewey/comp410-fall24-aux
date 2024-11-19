myBetween(Low, High, Low) :-
    Low =< High.
myBetween(Low, High, Value) :-
    Low =< High,
    NewLow is Low + 1,
    myBetween(NewLow, High, Value).

%% evensBetween(Low, High, Value) :-
%%     Low =< High,
%%     ((0 is mod(Low, 2),
%%       Low = Value);
%%      (NewLow is Low + 1,
%%       evensBetween(NewLow, High, Value))).

evensBetween(Low, High, Low) :-
    Low =< High,
    0 is mod(Low, 2).
evensBetween(Low, High, Value) :-
    Low =< High,
    NewLow is Low + 1,
    evensBetween(NewLow, High, Value).

zip([], [], []).
zip([Head1|Tail1],
    [Head2|Tail2],
    [pair(Head1, Head2)|SomeTail]) :-
    zip(Tail1, Tail2, SomeTail).

%% zip([A], [B], [pair(A, B)]).
%% zip([A, B, C],
%%     [D, E, F],
%%     [pair(A, D),
%%      pair(B, E),
%%      pair(C, F)]).

% f(In, Out)
f(0, 2).
f(1, 3).
f(In, Out) :-
    % \+ (In = 0; In = 1),
    In \= 0,
    In \= 1,
    NMinusOne is In - 1,
    NMinusTwo is In - 2,
    f(NMinusOne, NMinusOneResult),
    f(NMinusTwo, NMinusTwoResult),
    Out is (3 * NMminusOneResult) + (4 * NMinusTwoResult).
