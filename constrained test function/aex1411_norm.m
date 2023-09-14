function [f,e,g,LB,UB]=aex1411_norm(xnorm)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Example 14_1_1 Function
%
% Author: Syed Ali Zaryab
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% INPUTS:
%
% xo=[5,5,5]
% minimum at 
% x(1) =    -0.2708445907
% x(2) =    -0.9230385565
% x(3) =     0.0000000000
% obj =     0.0000000000
%e is equality constraint
%g is inequality constraint
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


LB=[-5,-5,-5];
UB=[5,5,5]; 
x= LB+xnorm.*(UB-LB);

x1=x(1) ;x2=x(2) ;x3=x(3); 

%minimize
f= x3;


%Constraints
e=[0];

g(1)= 2*x2^2 + 4*x1*x2 - 42*x1 + 4*x1^3 - x3 - 14;

g(2)= (-2*x2^2) - 4*x1*x2 + 42*x1 - 4*x1^3 - x3 +14;

g(3)= 2*x1^2 + 4*x1*x2 - 26*x2 + 4*x2^3 - x3 - 22;

g(4)= (-2*x1^2) - 4*x1*x2 + 26*x2 - 4*x2^3 - x3 + 22;



end
 