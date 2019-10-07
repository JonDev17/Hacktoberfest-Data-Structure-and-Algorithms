%If the list is empty, there's nothing to sort!
insertionsort([],[]).
%If the list contains more than one element, we'll sort the rest of the list first and then insert the element we are currently looking at in order.
insertionsort([X|Xs],R) :- insertionsort(Xs,R1), insert(X,R1,R), !.

%If the accumulator is empty, we'll just wrap the item in a list.
insert(X,[],[X]).
%If the first element of the list is greater or equal to element to insert, put it in front of this element.
insert(X,[Y|Ys],[X,Y|Ys]) :- X =< Y.
%Else insert the element into the rest of the list and append the former head of the accumulator to the result.
insert(X,[Y|Ys],[Y|R]) :- !, insert(X,Ys,R).
