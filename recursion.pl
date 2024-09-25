% def f(input):
%   if input == 0:
%     return 0
%   elif input == 1:
%     return 1
%   else:
%     return f(input - 1) + f(input - 2)
%
% f(Input, Output)
f(0, 0).
f(1, 1).
f(N, Output) :-
    N > 1,
    
    % MinusOneResult = f(N - 1)
    MinusOne is N - 1,
    f(MinusOne, MinusOneResult),

    % MinusTwoResult = f(N - 2)
    MinusTwo is N - 2,
    f(MinusTwo, MinusTwoResult),

    Output is MinusOneResult + MinusTwoResult.

% factorial(Input, Output)
factorial(0, 1).
factorial(N, Res) :-
    N > 0,
    MinusOne is N - 1,
    factorial(MinusOne, MinusOneResult), % MinusOneResult = factorial(MinusOne)
    Res is N * MinusOneResult.

myBetween(Low, High, Res) :-
    Low =< High,
    Res is Low.

% For next time: myBetween recursive case
