clear
clc
pobladores=[];
cosas=[];
%poses del jugador
jugador_inicial=[9,2];
final=[];
%
for i=1:5
    r = randi([1 4],1,5);
    pobladores=[pobladores;r];    
end
penal = zeros(5,1);
man = zeros(5,1);
T = table(pobladores,penal,man);
wey=0;
negativos=[]
for j=1:5
    disp('sabina we')
    paredes=0;
    for i=1:5
     analizar=T.pobladores(j,i);
     disp('******')
     movi=moves(jugador_inicial,analizar); 
     jugador_inicial=movi;
     cosa=read(jugador_inicial); 
    end
end
