function play ()

numCrabs = 2;
wave = 1;

[mapHeight , mapWidth] = drawMap( "Beach.jpg");

% x, y, theta, size, dStep
for i = 1 : numCrabs
  [xCrab(i), yCrab(i), thetaC(i), sizeC(i), cStep(i)] = newCrab(wave);
  crabGraph{i} = drawCrab(xCrab(i), yCrab(i), thetaC(i), sizeC(i));
endfor

while (1)

  cmd = kbhit(1);

  commandwindow();

  if (cmd == "Q")
    clc
    break
  endif

  %Movement of Crabs
  for i = 1 : numCrabs
    if isgraphics(crabGraph{i});
      delete(crabGraph{i});
      %Move Crabs Forward
      [xCrab(i), yCrab(i), cStep(i)] = moveCrab (xCrab(i), yCrab(i), cStep(i));
      crabGraph{i} = drawCrab(xCrab(i), yCrab(i), thetaC(i), sizeC(i));
    endif
  endfor

  pause(0.01);

endwhile

close all

endfunction
