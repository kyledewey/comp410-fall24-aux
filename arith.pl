% evaluate(AST, Number)
evaluate(literal(Number), Number).
evaluate(plus(E1, E2), Result) :-
    evaluate(E1, E1Result), % l from Python
    evaluate(E2, E2Result), % r from Python
    Result is E1Result + E2Result.
evaluate(multiply(E1, E2), Result) :-
    evaluate(E1, E1Result),
    evaluate(E2, E2Result),
    Result is E1Result * E2Result.
evaluate(minus(E), Result) :-
    evaluate(E, EResult),
    Result is -EResult.
