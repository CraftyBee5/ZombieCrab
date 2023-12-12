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
character = drawCapt (charX, charY, -pi/2, 20);

bX = 100;
bY = 100;
bullet = drawBullet (bX, bY, -pi/2, 2);

while (1)

  %testing out weapons
  gun1 = drawGun1 (400, 400, -pi/2, 10);
  gun2 = drawGun2 (200, 400, -pi/2, 10);

  %infoText = text(10, mapHeight - 10, sprintf('Wave %d Lives %d', wave, lives), 'Color', 'white', 'FontSize', 12);

  cmd = kbhit(0.1);

  commandwindow();

  if (cmd == "Q")
    clc
    break
  endif

  if (cmd == "w")
    delete(character);
    charY -= 10;
    character = drawCapt (charX, charY, -pi/2, 20);
  endif

  if (cmd == "a")
    delete(character);
    charX -= 10;
    character = drawCapt (charX, charY, -pi/2, 20);
  endif

  if (cmd == "s")
    delete(character);
    charY += 10;
    character = drawCapt (charX, charY, -pi/2, 20);
  endif

  if (cmd == "d")
    delete(character);
    charX += 10;
    character = drawCapt (charX, charY, -pi/2, 20);
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
