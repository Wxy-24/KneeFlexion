%
% Computing the mouvement of the Tibia in the Anatomical frame of the Femur
%

% a) Loading the Data
load DATA.mat

% b) Computing the different frames
% Technical Frame of the Femur - Initial Position
[O1d,PR0R1d] = Frame4pts(SetFemur0(1,:),SetFemur0(2,:), ...
    SetFemur0(3,:),SetFemur0(4,:)) ;
% Technical Frame of the Femur - Final Position
[O1f,PR0R1f] = Frame4pts(SetFemur1(1,:),SetFemur1(2,:), ...
    SetFemur1(3,:),SetFemur1(4,:)) ;
% Technical Frame of the Tibia - Initial Position
[O2d,PR0R2d] = Frame4pts(SetTibia0(1,:),SetTibia0(2,:), ...
    SetTibia0(3,:),SetTibia0(4,:)) ;
% Technical Frame of the Tibia - Final Position
[O2f,PR0R2f] = Frame4pts(SetTibia1(1,:),SetTibia1(2,:), ...
    SetTibia1(3,:),SetTibia1(4,:)) ;
% Anatomical Frame of the Femur - Initial Position
[OAf0,PR0RAf0] = AnatFrameFemur(AnatomicalPoints0(1,:),...
    AnatomicalPoints0(2,:),AnatomicalPoints0(3,:)) ;
% Anatomical Frame of the Femur - Final Position
% NB : the position of the Center of the frame is not calculated
OAf1 = OAf0 ;
PR0RAf1 = PR0R1f * PR0R1d' * PR0RAf0 ;

% c) Computing the angles of rotation of the knee
[T,A] = RelativeMvt(O1d,PR0R1d,O2d,PR0R2d,O1f,PR0R1f,O2f,PR0R2f,OAf1,PR0RAf1) ;

disp(' ')

% d) Absolute Mouvement of the Femur
[Ta,Ra] = AbsoluteMvt(O1d,PR0R1d,O1f,PR0R1f,[0,0,0],diag([1,1,1])) ;





