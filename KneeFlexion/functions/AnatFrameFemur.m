function [OAf,PR0RAf] = AnatFrameFemur(PtH0,PtCI0,PtCE0)
%
% Function to compute the anatomical frame of the femur in the initial
% posititon
%

% Center of the Frame
OAf = PtH0 ;

% Center of the 2 Condyles
C = (PtCI0 + PtCE0) / 2 ;

% Z axis defined by the vector CPtH0
zf = PtH0 - C ;
zf = zf / norm(zf) ;

% X axis defined by the cross product between PtCI0PtCE0 and zt
xf = cross(PtCE0 - PtCI0,zf) ;
xf = xf / norm(xf) ;

% Y axis deffined by the cross product between xf and zf
yf = cross(xf,zf) ;

% Construction of the Transformation Matrix
PR0RAf = [xf',yf',zf'] ;