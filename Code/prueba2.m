pobladores=[]
graficar=[]

for i=1:12%%%numero de filas
    r = randi([1 4],1,30);
    pobladores=[pobladores;r];    
end
islaT1=isla1(pobladores)
g=grafo11(islaT1)
graficar=[graficar;g]
man = zeros(12,1);%%%
%Generacion de la pblacion
T = table(pobladores,man);
for i=1:12 %%%filas
    penal=0;%%penales por personita
    fitness=0; %%reset fitness
    poseInicial=[9,12];
    personita=T.pobladores(i,:);
    for j=1:30 %%columnas
       alelo=pobladores(i,j); %%%alelo
       mov=moves(alelo,poseInicial); %%paso el alelo y mi posicion actual
       poseInicial = mov; %%actualizo la posición actual
       cosa=sabinawe(mov); %%reviso si toque con pared 
       if cosa==20  %%si toca con pared sumo los penales
       penal=penal+1;
       end
    end
    disp(poseInicial) %%reviso la posicion final
    man=fit(poseInicial,final) %%mando la pose actual despues de recorrer todo el cromosoma
    %por el laberinto, la pose de salida a la funcion fit para evalular el
    %manhattan
    fitness=man+penal %%agrego los penales porque toco pared
    T.man(i)=fitness %%agrego el fitness a cada individuo
end
    bar(T.man,'r')
    hold on