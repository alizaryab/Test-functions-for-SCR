function [y,e,g] = agoldpr_norm(xnorm)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% GOLDSTEIN-PRICE FUNCTION
%
% Author: Syed Ali Zaryab
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% INPUT:
%
% xx = [x1, x2]
% minimum at xx*=(0,-1)  , f(xx*)=3
% Range x=[-2,2] 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
LB=[-2,-2];  
UB=[2,2] ; 

e=[0];
g=[0];

xx= LB+xnorm.*(UB-LB);

x1 = xx(1);
x2 = xx(2);

fact1a = (x1 + x2 + 1)^2;
fact1b = 19 - 14*x1 + 3*x1^2 - 14*x2 + 6*x1*x2 + 3*x2^2;
fact1 = 1 + fact1a*fact1b;

fact2a = (2*x1 - 3*x2)^2;
fact2b = 18 - 32*x1 + 12*x1^2 + 48*x2 - 36*x1*x2 + 27*x2^2;
fact2 = 30 + fact2a*fact2b;

y = fact1*fact2;

end
