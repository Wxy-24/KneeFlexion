function plotFrame(O,PR0R,color,lW,lS)
%
% function to plot a frame in R0
% 
if nargin == 3
    lW = 1 ; 
    lS = '-' ;
elseif nargin == 4 
    lS = '-' ;
end
plot3(O(1),O(2),O(3),'k*','markersize',2) ;
hold on
quiver3(O(1),O(2),O(3),PR0R(1,1),PR0R(2,1),PR0R(3,1),'color',color,...
    'linewidth',lW,'linestyle',lS) ;
quiver3(O(1),O(2),O(3),PR0R(1,2),PR0R(2,2),PR0R(3,2),'color',color,...
    'linewidth',lW,'linestyle',lS) ;
quiver3(O(1),O(2),O(3),PR0R(1,3),PR0R(2,3),PR0R(3,3),'color',color,...
    'linewidth',lW,'linestyle',lS) ;