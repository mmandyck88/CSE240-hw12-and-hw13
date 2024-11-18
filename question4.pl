/* CSE 240 HW12_13 GNU Prolog Flattened Me Out */
/* Completion time 1 hours */
/* @author Melissa Mandyck, Bansal code used */
/* February 23 2024 */

% my_flatten(L1,L2) :- the list L2 obtained from the list L1 using flattening

my_flatten(X,[X]) :- \+ is_list(X).
my_flatten([],[]).
my_flatten([X|Xs],Zs) :- my_flatten(X,Y), my_flatten(Xs,Ys), append(Y,Ys,Zs).

% test case: my_flatten([a, [b, [c, d], e]], X).
