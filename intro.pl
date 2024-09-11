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

areEqual(X, X).

% for next time: proper nondeterminism and unification
