function [y,e,g] = apowellsing2_norm(xnorm)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% POWELL SINGULAR 2 FUNCTION
%
% Author: Syed Ali Zaryab
%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% INPUTS:
%
% xx = [x1, x2, ..., xd]
% minimum at f(xx*)=0
% Range x=[-4,5] 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
LB=[-4,-4,-4,-4];  
UB=[5,5,5,5] ; 

e=[0];
g=[0];

xx= LB+xnorm.*(UB-LB);

d = length(xx);
sum = 0;

for ii = 1:(d-3)
	term1 = (xx(ii) + 10*xx(ii+1))^2;
	term2 = 5 * (xx(ii+2) - xx(ii+3))^2;
	term3 = (xx(ii+1) - 2*xx(ii+2))^4;
	term4 = 10 * (xx(ii) - xx(ii+3))^4;
	sum = sum + term1 + term2 + term3 + term4;
end

y = sum;




end