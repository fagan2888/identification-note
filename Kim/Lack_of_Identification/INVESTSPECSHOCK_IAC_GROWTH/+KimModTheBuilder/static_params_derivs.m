function [rp, gp, rpp, gpp, hp] = static_params_derivs(y, x, params)
%
% Status : Computes derivatives of the static model with respect to the parameters
%
% Inputs : 
%   y         [M_.endo_nbr by 1] double    vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1] double     vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1] double   vector of parameter values in declaration order
%
% Outputs:
%   rp        [M_.eq_nbr by #params] double    Jacobian matrix of static model equations with respect to parameters 
%                                              Dynare may prepend or append auxiliary equations, see M_.aux_vars
%   gp        [M_.endo_nbr by M_.endo_nbr by #params] double    Derivative of the Jacobian matrix of the static model equations with respect to the parameters
%                                                           rows: variables in declaration order
%                                                           rows: equations in order of declaration
%   rpp       [#second_order_residual_terms by 4] double   Hessian matrix of second derivatives of residuals with respect to parameters;
%                                                              rows: respective derivative term
%                                                              1st column: equation number of the term appearing
%                                                              2nd column: number of the first parameter in derivative
%                                                              3rd column: number of the second parameter in derivative
%                                                              4th column: value of the Hessian term
%   gpp      [#second_order_Jacobian_terms by 5] double   Hessian matrix of second derivatives of the Jacobian with respect to the parameters;
%                                                              rows: respective derivative term
%                                                              1st column: equation number of the term appearing
%                                                              2nd column: column number of variable in Jacobian of the static model
%                                                              3rd column: number of the first parameter in derivative
%                                                              4th column: number of the second parameter in derivative
%                                                              5th column: value of the Hessian term
%
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

T = NaN(261,1);
T(1) = (y(3))/(y(1));
T(2) = ((1-T(1))*(y(2)/(1-T(1)))^(1+params(8))+T(1)*(y(3)/T(1))^(1+params(8)))^(1/(1+params(8)));
T(3) = 0;
T(4) = 0;
T(5) = 0;
T(6) = 0;
T(7) = y(5);
T(8) = (y(2)/((1-T(1))*T(2)))^params(8);
T(9) = (y(2)-T(3))^(-1)*(1-T(4));
T(10) = 1/(1+params(2)/400);
T(11) = (y(2)-T(5))^(-1)*(-T(6));
T(12) = (y(3)/(T(1)*T(2)))^params(8);
T(13) = 0;
T(14) = 0;
T(15) = y(9);
T(16) = 0;
T(17) = T(7)^params(1);
T(18) = params(1)*T(7)^(params(1)-1);
T(19) = 1-T(1);
T(20) = y(2)/T(19);
T(21) = T(20)^(1+params(8));
T(22) = y(3)/T(1);
T(23) = T(22)^(1+params(8));
T(24) = T(19)*T(21)+T(1)*T(23);
T(25) = 1/(1+params(8));
T(26) = T(24)^T(25);
T(27) = y(2)/(T(19)*T(2));
T(28) = T(27)^params(8);
T(29) = y(3)/(T(1)*T(2));
T(30) = T(29)^params(8);
T(31) = T(7)^(params(1)-1);
T(32) = T(19)*T(2)*T(19)*T(2);
T(33) = T(1)*T(2)*T(1)*T(2);
T(34) = T(7)^params(1)*log(T(7));
T(35) = (1+params(2)/400)*(1+params(2)/400);
T(36) = (-0.0025)/T(35);
T(37) = log(T(20));
T(38) = T(21)*T(37);
T(39) = log(T(22));
T(40) = T(23)*T(39);
T(41) = T(19)*T(38)+T(1)*T(40);
T(42) = (-1)/((1+params(8))*(1+params(8)));
T(43) = T(42)*log(T(24))+T(25)*T(41)/T(24);
T(44) = T(26)*T(43);
T(45) = (-(y(2)*T(19)*T(44)))/T(32);
T(46) = log(T(27))+params(8)*T(45)/T(27);
T(47) = T(28)*T(46);
T(48) = (-(y(3)*T(1)*T(44)))/T(33);
T(49) = log(T(29))+params(8)*T(48)/T(29);
T(50) = T(30)*T(49);
T(51) = T(33)*T(33);
T(52) = T(19)*T(2)*T(19)*T(44)+T(19)*T(2)*T(19)*T(44);
T(53) = T(1)*T(2)*T(1)*T(44)+T(1)*T(2)*T(1)*T(44);
T(54) = (-((-0.0025)*((1+params(2)/400)*0.0025+(1+params(2)/400)*0.0025)))/(T(35)*T(35));
T(55) = (1+params(8)+1+params(8))/((1+params(8))*(1+params(8))*(1+params(8))*(1+params(8)));
T(56) = log(T(24))*T(55)+T(42)*T(41)/T(24);
T(57) = T(43)*T(44)+T(26)*(T(56)+(T(24)*(T(41)*T(42)+T(25)*(T(19)*T(37)*T(38)+T(1)*T(39)*T(40)))-T(41)*T(25)*T(41))/(T(24)*T(24)));
T(58) = (T(32)*(-(y(2)*T(19)*T(57)))-(-(y(2)*T(19)*T(44)))*T(52))/(T(32)*T(32));
T(59) = T(46)*T(47)+T(28)*(T(45)/T(27)+(T(27)*(T(45)+params(8)*T(58))-T(45)*params(8)*T(45))/(T(27)*T(27)));
T(60) = (T(33)*(-(y(3)*T(1)*T(57)))-(-(y(3)*T(1)*T(44)))*T(53))/T(51);
T(61) = T(49)*T(50)+T(30)*(T(48)/T(29)+(T(29)*(T(48)+params(8)*T(60))-T(48)*params(8)*T(48))/(T(29)*T(29)));
T(62) = T(31)*log(T(7))+T(31)*log(T(7))+params(1)*log(T(7))*T(31)*log(T(7));
T(63) = (-(y(8)*T(62)));
T(64) = (-(y(3)))/((y(1))*(y(1)));
T(65) = (-T(64));
T(66) = (-(y(2)*T(65)))/(T(19)*T(19));
T(67) = getPowerDeriv(T(20),1+params(8),1);
T(68) = (-(y(3)*T(64)))/(T(1)*T(1));
T(69) = getPowerDeriv(T(22),1+params(8),1);
T(70) = T(21)*T(65)+T(19)*T(66)*T(67)+T(23)*T(64)+T(1)*T(68)*T(69);
T(71) = getPowerDeriv(T(24),T(25),1);
T(72) = (-(y(2)*(T(2)*T(65)+T(19)*T(70)*T(71))));
T(73) = T(72)/T(32);
T(74) = getPowerDeriv(T(27),params(8),1);
T(75) = (-(y(3)*(T(2)*T(64)+T(1)*T(70)*T(71))));
T(76) = T(75)/T(33);
T(77) = getPowerDeriv(T(29),params(8),1);
T(78) = 1/T(19);
T(79) = T(19)*T(67)*T(78);
T(80) = T(19)*T(2)-y(2)*T(19)*T(71)*T(79);
T(81) = T(80)/T(32);
T(82) = (-T(6))*getPowerDeriv(y(2)-T(5),(-1),1);
T(83) = (-(y(3)*T(1)*T(71)*T(79)))/T(33);
T(84) = 1/(y(1));
T(85) = (-T(84));
T(86) = (-(y(2)*T(85)))/(T(19)*T(19));
T(87) = (T(1)-y(3)*T(84))/(T(1)*T(1));
T(88) = T(21)*T(85)+T(19)*T(67)*T(86)+T(23)*T(84)+T(1)*T(69)*T(87);
T(89) = (-(y(2)*(T(2)*T(85)+T(19)*T(71)*T(88))))/T(32);
T(90) = T(1)*T(2)-y(3)*(T(2)*T(84)+T(1)*T(71)*T(88));
T(91) = T(90)/T(33);
T(92) = T(7)^(params(1)-1-1);
T(93) = getPowerDeriv(T(7),params(1)-1,1)+params(1)*(T(92)+(params(1)-1)*log(T(7))*T(92));
T(94) = T(20)^(1+params(8)-1);
T(95) = T(22)^(1+params(8)-1);
T(96) = T(65)*T(38)+T(19)*T(66)*(T(94)+(1+params(8))*T(37)*T(94))+T(64)*T(40)+T(1)*T(68)*(T(95)+(1+params(8))*T(39)*T(95));
T(97) = T(24)^(T(25)-1);
T(98) = (T(42)*log(T(24))+T(41)*(T(25)-1)/T(24))*T(97);
T(99) = T(25)*T(98)+T(42)*T(97);
T(100) = T(71)*T(96)+T(70)*T(99);
T(101) = (T(32)*(-(y(2)*(T(65)*T(44)+T(19)*T(100))))-T(72)*T(52))/(T(32)*T(32));
T(102) = T(27)^(params(8)-1);
T(103) = (log(T(27))+T(45)*(params(8)-1)/T(27))*T(102);
T(104) = T(102)+params(8)*T(103);
T(105) = T(19)*T(78)*(T(94)+(1+params(8))*T(37)*T(94));
T(106) = T(79)*T(99)+T(71)*T(105);
T(107) = (T(32)*(T(19)*T(44)-y(2)*T(19)*T(106))-T(80)*T(52))/(T(32)*T(32));
T(108) = T(85)*T(38)+T(19)*T(86)*(T(94)+(1+params(8))*T(37)*T(94))+T(84)*T(40)+T(1)*T(87)*(T(95)+(1+params(8))*T(39)*T(95));
T(109) = T(88)*T(99)+T(71)*T(108);
T(110) = (T(32)*(-(y(2)*(T(85)*T(44)+T(19)*T(109))))-(-(y(2)*(T(2)*T(85)+T(19)*T(71)*T(88))))*T(52))/(T(32)*T(32));
T(111) = T(33)*(-(y(3)*(T(64)*T(44)+T(1)*T(100))))-T(75)*T(53);
T(112) = T(111)/T(51);
T(113) = T(29)^(params(8)-1);
T(114) = (log(T(29))+T(48)*(params(8)-1)/T(29))*T(113);
T(115) = T(113)+params(8)*T(114);
T(116) = (T(33)*(-(y(3)*T(1)*T(106)))-(-(y(3)*T(1)*T(71)*T(79)))*T(53))/T(51);
T(117) = (T(33)*(T(1)*T(44)-y(3)*(T(84)*T(44)+T(1)*T(109)))-T(90)*T(53))/T(51);
T(118) = T(32)*T(52)+T(32)*T(52);
T(119) = T(32)*T(32)*T(32)*T(32);
T(120) = T(33)*T(53)+T(33)*T(53);
T(121) = T(37)*T(94)+T(37)*T(94)+(1+params(8))*T(37)*T(37)*T(94);
T(122) = T(65)*T(37)*T(38)+T(19)*T(66)*T(121)+T(64)*T(39)*T(40)+T(1)*T(68)*(T(39)*T(95)+T(39)*T(95)+(1+params(8))*T(39)*T(39)*T(95));
T(123) = T(42)*T(98)+T(25)*(T(97)*(T(56)+(T(24)*(T(41)*T(42)+(T(25)-1)*(T(19)*T(37)*T(38)+T(1)*T(39)*T(40)))-T(41)*T(41)*(T(25)-1))/(T(24)*T(24)))+(T(42)*log(T(24))+T(41)*(T(25)-1)/T(24))*T(98))+T(42)*T(98)+T(97)*T(55);
T(124) = T(96)*T(99)+T(71)*T(122)+T(96)*T(99)+T(70)*T(123);
T(125) = T(19)*T(44)*T(19)*T(44)+T(19)*T(2)*T(19)*T(57)+T(19)*T(44)*T(19)*T(44)+T(19)*T(2)*T(19)*T(57);
T(126) = (T(32)*T(32)*((-(y(2)*(T(65)*T(44)+T(19)*T(100))))*T(52)+T(32)*(-(y(2)*(T(65)*T(57)+T(19)*T(124))))-((-(y(2)*(T(65)*T(44)+T(19)*T(100))))*T(52)+T(72)*T(125)))-(T(32)*(-(y(2)*(T(65)*T(44)+T(19)*T(100))))-T(72)*T(52))*T(118))/T(119);
T(127) = T(103)+T(103)+params(8)*(T(102)*(T(45)/T(27)+(T(27)*(T(45)+(params(8)-1)*T(58))-T(45)*T(45)*(params(8)-1))/(T(27)*T(27)))+(log(T(27))+T(45)*(params(8)-1)/T(27))*T(103));
T(128) = T(99)*T(105)+T(79)*T(123)+T(99)*T(105)+T(71)*T(19)*T(78)*T(121);
T(129) = (T(32)*T(32)*(T(52)*(T(19)*T(44)-y(2)*T(19)*T(106))+T(32)*(T(19)*T(57)-y(2)*T(19)*T(128))-(T(52)*(T(19)*T(44)-y(2)*T(19)*T(106))+T(80)*T(125)))-(T(32)*(T(19)*T(44)-y(2)*T(19)*T(106))-T(80)*T(52))*T(118))/T(119);
T(130) = T(85)*T(37)*T(38)+T(19)*T(86)*T(121)+T(84)*T(39)*T(40)+T(1)*T(87)*(T(39)*T(95)+T(39)*T(95)+(1+params(8))*T(39)*T(39)*T(95));
T(131) = T(99)*T(108)+T(88)*T(123)+T(99)*T(108)+T(71)*T(130);
T(132) = (T(32)*T(32)*(T(52)*(-(y(2)*(T(85)*T(44)+T(19)*T(109))))+T(32)*(-(y(2)*(T(85)*T(57)+T(19)*T(131))))-(T(52)*(-(y(2)*(T(85)*T(44)+T(19)*T(109))))+(-(y(2)*(T(2)*T(85)+T(19)*T(71)*T(88))))*T(125)))-(T(32)*(-(y(2)*(T(85)*T(44)+T(19)*T(109))))-(-(y(2)*(T(2)*T(85)+T(19)*T(71)*T(88))))*T(52))*T(118))/T(119);
T(133) = T(1)*T(44)*T(1)*T(44)+T(1)*T(2)*T(1)*T(57)+T(1)*T(44)*T(1)*T(44)+T(1)*T(2)*T(1)*T(57);
T(134) = (T(51)*((-(y(3)*(T(64)*T(44)+T(1)*T(100))))*T(53)+T(33)*(-(y(3)*(T(64)*T(57)+T(1)*T(124))))-((-(y(3)*(T(64)*T(44)+T(1)*T(100))))*T(53)+T(75)*T(133)))-T(111)*T(120))/(T(51)*T(51));
T(135) = T(114)+T(114)+params(8)*(T(113)*(T(48)/T(29)+(T(29)*(T(48)+(params(8)-1)*T(60))-T(48)*T(48)*(params(8)-1))/(T(29)*T(29)))+(log(T(29))+T(48)*(params(8)-1)/T(29))*T(114));
T(136) = (T(51)*(T(53)*(-(y(3)*T(1)*T(106)))+T(33)*(-(y(3)*T(1)*T(128)))-(T(53)*(-(y(3)*T(1)*T(106)))+(-(y(3)*T(1)*T(71)*T(79)))*T(133)))-(T(33)*(-(y(3)*T(1)*T(106)))-(-(y(3)*T(1)*T(71)*T(79)))*T(53))*T(120))/(T(51)*T(51));
T(137) = (T(51)*(T(53)*(T(1)*T(44)-y(3)*(T(84)*T(44)+T(1)*T(109)))+T(33)*(T(1)*T(57)-y(3)*(T(84)*T(57)+T(1)*T(131)))-(T(53)*(T(1)*T(44)-y(3)*(T(84)*T(44)+T(1)*T(109)))+T(90)*T(133)))-(T(33)*(T(1)*T(44)-y(3)*(T(84)*T(44)+T(1)*T(109)))-T(90)*T(53))*T(120))/(T(51)*T(51));
T(138) = T(92)+(params(1)-1)*log(T(7))*T(92)+T(92)+(params(1)-1)*log(T(7))*T(92)+params(1)*(log(T(7))*T(92)+log(T(7))*T(92)+(params(1)-1)*log(T(7))*log(T(7))*T(92));
T(139) = (-((-(y(3)))*((y(1))+(y(1)))))/((y(1))*(y(1))*(y(1))*(y(1)));
T(140) = (-T(139));
T(141) = (T(19)*T(19)*(-(y(2)*T(140)))-(-(y(2)*T(65)))*(T(19)*T(65)+T(19)*T(65)))/(T(19)*T(19)*T(19)*T(19));
T(142) = getPowerDeriv(T(20),1+params(8),2);
T(143) = (T(1)*T(1)*(-(y(3)*T(139)))-(-(y(3)*T(64)))*(T(1)*T(64)+T(1)*T(64)))/(T(1)*T(1)*T(1)*T(1));
T(144) = getPowerDeriv(T(22),1+params(8),2);
T(145) = T(65)*T(66)*T(67)+T(21)*T(140)+T(65)*T(66)*T(67)+T(19)*(T(67)*T(141)+T(66)*T(66)*T(142))+T(64)*T(68)*T(69)+T(23)*T(139)+T(64)*T(68)*T(69)+T(1)*(T(69)*T(143)+T(68)*T(68)*T(144));
T(146) = getPowerDeriv(T(24),T(25),2);
T(147) = T(70)*T(146);
T(148) = (-(y(2)*(T(65)*T(70)*T(71)+T(2)*T(140)+T(65)*T(70)*T(71)+T(19)*(T(71)*T(145)+T(70)*T(147)))));
T(149) = T(32)*T(148)-T(72)*(T(19)*T(2)*(T(2)*T(65)+T(19)*T(70)*T(71))+T(19)*T(2)*(T(2)*T(65)+T(19)*T(70)*T(71)));
T(150) = getPowerDeriv(T(27),params(8),2);
T(151) = T(65)*T(67)*T(78)+T(19)*(T(67)*T(64)/(T(19)*T(19))+T(66)*T(78)*T(142));
T(152) = (-(T(2)*T(65)+T(19)*T(70)*T(71)+y(2)*(T(65)*T(71)*T(79)+T(19)*(T(71)*T(151)+T(70)*T(79)*T(146)))));
T(153) = T(19)*T(2)*T(19)*T(71)*T(79)+T(19)*T(2)*T(19)*T(71)*T(79);
T(154) = (T(32)*T(152)-T(72)*T(153))/(T(32)*T(32));
T(155) = (-1)/((y(1))*(y(1)));
T(156) = (-T(155));
T(157) = (T(19)*T(19)*(-(y(2)*T(156)))-(-(y(2)*T(65)))*(T(19)*T(85)+T(19)*T(85)))/(T(19)*T(19)*T(19)*T(19));
T(158) = (T(1)*T(1)*(-(T(64)+y(3)*T(155)))-(-(y(3)*T(64)))*(T(1)*T(84)+T(1)*T(84)))/(T(1)*T(1)*T(1)*T(1));
T(159) = T(65)*T(67)*T(86)+T(21)*T(156)+T(66)*T(67)*T(85)+T(19)*(T(67)*T(157)+T(66)*T(86)*T(142))+T(64)*T(69)*T(87)+T(23)*T(155)+T(68)*T(69)*T(84)+T(1)*(T(69)*T(158)+T(68)*T(87)*T(144));
T(160) = (-(y(2)*(T(65)*T(71)*T(88)+T(2)*T(156)+T(70)*T(71)*T(85)+T(19)*(T(71)*T(159)+T(70)*T(88)*T(146)))));
T(161) = T(19)*T(2)*(T(2)*T(85)+T(19)*T(71)*T(88))+T(19)*T(2)*(T(2)*T(85)+T(19)*T(71)*T(88));
T(162) = T(19)*T(71)*T(79)-(T(19)*T(71)*T(79)+y(2)*T(19)*(T(79)*T(79)*T(146)+T(71)*T(19)*T(78)*T(78)*T(142)));
T(163) = T(32)*T(162)-T(80)*T(153);
T(164) = (-T(6))*getPowerDeriv(y(2)-T(5),(-1),2);
T(165) = T(67)*T(78)*T(85)+T(19)*(T(78)*T(86)*T(142)+T(67)*T(84)/(T(19)*T(19)));
T(166) = T(79)*T(88)*T(146)+T(71)*T(165);
T(167) = T(2)*T(85)+T(19)*T(71)*T(88)-y(2)*(T(71)*T(79)*T(85)+T(19)*T(166));
T(168) = (-((-(y(2)*T(85)))*(T(19)*T(85)+T(19)*T(85))))/(T(19)*T(19)*T(19)*T(19));
T(169) = (-((T(1)-y(3)*T(84))*(T(1)*T(84)+T(1)*T(84))))/(T(1)*T(1)*T(1)*T(1));
T(170) = T(85)*T(67)*T(86)+T(85)*T(67)*T(86)+T(19)*(T(86)*T(86)*T(142)+T(67)*T(168))+T(84)*T(69)*T(87)+T(84)*T(69)*T(87)+T(1)*(T(87)*T(87)*T(144)+T(69)*T(169));
T(171) = (-(y(2)*(T(85)*T(71)*T(88)+T(85)*T(71)*T(88)+T(19)*(T(88)*T(88)*T(146)+T(71)*T(170)))));
T(172) = (T(32)*T(171)-(-(y(2)*(T(2)*T(85)+T(19)*T(71)*T(88))))*T(161))/(T(32)*T(32));
T(173) = (-(y(3)*(T(64)*T(70)*T(71)+T(2)*T(139)+T(64)*T(70)*T(71)+T(1)*(T(71)*T(145)+T(70)*T(147)))));
T(174) = T(33)*T(173)-T(75)*(T(1)*T(2)*(T(2)*T(64)+T(1)*T(70)*T(71))+T(1)*T(2)*(T(2)*T(64)+T(1)*T(70)*T(71)));
T(175) = getPowerDeriv(T(29),params(8),2);
T(176) = T(1)*T(2)*T(1)*T(71)*T(79)+T(1)*T(2)*T(1)*T(71)*T(79);
T(177) = T(33)*(-(y(3)*(T(64)*T(71)*T(79)+T(1)*(T(71)*T(151)+T(70)*T(79)*T(146)))))-T(75)*T(176);
T(178) = (-(T(2)*T(64)+T(1)*T(70)*T(71)+y(3)*(T(64)*T(71)*T(88)+T(2)*T(155)+T(70)*T(71)*T(84)+T(1)*(T(71)*T(159)+T(70)*T(88)*T(146)))));
T(179) = T(1)*T(2)*(T(2)*T(84)+T(1)*T(71)*T(88))+T(1)*T(2)*(T(2)*T(84)+T(1)*T(71)*T(88));
T(180) = T(33)*T(178)-T(75)*T(179);
T(181) = T(33)*(-(y(3)*T(1)*(T(79)*T(79)*T(146)+T(71)*T(19)*T(78)*T(78)*T(142))))-(-(y(3)*T(1)*T(71)*T(79)))*T(176);
T(182) = T(33)*(-(T(1)*T(71)*T(79)+y(3)*(T(71)*T(79)*T(84)+T(1)*T(166))))-(-(y(3)*T(1)*T(71)*T(79)))*T(179);
T(183) = T(182)/T(51);
T(184) = T(2)*T(84)+T(1)*T(71)*T(88)-(T(2)*T(84)+T(1)*T(71)*T(88)+y(3)*(T(84)*T(71)*T(88)+T(84)*T(71)*T(88)+T(1)*(T(88)*T(88)*T(146)+T(71)*T(170))));
T(185) = (T(33)*T(184)-T(90)*T(179))/T(51);
T(186) = T(7)^(params(1)-2);
T(187) = T(7)^(params(1)-1-2);
T(188) = (params(1)-1-1)*(params(1)-1)*log(T(7))*T(187)+T(187)*(params(1)-1+params(1)-1-1);
T(189) = T(20)^(1+params(8)-2);
T(190) = T(22)^(1+params(8)-2);
T(191) = T(65)*T(66)*(T(94)+(1+params(8))*T(37)*T(94))+T(140)*T(38)+T(65)*T(66)*(T(94)+(1+params(8))*T(37)*T(94))+T(19)*(T(141)*(T(94)+(1+params(8))*T(37)*T(94))+T(66)*T(66)*((1+params(8)-1)*(1+params(8))*T(37)*T(189)+T(189)*(1+params(8)+1+params(8)-1)))+T(64)*T(68)*(T(95)+(1+params(8))*T(39)*T(95))+T(139)*T(40)+T(64)*T(68)*(T(95)+(1+params(8))*T(39)*T(95))+T(1)*(T(143)*(T(95)+(1+params(8))*T(39)*T(95))+T(68)*T(68)*((1+params(8)-1)*(1+params(8))*T(39)*T(190)+(1+params(8)+1+params(8)-1)*T(190)));
T(192) = T(24)^(T(25)-2);
T(193) = (T(42)*log(T(24))+T(41)*(T(25)-2)/T(24))*T(192);
T(194) = T(25)*T(193);
T(195) = (T(25)-1)*T(194)+T(192)*T(42)*(T(25)+T(25)-1);
T(196) = T(145)*T(99)+T(71)*T(191)+T(147)*T(96)+T(70)*(T(146)*T(96)+T(70)*T(195));
T(197) = (T(2)*T(65)+T(19)*T(70)*T(71))*T(19)*T(44)+T(19)*T(2)*(T(65)*T(44)+T(19)*T(100))+(T(2)*T(65)+T(19)*T(70)*T(71))*T(19)*T(44)+T(19)*T(2)*(T(65)*T(44)+T(19)*T(100));
T(198) = T(148)*T(52)+T(32)*(-(y(2)*(T(65)*T(100)+T(140)*T(44)+T(65)*T(100)+T(19)*T(196))))-((T(19)*T(2)*(T(2)*T(65)+T(19)*T(70)*T(71))+T(19)*T(2)*(T(2)*T(65)+T(19)*T(70)*T(71)))*(-(y(2)*(T(65)*T(44)+T(19)*T(100))))+T(72)*T(197));
T(199) = (T(32)*T(32)*T(198)-T(149)*T(118))/T(119);
T(200) = T(27)^(params(8)-2);
T(201) = (log(T(27))+T(45)*(params(8)-2)/T(27))*T(200);
T(202) = (params(8)-1)*params(8)*T(201)+T(200)*(params(8)+params(8)-1);
T(203) = T(65)*T(78)*(T(94)+(1+params(8))*T(37)*T(94))+T(19)*(T(64)/(T(19)*T(19))*(T(94)+(1+params(8))*T(37)*T(94))+T(66)*T(78)*((1+params(8)-1)*(1+params(8))*T(37)*T(189)+T(189)*(1+params(8)+1+params(8)-1)));
T(204) = T(151)*T(99)+T(71)*T(203)+T(79)*T(146)*T(96)+T(70)*(T(146)*T(105)+T(79)*T(195));
T(205) = T(19)*T(71)*T(79)*T(19)*T(44)+T(19)*T(2)*T(19)*T(106)+T(19)*T(71)*T(79)*T(19)*T(44)+T(19)*T(2)*T(19)*T(106);
T(206) = T(152)*T(52)+T(32)*(-(T(65)*T(44)+T(19)*T(100)+y(2)*(T(65)*T(106)+T(19)*T(204))))-(T(153)*(-(y(2)*(T(65)*T(44)+T(19)*T(100))))+T(72)*T(205));
T(207) = (T(32)*T(32)*T(206)-(T(32)*T(152)-T(72)*T(153))*T(118))/T(119);
T(208) = T(65)*T(86)*(T(94)+(1+params(8))*T(37)*T(94))+T(156)*T(38)+T(85)*T(66)*(T(94)+(1+params(8))*T(37)*T(94))+T(19)*(T(157)*(T(94)+(1+params(8))*T(37)*T(94))+T(66)*T(86)*((1+params(8)-1)*(1+params(8))*T(37)*T(189)+T(189)*(1+params(8)+1+params(8)-1)))+T(64)*T(87)*(T(95)+(1+params(8))*T(39)*T(95))+T(155)*T(40)+T(84)*T(68)*(T(95)+(1+params(8))*T(39)*T(95))+T(1)*(T(158)*(T(95)+(1+params(8))*T(39)*T(95))+T(68)*T(87)*((1+params(8)-1)*(1+params(8))*T(39)*T(190)+(1+params(8)+1+params(8)-1)*T(190)));
T(209) = T(159)*T(99)+T(71)*T(208)+T(88)*T(146)*T(96)+T(70)*(T(146)*T(108)+T(88)*T(195));
T(210) = (T(2)*T(85)+T(19)*T(71)*T(88))*T(19)*T(44)+T(19)*T(2)*(T(85)*T(44)+T(19)*T(109))+(T(2)*T(85)+T(19)*T(71)*T(88))*T(19)*T(44)+T(19)*T(2)*(T(85)*T(44)+T(19)*T(109));
T(211) = T(160)*T(52)+T(32)*(-(y(2)*(T(65)*T(109)+T(156)*T(44)+T(85)*T(100)+T(19)*T(209))))-(T(161)*(-(y(2)*(T(65)*T(44)+T(19)*T(100))))+T(72)*T(210));
T(212) = (T(32)*T(32)*T(211)-(T(32)*T(160)-T(72)*T(161))*T(118))/T(119);
T(213) = T(79)*T(146)*T(105)+T(79)*(T(146)*T(105)+T(79)*T(195))+T(19)*T(78)*T(78)*T(142)*T(99)+T(71)*T(19)*T(78)*T(78)*((1+params(8)-1)*(1+params(8))*T(37)*T(189)+T(189)*(1+params(8)+1+params(8)-1));
T(214) = T(162)*T(52)+T(32)*(T(19)*T(106)-(T(19)*T(106)+y(2)*T(19)*T(213)))-(T(153)*(T(19)*T(44)-y(2)*T(19)*T(106))+T(80)*T(205));
T(215) = (T(32)*T(32)*T(214)-T(163)*T(118))/T(119);
T(216) = T(85)*T(78)*(T(94)+(1+params(8))*T(37)*T(94))+T(19)*(T(78)*T(86)*((1+params(8)-1)*(1+params(8))*T(37)*T(189)+T(189)*(1+params(8)+1+params(8)-1))+T(84)/(T(19)*T(19))*(T(94)+(1+params(8))*T(37)*T(94)));
T(217) = T(88)*T(146)*T(105)+T(79)*(T(146)*T(108)+T(88)*T(195))+T(165)*T(99)+T(71)*T(216);
T(218) = T(32)*T(32)*(T(167)*T(52)+T(32)*(T(85)*T(44)+T(19)*T(109)-y(2)*(T(85)*T(106)+T(19)*T(217)))-(T(161)*(T(19)*T(44)-y(2)*T(19)*T(106))+T(80)*T(210)))-(T(32)*T(167)-T(80)*T(161))*T(118);
T(219) = T(218)/T(119);
T(220) = T(85)*T(86)*(T(94)+(1+params(8))*T(37)*T(94))+T(85)*T(86)*(T(94)+(1+params(8))*T(37)*T(94))+T(19)*(T(86)*T(86)*((1+params(8)-1)*(1+params(8))*T(37)*T(189)+T(189)*(1+params(8)+1+params(8)-1))+T(168)*(T(94)+(1+params(8))*T(37)*T(94)))+T(84)*T(87)*(T(95)+(1+params(8))*T(39)*T(95))+T(84)*T(87)*(T(95)+(1+params(8))*T(39)*T(95))+T(1)*(T(87)*T(87)*((1+params(8)-1)*(1+params(8))*T(39)*T(190)+(1+params(8)+1+params(8)-1)*T(190))+T(169)*(T(95)+(1+params(8))*T(39)*T(95)));
T(221) = T(88)*T(146)*T(108)+T(88)*(T(146)*T(108)+T(88)*T(195))+T(170)*T(99)+T(71)*T(220);
T(222) = T(171)*T(52)+T(32)*(-(y(2)*(T(85)*T(109)+T(85)*T(109)+T(19)*T(221))))-(T(161)*(-(y(2)*(T(85)*T(44)+T(19)*T(109))))+(-(y(2)*(T(2)*T(85)+T(19)*T(71)*T(88))))*T(210));
T(223) = (T(32)*T(32)*T(222)-(T(32)*T(171)-(-(y(2)*(T(2)*T(85)+T(19)*T(71)*T(88))))*T(161))*T(118))/T(119);
T(224) = (T(2)*T(64)+T(1)*T(70)*T(71))*T(1)*T(44)+T(1)*T(2)*(T(64)*T(44)+T(1)*T(100))+(T(2)*T(64)+T(1)*T(70)*T(71))*T(1)*T(44)+T(1)*T(2)*(T(64)*T(44)+T(1)*T(100));
T(225) = T(173)*T(53)+T(33)*(-(y(3)*(T(64)*T(100)+T(139)*T(44)+T(64)*T(100)+T(1)*T(196))))-((T(1)*T(2)*(T(2)*T(64)+T(1)*T(70)*T(71))+T(1)*T(2)*(T(2)*T(64)+T(1)*T(70)*T(71)))*(-(y(3)*(T(64)*T(44)+T(1)*T(100))))+T(75)*T(224));
T(226) = (T(51)*T(225)-T(174)*T(120))/(T(51)*T(51));
T(227) = T(29)^(params(8)-2);
T(228) = (log(T(29))+T(48)*(params(8)-2)/T(29))*T(227);
T(229) = (params(8)-1)*params(8)*T(228)+(params(8)+params(8)-1)*T(227);
T(230) = T(1)*T(71)*T(79)*T(1)*T(44)+T(1)*T(2)*T(1)*T(106)+T(1)*T(71)*T(79)*T(1)*T(44)+T(1)*T(2)*T(1)*T(106);
T(231) = (-(y(3)*(T(64)*T(71)*T(79)+T(1)*(T(71)*T(151)+T(70)*T(79)*T(146)))))*T(53)+T(33)*(-(y(3)*(T(64)*T(106)+T(1)*T(204))))-(T(176)*(-(y(3)*(T(64)*T(44)+T(1)*T(100))))+T(75)*T(230));
T(232) = (T(51)*T(231)-T(177)*T(120))/(T(51)*T(51));
T(233) = (T(2)*T(84)+T(1)*T(71)*T(88))*T(1)*T(44)+T(1)*T(2)*(T(84)*T(44)+T(1)*T(109))+(T(2)*T(84)+T(1)*T(71)*T(88))*T(1)*T(44)+T(1)*T(2)*(T(84)*T(44)+T(1)*T(109));
T(234) = T(178)*T(53)+T(33)*(-(T(64)*T(44)+T(1)*T(100)+y(3)*(T(64)*T(109)+T(155)*T(44)+T(84)*T(100)+T(1)*T(209))))-(T(179)*(-(y(3)*(T(64)*T(44)+T(1)*T(100))))+T(75)*T(233));
T(235) = (T(51)*T(234)-T(180)*T(120))/(T(51)*T(51));
T(236) = (-(y(3)*T(1)*(T(79)*T(79)*T(146)+T(71)*T(19)*T(78)*T(78)*T(142))))*T(53)+T(33)*(-(y(3)*T(1)*T(213)))-(T(176)*(-(y(3)*T(1)*T(106)))+(-(y(3)*T(1)*T(71)*T(79)))*T(230));
T(237) = (T(51)*T(236)-T(181)*T(120))/(T(51)*T(51));
T(238) = (-(T(1)*T(71)*T(79)+y(3)*(T(71)*T(79)*T(84)+T(1)*T(166))))*T(53)+T(33)*(-(T(1)*T(106)+y(3)*(T(84)*T(106)+T(1)*T(217))))-(T(179)*(-(y(3)*T(1)*T(106)))+(-(y(3)*T(1)*T(71)*T(79)))*T(233));
T(239) = (T(51)*T(238)-T(182)*T(120))/(T(51)*T(51));
T(240) = T(184)*T(53)+T(33)*(T(84)*T(44)+T(1)*T(109)-(T(84)*T(44)+T(1)*T(109)+y(3)*(T(84)*T(109)+T(84)*T(109)+T(1)*T(221))))-(T(179)*(T(1)*T(44)-y(3)*(T(84)*T(44)+T(1)*T(109)))+T(90)*T(233));
T(241) = (T(51)*T(240)-(T(33)*T(184)-T(90)*T(179))*T(120))/(T(51)*T(51));
T(242) = (1+params(8))*T(37)*T(189)+(1+params(8)-1)*(T(37)*T(189)+(1+params(8))*T(37)*T(37)*T(189))+T(37)*T(189)*(1+params(8)+1+params(8)-1)+2*T(189);
T(243) = (1+params(8))*T(39)*T(190)+(1+params(8)-1)*(T(39)*T(190)+(1+params(8))*T(39)*T(39)*T(190))+2*T(190)+(1+params(8)+1+params(8)-1)*T(39)*T(190);
T(244) = T(42)*T(194)+(T(25)-1)*(T(42)*T(193)+T(25)*(T(192)*(T(56)+(T(24)*(T(41)*T(42)+(T(25)-2)*(T(19)*T(37)*T(38)+T(1)*T(39)*T(40)))-T(41)*T(41)*(T(25)-2))/(T(24)*T(24)))+(T(42)*log(T(24))+T(41)*(T(25)-2)/T(24))*T(193)))+T(193)*T(42)*(T(25)+T(25)-1)+T(192)*((T(25)+T(25)-1)*T(55)+T(42)*(T(42)+T(42)));
T(245) = T(99)*T(191)+T(145)*T(123)+T(99)*T(191)+T(71)*(T(65)*T(66)*T(121)+T(140)*T(37)*T(38)+T(65)*T(66)*T(121)+T(19)*(T(141)*T(121)+T(66)*T(66)*T(242))+T(64)*T(68)*(T(39)*T(95)+T(39)*T(95)+(1+params(8))*T(39)*T(39)*T(95))+T(139)*T(39)*T(40)+T(64)*T(68)*(T(39)*T(95)+T(39)*T(95)+(1+params(8))*T(39)*T(39)*T(95))+T(1)*(T(143)*(T(39)*T(95)+T(39)*T(95)+(1+params(8))*T(39)*T(39)*T(95))+T(68)*T(68)*T(243)))+T(96)*(T(146)*T(96)+T(70)*T(195))+T(147)*T(122)+T(96)*(T(146)*T(96)+T(70)*T(195))+T(70)*(T(96)*T(195)+T(146)*T(122)+T(96)*T(195)+T(70)*T(244));
T(246) = T(19)*T(44)*(T(65)*T(44)+T(19)*T(100))+(T(2)*T(65)+T(19)*T(70)*T(71))*T(19)*T(57)+T(19)*T(44)*(T(65)*T(44)+T(19)*T(100))+T(19)*T(2)*(T(65)*T(57)+T(19)*T(124));
T(247) = T(52)*T(52)+T(32)*T(125)+T(52)*T(52)+T(32)*T(125);
T(248) = params(8)*T(201)+(params(8)-1)*(T(201)+params(8)*(T(200)*(T(45)/T(27)+(T(27)*(T(45)+(params(8)-2)*T(58))-T(45)*T(45)*(params(8)-2))/(T(27)*T(27)))+(log(T(27))+T(45)*(params(8)-2)/T(27))*T(201)))+T(201)*(params(8)+params(8)-1)+2*T(200);
T(249) = T(99)*T(203)+T(151)*T(123)+T(99)*T(203)+T(71)*(T(65)*T(78)*T(121)+T(19)*(T(64)/(T(19)*T(19))*T(121)+T(66)*T(78)*T(242)))+T(96)*(T(146)*T(105)+T(79)*T(195))+T(79)*T(146)*T(122)+T(96)*(T(146)*T(105)+T(79)*T(195))+T(70)*(T(105)*T(195)+T(146)*T(19)*T(78)*T(121)+T(105)*T(195)+T(79)*T(244));
T(250) = T(19)*T(44)*T(19)*T(106)+T(19)*T(71)*T(79)*T(19)*T(57)+T(19)*T(44)*T(19)*T(106)+T(19)*T(2)*T(19)*T(128)+T(19)*T(44)*T(19)*T(106)+T(19)*T(71)*T(79)*T(19)*T(57)+T(19)*T(44)*T(19)*T(106)+T(19)*T(2)*T(19)*T(128);
T(251) = T(108)*T(195)+T(146)*T(130)+T(108)*T(195)+T(88)*T(244);
T(252) = T(99)*T(208)+T(159)*T(123)+T(99)*T(208)+T(71)*(T(65)*T(86)*T(121)+T(156)*T(37)*T(38)+T(85)*T(66)*T(121)+T(19)*(T(157)*T(121)+T(66)*T(86)*T(242))+T(64)*T(87)*(T(39)*T(95)+T(39)*T(95)+(1+params(8))*T(39)*T(39)*T(95))+T(155)*T(39)*T(40)+T(84)*T(68)*(T(39)*T(95)+T(39)*T(95)+(1+params(8))*T(39)*T(39)*T(95))+T(1)*(T(158)*(T(39)*T(95)+T(39)*T(95)+(1+params(8))*T(39)*T(39)*T(95))+T(68)*T(87)*T(243)))+T(96)*(T(146)*T(108)+T(88)*T(195))+T(88)*T(146)*T(122)+T(96)*(T(146)*T(108)+T(88)*T(195))+T(70)*T(251);
T(253) = T(19)*T(44)*(T(85)*T(44)+T(19)*T(109))+(T(2)*T(85)+T(19)*T(71)*T(88))*T(19)*T(57)+T(19)*T(44)*(T(85)*T(44)+T(19)*T(109))+T(19)*T(2)*(T(85)*T(57)+T(19)*T(131));
T(254) = T(105)*(T(146)*T(105)+T(79)*T(195))+T(79)*T(146)*T(19)*T(78)*T(121)+T(105)*(T(146)*T(105)+T(79)*T(195))+T(79)*(T(105)*T(195)+T(146)*T(19)*T(78)*T(121)+T(105)*T(195)+T(79)*T(244))+T(99)*T(19)*T(78)*T(78)*((1+params(8)-1)*(1+params(8))*T(37)*T(189)+T(189)*(1+params(8)+1+params(8)-1))+T(19)*T(78)*T(78)*T(142)*T(123)+T(99)*T(19)*T(78)*T(78)*((1+params(8)-1)*(1+params(8))*T(37)*T(189)+T(189)*(1+params(8)+1+params(8)-1))+T(71)*T(19)*T(78)*T(78)*T(242);
T(255) = T(105)*(T(146)*T(108)+T(88)*T(195))+T(88)*T(146)*T(19)*T(78)*T(121)+T(105)*(T(146)*T(108)+T(88)*T(195))+T(79)*T(251)+T(99)*T(216)+T(165)*T(123)+T(99)*T(216)+T(71)*(T(85)*T(78)*T(121)+T(19)*(T(78)*T(86)*T(242)+T(84)/(T(19)*T(19))*T(121)));
T(256) = T(108)*(T(146)*T(108)+T(88)*T(195))+T(88)*T(146)*T(130)+T(108)*(T(146)*T(108)+T(88)*T(195))+T(88)*T(251)+T(99)*T(220)+T(170)*T(123)+T(99)*T(220)+T(71)*(T(85)*T(86)*T(121)+T(85)*T(86)*T(121)+T(19)*(T(86)*T(86)*T(242)+T(168)*T(121))+T(84)*T(87)*(T(39)*T(95)+T(39)*T(95)+(1+params(8))*T(39)*T(39)*T(95))+T(84)*T(87)*(T(39)*T(95)+T(39)*T(95)+(1+params(8))*T(39)*T(39)*T(95))+T(1)*(T(87)*T(87)*T(243)+T(169)*(T(39)*T(95)+T(39)*T(95)+(1+params(8))*T(39)*T(39)*T(95))));
T(257) = T(1)*T(44)*(T(64)*T(44)+T(1)*T(100))+(T(2)*T(64)+T(1)*T(70)*T(71))*T(1)*T(57)+T(1)*T(44)*(T(64)*T(44)+T(1)*T(100))+T(1)*T(2)*(T(64)*T(57)+T(1)*T(124));
T(258) = T(53)*T(53)+T(33)*T(133)+T(53)*T(53)+T(33)*T(133);
T(259) = params(8)*T(228)+(params(8)-1)*(T(228)+params(8)*(T(227)*(T(48)/T(29)+(T(29)*(T(48)+(params(8)-2)*T(60))-T(48)*T(48)*(params(8)-2))/(T(29)*T(29)))+(log(T(29))+T(48)*(params(8)-2)/T(29))*T(228)))+2*T(227)+(params(8)+params(8)-1)*T(228);
T(260) = T(1)*T(44)*T(1)*T(106)+T(1)*T(71)*T(79)*T(1)*T(57)+T(1)*T(44)*T(1)*T(106)+T(1)*T(2)*T(1)*T(128)+T(1)*T(44)*T(1)*T(106)+T(1)*T(71)*T(79)*T(1)*T(57)+T(1)*T(44)*T(1)*T(106)+T(1)*T(2)*T(1)*T(128);
T(261) = T(1)*T(44)*(T(84)*T(44)+T(1)*T(109))+(T(2)*T(84)+T(1)*T(71)*T(88))*T(1)*T(57)+T(1)*T(44)*(T(84)*T(44)+T(1)*T(109))+T(1)*T(2)*(T(84)*T(57)+T(1)*T(131));
rp = zeros(9, 12);
rp(1, 2) = (-(T(11)*T(36)));
rp(1, 8) = y(6)*T(47);
rp(2, 2) = (-(T(16)*T(15)*y(7)*y(6)*T(36)));
rp(2, 8) = y(6)*T(50);
rp(3, 2) = (-((y(4)+y(7)*(1-params(3)))*y(6)*T(36)));
rp(3, 3) = (-(y(6)*T(10)*(-y(7))));
rp(4, 3) = y(5);
rp(5, 1) = (-(y(8)*T(34)));
rp(6, 1) = (-(y(8)*(T(31)+params(1)*T(31)*log(T(7)))));
rp(7, 8) = (-T(44));
rp(8, 6) = (-log(y(8)));
rp(8, 7) = (-x(1));
rp(9, 11) = (-log(y(9)));
rp(9, 12) = (-x(2));
gp = zeros(9, 9, 12);
gp(1, 1, 8) = y(6)*(T(74)*T(101)+T(73)*T(104));
gp(1, 2, 2) = (-(T(82)*T(36)));
gp(1, 2, 8) = y(6)*(T(81)*T(104)+T(74)*T(107));
gp(1, 3, 8) = y(6)*(T(89)*T(104)+T(74)*T(110));
gp(1, 6, 8) = T(47);
gp(2, 1, 8) = y(6)*(T(77)*T(112)+T(76)*T(115));
gp(2, 2, 8) = y(6)*(T(83)*T(115)+T(77)*T(116));
gp(2, 3, 8) = y(6)*(T(91)*T(115)+T(77)*T(117));
gp(2, 6, 2) = (-(T(16)*T(15)*y(7)*T(36)));
gp(2, 6, 8) = T(50);
gp(2, 7, 2) = (-(T(16)*T(15)*y(6)*T(36)));
gp(2, 9, 2) = (-(T(16)*y(7)*y(6)*T(36)));
gp(3, 4, 2) = (-(y(6)*T(36)));
gp(3, 6, 2) = (-((y(4)+y(7)*(1-params(3)))*T(36)));
gp(3, 6, 3) = (-(T(10)*(-y(7))));
gp(3, 7, 2) = (-((1-params(3))*y(6)*T(36)));
gp(3, 7, 3) = y(6)*T(10);
gp(4, 5, 3) = 1;
gp(5, 5, 1) = (-(y(8)*(T(31)+params(1)*T(31)*log(T(7)))));
gp(5, 8, 1) = (-T(34));
gp(6, 5, 1) = (-(y(8)*T(93)));
gp(6, 8, 1) = (-(T(31)+params(1)*T(31)*log(T(7))));
gp(7, 1, 8) = (-T(100));
gp(7, 2, 8) = (-T(106));
gp(7, 3, 8) = (-T(109));
gp(8, 8, 6) = (-(1/y(8)));
gp(9, 9, 11) = (-(1/y(9)));
if nargout >= 3
rpp = zeros(9,4);
rpp(1,1)=1;
rpp(1,2)=2;
rpp(1,3)=2;
rpp(1,4)=(-(T(11)*T(54)));
rpp(2,1)=1;
rpp(2,2)=8;
rpp(2,3)=8;
rpp(2,4)=y(6)*T(59);
rpp(3,1)=2;
rpp(3,2)=2;
rpp(3,3)=2;
rpp(3,4)=(-(T(16)*T(15)*y(7)*y(6)*T(54)));
rpp(4,1)=2;
rpp(4,2)=8;
rpp(4,3)=8;
rpp(4,4)=y(6)*T(61);
rpp(5,1)=3;
rpp(5,2)=2;
rpp(5,3)=2;
rpp(5,4)=(-((y(4)+y(7)*(1-params(3)))*y(6)*T(54)));
rpp(6,1)=3;
rpp(6,2)=2;
rpp(6,3)=3;
rpp(6,4)=(-(y(6)*T(36)*(-y(7))));
rpp(7,1)=3;
rpp(7,2)=3;
rpp(7,3)=2;
rpp(7,4)=rpp(6,4);
rpp(8,1)=5;
rpp(8,2)=1;
rpp(8,3)=1;
rpp(8,4)=(-(y(8)*log(T(7))*T(34)));
rpp(9,1)=6;
rpp(9,2)=1;
rpp(9,3)=1;
rpp(9,4)=T(63);
rpp(10,1)=7;
rpp(10,2)=8;
rpp(10,3)=8;
rpp(10,4)=(-T(57));
gpp = zeros(24,5);
gpp(1,1)=1;
gpp(1,2)=1;
gpp(1,3)=8;
gpp(1,4)=8;
gpp(1,5)=y(6)*(T(101)*T(104)+T(74)*T(126)+T(101)*T(104)+T(73)*T(127));
gpp(2,1)=1;
gpp(2,2)=2;
gpp(2,3)=2;
gpp(2,4)=2;
gpp(2,5)=(-(T(82)*T(54)));
gpp(3,1)=1;
gpp(3,2)=2;
gpp(3,3)=8;
gpp(3,4)=8;
gpp(3,5)=y(6)*(T(104)*T(107)+T(81)*T(127)+T(104)*T(107)+T(74)*T(129));
gpp(4,1)=1;
gpp(4,2)=3;
gpp(4,3)=8;
gpp(4,4)=8;
gpp(4,5)=y(6)*(T(104)*T(110)+T(89)*T(127)+T(104)*T(110)+T(74)*T(132));
gpp(5,1)=1;
gpp(5,2)=6;
gpp(5,3)=8;
gpp(5,4)=8;
gpp(5,5)=T(59);
gpp(6,1)=2;
gpp(6,2)=1;
gpp(6,3)=8;
gpp(6,4)=8;
gpp(6,5)=y(6)*(T(112)*T(115)+T(77)*T(134)+T(112)*T(115)+T(76)*T(135));
gpp(7,1)=2;
gpp(7,2)=2;
gpp(7,3)=8;
gpp(7,4)=8;
gpp(7,5)=y(6)*(T(115)*T(116)+T(83)*T(135)+T(115)*T(116)+T(77)*T(136));
gpp(8,1)=2;
gpp(8,2)=3;
gpp(8,3)=8;
gpp(8,4)=8;
gpp(8,5)=y(6)*(T(115)*T(117)+T(91)*T(135)+T(115)*T(117)+T(77)*T(137));
gpp(9,1)=2;
gpp(9,2)=6;
gpp(9,3)=2;
gpp(9,4)=2;
gpp(9,5)=(-(T(16)*T(15)*y(7)*T(54)));
gpp(10,1)=2;
gpp(10,2)=6;
gpp(10,3)=8;
gpp(10,4)=8;
gpp(10,5)=T(61);
gpp(11,1)=2;
gpp(11,2)=7;
gpp(11,3)=2;
gpp(11,4)=2;
gpp(11,5)=(-(T(16)*T(15)*y(6)*T(54)));
gpp(12,1)=2;
gpp(12,2)=9;
gpp(12,3)=2;
gpp(12,4)=2;
gpp(12,5)=(-(T(16)*y(7)*y(6)*T(54)));
gpp(13,1)=3;
gpp(13,2)=4;
gpp(13,3)=2;
gpp(13,4)=2;
gpp(13,5)=(-(y(6)*T(54)));
gpp(14,1)=3;
gpp(14,2)=6;
gpp(14,3)=2;
gpp(14,4)=2;
gpp(14,5)=(-((y(4)+y(7)*(1-params(3)))*T(54)));
gpp(15,1)=3;
gpp(15,2)=6;
gpp(15,3)=2;
gpp(15,4)=3;
gpp(15,5)=(-(T(36)*(-y(7))));
gpp(16,1)=3;
gpp(16,2)=6;
gpp(16,3)=3;
gpp(16,4)=2;
gpp(16,5)=gpp(15,5);
gpp(17,1)=3;
gpp(17,2)=7;
gpp(17,3)=2;
gpp(17,4)=2;
gpp(17,5)=(-((1-params(3))*y(6)*T(54)));
gpp(18,1)=3;
gpp(18,2)=7;
gpp(18,3)=2;
gpp(18,4)=3;
gpp(18,5)=y(6)*T(36);
gpp(19,1)=3;
gpp(19,2)=7;
gpp(19,3)=3;
gpp(19,4)=2;
gpp(19,5)=gpp(18,5);
gpp(20,1)=5;
gpp(20,2)=5;
gpp(20,3)=1;
gpp(20,4)=1;
gpp(20,5)=T(63);
gpp(21,1)=5;
gpp(21,2)=8;
gpp(21,3)=1;
gpp(21,4)=1;
gpp(21,5)=(-(log(T(7))*T(34)));
gpp(22,1)=6;
gpp(22,2)=5;
gpp(22,3)=1;
gpp(22,4)=1;
gpp(22,5)=(-(y(8)*T(138)));
gpp(23,1)=6;
gpp(23,2)=8;
gpp(23,3)=1;
gpp(23,4)=1;
gpp(23,5)=(-T(62));
gpp(24,1)=7;
gpp(24,2)=1;
gpp(24,3)=8;
gpp(24,4)=8;
gpp(24,5)=(-T(124));
gpp(25,1)=7;
gpp(25,2)=2;
gpp(25,3)=8;
gpp(25,4)=8;
gpp(25,5)=(-T(128));
gpp(26,1)=7;
gpp(26,2)=3;
gpp(26,3)=8;
gpp(26,4)=8;
gpp(26,5)=(-T(131));
end
if nargout >= 5
hp = zeros(37,5);
hp(1,1)=1;
hp(1,2)=1;
hp(1,3)=1;
hp(1,4)=8;
hp(1,5)=y(6)*(T(149)/(T(32)*T(32))*T(104)+T(74)*T(199)+T(73)*T(150)*T(101)+T(73)*(T(150)*T(101)+T(73)*T(202)));
hp(2,1)=1;
hp(2,2)=1;
hp(2,3)=2;
hp(2,4)=8;
hp(2,5)=y(6)*(T(154)*T(104)+T(74)*T(207)+T(81)*T(150)*T(101)+T(73)*(T(150)*T(107)+T(81)*T(202)));
hp(3,1)=1;
hp(3,2)=2;
hp(3,3)=1;
hp(3,4)=8;
hp(3,5)=hp(2,5);
hp(4,1)=1;
hp(4,2)=1;
hp(4,3)=3;
hp(4,4)=8;
hp(4,5)=y(6)*((T(32)*T(160)-T(72)*T(161))/(T(32)*T(32))*T(104)+T(74)*T(212)+T(89)*T(150)*T(101)+T(73)*(T(150)*T(110)+T(89)*T(202)));
hp(5,1)=1;
hp(5,2)=3;
hp(5,3)=1;
hp(5,4)=8;
hp(5,5)=hp(4,5);
hp(6,1)=1;
hp(6,2)=1;
hp(6,3)=6;
hp(6,4)=8;
hp(6,5)=T(74)*T(101)+T(73)*T(104);
hp(7,1)=1;
hp(7,2)=6;
hp(7,3)=1;
hp(7,4)=8;
hp(7,5)=hp(6,5);
hp(8,1)=1;
hp(8,2)=2;
hp(8,3)=2;
hp(8,4)=2;
hp(8,5)=(-(T(164)*T(36)));
hp(9,1)=1;
hp(9,2)=2;
hp(9,3)=2;
hp(9,4)=8;
hp(9,5)=y(6)*(T(81)*T(150)*T(107)+T(81)*(T(150)*T(107)+T(81)*T(202))+T(163)/(T(32)*T(32))*T(104)+T(74)*T(215));
hp(10,1)=1;
hp(10,2)=2;
hp(10,3)=3;
hp(10,4)=8;
hp(10,5)=y(6)*(T(89)*T(150)*T(107)+T(81)*(T(150)*T(110)+T(89)*T(202))+(T(32)*T(167)-T(80)*T(161))/(T(32)*T(32))*T(104)+T(74)*T(219));
hp(11,1)=1;
hp(11,2)=3;
hp(11,3)=2;
hp(11,4)=8;
hp(11,5)=hp(10,5);
hp(12,1)=1;
hp(12,2)=2;
hp(12,3)=6;
hp(12,4)=8;
hp(12,5)=T(81)*T(104)+T(74)*T(107);
hp(13,1)=1;
hp(13,2)=6;
hp(13,3)=2;
hp(13,4)=8;
hp(13,5)=hp(12,5);
hp(14,1)=1;
hp(14,2)=3;
hp(14,3)=3;
hp(14,4)=8;
hp(14,5)=y(6)*(T(89)*T(150)*T(110)+T(89)*(T(150)*T(110)+T(89)*T(202))+T(172)*T(104)+T(74)*T(223));
hp(15,1)=1;
hp(15,2)=3;
hp(15,3)=6;
hp(15,4)=8;
hp(15,5)=T(89)*T(104)+T(74)*T(110);
hp(16,1)=1;
hp(16,2)=6;
hp(16,3)=3;
hp(16,4)=8;
hp(16,5)=hp(15,5);
hp(17,1)=2;
hp(17,2)=1;
hp(17,3)=1;
hp(17,4)=8;
hp(17,5)=y(6)*(T(174)/T(51)*T(115)+T(77)*T(226)+T(76)*T(175)*T(112)+T(76)*(T(175)*T(112)+T(76)*T(229)));
hp(18,1)=2;
hp(18,2)=1;
hp(18,3)=2;
hp(18,4)=8;
hp(18,5)=y(6)*(T(177)/T(51)*T(115)+T(77)*T(232)+T(83)*T(175)*T(112)+T(76)*(T(175)*T(116)+T(83)*T(229)));
hp(19,1)=2;
hp(19,2)=2;
hp(19,3)=1;
hp(19,4)=8;
hp(19,5)=hp(18,5);
hp(20,1)=2;
hp(20,2)=1;
hp(20,3)=3;
hp(20,4)=8;
hp(20,5)=y(6)*(T(180)/T(51)*T(115)+T(77)*T(235)+T(91)*T(175)*T(112)+T(76)*(T(175)*T(117)+T(91)*T(229)));
hp(21,1)=2;
hp(21,2)=3;
hp(21,3)=1;
hp(21,4)=8;
hp(21,5)=hp(20,5);
hp(22,1)=2;
hp(22,2)=1;
hp(22,3)=6;
hp(22,4)=8;
hp(22,5)=T(77)*T(112)+T(76)*T(115);
hp(23,1)=2;
hp(23,2)=6;
hp(23,3)=1;
hp(23,4)=8;
hp(23,5)=hp(22,5);
hp(24,1)=2;
hp(24,2)=2;
hp(24,3)=2;
hp(24,4)=8;
hp(24,5)=y(6)*(T(83)*T(175)*T(116)+T(83)*(T(175)*T(116)+T(83)*T(229))+T(181)/T(51)*T(115)+T(77)*T(237));
hp(25,1)=2;
hp(25,2)=2;
hp(25,3)=3;
hp(25,4)=8;
hp(25,5)=y(6)*(T(91)*T(175)*T(116)+T(83)*(T(175)*T(117)+T(91)*T(229))+T(183)*T(115)+T(77)*T(239));
hp(26,1)=2;
hp(26,2)=3;
hp(26,3)=2;
hp(26,4)=8;
hp(26,5)=hp(25,5);
hp(27,1)=2;
hp(27,2)=2;
hp(27,3)=6;
hp(27,4)=8;
hp(27,5)=T(83)*T(115)+T(77)*T(116);
hp(28,1)=2;
hp(28,2)=6;
hp(28,3)=2;
hp(28,4)=8;
hp(28,5)=hp(27,5);
hp(29,1)=2;
hp(29,2)=3;
hp(29,3)=3;
hp(29,4)=8;
hp(29,5)=y(6)*(T(91)*T(175)*T(117)+T(91)*(T(175)*T(117)+T(91)*T(229))+T(185)*T(115)+T(77)*T(241));
hp(30,1)=2;
hp(30,2)=3;
hp(30,3)=6;
hp(30,4)=8;
hp(30,5)=T(91)*T(115)+T(77)*T(117);
hp(31,1)=2;
hp(31,2)=6;
hp(31,3)=3;
hp(31,4)=8;
hp(31,5)=hp(30,5);
hp(32,1)=2;
hp(32,2)=6;
hp(32,3)=7;
hp(32,4)=2;
hp(32,5)=(-(T(16)*T(15)*T(36)));
hp(33,1)=2;
hp(33,2)=7;
hp(33,3)=6;
hp(33,4)=2;
hp(33,5)=hp(32,5);
hp(34,1)=2;
hp(34,2)=6;
hp(34,3)=9;
hp(34,4)=2;
hp(34,5)=(-(T(16)*y(7)*T(36)));
hp(35,1)=2;
hp(35,2)=9;
hp(35,3)=6;
hp(35,4)=2;
hp(35,5)=hp(34,5);
hp(36,1)=2;
hp(36,2)=7;
hp(36,3)=9;
hp(36,4)=2;
hp(36,5)=(-(T(16)*y(6)*T(36)));
hp(37,1)=2;
hp(37,2)=9;
hp(37,3)=7;
hp(37,4)=2;
hp(37,5)=hp(36,5);
hp(38,1)=3;
hp(38,2)=4;
hp(38,3)=6;
hp(38,4)=2;
hp(38,5)=(-T(36));
hp(39,1)=3;
hp(39,2)=6;
hp(39,3)=4;
hp(39,4)=2;
hp(39,5)=hp(38,5);
hp(40,1)=3;
hp(40,2)=6;
hp(40,3)=7;
hp(40,4)=2;
hp(40,5)=(-((1-params(3))*T(36)));
hp(41,1)=3;
hp(41,2)=7;
hp(41,3)=6;
hp(41,4)=2;
hp(41,5)=hp(40,5);
hp(42,1)=3;
hp(42,2)=6;
hp(42,3)=7;
hp(42,4)=3;
hp(42,5)=T(10);
hp(43,1)=3;
hp(43,2)=7;
hp(43,3)=6;
hp(43,4)=3;
hp(43,5)=hp(42,5);
hp(44,1)=5;
hp(44,2)=5;
hp(44,3)=5;
hp(44,4)=1;
hp(44,5)=(-(y(8)*((params(1)-1)*params(1)*log(T(7))*T(186)+T(186)*(params(1)+params(1)-1))));
hp(45,1)=5;
hp(45,2)=5;
hp(45,3)=8;
hp(45,4)=1;
hp(45,5)=(-(T(31)+params(1)*T(31)*log(T(7))));
hp(46,1)=5;
hp(46,2)=8;
hp(46,3)=5;
hp(46,4)=1;
hp(46,5)=hp(45,5);
hp(47,1)=6;
hp(47,2)=5;
hp(47,3)=5;
hp(47,4)=1;
hp(47,5)=(-(y(8)*(getPowerDeriv(T(7),params(1)-1,2)+params(1)*T(188))));
hp(48,1)=6;
hp(48,2)=5;
hp(48,3)=8;
hp(48,4)=1;
hp(48,5)=(-T(93));
hp(49,1)=6;
hp(49,2)=8;
hp(49,3)=5;
hp(49,4)=1;
hp(49,5)=hp(48,5);
hp(50,1)=7;
hp(50,2)=1;
hp(50,3)=1;
hp(50,4)=8;
hp(50,5)=(-T(196));
hp(51,1)=7;
hp(51,2)=1;
hp(51,3)=2;
hp(51,4)=8;
hp(51,5)=(-T(204));
hp(52,1)=7;
hp(52,2)=2;
hp(52,3)=1;
hp(52,4)=8;
hp(52,5)=hp(51,5);
hp(53,1)=7;
hp(53,2)=1;
hp(53,3)=3;
hp(53,4)=8;
hp(53,5)=(-T(209));
hp(54,1)=7;
hp(54,2)=3;
hp(54,3)=1;
hp(54,4)=8;
hp(54,5)=hp(53,5);
hp(55,1)=7;
hp(55,2)=2;
hp(55,3)=2;
hp(55,4)=8;
hp(55,5)=(-T(213));
hp(56,1)=7;
hp(56,2)=2;
hp(56,3)=3;
hp(56,4)=8;
hp(56,5)=(-T(217));
hp(57,1)=7;
hp(57,2)=3;
hp(57,3)=2;
hp(57,4)=8;
hp(57,5)=hp(56,5);
hp(58,1)=7;
hp(58,2)=3;
hp(58,3)=3;
hp(58,4)=8;
hp(58,5)=(-T(221));
hp(59,1)=8;
hp(59,2)=8;
hp(59,3)=8;
hp(59,4)=6;
hp(59,5)=(-((-1)/(y(8)*y(8))));
hp(60,1)=9;
hp(60,2)=9;
hp(60,3)=9;
hp(60,4)=11;
hp(60,5)=(-((-1)/(y(9)*y(9))));
end
end