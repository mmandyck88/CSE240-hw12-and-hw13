/* CSE 240 HW12_13 GNU Prolog Quicksort Dilemma */
/* Completion time 3 hours */
/* @author Melissa Mandyck, Bansal code used */
/* February 23 2024 */


qsort2([], []). % Base Case Empty List
qsort2([X], [X]). % Base Case for Singleton List
qsort2([First, Pivot|Tail], Sorted) :- % General Case for list with at least two elements
    % Size-m porblems will sort sublists of elements < and > the pivot
    split(Pivot, [First|Tail], Less, Grtr), % Split list using pivot
    qsort2(Less, SortedLess), % Recursively Sorts sublist of smaller elements
    qsort2(Grtr, SortedGrtr), % Recursively Sorts sublist of larger elements 
    % The size-n problem is constructed by appending the sorted sublists with the pivot in between
    append(SortedLess, [Pivot|SortedGrtr], Sorted). % append the results

% split(Pivot, List, Less, Grtr) only true if Less is sublist of List with elements =< to Pivot,
% Grtr is sublist of List with elements > than Pivot
split(_, [], [], []). % Base Case for empty list
split(Pivot, [X|T], [X|Less], Grtr) :- % Case for element less than or equal to pivot
    X =< Pivot, % check the condition
    split(Pivot, T, Less, Grter). % Recursively Splits rest of list 
split(Pivot, [X|T], Less, [X|Grtr]) :- % Case for element > than pivot
    X > Pivot, % Checks condition
    split(Pivot, T, Less, Grtr). % Recursively Splits rest of the list 

% Test case: qsort2([8, 3, 4, 12, 25, 4, 6, 1, 9, 22, 6], Sorted).
