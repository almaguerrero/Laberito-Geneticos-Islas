%1(7)4(7)2(7)
%4(4)1(1)8(4)1(2)
%4(1)12(4)4(2)
%4(4)1(1)5(4)1(2)3(4)
function [objeto] = read(jugador_inicial)
  A=['#', '#','#','#','#','#', '#', '#', '#', '#', '#', '#', '#', '#', '#'; %1
      '#', ' ',' ',' ',' ',' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '#'; %2
      '#', ' ','#','#','#','#', ' ', '#', ' ', '#', '#', '#', ' ', ' ', '#'; %3
      '#', ' ','#','#','#','#', '#', '#', ' ', '#', ' ', '#', ' ', ' ', '#'; %4
      '#', ' ','#','#','#','#', '#', '#', ' ', '#', ' ', '#', ' ', ' ', '#'; %5
      '#', 'E','#','#','#','#', '#', '#', '#', '#', ' ', '#', '#', ' ', '#'; %6
      '#', ' ','#','#','#','#', '#', '#', '#', '#', ' ', '#', '#', ' ', '#'; %7
      '#', ' ','#','#','#',' ', ' ', ' ', ' ', ' ', ' ', '#', '#', ' ', '#'; %8
      '#', ' ',' ',' ',' ',' ', '#', '#', '#', '#', ' ', ' ', '#', 'F', '#'; %9
      '#', '#','#','#','#','#', '#', '#', '#', '#', '#', '#', '#', '#', '#']; %10
  %%
 maze=size(A);
 n=maze(1);%1
 m=maze(2);%2
 
 id=4; %izq-dere
 ab=6;%arriba-abajo
 jugador=A(id,ab)
 for i=1:n
   for j=1:m
      disp(A(i,j))
      if(A(i,j)=='#')
        objeto=20;
      end
      
      if(A(i,j)==' ')
      objeto=21;
      end
      
      if(A(i,j)=='P')
      objeto=22;
      end
      
      if(A(i,j)=='F')
      objeto=23;
      end
       
        if(A(i,j)=='E')
        objeto=24;
        end
   end
 end
end