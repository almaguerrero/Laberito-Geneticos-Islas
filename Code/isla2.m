function [mejores1] = isla2(x)
disp('HOLA DESDE LA ISLA2')
pause(3)
poblacion=x
man = zeros(12,1);%%%
final=[9 14];
%Generacion de la pblacion
T = table(poblacion,man);
for i=1:12
    par1=[];
    par=Seleccion(T.poblacion);
    par1=[par1;par];
    impar1=[];
    impar=Iseleccion(T.poblacion);
    impar1=[impar1;impar];
    end
    %%%%%%Cruza
    hijes=[]
    for l=1:6
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
      mejores1=pobladores;
end