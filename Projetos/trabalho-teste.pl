% Fatos

% --->Computador<---
modelo(notebook).
modelo(pc).
modelo(2-em-1).

% --->Especificações<---

ram(notebook,4).
ram(notebook,6).
ram(notebook,8).

ram(pc,4).
ram(pc,8).
ram(pc,12).

ram(2-em-1,8).
ram(2-em-1,12).

processador(notebook,i3).
processador(notebook,i5).
processador(notebook,i7).

processador(pc,i3).
processador(pc,i5).
processador(pc,i7).
processador(pc,i9).

processador(2-em-1,i5).
processador(2-em-1,i7).
processador(2-em-1,i9).

rom(notebook,500).
rom(notebook,750).
rom(notebook,1024).

rom(pc,500).
rom(pc,750).
rom(pc,1024).

rom(2-em-1,500).
rom(2-em-1,750).
rom(2-em-1,1024).

% --->Requisitos<---
sistema(notebook,linux).
sistema(notebook,ubuntu).
sistema(notebook,macos).

sistema(pc,linux).
sistema(pc,ubuntu).
sistema(pc,macos).

sistema(2-em-1,linux).
sistema(2-em-1,ubuntu).

perifericos(pc,mouse).
perifericos(pc,teclado).
perifericos(pc,monitor).
perifericos(pc,impressora).

perifericos(2-em-1,mouse).
perifericos(2-em-1,teclado).

perifericos(notebook,nenhum).

monitor(pc).
display(notebook).
touch(2-em-1).

internet(sim,nao).
cabeada(sim,nao).
roteador(sim,nao).

% Regras
