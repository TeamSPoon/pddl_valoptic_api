simulatedRealTimeBeginning('2002-06-01'). 
simulatedRealTimePerCycle(RTPC) :- minCycleTime(RTPC). 
maxTime(200).  
maxRealTime(M) :- M is 24*3600*90. % 90 days   NOT WORKING???
minCycleTime(Min) :- Min is 3600*12. % just 2 LPS cycles per calendar day
:- include(system('date_utils.pl')). 

events contract(_Obligation), to(_Agent,_Right), fulfil(_Obligation).
actions confirmCompliance(_Obligation), legalAction(_Obligation).

fluents fulfilled(_Obligation).
fulfil(Obligation) initiates fulfilled(Obligation).

if 	contract(Obligation) to T1, fulfilled(Obligation) at T2, T1 < T2
then 	confirmCompliance(Obligation) from T2.

if 	contract(Obligation) to T1, not fulfilled(Obligation) at T2, T1 < T2
then 	legalAction(Obligation) from T2.

/* 
if 	contract(Obligation) to T1, fulfil(Obligation) to T2, T1 < T2
then 	terminate(Obligation) from T2.

not fulfil doesn't work with the current implementation,
 * which could be extended.
if 	contract(Obligation) to T1, not fulfil(Obligation) from T2, T1 < T2
then 	legalAction(Obligation) from T2.

*/

% First-Last is a pair of dates, 
% where each of these dates is Year/Month/Day, with integers
% 
fulfil(future(RightA,RightB,First-Last)) from T  if
	real_date(Today) at T, Today @>= First, Last @>= Today,
	to(holder,RightA) from T,
	to(counterParty,RightB) from T.

observe contract(future("1 round lot pork bellies", usd(1500), 2002/7/1 - 2002/7/31)) at '2002-06-15T11:00'.
observe to(holder,"1 round lot pork bellies") at '2002-07-15T11:00'.
observe to(counterParty,usd(1500)) at '2002-07-15T11:00'.

/** <examples>
?- go.
*/
