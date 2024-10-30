% exp ::= true | false | if(exp1, exp2, exp2)

bool(true).
bool(false).

% exp(Depth, Exp)
%% exp(_, true).
%% exp(_, false).
exp(_, E) :-
    bool(E).
exp(Depth, if(E1, E2, E3)) :-
    Depth > 0,
    NewDepth is Depth - 1,
    exp(NewDepth, E1),
    exp(NewDepth, E2),
    exp(NewDepth, E3).

