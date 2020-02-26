function v = Rotation(u,phi,theta)
%
% Rotation of a vector u around the vector phi with an angle theta
%
% phi :     a vactor, not normed
% theta :    angle in degrees
%

% 1) phi needs to be normed and theta to be in radian
phi = phi / norm(phi) ;
theta = pi * theta / 180 ;

% 2) Application of the rotation
v = dot(u,phi) * phi ;
v = v + sin(theta) * cross(phi,u) ;
v = v + cos(theta) * cross(cross(phi,u),phi) ;