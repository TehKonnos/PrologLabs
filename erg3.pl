
figure(1,middle(triangle,square)).
figure(2,middle(circle,triangle)).
figure(3,middle(square,circle)).
figure(4,middle(square,square)).
figure(5,middle(square,triange)).
figure(6,middle(triangle,circle)).
figure(7,middle(circle,square)).
figure(8,middle(triangle,triangle)).
figure(9,bottomleft(circle,circle)).
figure(10,topleft(circle,circle)).
figure(11,bottleright(circle,circle)).
figure(12,topright(circle,circle)).
figure(13,bottomleft(square,square)).
figure(14,topleft(square,square)).
figure(15,bottomright(square,square)).
figure(16,topright(square,square)).



relation(middle(S1,S2),middle(S2,S1),inverse):-
	S1\=S2.
	
relation(middle(S2,S1),middle(S1,S2),inverse):-
	S1\=S2.
	
relation(middle(S1,S2),middle(S3,S4),changeout):-
	S2\=S4.
	
relation(middle(S1,S2),middle(S3,S4),changein):-
	S1\=S3.
	
relation(bottomleft(S1,S1),bottomright(S1,S1),lrmirror).

relation(bottomright(S1,S1),bottomleft(S1,S1),lrmirror).

relation(topleft(S1,S1),topright(S1,S1),lrmirror).

relation(topright(S1,S1),topleft(S1,S1),lrmirror).

relation(topleft(S1,S1),bottomleft(S1,S1),tbmirror).
	
relation(topright(S1,S1),bottomright(S1,S1),tbmirror).
	
relation(bottomright(S1,S1),topright(S1,S1),tbmirror).

relation(bottomleft(S1,S1),topleft(S1,S1),tbmirror).
	
relation(topright(S1,S1),bottomleft(S1,S1),diagmirror).
	
relation(bottomleft(S1,S1),topright(S1,S1),diagmirror).
	
relation(topleft(S1,S1),bottomright(S1,S1),diagmirror).
	
relation(bottomright(S1,S1),topleft(S1,S1),diagmirror).
	
	

analogy(A,B,C,D,E):-
	figure(A,X),
	figure(B,Y),
	figure(C,F),
	figure(D,G),
	relation(X,Y,E),
	relation(F,G,E).
	
	

	