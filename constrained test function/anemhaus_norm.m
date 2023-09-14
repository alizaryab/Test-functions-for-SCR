function [f,e,g,LB,UB]=anemhaus_norm(xnorm)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Nemhaus Function
%
% Author: Syed Ali Zaryab
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% INPUTS:
%
% xo=[0,0,0,0,0]
% minimum at 
% x(1) = 1
% x(2) =  1
% x(3) =  1
% x(4) =  1
% x(5) =  1
% obj =  31
%e is equality constraint
%g is inequality constraint
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
LB=[0,0,0,0,0];
UB=[10,10,10,10,10]; 
x= LB+xnorm.*(UB-LB);

x2=x(1) ;x3=x(2) ;x4=x(3) ;x5=x(4) ;x6=x(5) ;

%minimize
f= 2*x2*x4 + 4*x2*x5 + 3*x2*x6 + 6*x3*x4 + 2*x3*x5 + 3*x3*x6 + 5*x4*x5 + 3*x4*x6 + 3*x5*x6;


%Constraints

e(1)=   x2 - 1;

e(2)=    x3 - 1;

e(3)=    x4 - 1;

e(4)=    x5 - 1;

e(5)=    x6 - 1;

g=[0];



end
