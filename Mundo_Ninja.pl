
%    UNIVERSIDADE FEDERAL DO ESPÍRITO SANTO

% -- Aluno: Rafael Merlo Mendes
% -- Disciplina: Lógica para Computação 2
% -- Ano: Semestre 2020/1, EARTE

% -->Personagens<--
%      -->&<--
% -->Organização<--

akatsuki("Pain").
akatsuki("Konan").
akatsuki("Zetsu").
akatsuki("Deidara").
akatsuki("Itachi").
akatsuki("Sasori").
akatsuki("Orochimaru").
akatsuki("Kisame").
akatsuki("Kakuzu").
akatsuki("Tobi").
akatsuki("Hidan").
akatsuki("Madara").

taka("Sasuke").
taka("Karin").
taka("Juugo").
taka("Suigetsu").

% -->Criaturas<--

bijuus(shukaku).
bijuus(nibi).
bijuus(sanbi).
bijuus(yonbi).
bijuus(gobi).
bijuus(rokubi).
bijuus(nanabi).
bijuus(hachibi).
bijuus(kyuubi).
bijuus(juubi).

jinchuuriki(shukaku,"Gaara").
jinchuuriki(nibi,"Yugito Nii").
jinchuuriki(sanbi,"Rin").
jinchuuriki(sanbi,"Quarto Mizukage").
jinchuuriki(sanbi,"Yagura").
jinchuuriki(yonbi,"Roshi").
jinchuuriki(gobi,"Han").
jinchuuriki(rokubi,"Utakata").
jinchuuriki(nanabi,"Fuu").
jinchuuriki(hachibi,"Killer Bee").
jinchuuriki(kyuubi,"Naruto").
jinchuuriki(juubi,"Hagoromo").
jinchuuriki(juubi,"Obito").
jinchuuriki(juubi,"Madara").

% -->Personagens<--

ninjas("Karin").
ninjas("Konan").
ninjas("Rin").
ninjas("Yugito Nii").
ninjas("Fuu").

ninjas("Naruto").
ninjas("Sasuke").
ninjas("Pain").
ninjas("Gaara").
ninjas("Quarto Mizukage").
ninjas("Yagura").
ninjas("Roshi").
ninjas("Han").
ninjas("Utakata").
ninjas("Killer Bee").
ninjas("Hagoromo").
ninjas("Obito").
ninjas("Zetsu").
ninjas("Deidara").
ninjas("Itachi").
ninjas("Sasori").
ninjas("Kisame").
ninjas("Kakuzu").
ninjas("Tobi").
ninjas("Hidan").
ninjas("Madara").

% -->Localidades<--

pais(fogo).
pais(terra).
pais(relampago).
pais(agua).
pais(vento).

nasceu("Naruto",fogo).
nasceu("Sasuke",fogo).
nasceu("Pain",outros).
nasceu("Konan",outros).
nasceu("Zetsu",desconhecido).
nasceu("Deidara",terra).
nasceu("Itachi",fogo).
nasceu("Sasori",terra).
nasceu("Orochimaru",fogo).
nasceu("Kisame",agua).
nasceu("Kakuzu",outros).
nasceu("Tobi",desconhecido).
nasceu("Hidan",outros).
nasceu("Madara",fogo).
nasceu("Karin",desconhecido).
nasceu("Juugo",desconhecido).
nasceu("Suigetsu",desconhecido).
nasceu("Gaara",outros).
nasceu("Yugito Nii",relampago).
nasceu("Rin",fogo).
nasceu("Quarto Mizukage",agua).
nasceu("Yagura",agua).
nasceu("Roshi",terra).
nasceu("Han",terra).
nasceu("Utakata",agua).
nasceu("Fuu",desconhecido).
nasceu("Killer Bee",relampago).
nasceu("Hagoromo",desconhecido).
nasceu("Obito",fogo).

% -->Habilidades<--

habilidades(ninjutsu).
habilidades(genjutsu).
habilidades(taijutsu).
habilidades(kekkei_genkai).

% -->Ranqueamento<--

ranks(academia).
ranks(genin).
ranks(chunin).
ranks(jounin).
ranks(anbu).
ranks(kage).

missoes(d).
missoes(c).
missoes(b).
missoes(a).
missoes(s).

nivel(academia,"Sem missões").
nivel(genin,d).
nivel(genin,c).
nivel(chunin,c).
nivel(chunin,b).
nivel(jounin,a).
nivel(jounin,s).
nivel(anbu,s).

% -->Tipos de elementos<--

elemento(agua).
elemento(fogo).
elemento(vento).
elemento(relampago).
elemento(terra).
elemento(areia).
elemento(areia_de_ferro).
elemento(madeira).
elemento(gelo).
elemento(lava).
elemento(cristal).
elemento(vapor).

domina("Sasuke",[fogo,raio]).
domina("Sasori",areia_de_ferro).
domina("Suigetsu",agua).
domina("Gaara",areia).
domina("Naruto",[agua, madeira, terra, vento]).
domina("Deidara",fogo).
domina("Itachi",fogo).

% Regras

missao(Missao):-
    write("Seu Rank: "),
    read(Ranks),
    nivel(Ranks,Missao).

time:-
    write("Informe o 1º Ninja: "),
    read(Ninja1),
    write("Informe o 2º Ninja: "),
    read(Ninja2),
    write("Informe o 3º Ninja: "),
    read(Ninja3),
    ninjas(Ninja1),
    ninjas(Ninja2),
    ninjas(Ninja3),
    write("Informe o país: "),
    read(Pais),
    pais(Pais),
    write("Informe o nivel da missão: "),
    read(Rank),
    missoes(Rank).

combate:-
    write("Defina seu estilo de luta: "),
    read(Habilidade),
    habilidades(Habilidade),
    write("Qual o seu tipo de elemento: "),
    read(Elemento),
    elemento(Elemento).

nascido(Ninja,Vila):-
    nasceu(Ninja,Vila).

selado(Criatura,Ninja):-
     jinchuuriki(Criatura,Ninja).

organizacoes(Ninja):-
    write("Akatsuki:");
    akatsuki(Ninja);
    write("Taka:");
    taka(Ninja).

dominar(Ninja,Elemento):-
    domina(Ninja,Elemento).

verifica:-
    write("Informe a vila que deseja visitar: "),
    read(Vila),
    pais(Vila),
    write("Algum ninja desta vila: "),
    read(Ninja),
    nasceu(Ninja,Vila).

