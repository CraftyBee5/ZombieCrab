function play ()

numCrabs = 2;
wave = 1;
lives = 10;

[mapHeight , mapWidth] = drawMap( "Beach.jpg");

% x, y, theta, size, dStep
for i = 1 : numCrabs
  [xCrab(i), yCrab(i), thetaC(i), sizeC(i), cStep(i)] = newCrab(wave);
  crabGraph{i} = drawCrab(xCrab(i), yCrab(i), thetaC(i), sizeC(i));
endfor

charX = 300;
charY = 150;
charGraph = drawCapt (charX, charY, -pi/2, 20);

while (1)

  %infoText = text(10, mapHeight - 10, sprintf('Wave %d Lives %d', wave, lives), 'Color', 'white', 'FontSize', 12);

  cmd = kbhit(0.1);

  commandwindow();

  if (cmd == "Q")
    clc
    break
  endif

  if (cmd == "w")
    delete(charGraph);
    charY -= 10;
    charGraph = drawCapt (charX, charY, -pi/2, 20);
  endif

  if (cmd == "a")
    delete(charGraph);
    charX -= 10;
    charGraph = drawCapt (charX, charY, -pi/2, 20);
  endif

  if (cmd == "s")
    delete(charGraph);
    charY += 10;
    charGraph = drawCapt (charX, charY, -pi/2, 20);
  endif

  if (cmd == "d")
    delete(charGraph);
    charX += 10;
    charGraph = drawCapt (charX, charY, -pi/2, 20);
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
