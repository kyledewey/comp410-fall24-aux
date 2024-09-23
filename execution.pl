servedWarm(pizza).
servedWarm(burgers).

likes(alice, pizza).
likes(bob, burgers).
% before :- is the head of the rule
% after :- is the body of the rule
likes(bill, F) :-
    servedWarm(F).

% def myAppend(list1, list2):
%   if isinstance(list1, Nil):
%     return list2
%   elif isinstance(list1, Cons):
%     head = list1.head
%     tail = list1.tail
%     rest = myAppend(list1.tail, list2)
%     return Cons(list1.head, rest)

% myAppend: InputList1, InputList2, OutputList
myAppend(nil, List, List).
myAppend(cons(Head, Tail), List2, Output) :-
    Output = cons(Head, Rest),
    myAppend(Tail, List2, Rest).

% for Wednesday:
% -Finish going through append; show execution
%  on board, explain why ordering unification first
%  matters, explain how to optimize this,
% then handout on recursion
