% Fatos
gerou(kelly, maria).
gerou(cleber, maria).
gerou(cleber, bruna).
gerou(maria, julia).
gerou(maria, pedro).
gerou(pedro, lucas).

feminino(kelly).
feminino(maria).
feminino(julia).
feminino(bruna).
masculino(cleber).
masculino(pedro).
masculino(lucas).

% Regras

filho(Y, X) :-
    gerou(X, Y).

mae(X, Y) :-  %se x é mae de um y, se um x gerou um y
    gerou(X, Y),
    feminino(X).

avos(X, Z) :- %x é avo de z, se x gerou um y e esse y gerou um z
    gerou(X, Y),
    gerou(Y, Z).
