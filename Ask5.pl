posneg([H|T],[H|LP],LN):-
	H>=0,
	posneg(T,LP,LN).
	
	

posneg([H|T],LP,[H|LN]):-
	H<0,
	posneg(T,LP,LN).
	
posneg([],[],[]).



sumlist([H],L):-
	length(H,L).

sumlist([H|T],X):-
	length(H,X2),
	sumlist(T,X3),
	X is X2+X3.
	

enwsi([],L,L).
enwsi([H|T],L2,[H|NT]):-
	not(member(H,L2)),
	append(NT,[H],LA),
	enwsi(T,L2,NT).
enwsi([H|T],L2,NT):-
	member(H,L2),
	enwsi(T,L2,NT).
	

flat([H],H):-
		atomic(H).
flat([H|T],H|L2):-
	flat(T,L3).
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	