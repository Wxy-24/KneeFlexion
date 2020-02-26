function [O1,PR0R1] = Frame4pts(M1,M2,M3,M4)
%
% Function to build a frame from 4 points : M1, M2, M3 and M4
%
% O1 : Coordinates of O1, center of the frame, in R0
% PR0R1 : Transformation matrix between R1 and R0
%

% O1 is the barycenter of the 4 points
O1 = (M1 + M2 + M3 + M4) / 4 ;

% The x1 axis is defined with the sum of vectors M1M2 + M4M3
x1 = M2 - M1 + M3 - M4 ;
x1 = x1 / norm(x1) ;

% the z1 axis is computed from the cross product between x1 and M1M3 + M2M4
z1 = cross(x1,M3 - M1 + M4 - M2) ;
z1 = z1 / norm(z1) ;

% the y1 axis is computed from the cross product of z1 and x1
y1 = cross(z1,x1) ;

% Then the Tranformation matrix is :
PR0R1 = [x1',y1',z1'] ;

% End of the function
