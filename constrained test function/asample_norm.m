function [f,e,g,LB,UB]=asample_norm(xnorm)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Sample Function
%
% Author: Syed Ali Zaryab
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% INPUTS:
%
% xo=[200,200,200,200]
% minimum at 
% x(1) =   193.4479462950
% x(2) =   179.4363559960
% x(3) =   185.1184412970
% x(4) =   168.6339551800
% obj =   726.6366987670
%e is equality constraint
%g is inequality constraint
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

LB=[100,100,100,100];
UB=[400000,300000,200000,100000]; 
x= LB+xnorm.*(UB-LB);

%minimize
f= x(1) + x(2) + x(3) + x(4);


%Constraints
%e is equality constraint
e=[0];

%g is inequality constraint 

g(1)= 4/x(1) + 2.25/x(2) + 1/x(3) + 0.25/x(4) - 0.0401;

g(2)= 0.16/x(1) + 0.36/x(2) + 0.64/x(3) + 0.64/x(4) - 0.010085;


end