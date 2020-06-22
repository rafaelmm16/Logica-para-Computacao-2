% -->Personagens<-----

casais(naruto,hinata).
casais(sasuke,sakura).
casais(sai,ino).
casais(orochimaru,orochimaru).
casais(shikamaru,temari).
casais(chouji,karui).

feminino(hinata).
feminino(sakura).
feminino(ino).
feminino(orochimaru).
feminino(temari).
feminino(karui).

masculino(naruto).
masculino(sasuke).
masculino(sai).
masculino(orochimaru).
masculino(shikamaru).
masculino(chouji).

pai(naruto, boruto).
pai(naruto, himawari).
pai(sasuke, sarada).
pai(sai, inojin).
pai(orochimaru, mitsuki).
pai(shikamaru, shikadai).
pai(chouji, cho-cho).

mae(hinata, boruto).
mae(hinata, himawari).
mae(sakura, sarada).
mae(ino, inojin).
mae(orochimaru, mitsuki).
mae(temari, shikadai).
mae(karui, cho-cho).

missoes(d).
missoes(c).
missoes(b).
missoes(a).
missoes(s).

chakra(agua).
chakra(fogo).
chakra(vento).
chakra(relampago).
chakra(terra).

% Regras

father(Pai,Filho) :-
    pai(Pai, Filho),
    masculino(Pai).

mother(Mae, Filho) :-  %se x é mae de um y, se um x gerou um y
    mae(Mae, Filho),
    feminino(Mae).
