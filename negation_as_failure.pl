flight(lax, sea, 1).
flight(sea, lax, 2).
flight(pdx, sea, 3).
flight(sea, pdx, 4).

flightPath(A, B, [Num]) :-
    flight(A, B, Num).
flightPath(A, B, [FirstNum|RestPath]) :-
    flight(A, C, FirstNum),
    flightPath(C, B, RestPath).

uniqueFlightPath(A, B, Traveled, [Num]) :-
    flight(A, B, Num),
    \+ member(B, Traveled).
uniqueFlightPath(A, B, Traveled, [Num|Rest]) :-
    flight(A, C, Num),
    \+ member(C, Traveled),
    uniqueFlightPath(C, B, [C|Traveled], Rest).

uniqueFlightPath(A, B, Path) :-
    uniqueFlightPath(A, B, [A], Path).
