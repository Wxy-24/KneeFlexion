function plot4ptsframe(M1,M2,M3,M4,O1,PR0R1) 
%
% Function to plot the 3 points and the associated frame
%

% For the point M1
plot3(M1(1),M1(2),M1(3),'ro')

% Do not erase the other plot
hold on 

% For the point M2
plot3(M2(1),M2(2),M2(3),'bo')

% For the point M3
plot3(M3(1),M3(2),M3(3),'mo')

% For the point M4
plot3(M4(1),M4(2),M4(3),'ko')

% For the center of the frame O1
plot3(O1(1),O1(2),O1(3),'k.')

% For the x1 axis
quiver3(O1(1),O1(2),O1(3),PR0R1(1,1),PR0R1(2,1),PR0R1(3,1),'color','r')

% For the y1 axis
quiver3(O1(1),O1(2),O1(3),PR0R1(1,2),PR0R1(2,2),PR0R1(3,2),'color','b')

% For the z1 axis
quiver3(O1(1),O1(2),O1(3),PR0R1(1,3),PR0R1(2,3),PR0R1(3,3),'color','g')

% Same scale for all the axis
axis equal