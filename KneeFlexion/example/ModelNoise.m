% Modeling of noise

% Points to compute the frames
M1 = [-10,10,0] ;
M2 = [10,10,0] ;
M3 = [10,-10,0] ;
M4 = [-10,-10,0] ;

% Standard devisation of the noise
noiseSTD = 0.01 ;

% Reference values : points without noise
[O3,PR0R3] = Frame3pts(M1,M2,M3) ;
[O4,PR0R4] = Frame4pts(M1,M2,M3,M4) ;

% Extraction of the angles from the Bryant Sequence
[a3,b3,c3] = BryantSequence(PR0R3) ;
[a4,b4,c4] = BryantSequence(PR0R4) ;

% Creation of noisy points
for t = 1:200
    % Creation of noisy points
    M1n = M1 + noiseSTD * randn(1,3) ;
    M2n = M2 + noiseSTD * randn(1,3) ;
    M3n = M3 + noiseSTD * randn(1,3) ;
    M4n = M4 + noiseSTD * randn(1,3) ;
    
    % Computing of the noisy frames
    [O3n,PR0R3n] = Frame3pts(M1n,M2n,M3n) ;
    [O4n,PR0R4n] = Frame4pts(M1n,M2n,M3n,M4n) ;
    
    % Noisy angles
    [a3n,b3n,c3n] = BryantSequence(PR0R3n) ;
    [a4n,b4n,c4n] = BryantSequence(PR0R4n) ;
    
    % Saving the values of interest
    Values3(t,:) = [O3n,a3n,b3n,c3n] ;
    Values4(t,:) = [O4n,a4n,b4n,c4n] ;
    
end

% We compute the mean and standard deviation of the values computed for
% each frame

% For 3 points
Mean3pts = mean(Values3) ;
STD3pts = std(Values3) ;

% For 4 points
Mean4pts = mean(Values4) ;
STD4pts = std(Values4) ;

% We give the values
disp('Reference values for the 3 points frame :')
disp([O3,a3,b3,c3]) ;
disp('Mean of the noisy frame for the 3 points frame :')
disp(Mean3pts) ;
disp('STD of the noisy frame for the 3 points frame :')
disp(STD3pts) ;
disp(' ')
disp('Reference values for the 4 points frame :')
disp([O4,a4,b4,c4]) ;
disp('Mean of the noisy frame for the 4 points frame :')
disp(Mean4pts) ;
disp('STD of the noisy frame for the 4 points frame :')
disp(STD4pts) ;






