% op ::= `+` | `-` | `*` | `/`
% exp ::= INTEGER | exp op exp

op(plus).
op(minus).
op(multiply).
op(division).

% artifically bound state space size
exp(integer(Value)) :-
    between(0, 0, Value).
exp(binop(Exp1, Op, Exp2)) :-
    exp(Exp1),
    op(Op),
    exp(Exp2).

% towards fixing:
% put a bound on recursion

% boundedExp(Depth, Exp)
boundedExp(_, integer(Value)) :-
    between(0, 0, Value).
boundedExp(Depth, binop(Exp1, Op, Exp2)) :-
    Depth > 0,
    NewDepth is Depth - 1,
    boundedExp(NewDepth, Exp1),
    op(Op),
    boundedExp(NewDepth, Exp2).

