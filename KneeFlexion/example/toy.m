% ---> The frame R1
O1 = [1,2,3] ;
x1 = Rotation([1,0,0],[1,3,5],35) ;
y1 = Rotation([0,1,0],[1,3,5],35) ;
z1 = Rotation([0,0,1],[1,3,5],35) ;
PR0R1 = [x1',y1',z1'] ;

% ---> The frame R2
O2 = [3,-1,0] ;
x2 = Rotation([1,0,0],[-3,1,7],70) ;
y2 = Rotation([0,1,0],[-3,1,7],70) ;
z2 = Rotation([0,0,1],[-3,1,7],70) ;
PR0R2 = [x2',y2',z2'] ;

% ---> The frame R
O = [0,1,-1] ;
x = Rotation([1,0,0],[1,1,0],-15) ;
y = Rotation([0,1,0],[1,1,0],-15) ;
z = Rotation([0,0,1],[1,1,0],-15) ;
PR0R = [x',y',z'] ;

% ---> Computing the absolute mouvement
[T,R] = AbsoluteMvt(O1,PR0R1,O2,PR0R2,O,PR0R) ;

% ---> Plot the frames
plotFrame(O,PR0R,'r')
plotFrame(O1,PR0R1,'g')
plotFrame(O2,PR0R2,'y')
axis equal