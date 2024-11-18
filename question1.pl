/* CSE 240 HW12_13 States and Colors */
/* Completion time 10 hours */
/* @author Melissa Mandyck, Bansal code used */
/* February 23 2024 */

% 1.1) 4 colors [red,blue,green,yellow]
% 1.2) Neighbors and Colors

/* Neighboring States */
neighboring(ak, [ ]).
neighboring(az, [ca, co, nv, nm, ut]).
neighboring(ca, [az, nv, or]).
neighboring(co, [nm, ut, wy]).
neighboring(hi, [ ]).
neighboring(id, [mt, nv, or, wa, wy]).
neighboring(mt, [id, wy]).
neighboring(nv, [az, ca, id, or, ut]).
neighboring(nm, [az, co]).
neighboring(or, [ca, id, nv, wa]).
neighboring(ut, [az, co, nv]).
neighboring(wa, [id, or]).
neighboring(wy, [co, id, mt, ut]).

/* Colors */
color(ak, yellow).
color(az, red).
color(ca, blue).
color(co, blue).
color(hi, red).
color(id, red).
color(mt, yellow).
color(nv, green).
color(nm, yellow).
color(or, yellow).
color(ut, yellow).
color(wa, blue).
color(wy, green).

 % 1.3) 
adjacent(State1, State2) :-
neighboring(State1, Neighbors),
member(State2, Neighbors).
/* 1.4) Miscolors */    
miscolor(State, Color) :-
adjacent(State, Neighbor),
color(Neighbor, Color),
color(State, Color). % miscolor rule states cannot be same color
/* 1.5) */ 
% q rule to test miscolor
q :- miscolor(State, Color), write(State), write(' and its neighbor '), write(Neighbor), write(' have similar color '), write(Color), nl, fail.

q.
