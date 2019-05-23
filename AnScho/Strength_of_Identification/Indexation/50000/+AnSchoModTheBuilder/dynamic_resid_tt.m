function T = dynamic_resid_tt(T, y, x, params, steady_state, it_)
% function T = dynamic_resid_tt(T, y, x, params, steady_state, it_)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T             [#temp variables by 1]     double  vector of temporary terms to be filled by function
%   y             [#dynamic variables by 1]  double  vector of endogenous variables in the order stored
%                                                    in M_.lead_lag_incidence; see the Manual
%   x             [nperiods by M_.exo_nbr]   double  matrix of exogenous variables (in declaration order)
%                                                    for all simulation periods
%   steady_state  [M_.endo_nbr by 1]         double  vector of steady state values
%   params        [M_.param_nbr by 1]        double  vector of parameter values in declaration order
%   it_           scalar                     double  time period for exogenous variables for which
%                                                    to evaluate the model
%
% Output:
%   T           [#temp variables by 1]       double  vector of temporary terms
%

assert(length(T) >= 19);

T(1) = 1+params(2)/400;
T(2) = (1-params(5))^(1/params(4))*y(13);
T(3) = y(10)^(-params(4));
T(4) = 1;
T(5) = y(16)^(-params(4));
T(6) = 1;
T(7) = T(3)*T(4);
T(8) = 1/(1+params(1)/400);
T(9) = T(5)*T(6);
T(10) = 1+params(3)/100;
T(11) = (steady_state(7))^(1-params(16))*y(3)^params(16);
T(12) = y(12)^params(16)*(steady_state(7))^(1-params(16));
T(13) = (steady_state(6))*(y(12)/T(1))^params(6)*(y(9)/T(2))^params(7);
T(14) = 1/params(15);
T(15) = T(9)/T(7)*y(15)/y(9);
T(16) = params(14)/2*(y(12)-T(11))^2;
T(17) = T(13)^(1-params(8));
T(18) = y(2)^params(8);
T(19) = exp(params(11)/100*x(it_, 1));

end
