function crabGraphics = drawCrab (xCrab , yCrab , thetaCrab , sizeCrab)

if (iscell(xCrab))
  xCrab = cell2mat(xCrab);
endif
if (iscell(yCrab))
  yCrab = cell2mat(yCrab);
endif
if (iscell(thetaCrab))
  thetaCrab = cell2mat(thetaCrab);
endif

crab = getCrab(sizeCrab);

R = [cos(thetaCrab) -sin(thetaCrab) 0; sin(thetaCrab) cos(thetaCrab) 0; 0 0 1];

crabRotated = R * crab;

T = getTranslation(xCrab,yCrab);
crab = T * crabRotated;

pt1=crab( : , 1);
pt2=crab( : , 2);
pt3=crab( : , 3);
pt4=crab( : , 4);
pt5=crab( : , 5);
pt6=crab( : , 6);
pt7=crab( : , 7);
pt8=crab( : , 8);
pt9=crab( : , 9);
pt10=crab( : , 10);
pt11=crab( : , 11);
pt12=crab( : , 12);

crabGraphics(1) = drawLine(pt1 , pt2 , "g");
crabGraphics(2) = drawLine(pt2 , pt3 , "g");
crabGraphics(3) = drawLine(pt3 , pt4 , "g");
crabGraphics(4) = drawLine(pt4 , pt1 , "g");
crabGraphics(5) = drawLine(pt1 , pt5 , "g");
crabGraphics(6) = drawLine(pt6 , pt7 , "g");
crabGraphics(7) = drawLine(pt4 , pt8 , "g");
crabGraphics(8) = drawLine(pt2 , pt9 , "g");
crabGraphics(9) = drawLine(pt10 , pt11 , "g");
crabGraphics(10) = drawLine(pt3 , pt12 , "g");

endfunction
