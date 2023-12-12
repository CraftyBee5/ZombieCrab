function [gunGraphics] = drawBullet (x , y , theta , size)

gun = getBullet(size, x, y);
% TODO : Rotate gun from zero heading to heading thetagun
% TODO : Shift the gun from (0 , 0) to (x , y)
% Extract the gun points from the gun matrix gun.

% rotate gun
R = getRotation(theta);
%R = 1;
gunRotated = R*gun;

% shift gun to new location
T = getTranslation(x,y);
gun = T*gunRotated;

pt1=gun( : , 1);
pt2=gun( : , 2);

% Draw the gun and set the return vector of graphics handles.
gunGraphics(1) = drawLine(pt1 , pt2 , "k");

%bulletHandle = scatter(x, y, size, 'r', 'filled');

endfunction
