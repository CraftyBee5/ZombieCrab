function [xNet, yNet, gunGraphics] = drawgun (xgun , ygun , thetagun , sizegun)
% In the future, this function will draw the gun at the given
% position (xgun , ygun) , with heading thetagun.
% For now, it draws the gun at the (0, 0) with 0 heading.
% This function returns a vector of graphics handles called gunGrapics.
% The ith vector entry contains the graphics handle of ith line of the gun.
% Use your code from last week to get the gun matrix
% for a gun of dimension sizegun. Notice that
% sizegun is a parameter passed into drawgun.
gun = getgun(sizegun, xgun, ygun, thetagun);
% TODO : Rotate gun from zero heading to heading thetagun
% TODO : Shift the gun from (0 , 0) to (xgun , ygun)
% Extract the gun points from the gun matrix gun.

% rotate gun
R = getRotation(thetagun);
%R = 1;
gunRotated = R*gun;

% shift gun to new location
T = getTranslation(xgun,ygun);
gun = T*gunRotated;

pt1=gun( : , 1);
pt2=gun( : , 2);
pt3=gun( : , 3);
pt4=gun( : , 4);
pt5=gun( : , 5);
pt6=gun( : , 6);
pt7=gun( : , 7);
pt8=gun( : , 8);
pt9=gun( : , 9);
pt10=gun( : , 10);
pt11=gun( : , 11);
pt12=gun( : , 12);
pt13=gun( : , 13);
pt14=gun( : , 14);
pt15=gun( : , 15);
pt16=gun( : , 16);
pt17=gun( : , 17);
pt18=gun( : , 18);
pt19=gun( : , 19);
pt20=gun( : , 20);

% Draw the gun and set the return vector of graphics handles.
gunGraphics(1) = drawLine(pt1 , pt2 , "k");
gunGraphics(2) = drawLine(pt2 , pt3 , "k");
gunGraphics(3) = drawLine(pt2 , pt5 , "k");
gunGraphics(4) = drawLine(pt4 , pt5 , "k");
gunGraphics(5) = drawLine(pt5 , pt6 , "k");
gunGraphics(6) = drawLine(pt6 , pt1 , "k");
gunGraphics(7) = drawLine(pt7 , pt8 , "k");
gunGraphics(8) = drawLine(pt8 , pt9 , "k");
gunGraphics(9) = drawLine(pt9 , pt10 , "k");
gunGraphics(10) = drawLine(pt1 , pt11 , "k");
gunGraphics(11) = drawLine(pt6 , pt12 , "k");
gunGraphics(12) = drawLine(pt13 , pt14 , "k");
gunGraphics(13) = drawLine(pt15 , pt16 , "k");
gunGraphics(14) = drawLine(pt15 , pt17 , "k");
gunGraphics(15) = drawLine(pt17 , pt18 , "k");
gunGraphics(16) = drawLine(pt18 , pt16 , "k");
gunGraphics(17) = drawLine(pt19 , pt20 , "k");


endfunction

