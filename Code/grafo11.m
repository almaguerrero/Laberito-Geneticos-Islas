function [best] = grafo11(pobladores)
pobladores=pobladores;
best=[]
inicio=[9,12]; %%fija
jugador_inicial=[9,12]; %%dinamica
final=[9 14];
man = zeros(12,1);%%%
%Generacion de la pblacion
T = table(pobladores,man);
for i=1:12 %%%filas
     penal=0;%%penales por personita
    fitness=0; %%reset fitness
    poseInicial=[9,12];
    personita=T.pobladores(i,:);
    for j=1:30 %%columnas
       alelo=T.pobladores(i,j); %%%alelo
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
    fitness=man+penal; %%agrego los penales porque toco pared
    %%agrego el fitness a cada individuo
    T.man(i)=fitness ;
    penal=0;%%penales por personita
    fitness=0; %%reset fitness
end
   [tblB,index] = sortrows(T,'man');
   hije1=tblB.pobladores(1,:);
   
   best=[best;hije1];
end