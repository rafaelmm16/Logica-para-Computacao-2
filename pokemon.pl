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

defesa("charmander", 15).
defesa("squirtle", 15).
defesa("bulbasaur", 15).


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

status(Pokemon,Ataque,Defesa):-
    inicial(Pokemon),
    ataque(Pokemon,Ataque),
    defesa(Pokemon,Defesa).
