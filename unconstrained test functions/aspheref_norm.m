function [y,e,g] = aspheref_norm(xnorm)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% SPHERE FUNCTION
%
% Author: Syed Ali Zaryab
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% INPUT:
%
% xx = [x1, x2, ..., xd]
% minimum at xx*=(0,..,0)  , f(xx*)=0
% Range x=[-5.12,5.12] 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
LB=[-5.12,-5.12,-5.12,-5.12];  
UB=[5.12,5.12,5.12,5.12] ; 

e=[0];
g=[0];

xx= LB+xnorm.*(UB-LB);

d = length(xx);
sum = 0;
for ii = 1:d
	xi = xx(ii);
	sum = sum + xi^2;
end

y = sum;

end