and(0,0,0).
and(0,1,0).
and(1,0,0).
and(1,1,1).

xor(0,0,0).
xor(0,1,1).
xor(1,0,1).
xor(1,1,0).

or(0,0,0).
or(0,1,1).
or(1,0,1).
or(1,1,1).

hadd(X,Y,C,S):-
	xor(X,Y,S),
	and(X,Y,C).

fadd(A,B,Cin,Cout,S):-
	hadd(A,B,C1,S1),
	hadd(S1,Cin,C2,S),
	or(C1,C2,Cout).
	
fadd3(Cin,X2,X1,X0,Y2,Y1,Y0,Cout,S2,S1,S0):-
	fadd(X0,Y0,Cin,C0,S0),
	fadd(X1,Y1,C0,C1,S1),
	fadd(X2,Y2,C1,Cout,S2).
