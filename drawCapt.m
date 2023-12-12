function [xNet, yNet, captainGraphics] = drawCapt (xCapt , yCapt , sizeCapt)

capt = getCapt(sizeCapt, xCapt, yCapt);
##
##% rotate captain
##R = getRotation(thetaCapt);
##%R = 1;
##captRotated = R*capt;
##
##% shift captain to new location
##T = getTranslation(xCapt,yCapt);
##capt = T*captRotated;

pt1=capt( : , 1);
pt2=capt( : , 2);
pt3=capt( : , 3);
pt4=capt( : , 4);
pt5=capt( : , 5);
pt6=capt( : , 6);
pt7=capt( : , 7);
pt8=capt( : , 8);
pt9=capt( : , 9);
pt10=capt( : , 10);
pt11=capt( : , 11);
pt12=capt( : , 12);
pt13=capt( : , 13);
pt14=capt( : , 14);
pt15=capt( : , 15);
pt16=capt( : , 16);
pt17=capt( : , 17);
pt18=capt( : , 18);
pt19=capt( : , 19);
pt20=capt( : , 20);

% Draw the captain and set the return vector of graphics handles.
captainGraphics(1) = drawLine(pt1 , pt2 , "k");
captainGraphics(2) = drawLine(pt1 , pt3 , "k");
captainGraphics(3) = drawLine(pt2 , pt4 , "k");
captainGraphics(4) = drawLine(pt3 , pt5 , "k");
captainGraphics(5) = drawLine(pt5 , pt7 , "k");
captainGraphics(6) = drawLine(pt4 , pt6 , "k");
captainGraphics(7) = drawLine(pt7 , pt8 , "k");
captainGraphics(8) = drawLine(pt6 , pt8 , "k");
captainGraphics(9) = drawLine(pt4 , pt9 , "k");
captainGraphics(10) = drawLine(pt9 , pt10 , "k");
captainGraphics(11) = drawLine(pt10 , pt6 , "k");
captainGraphics(12) = drawLine(pt5 , pt11 , "k");
captainGraphics(13) = drawLine(pt11 , pt12 , "k");
captainGraphics(14) = drawLine(pt12 , pt7 , "k");
captainGraphics(15) = drawLine(pt7 , pt13 , "k");
captainGraphics(16) = drawLine(pt13 , pt14 , "k");
captainGraphics(17) = drawLine(pt14 , pt15 , "k");
captainGraphics(18) = drawLine(pt15 , pt16 , "k");
captainGraphics(19) = drawLine(pt17 , pt18 , "k");
captainGraphics(20) = drawLine(pt18 , pt19 , "k");
captainGraphics(21) = drawLine(pt19 , pt20 , "k");
captainGraphics(22) = drawLine(pt20 , pt6 , "k");
captainGraphics(23) = drawLine(pt20 , pt13 , "k");

endfunction

