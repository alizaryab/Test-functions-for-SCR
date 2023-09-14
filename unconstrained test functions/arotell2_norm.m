function [y,e,g] = arotell2_norm(xnorm)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Rotated Ellipse 2 Function
%
% Author: Syed Ali Zaryab
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% INPUTS:
%
% xx = [x1, x2]
% minimum at xx*=[0,0]  , f(xx*)= 0
% Range xx=[-50, 50] 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
LB=[-50,-50];  
UB=[50,50] ; 

e=[0];
g=[0];

xx= LB+xnorm.*(UB-LB);

x1 = xx(1);
x2 = xx(2);


y = x1^2-x1*x2+x2^2;

end
