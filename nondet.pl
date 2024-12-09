myNumber(0).
myNumber(1).
myNumber(2).

makePair(pair(A, B)) :-
    myNumber(A),
    myNumber(B).

% exp ::= true | false | and(exp, exp)
exp(true).
exp(false).
exp(and(E1, E2)) :-
    exp(E1),
    exp(E2).

