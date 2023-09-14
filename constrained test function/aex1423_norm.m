function [f,e,g,LB,UB]=aex1423_norm(xnorm)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Example 14_2_3 Function
%
% Author: Syed Ali Zaryab
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% INPUTS:
%
% xo=[1,1,1,1,80,80]
% minimum at 
% x(1) =     0.2954578936
% x(2) =     0.1475902445
% x(3) =     0.4629387710
% x(4) =     0.0940130909
% x(5) =    57.1536489363
% x(6) =     0.0000000000
% obj =     0.0000000000

%e is equality constraint
%g is inequality constraint
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

LB=[1E-6,1E-6,1E-6,1E-6,20,1E-6];
UB=[1,1,1,1,80,80]; 
x= LB+xnorm.*(UB-LB);

x1=x(1) ;x2=x(2) ;x3=x(3) ;x4=x(4) ;x5=x(5) ;
x7=x(6) ;

%minimize
f= x7;


%Constraints

g(1)= log(x1 + 1.2689544013438*x2 + 0.696334182309743*x3 + 0.590071729272002*x4)...
     + x1/(x1 + 1.2689544013438*x2 + 0.696334182309743*x3 + 0.590071729272002*...
    x4) + 1.55190688128384*x2/(1.55190688128384*x1 + x2 + 0.696676834276998*x3...
     + 1.27289874839144*x4) + 0.767395887387844*x3/(0.767395887387844*x1 + ...
    0.176307940228365*x2 + x3 + 0.187999658986436*x4) + 0.989870205661735*x4/(...
    0.989870205661735*x1 + 0.928335072476283*x2 + 0.308103094315467*x3 + x4) + ...
    2787.49800065313/(229.664 + x5) - x7 - 10.7545020354713;

g(2)= log(1.55190688128384*x1 + x2 + 0.696676834276998*x3 + 1.27289874839144*x4)...
     + 1.2689544013438*x1/(x1 + 1.2689544013438*x2 + 0.696334182309743*x3 + ...
    0.590071729272002*x4) + x2/(1.55190688128384*x1 + x2 + 0.696676834276998*x3...
     + 1.27289874839144*x4) + 0.176307940228365*x3/(0.767395887387844*x1 + ...
    0.176307940228365*x2 + x3 + 0.187999658986436*x4) + 0.928335072476283*x4/(...
    0.989870205661735*x1 + 0.928335072476283*x2 + 0.308103094315467*x3 + x4) + ...
    2696.24885600287/(226.232 + x5) - x7 - 10.3803549837107;

g(3)= log(0.767395887387844*x1 + 0.176307940228365*x2 + x3 + 0.187999658986436*x4...
    ) + 0.696334182309743*x1/(x1 + 1.2689544013438*x2 + 0.696334182309743*x3 + ...
    0.590071729272002*x4) + 0.696676834276998*x2/(1.55190688128384*x1 + x2 + ...
    0.696676834276998*x3 + 1.27289874839144*x4) + x3/(0.767395887387844*x1 + ...
    0.176307940228365*x2 + x3 + 0.187999658986436*x4) + 0.308103094315467*x4/(...
    0.989870205661735*x1 + 0.928335072476283*x2 + 0.308103094315467*x3 + x4) + ...
    3643.31361767678/(239.726 + x5) - x7 - 12.9738026256517;

g(4)= log(0.989870205661735*x1 + 0.928335072476283*x2 + 0.308103094315467*x3 + x4...
    ) + 0.590071729272002*x1/(x1 + 1.2689544013438*x2 + 0.696334182309743*x3 + ...
    0.590071729272002*x4) + 1.27289874839144*x2/(1.55190688128384*x1 + x2 + ...
    0.696676834276998*x3 + 1.27289874839144*x4) + 0.187999658986436*x3/(...
    0.767395887387844*x1 + 0.176307940228365*x2 + x3 + 0.187999658986436*x4) + ...
    x4/(0.989870205661735*x1 + 0.928335072476283*x2 + 0.308103094315467*x3 + x4...
    ) + 2755.64173589155/(219.161 + x5) - x7 -10.2081676704566;

g(5)= (-log(x1 + 1.2689544013438*x2 + 0.696334182309743*x3 + 0.590071729272002*x4...
    )) - (x1/(x1 + 1.2689544013438*x2 + 0.696334182309743*x3 + ...
    0.590071729272002*x4) + 1.55190688128384*x2/(1.55190688128384*x1 + x2 + ...
    0.696676834276998*x3 + 1.27289874839144*x4) + 0.767395887387844*x3/(...
    0.767395887387844*x1 + 0.176307940228365*x2 + x3 + 0.187999658986436*x4) + ...
    0.989870205661735*x4/(0.989870205661735*x1 + 0.928335072476283*x2 + ...
    0.308103094315467*x3 + x4)) - 2787.49800065313/(229.664 + x5) - x7...
     +10.7545020354713;

g(6)= (-log(1.55190688128384*x1 + x2 + 0.696676834276998*x3 + 1.27289874839144*x4...
    )) - (1.2689544013438*x1/(x1 + 1.2689544013438*x2 + 0.696334182309743*x3 + ...
    0.590071729272002*x4) + x2/(1.55190688128384*x1 + x2 + 0.696676834276998*x3...
     + 1.27289874839144*x4) + 0.176307940228365*x3/(0.767395887387844*x1 + ...
    0.176307940228365*x2 + x3 + 0.187999658986436*x4) + 0.928335072476283*x4/(...
    0.989870205661735*x1 + 0.928335072476283*x2 + 0.308103094315467*x3 + x4))...
     - 2696.24885600287/(226.232 + x5) - x7 +10.3803549837107;

g(7)= (-log(0.767395887387844*x1 + 0.176307940228365*x2 + x3 + 0.187999658986436*...
    x4)) - (0.696334182309743*x1/(x1 + 1.2689544013438*x2 + 0.696334182309743*...
    x3 + 0.590071729272002*x4) + 0.696676834276998*x2/(1.55190688128384*x1 + x2...
     + 0.696676834276998*x3 + 1.27289874839144*x4) + x3/(0.767395887387844*x1...
     + 0.176307940228365*x2 + x3 + 0.187999658986436*x4) + 0.308103094315467*x4...
    /(0.989870205661735*x1 + 0.928335072476283*x2 + 0.308103094315467*x3 + x4))...
     - 3643.31361767678/(239.726 + x5) - x7 +12.9738026256517;

g(8)= (-log(0.989870205661735*x1 + 0.928335072476283*x2 + 0.308103094315467*x3 + ...
    x4)) - (0.590071729272002*x1/(x1 + 1.2689544013438*x2 + 0.696334182309743*...
    x3 + 0.590071729272002*x4) + 1.27289874839144*x2/(1.55190688128384*x1 + x2...
     + 0.696676834276998*x3 + 1.27289874839144*x4) + 0.187999658986436*x3/(...
    0.767395887387844*x1 + 0.176307940228365*x2 + x3 + 0.187999658986436*x4) + ...
    x4/(0.989870205661735*x1 + 0.928335072476283*x2 + 0.308103094315467*x3 + x4...
    )) - 2755.64173589155/(219.161 + x5) - x7 +10.2081676704566;

e(1)=    x1 + x2 + x3 + x4 - 1;


end
