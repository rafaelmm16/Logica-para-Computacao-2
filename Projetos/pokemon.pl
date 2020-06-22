%	Fatos

%	Pokémon
inicial("charmander").
inicial("squirtle").
inicial("bulbasaur").

evolucao("charmeleon").
evolucao("wartortle").
evolucao("ivysaur").

final("charizard").
final("blastoise").
final("venosaur").

ataque("charmander", 25).
ataque("squirtle", 25).
ataque("bulbasaur", 25).

ataque("charmeleon", 45).
ataque("wartortle", 45).
ataque("ivysaur", 45).

ataque("charizard", 75).
ataque("blastoise", 75).
ataque("venosaur", 75).


defesa("charmander", 15).
defesa("squirtle", 15).
defesa("bulbasaur", 15).

defesa("charmeleon", 35).
defesa("wartortle", 35).
defesa("ivysaur", 35).

defesa("charizard", 65).
defesa("blastoise", 65).
defesa("venosaur", 65).



%	Regras

%	Evoluir
forma_media(Level,Pokemon):-
    Level >= 20,
    inicial(Pokemon),
    write("Pode evoluir.").
forma_final(Level,Pokemon):-
    Level >= 55,
    evolucao(Pokemon),
    write("Pode evoluir.").

%       Status
status_base(Pokemon,Ataque,Defesa):-
    inicial(Pokemon),
    ataque(Pokemon,Ataque),
    defesa(Pokemon,Defesa).
status_evolucao(Pokemon,Ataque,Defesa):-
    evolucao(Pokemon),
    ataque(Pokemon,Ataque),
    defesa(Pokemon,Defesa).
status_final(Pokemon,Ataque,Defesa):-
    final(Pokemon),
    ataque(Pokemon,Ataque),
    defesa(Pokemon,Defesa).

