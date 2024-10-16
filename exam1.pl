cost(soda, 2).
cost(chips, 3).
cost(hotDog, X) :-
    cost(soda, SodaCost),
    X is SodaCost * 2.
cost(X, 2) :-
    officeSupply(X).
cost(coldMedicine, 7).

food(soda).
food(chips).
food(hotDog).

officeSupply(pencil).
officeSupply(pen).

% item(TheItem, ItemCost, ItemKind).
% item(soda, 2, food).
% item(chips, 3, food).
% item(hotDog, Cost, food) :-
%   cost(soda, SodaCost, _),
%   Cost is SodaCost * 2.
% item(pencil, X, office_supply) :-
%   officeSupplyCost(X).
% item(pen, X, office_supply) :-
%   officeSupplyCost(X).
% item(eraser, 4, Kind) :-
%   Kind = food; Kind = office_supply.
%
% officeSupplyCost(2).
