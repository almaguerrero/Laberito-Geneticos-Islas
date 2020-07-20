function [pose] = moves(p1,posicion)
posicion=posicion;
p1=p1;
f=posicion(1);
c=posicion(2);
    if(p1(1)==1)
    f=f-1;
    pose=[f,c];
    end
    
    if(p1(1)==2)
    f=f+1;
    pose=[f,c];
    end
    
    if(p1(1)==3)
    c=c-1;
    pose=[f,c];
    end
    
    if(p1(1)==4)
    c=c+1;
    pose=[f,c];
    end
end
    
    
    
% function [guardar] = cyclicXover(p1,p2)
% guardar=[]
% %p1= [ 8 4 7 3 6 2 5 1 9 0 ]; 
% %p2= [ 0 1 2 3 4 5 6 7 8 9 ]; 
% 
% 
% guardar=[guardar;c1;c2]