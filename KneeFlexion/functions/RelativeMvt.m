function [T,A] = RelativeMvt(O1d,PR0R1d,O2d,PR0R2d,O1f,PR0R1f,O2f,PR0R2f,O,PR0R)
%
% Function to compute the relative motion of 2 in 1 evaluate in R
%

% ___ Relative Translation T ______________________________________________
%
T = PR0R' * (O2f + O1d - O1f - O2d)' ;
T = T' ;

% ___ Relative Rotation R _________________________________________________
%
Rot = PR0R' * PR0R2f * PR0R2d' * PR0R1d * PR0R1f' * PR0R ;
[a,b,c] = BryantSequence(Rot) ;
A = [a,b,c] ;

% ___ The results are shown in the command window _________________________
%
disp('Coordinates of the Relative Translation between 1 and 2 in R :')
disp(T)
disp('Angles (°) of Relative Rotation between 1 and 2 using the Bryant sequence in R :')
disp(A)
