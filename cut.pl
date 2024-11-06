foo(1) :-
    !.
foo(2).
%% foo(2) :- !.
foo(3).

someInt(1).
someInt(2).
someInt(3).

example(X) :-
    someInt(X),
    (writeln('is integer'); writeln('lol')),
    writeln('done'),
    !.
example(_) :-
    writeln('is NOT integer'),
    writeln('done').

and(false, _, false).
and(_, false, false).
and(true, true, true).

or(true, _, true).
or(_, true, true).
or(false, false, false).

% exp ::= true | false | and(exp, exp) | or(exp, exp) | OTHER
%

% evalBool(Exp, Bool)
evalBool(true, true) :- !.
evalBool(false, false) :- !.
evalBool(and(E1, E2), Result) :-
    !,
    evalBool(E1, E1Result),
    evalBool(E2, E2Result),
    and(E1Result, E2Result, Result).
evalBool(or(E1, E2), Result) :-
    !,
    evalBool(E1, E1Result),
    evalBool(E2, E2Result),
    or(E1Result, E2Result, Result).
evalBool(Other, Result) :-
    
