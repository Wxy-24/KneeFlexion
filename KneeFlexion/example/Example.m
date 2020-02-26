%
% Creation of data to test the function 
%
% 
% % ---> The frame R1d
% O1d = [1,2,3] ;
% x1d = Rotation([1,0,0],[1,3,5],35) ;
% y1d = Rotation([0,1,0],[1,3,5],35) ;
% z1d = Rotation([0,0,1],[1,3,5],35) ;
% PR0R1d = [x1d',y1d',z1d'] ;
% 
% % ---> The frame R2d
% O2d = [3,-1,0] ;
% x2d = Rotation([1,0,0],[-3,1,7],70) ;
% y2d = Rotation([0,1,0],[-3,1,7],70) ;
% z2d = Rotation([0,0,1],[-3,1,7],70) ;
% PR0R2d = [x2d',y2d',z2d'] ;
% 
% % ---> The frame R1f
% O1f = [3,2,1] ;
% x1f = Rotation([1,0,0],[1,0,-2],45) ;
% y1f = Rotation([0,1,0],[1,0,-2],45) ;
% z1f = Rotation([0,0,1],[1,0,-2],45) ;
% PR0R1f = [x1f',y1f',z1f'] ;
% 
% % ---> The frame R2f
% O2f = [0,-3,0] ;
% x2f = Rotation([1,0,0],[0,7,-3],20) ;
% y2f = Rotation([0,1,0],[0,7,-3],20) ;
% z2f = Rotation([0,0,1],[0,7,-3],20) ;
% PR0R2f = [x2f',y2f',z2f'] ;
% 
% % ---> The frame R
% O = [0,1,-1] ;
% x = Rotation([1,0,0],[1,1,0],-15) ;
% y = Rotation([0,1,0],[1,1,0],-15) ;
% z = Rotation([0,0,1],[1,1,0],-15) ;
% PR0R = [x',y',z'] ;

%
% Computing of the relative mouvement
%
[T,A] = RelativeMvt(O1d,PR0R1d,O2d,PR0R2d,O1f,PR0R1f,O2f,PR0R2f,O,PR0R) ;

%
% Figure with the Frames
%
% R1d
plotFrame(O1d,PR0R1d,'r',2)
axis equal
% R1f
plotFrame(O1f,PR0R1f,'r',2,'-.')
% R2d
plotFrame(O2d,PR0R2d,'b',2)
% R2d
plotFrame(O2f,PR0R2f,'b',2,'-.')
% R
plotFrame(O,PR0R,'k',3)

%
% Computing of the frame R2a
%
O2a = O1f + O2d - O1d ;
PR0R2a = PR0R1f * PR0R1d' * PR0R2d ;
plotFrame(O2a,PR0R2a,'m',2,':')










