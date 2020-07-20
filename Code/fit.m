function [fitness] = fit(p1,p2)
 p1=p1;
 p2=p2;
 x1=p1(1);
 y1=p1(2);
 x2=p2(1);
 y2=p2(2);
 dis=abs(x2-x1)+abs(y2-y1)
fitness=dis;
end