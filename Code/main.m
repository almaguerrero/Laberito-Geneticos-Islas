clc
clear
pobladores=[];
cosas=[];
mejores=[]
ucrania=[]
is=[]
paredes=0;
n=50
po=100
muta=20  %%porcentaje
islas=10 %%porcentaje
%poses del jugador
inicio=[9,12]; %%fija
jugador_inicial=[9,12]; %%dinamica
final=[9 14]; %%meta
%Generacion de la poblacion
for i=1:100%%%numero de filas
    r = randi([1 4],1,30);
    pobladores=[pobladores;r];    
end
man = zeros(100,1);%%%

%Generacion de la pblacion
T = table(pobladores,man);

% %estos dos for son solo para el fitness
% for i=1:100 %%%filas
%     penal=0;%%penales por personita
%     fitness=0; %%reset fitness
%     poseInicial=[9,12];
%     personita=T.pobladores(i,:);
%     for j=1:30 %%columnas
%        alelo=pobladores(i,j); %%%alelo
%        mov=moves(alelo,poseInicial); %%paso el alelo y mi posicion actual
%        poseInicial = mov; %%actualizo la posición actual
%        cosa=sabinawe(mov); %%reviso si toque con pared 
%        if cosa==20  %%si toca con pared sumo los penales
%        penal=penal+1;
%        end
%     end
%     disp(poseInicial) %%reviso la posicion final
%     man=fit(poseInicial,final) %%mando la pose actual despues de recorrer todo el cromosoma
%     %por el laberinto, la pose de salida a la funcion fit para evalular el
%     %manhattan
%     fitness=man+penal %%agrego los penales porque toco pared
%     T.man(i)=fitness %%agrego el fitness a cada individuo
% end
    %bar(T.man)
    
for p=1:2   %%%conteo generacional
    hijes=[];
    par1=[];
    par=Seleccion(T.pobladores);
    par1=[par1;par];
    impar1=[];
    impar=Iseleccion(T.pobladores);
    impar1=[impar1;impar];
    %%%%%%Cruza
    eli=[];
    
    for l=1:n
        in1=par1(l,:);
        in2=impar1(l,:);
        corte1=in1(1:15);
        corte2=in2(1:15);
        corte3=in1(16:30);
        corte4=in2(16:30);
        hije1=[corte2,corte3];
        hije2=[corte1,corte4];
        %%%elitismo
        eli=[hije1;hije2;in1;in2]
        x=fitPrin(eli)
        hijes=[hijes;x]
        %%Elitismo%%%
end
      pobladores=hijes;
      man2 = zeros(100,1);%%%
      T = table(pobladores,man2);
%      %estos dos for son solo para el fitness
for i=1:100 %%%filas
 penal=0;%%penales por personita
    fitness=0; %%reset fitness
    poseInicial=[9,12];
    personita=T.pobladores(i,:);
    for j=1:30 %%columnas
       alelo=pobladores(i,j); %%%alelo
       mov=moves(alelo,poseInicial); %%paso el alelo y mi posicion actual
       poseInicial = mov; %%actualizo la posición actual
       cosa=sabinawe(mov); %%reviso si toque con pared 
         penal=0;%%penales por personita
       if cosa==20  %%si toca con pared sumo los penales
       penal=penal+1;
       end
    end   
    disp(poseInicial) %%reviso la posicion final
    manh=fit(poseInicial,final) %%mando la pose actual despues de recorrer todo el cromosoma
    %por el laberinto, la pose de salida a la funcion fit para evalular el
    %manhattan
    fitness=manh+penal %%agrego los penales porque toco pared
    T.man2(i)=fitness %%agrego el fitness a cada individuo
    penal=0;%%penales por personita
    fitness=0; %%reset fitness
end
   po=T.pobladores(:,:);
   best=Grafo(po)
   mejores=[mejores;best]
       if(p==3) %%Islas
     numero=(islas*po)/100
       for m=1:6
        pob=T.pobladores(m,:)
        is=[is;pob];
       end
     pause(2)
      islaT1=isla1(is)
     % islaT2=isla2(is)
     end
end
g = zeros(2,1);%%%

%Generacion de la pblacion
M = table(mejores,g);

 % %estos dos for son solo para el fitness
 for i=1:12 %%%filas
    penal=0;%%penales por personita
    fitness=0; %%reset fitness
    poseInicial=[9,12];
    personita=M.mejores(i,:);
 penal=0;%%penales por personita
    for j=1:30 %%columnas
       alelo=M.mejores(i,j); %%%alelo
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
    M.g(i)=fitness %%agrego el fitness a cada individuo
     fitness=0; %%reset fitness
     penal=0
          if(p==3) %%Islas
     numero=(islas*po)/100
       for m=1:numero
        pob=T.pobladores(m,:)
        is=[is;pob];
       end
     pause(2)
      islaT1=isla1(is)
      islaT2=isla2(is)
     end
 end

  bar(M.g) 
  hold on
% end
%      if(p==3) %%Islas
%      numero=(islas*po)/100
%        for m=1:numero
%         pob=T.pobladores(m,:)
%         is=[is;pob];
%        end
%      pause(2)
%       islaT1=isla1(is)
%       islaT2=isla2(is)
%      end
%  end
    