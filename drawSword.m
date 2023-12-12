function [swordGraphics] = drawSword (xSword , ySword , thetaSword , sizeSword)

sword = getSword(sizesword, xsword, ysword, thetasword);
% TODO : Rotate sword from zero heading to heading thetasword
% TODO : Shift the sword from (0 , 0) to (xsword , ysword)
% Extract the sword points from the sword matrix sword.

% rotate sword
R = getRotation(thetasword);
%R = 1;
swordRotated = R*sword;

% shift sword to new location
T = getTranslation(xsword,ysword);
sword = T*swordRotated;

pt1=sword( : , 1);
pt2=sword( : , 2);
pt3=sword( : , 3);
pt4=sword( : , 4);
pt5=sword( : , 5);
pt6=sword( : , 6);
pt7=sword( : , 7);
pt8=sword( : , 8);
pt9=sword( : , 9);
pt10=sword( : , 10);
pt11=sword( : , 11);
pt12=sword( : , 12);
pt13=sword( : , 13);
pt14=sword( : , 14);

% Draw the sword and set the return vector of graphics handles.
swordGraphics(1) = drawLine(pt1 , pt2 , "k");
swordGraphics(2) = drawLine(pt2 , pt3 , "k");
swordGraphics(3) = drawLine(pt3 , pt4 , "k");
swordGraphics(4) = drawLine(pt4 , pt5 , "k");
swordGraphics(6) = drawLine(pt6 , pt7 , "k");
swordGraphics(8) = drawLine(pt8 , pt9 , "k");
swordGraphics(9) = drawLine(pt9 , pt10 , "k");
swordGraphics(10) = drawLine(pt10 , pt11 , "k");
swordGraphics(12) = drawLine(pt12 , pt13 , "k");
swordGraphics(13) = drawLine(pt13 , pt6 , "k");
swordGraphics(14) = drawLine(pt12 , pt7 , "k");


endfunction

