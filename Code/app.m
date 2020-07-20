clc
clear
pobladores=[];
cosas=[];
paredes=0;
n=15
po=30
muta=20  %%porcentaje
%poses del jugador
inicio=[9,12]; %%fija
jugador_inicial=[9,12]; %%dinamica
final=[9 14]; %%meta
%Generacion de la poblacion
for i=1:30%%%numero de filas
    r = randi([1 4],1,30);
    pobladores=[pobladores;r];    
end
man = zeros(30,1);%%%

%Generacion de la pblacion
T = table(pobladores,man);
man=fitPrin(T)
