% exp ::= `true` | `false` | `and` exp exp |
%         `or` exp exp | `not` exp

exp(true).
exp(false).
exp(and(E1, E2)) :-
    exp(E1),
    exp(E2).
exp(or(E1, E2)) :-
    exp(E1),
    exp(E2).
exp(not(E)) :-
    exp(E).

% expBounded: Depth, Exp
% idea: generate expressions that are no deeper than Depth
expBounded(_, true).
expBounded(_, false).
expBounded(Depth, and(E1, E2)) :-
    Depth > 0,
    NewDepth is Depth - 1,
    expBounded(NewDepth, E1),
    expBounded(NewDepth, E2).
expBounded(Depth, or(E1, E2)) :-
    Depth > 0,
    NewDepth is Depth - 1,
    expBounded(NewDepth, E1),
    expBounded(NewDepth, E2).
expBounded(Depth, not(E)) :-
    Depth > 0,
    NewDepth is Depth - 1,
    expBounded(NewDepth, E).

    
% a ::= `foo` | `bar` a | `baz` a a
a(foo).
a(bar(A)) :-
    a(A).
a(baz(A1, A2)) :-
    a(A1),
    a(A2).
