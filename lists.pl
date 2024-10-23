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
%   return retval;
% }
sumAll([], 0).
sumAll([Head|Tail], Sum) :-
    sumAll(Tail, X),
    Sum is X + Head.

sumAllAccum(List, Sum) :-
    sumAllAccum(List, 0, Sum).

% sumAllAccum(List, CurrentAccumulator, Result)
sumAllAccum([], Accum, Sum) :-
    Sum = Accum.
sumAllAccum([Head|Tail], Accum, Sum) :-
    NewAccum is Head + Accum,
    sumAllAccum(Tail, NewAccum, Sum).


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
    myLength(Tail, SubLen), % NOT tail recursive - O(n) stack space
    Len is 1 + SubLen.

% myLengthAccum(List, LengthOfList)
myLengthAccum(List, Len) :-
    myLengthAccum(List, 0, Len).

% myLengthAccum(List, Accumulator, LengthOfList)
myLengthAccum([], Accum, Accum).
myLengthAccum([_|Tail], Accum, Len) :-
    NewAccum is Accum + 1,
    myLengthAccum(Tail, NewAccum, Len). % tail recursive - O(1) stack space

% Tail-call optimization / tail recursion optimization
% -O(n) stack space usage -> O(1)

myReverse(List, ReverseList) :-
    myReverse(List, [], ReverseList).

% myReverse(InputList, Accumulator, OutputList)
%% myReverse([], Accum, ReverseList) :-
%%     ReverseList = Accum.
myReverse([], Accum, Accum).
myReverse([Head|Tail], Accum, Reverse) :-
    NewAccum = [Head|Accum],
    myReverse(Tail, NewAccum, Reverse).

% Monday: recap myReverse
    
