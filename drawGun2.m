function [gunGraphics] = drawGun2 (xgun , ygun , thetagun , sizegun)

gun2 = getGun2(sizegun, xgun, ygun, thetagun);
% TODO : Rotate gun from zero heading to heading thetagun
% TODO : Shift the gun from (0 , 0) to (xgun , ygun)
% Extract the gun points from the gun matrix gun.

% rotate gun
R = getRotation(thetagun);
%R = 1;
gunRotated = R*gun2;

% shift gun to new location
T = getTranslation(xgun,ygun);
gun2 = T*gunRotated;

pt1=gun2( : , 1);
pt2=gun2( : , 2);
pt3=gun2( : , 3);
pt4=gun2( : , 4);
pt5=gun2( : , 5);
pt6=gun2( : , 6);
pt7=gun2( : , 7);
pt8=gun2( : , 8);
pt9=gun2( : , 9);
pt10=gun2( : , 10);
pt11=gun2( : , 11);

% Draw the gun and set the return vector of graphics handles.
gunGraphics(1) = drawLine(pt1 , pt2 , "k");
gunGraphics(2) = drawLine(pt2 , pt3 , "k");
gunGraphics(3) = drawLine(pt3 , pt4 , "k");
gunGraphics(4) = drawLine(pt4 , pt5 , "k");
gunGraphics(5) = drawLine(pt5 , pt6 , "k");
gunGraphics(6) = drawLine(pt6 , pt7 , "k");
gunGraphics(7) = drawLine(pt7 , pt8 , "k");
gunGraphics(8) = drawLine(pt8 , pt9 , "k");
gunGraphics(9) = drawLine(pt9 , pt10 , "k");
gunGraphics(10) = drawLine(pt10 , pt1 , "k");
gunGraphics(11) = drawLine(pt1 , pt11 , "k");
gunGraphics(12) = drawLine(pt11 , pt3 , "k");

endfunction

