%maze=[1,2,3,4,5]
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
      disp('Pared')
      end
      
      if(A(i,j)==' ')
      disp('Piso')
      end
      
      if(A(i,j)=='P')
      disp('Jugador')
      end
      
      if(A(i,j)=='F')
      disp('Final')
      end
       
        if(A(i,j)=='E')
        disp('Inicio')
        end

      %disp(j)
   end
 end
 
 
 
  