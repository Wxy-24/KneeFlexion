function [T,R] = AbsoluteMvt(O1,PR0R1,O2,PR0R2,O,PR0R) 
%
% Function to compute the absolute mouvement of a solid S, between the
% position 1, associated to the frame R1, and the position 2, associated to
% the frame R2. This analysis is made in the frame R, using the Bryant
% sequence
%
% T : coordinates of O1O2 in the frame R
% R : angles associated to the Bryant sequence in R
%

% ____ The Translation ____________________________________________________
%
% Construction of O1O2 in R0
O1O2 = O2 - O1 ;
% Computing the coordinates of O1O2 in R to have T
% We need to use PRR0 = PR0R'
T = PR0R'*O1O2' ;
% We want a line vector
T = T' ;

% ___ The Rotation ________________________________________________________
%
% Construction of the rotation matrix in R
Rot = PR0R' * PR0R2 * PR0R1' * PR0R ;
% Computing the angles of rotation 
[a,b,c] = BryantSequence(Rot) ;
% We want a line vector
R = [a,b,c] ;

% ___ The results are shown in the command window _________________________
%
disp('Coordinates of the Translation between R1 and R2 in R :')
disp(T)
disp('Angles (°) of Rotation between R1 and R2 using the Bryant sequence in R :')
disp(R)
