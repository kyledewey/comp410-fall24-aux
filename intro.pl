% clause database
%
% closed-world assumption: all truth is in this file

% procedure: isInteger/1
isInteger(0). % fact - arity 1
isInteger(1). % fact - arity 1
isInteger(2). % fact - arity 1

% procedure: foo/2
foo(7, 4). % fact - arity 2

% procedure: isName/1
isName(alice). % alice and bob are atoms; MUST start with lowercase
isName(bob).

% procedure: areEqual/2
% areEqual(X, X).
areEqual(X, Z) :- % rule
    X = Y,
    Y = Z.

servedWarm(pizza).
servedWarm(burgers).
servedWarm(burrito).

% aliceLikes/1
aliceLikes(pizza).
aliceLikes(burgers).
aliceLikes(burrito).
aliceLikes(yogurt).

% bobLikes/1
bobLikes(pizza).
bobLikes(burgers).
bobLikes(salad).
bobLikes(milk).

% likes/2
likes(alice, pizza).
likes(alice, burgers).
likes(alice, burrito).
likes(alice, yogurt).
likes(bob, pizza).
likes(bob, burgers).
likes(bob, salad).
likes(bob, milk).
likes(bill, F) :-
    servedWarm(F).
likes(janet, X) :-
    likes(bob, X),
    likes(alice, X).

% for next time: properly explain execution (and why false is at the end),
% number 8, different ways of writing 8
