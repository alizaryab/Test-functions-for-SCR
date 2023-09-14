function [y,e,g] = achungr_norm(xnorm)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Chung Reynolds FUNCTION
%
% Author: Syed Ali Zaryab
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% INPUTS:
%
% xx = [x1, x2, ..., xd]
% minimum at xx*=(0,0,...0) , f(xx*)=0
% Range x=[-10,10] 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
LB=[-10,-10,-10,-10];  
UB=[10,10,10,10] ; 

e=[0];
g=[0];

xx= LB+xnorm.*(UB-LB);

y = sum(xx.^2)^2;




end