function [O1,PR0R1] = Frame3pts(M1,M2,M3)
%
% Function to build a frame from 3 points : M1, M2 and M3
%
% O1 : Coordinates of O1, center of the frame, in R0
% PR0R1 : Transformation matrix between R1 and R0
%

% O1 is the barycenter of the 3 points
O1 = (M1 + M2 + M3) / 3 ;

% The x1 axis is defined with the vector M1M2
x1 = M2 - M1 ;
x1 = x1 / norm(x1) ;

% the z1 axis is computed from the cross product between x1 and M1M3
z1 = cross(x1,M3 - M1) ;
z1 = z1 / norm(z1) ;

% the y1 axis is computed from the cross product of z1 and x1
y1 = cross(z1,x1) ;

% Then the Tranformation matrix is :
PR0R1 = [x1',y1',z1'] ;

% End of the function
