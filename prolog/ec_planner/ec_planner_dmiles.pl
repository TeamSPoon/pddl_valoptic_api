/*
% NomicMUD: A MUD server written in Prolog
%
% Some parts used Inform7, Guncho, PrologMUD and Marty's Prolog Adventure Prototype
% 
% July 10,1996 - John Eikenberry 
% Copyright (C) 2004 Marty White under the GNU GPL
% 
% Dec 13, 2035 - Douglas Miles
%
%
% Logicmoo Project changes:
%
% Main file.
%
*/

:- module(ec,[abdemo_special/3]).

testing_msg(X):- wdmsg(X).

:- use_module(library((pfc_lib))).

%%executable(P):- mpred_props(
% :- use_module(ec_loader).
:- use_module(ec_common).

first_d(0).
/*
%next_d(0). next_d(2).
%next_d(2). next_d(4).
next_d(32).  next_d(64). next_d(98).
next_d(D1, D2):- D1<5,!,D2 is D1+1.
next_d(D1, D2):- next_d(D2),D2>D1,!.

*/
last_d(D):- notrace(((nb_current(last_d,D),number(D))->true; D = 3000)).

next_d(D1, _):- last_d(D), D1>D, !, fail.
next_d(D1, D2):- D1<9,!,D2 is D1+3.
next_d(D1, D2):- D1<90,!,D2 is D1+60.
next_d(D1, D2):- D2 is D1+300.

:- style_check(-singleton).

% abdemo_special(long,Gs,R):-abdemo_timed(Gs,R).
abdemo_special(W,Gs,R):- \+ is_list(Gs),!, functor(Gs,F,_),!, 
  abdemo_special(W+F,[Gs],R).
abdemo_special(loops,Gs,R):- write(cant_abdemo(loops,Gs,R)),!,nl.
abdemo_special(_,Gs,R):- abdemo_timed(Gs,[R,N]), write_plan_len(R,N), nl, write_plan(R,[]).

abdemo_special(depth(Low,High),Gs,R):- 
   b_setval(last_d,High),!,
   abdemo_top(Gs,[[[],[]],[[],[]]],[[HA,HC],[BA,BC]],[],N,Low),
   R = [[HA,BA],[HC,-]].

abdemo_special(_,Gs,R):- 
 init_gensym(t), first_d(D), !,
     abdemo_top(Gs,[[[],[]],[[],[]]],[[HA,HC],[BA,BC]],[],N,D),
     write_plan_len(HA,BA),
   R = [[HA,BA],[HC,-]].


abdemo_top_xfrm(Gs,Gss):- 
  When = t,
  must(fix_goal(When,Gs,Gs0)), !,
  must(fix_time_args(When,Gs0,Gss)),!.

abdemo_top(Gs,R1,R3,N1,N3,D) :-
  must(nonvar(Gs)),
  notrace((abdemo_top_xfrm(Gs,Gss))), Gs\=@=Gss,!,
  abdemo_top(Gss,R1,R3,N1,N3,D).

abdemo_top(Gss,R1,R3,N1,N3,D):- 
  MaxDepth = 10,
  HighLevel = 0,
  must(nonvar(Gss)),
  dbginfo(all, [nl,realGoal=Gss,nl]),
  setup_call_cleanup(
     nb_setval(last_call_abdemo,[]),
     abdemo_top(Gss,R1,R3,N1,N3,D, MaxDepth, HighLevel),
     nb_setval(last_call_abdemo,[])).

iv_list_to_set(List,Set):-
    lists:number_list(List, 1, Numbered),
    sort(1, @=<, Numbered, ONum),
    iv_remove_dup_keys(ONum, NumSet),
    sort(2, @=<, NumSet, ONumSet),
    pairs_keys(ONumSet, Set).
iv_remove_dup_keys([], []).
iv_remove_dup_keys([H|T0], [H|T]) :-
    H=V-_,
    iv_remove_same_key(T0, V, T1),
    iv_remove_dup_keys(T1, T).
iv_remove_same_key([V1-_|T0], V, T) :-
    V1=@=V,
    %must(V\==b(start,start)),
    !,
    iv_remove_same_key(T0, V, T).
iv_remove_same_key(L, _, L).

ec_trace(O,0):- O=on.
ec_trace(O,1):- O=on.

%borked %:- include('eventCalculusPlannerDMiles_OLD.pl').        

% :- include('eventCalculusPlannerDMiles.pl').        

/*
:- include('planner115.pl').        
abdemo_top(Gs,R1,R3,N1,N3,D, _MaxDepth, _HighLevel) :-
  must(nonvar(Gs)),
  abdemo_id(Gs,R1,R2,N1,N2,D), !, 
  abdemo_cont(R2,R3,N2,N3).
*/
/*
:- include('planner42.pl').        
abdemo_top(Gs,R1,R3,N1,N3,D, _MaxDepth, _HighLevel) :-
  must(nonvar(Gs)),
  abdemo(Gs,R1,R2,N1,N2), !, 
  abdemo_cont(R2,R3,N2,N3).
*/
:- include('planner19a.pl').        
abdemo_top(Gs,R1,R3,N1,N3,D, _MaxDepth, _HighLevel) :-
  must(nonvar(Gs)),
  abdemo(Gs,R1,R2,N1,N2), !, 
  abdemo_cont(R2,R3,N2,N3).

:- fixup_exports.

