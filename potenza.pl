potenza(0,_N,0).
potenza(_X,0,1).
potenza(X,N,V):- N1 is N-1,
potenza(X,N1,V1), V is V1*X.
