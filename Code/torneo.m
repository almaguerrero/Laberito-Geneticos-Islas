 function [poblacion] = torneo(inicio)
 poblacion=[];
 A=inicio;
p = randi([1 5],1,2)
f=p(1);
c=p(2);

primer=A.man(f)
segundo=A.man(f)
 end