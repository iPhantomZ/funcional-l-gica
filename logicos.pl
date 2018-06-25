posPares([],[]) :- !.

posPares([_],[]) :- !.

posPares([_,H2|T], [H2|T2]) :- posPares(T,T2).

% posImpares([],[]) :- !.

% posImpares([X],[X]) :- !.

% posImpares([H,H2|T], [H|T2]) :- posPares(T,T2).


aplana([],[]).

aplana(X,[X]).

aplana([H|T], R) :-
    aplana(H,T2),
    aplana(T,T3),
    append(T2,T3,R).
    
    
contenida([], []):-!.
contenida([], [_|_]):-!.

contenida( [H|T], [H2|T2]) :-
    (auxiliar([H|T], [H2|T2]) -> ! ; contenida([H|T], T2)).
    
auxiliar([], _):- 
    true, 
    !.

auxiliar([H|T], [H2|T2]):-
    (([H] == [H2]) -> auxiliar(T,T2) ; false).

trenza([],X,X) :- !.
trenza(X,[],X) :- !.
trenza([H|T],[H2|T2],[H,H2|R]) :-
    trenza(T,T2,R).
    

firstn([],_,[]) :- !.

firstn(_, Numero, []):-
    Numero =< 0,
    !.

firstn([H|T], Numero, [H|Resultado]):-
    Numero2 is Numero - 1,
    firstn(T,Numero2,Resultado).


del_element([],_,[]) :- !.

% del_element([H|T],1,[H2|T2]) :- .
    
    
% del_element([H|T],X,[H2|T2]) :- .








