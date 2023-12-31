function [y,e,g] = aattar_norm(xnorm)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% El-Attar-Vidyasagar-Dutta Function
%
% Author: Syed Ali Zaryab
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% INPUTS:
%
% xx = [x1, x2]
% minimum at xx*=[3.4091868222,−2.1714330361]  , f(xx*)= 1.712780354862198
% Range xx=[-5, 5] 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
LB=[-5,-5];  
UB=[5,5] ; 

e=[0];
g=[0];

x= LB+xnorm.*(UB-LB);

x1 = x(1);
x2 = x(2);


y = (x1^2+x2-10)^2+(x1+x2^2-7)^2+(x1^2+x2^3-1)^2;

end
