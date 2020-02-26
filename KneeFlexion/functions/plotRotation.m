function plotRotation(u,v,phi)
%
% Function to plot the rotation of u arround phi (vector v)
%

% The Vector phi
quiver3(0,0,0,phi(1),phi(2),phi(3),'color','k','linewidth',2)
hold on 

% The vector u
quiver3(0,0,0,u(1),u(2),u(3),'color','r')

% the vector v
quiver3(0,0,0,v(1),v(2),v(3),'color','g')

axis equal