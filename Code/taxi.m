 function [score] = taxi(p1)
score=0
p=p1
q=[9 14]
p1=p(1);
p2=p(2);
q1=q(1);
q2=q(2);
%%%
score=abs(p1-q1)+abs(p2-q2)