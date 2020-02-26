function [a,b,c] = BryantSequence(PR0R1)
%
% Function to compute the angle of rotation from a transformation matrix,
% based on the Bryant sequence x, y', z"
% Angles are computed in degrees
%

% ---> in Radian
a = atan(-PR0R1(2,3)/PR0R1(3,3)) ;
b = asin(PR0R1(1,3)) ;
c = atan(-PR0R1(1,2)/PR0R1(1,1)) ;

% in °
a = a * 180 / pi ;
b = b * 180 / pi ;
c = c * 180 / pi ;
