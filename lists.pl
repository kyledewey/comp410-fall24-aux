% def myAppend(list1, list2):
%   if isinstance(list1, Nil):
%     return list2
%   elif isinstance(list1, Cons):
%     head = list1.head
%     tail = list1.tail
%     rest = myAppend(list1.tail, list2)
%     return Cons(list1.head, rest)
%
% ?- myAppend([1, 2], [3, 4], Result).
%    Result = [1, 2, 3, 4].
%
myAppend([], List, List).
myAppend([Head|Tail], List, [Head|Rest]) :-
    myAppend(Tail, List, Rest). % tail call - last thing done is recursive call

% int sum(int[] arr) {
%   int retval = 0;
%   for (int index = 0; index < arr.length; index++) {
%     retval = retval + arr[index];
%   }
% }
sumAll([], 0).
sumAll([Head|Tail], Sum) :-
    sumAll(Tail, X),
    Sum is X + Head.

sublist([], []).
sublist([Head|Tail], [Head|X]) :-
    sublist(Tail, X).
sublist([_|Tail], X) :-
    sublist(Tail, X).

% int length(List input) {
%   int len = 0; // accumulator
%   while (input is not empty) {
%     len++;
%     input = input.tail;
%   }
%   return len;
% }
myLength([], 0).
myLength([_|Tail], Len) :-
    myLength(Tail, SubLen),
    Len is 1 + SubLen.

% myLengthAccum(List, LengthOfList)
myLengthAccum(List, Len) :-
    myLengthAccum(List, 0, Len).

% myLengthAccum(List, Accumulator, LengthOfList)
myLengthAccum([], Accum, Accum).
myLengthAccum([_|Tail], Accum, Len) :-
    NewAccum is Accum + 1,
    myLengthAccum(Tail, NewAccum, Len).

% Tail-call optimization / tail recursion optimization
% -O(n) stack space usage -> O(1)
