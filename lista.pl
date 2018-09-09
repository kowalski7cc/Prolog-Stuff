%%%---------------Esempio lista-----------------------
membro_lista(X,[X|_]).
membro_lista(X,[_|T]):- 
membro_lista(X,T).


%%%-----------Cancella elemento da una lista----------
cancella_el(_E,[],[]).
cancella_el(E,[E|X],Y) :- cancella_el(E,X,Y),!.
calcella_el(E,[G|X],[G|Y]):- cancella_el(E,X,Y).


%%----------------Liste uguali------------------------
same([],[]).
same([_X|XL],[_Y|YL]) :- same(XL,YL).


%%------------Elementi duplicati in una lista---------
duplicati([],[]) :-!.
duplicati([H|T],R) :- member(H,T),duplicati(T,R),!.
duplicati([G|T],[G|R]) :- duplicati(T,R).

%%------------Elementi duplicati in una lista---------
inserisci(X,[],[X]) :- !.
inserisci(X,[Y|Ys],[X,Y|Ys]) :- X=<Y,!.
inserisci(X,[Y|Ys],[Y|Zs]) :- X>Y,inserisci(X,Ys,Zs).


%%------------Lista palindroma------------------------
palindromo(X):-reverse(X, X).
