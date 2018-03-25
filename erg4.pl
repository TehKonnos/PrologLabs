natural(0).
natural(X):-
	X>0,
	X1 is X-1,
	natural(X1).

power(X,0,1).
power(X,N,R):-
	N>0,
	
	N2 is N-1, 
	power(X,N2,R2),
	R is R2*X.
	
fibo(2,1).
fibo(1,1).
fibo(X,Y):-
	natural(X),
	X2 is X-1,
	X3 is X-2,
	fibo(X2,Y2),
	fibo(X3,Y3),
	Y is Y2+Y3.

mkd(N,M,D):-
	N<M,
	mkd(M,N,D).
mkd(N,M,D):-
	N>=M,
	M\=0,
	M2 is mod(N,M),
	mkd(M,M2,D).
mkd(N,0,N).

run:-
	write('Dwse arithmo A: '),
	read(A),nl,
	write('Dwse enan arithmo B: '),
	read(B),nl,
	power(A,B,X1),
	write('H dynamh A^B einai: '),write(X1),nl,nl,
	fibo(A,X2),
	write('O arithmos Fibonnaci tou A einai: '),write(X2),nl,nl,
	mkd(A,B,X3),
	write('O megistos koinos diairetis twn A kai B einai: '),write(X3),nl,nl,
	write('Telos Programmatos :)').
	
