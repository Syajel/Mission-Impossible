:- include("KB.pl").

goal(S):-
    submarine(X,Y), capacity(C), ethanStateChange(X,Y,C,[],S).

ethanStateChange(X,Y,Z,W,s0):-
    ethan_loc(X,Y),
    capacity(Z),
    members_loc(W).

ethanStateChange(X,Y,Z,W,result(A,S)):-
    A = up , X1 is X-1, X>0, ethanStateChange(X1,Y,Z,W,S);
    A = down, X1 is X+1, X<3, ethanStateChange(X1,Y,Z,W,S);
    A = right, Y1 is Y+1, Y<3, ethanStateChange(X,Y1,Z,W,S);
    A = left, Y1 is Y-1, Y>0, ethanStateChange(X,Y1,Z,W,S);
    A = drop, submarine(X,Y), checkCapacity(Z), capacity(Z1), ethanStateChange(X,Y,Z1,W,S);
    A = carry, member([X,Y],W), Z>0, Z1 is Z-1, delete(W1,[X,Y],W), ethanStateChange(X,Y,Z1,W1,S).

checkCapacity(X):-
    capacity(F),
    X<F.

