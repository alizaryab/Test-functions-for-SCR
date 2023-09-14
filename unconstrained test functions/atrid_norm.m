function [y,e,g] = atrid_norm(xnorm)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% TRID FUNCTION
%
% Author: Syed Ali Zaryab
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% INPUT:
%
% xx = [x1, x2, ..., xd]
% minimum at f(xx*)= -d*(d+4)*(d-1)/6
% Range x=[-d^2,d^2] 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
LB=[-16,-16,-16,-16];  
UB=[16,16,16,16] ; 

e=[0];
g=[0];

xx= LB+xnorm.*(UB-LB);

d = length(xx);
sum1 = (xx(1)-1)^2;
sum2 = 0;

for ii = 2:d
	xi = xx(ii);
	xold = xx(ii-1);
	sum1 = sum1 + (xi-1)^2;
	sum2 = sum2 + xi*xold;
end

y = sum1 - sum2;

end
