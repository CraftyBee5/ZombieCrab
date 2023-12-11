function play ()

numCrabs = 2;

[mapHeight , mapWidth] = drawMap( "Beach.jpg");

% x, y, theta, size, dStep
for i = 1 : numCrabs
  [xCrab(i), yCrab(i), thetaC(i), sizeC(i), cStep(i)] = newCrab();
  crabGraph{i} = drawCrab(xCrab(i), yCrab(i), thetaC(i), sizeC(i));
endfor

cmd = kbhit();

while (1)

commandwindow();

if (cmd == "Q")
  clc
  close all
endif

endwhile

endfunction
