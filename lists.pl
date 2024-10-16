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
    % Output = [Head|Rest],
    myAppend(Tail, List, Rest).

sumAll([], 0).
sumAll([Head|Tail], Sum) :-
    sumAll(Tail, X),
    Sum is X + Head.

sublist([], []).
sublist([Head|Tail], [Head|X]) :-
    sublist(Tail, X).
sublist([_|Tail], X) :-
    sublist(Tail, X).
