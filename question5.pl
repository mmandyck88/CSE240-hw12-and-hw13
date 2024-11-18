/* CSE 240 HW12_13 iSort It All Out with Prolog */
/* Completion time 2 hours */
/* @author Melissa Mandyck, Bansal code used */
/* February 23 2024 */


isort([], []). % Stop condition: already sorted empty list
isort([First | Tail], Sorted) :- % Recursive Case: list has at least one element
    isort(Tail, SortedTail), % Size m-problem: Recursive sorting tail of list
    insert(First, SortedTail, Sorted). % Construct n-size problem: insert first element in sorted tail

% insert(X, List, Result): Inserts number X into sorted list
% X can be any number inserted. List is sorted list

insert(X, [], [X]). % Stop Condition: insert X into empty list gives only X on list
insert(X, [Head | Tail], [X, Head | Tail]) :- % Base case: X is less than or equal to the head of list, so inserts at head
    X =< Head.
insert(X, [Head | Tail], [Head | Result]) :- % Recursive case: X is > than head of the list then inserted in tail
    X > Head,
    insert(X, Tail, Result).

% test with isort([8, 3, 4, 12, 25, 4, 6, 1, 9, 22, 6], Sorted). 
