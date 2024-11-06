someInt(1).
someInt(2).
someInt(3).

% if X is an integer, print 'is integer'
% if X is not an integer, print 'is NOT integer'
%% example(X) :-
%%     \+ someInt(X),
%%     writeln('is NOT integer').
%% example(X) :-
%%     someInt(X),
%%     writeln('is integer').

example(X) :-
    % ->(Cond, ;(TrueBranch, FalseBranch))
    (someInt(X) ->
        (writeln('is integer'); writeln('lol'));
        writeln('is NOT integer')),
    writeln('done').
