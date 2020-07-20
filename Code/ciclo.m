p1= [1 2 3 4 5 6 7]; 
p2= [5 4 6 7 2 3 1]; 
sz = size(p1,2);
c1=zeros(1,sz);
c2=zeros(1,sz);
pt=find(p1==1);%%ojo aqui
while (c1(pt)==0)
  c1(pt)=p1(pt)
  pt=find(p1==p2(pt))
end
left=find(c1==0);
c1(left)=p2(left);

pt=find(p2==1);
while (c2(pt)==0)
  c2(pt)=p2(pt);
  pt=find(p2==p1(pt));
end
left=find(c2==0);
c2(left)=p1(left);
disp(c1)
disp(c2)