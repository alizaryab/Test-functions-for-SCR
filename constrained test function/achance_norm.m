function [f,e,g,LB,UB]=achance_norm(xnorm)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Example Chance Function
%
% Author: Syed Ali Zaryab
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% INPUTS:
%
%xo=[0,0,0,0]
% minimum at 
% x(1) = 0.635522
% x(2) =  9.30461e-23
% x(3) =  0.312702
% x(4) =  0.0517766
% obj =  29.8944
%e is equality constraint
%g is inequality constraint
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


LB=[0,0,0,0];
UB=[5,5,5,5]; 
x= LB+xnorm.*(UB-LB);

%minimize
f= 24.55*x(1) + 26.75*x(2) + 39*x(3) + 40.5*x(4);


%Constraints

e(1)=   x(1) + x(2) + x(3) + x(4) - 1;

g(1)= -12*x(1) + 1.645*sqrt(0.28*x(1)^2 + 0.19*x(2)^2 + 20.5*x(3)^2 + 0.62*x(4)^2) - 11.9*x(2)...
     - 41.8*x(3) - 52.1*x(4) + 21;

g(2)=    -2.3*x(1) - 5.6*x(2) - 11.1*x(3) - 1.3*x(4) + 5;


end
