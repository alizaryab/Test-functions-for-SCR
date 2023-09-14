function [f,e,g,LB,UB]=aex211_norm(xnorm)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Example 2_1_1 Function
%
% Author: Syed Ali Zaryab
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% INPUTS:
%
%xo=[1,1,1,1,1]
% minimum at 
% x(1) =     1.0000000000
% x(2) =     1.0000000000
% x(3) =     0.0000000000
% x(4) =     1.0000000000
% x(5) =     0.0000000000
% obj =   -17.0000000000
%e is equality constraint
%g is inequality constraint
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

LB=[0,0,0,0,0];
UB=[1,1,1,1,1];

x= LB+xnorm.*(UB-LB);

%minimize
f= 42*x(1) - 0.5*(100*x(1)*x(1) + 100*x(2)*x(2) + 100*x(3)*x(3) + 100*x(4)*x(4) +...
    100*x(5)*x(5)) + 44*x(2) + 45*x(3) + 47*x(4) + 47.5*x(5);


%Constraints
%e is equality constraint
e=[0];


%g is inequality constraint

g(1)=    20*x(1) + 12*x(2) + 11*x(3) + 7*x(4) + 4*x(5) - 40;


end