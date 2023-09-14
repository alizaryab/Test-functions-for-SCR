function [y,e,g] = astybtang_norm(xnorm)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% STYBLINSKI-TANG FUNCTION
%
% Author: Syed Ali Zaryab
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% INPUT:
%
% xx = [x1, x2, ..., xd]
% minimum at xx*=(-2.9035,...,-2.9035)  , f(xx*)=-39.16599*d
% Range x=[-5,5] 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
LB=[-5,-5,-5,-5];  
UB=[5,5,5,5] ; 

e=[0];
g=[0];

xx= LB+xnorm.*(UB-LB);

d = length(xx);
sum = 0;
for ii = 1:d
	xi = xx(ii);
	new = xi^4 - 16*xi^2 + 5*xi;
	sum = sum + new;
end

y = sum/2;

end
