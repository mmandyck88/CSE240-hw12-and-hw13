/* CSE 240 HW12_13 Arizona Pizzeria */
/* Completion time 3 hours */
/* @author Melissa Mandyck, Bansal code used */
/* February 23 2024 */
% 2.1 The rule pizza(P, M, B, O, C) is defined as:

pizza(P, M, B, O, C) :-
	member(P,[0,1,2,3,4,5,6,7,8,9]), % max 9 pepperoni true from 0 to 9
	member(M,[0,1,2,3,4]), % max 4 meatballs true from 0 to 4
	member(B,[0,1,2,3,4,5,6]), % max 6 basil true from 0 to 6
	member(O,[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]), % max olives used
	member(C,[0,1,2,3,4,5]), % max 5 chicken can be used

	TotalWeight is P * 5 + M * 10 + B * 7  + O * 3 + C * 8, % total weight equals 45 oz
	TotalWeight =:= 45. % This can check if equals 45

% 2.2 The rule condition can be defined as follows:

q2 :- pizza(1, 2, 2, 2, 2).
% Answer: no.

% 2.3 The rule q3:-condition can be defined as follows:

q3 :- pizza(1, M, 1, O, C).
% Answer: true. 
% C = 3
% M = 0
% O = 3 

% 2.4 The rule q4:-condition:

q4 :- pizza(P, M, B, O, 1).

% Answer: no.
% B = 1
% M = 0
% O = 10
% P = 0 
