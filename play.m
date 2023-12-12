function play ()

numCrabs = 2;
wave = 1;
lives = 10;
crabsDefeated = 3;

rifle = false;
pistol = false;

shotsFired = 0;
bulletSpeed = 2;

g1X = 0;
g1Y = 0;
g2X = 0;
g2Y = 0;
bX = 0;
bY = 0;

[mapHeight , mapWidth] = drawMap( "Beach.jpg");

% x, y, theta, size, dStep
for i = 1 : numCrabs
  [xCrab(i), yCrab(i), thetaC(i), sizeC(i), cStep(i)] = newCrab(wave);
  crabGraph{i} = drawCrab(xCrab(i), yCrab(i), thetaC(i), sizeC(i));
endfor

charX = 300;
charY = 150;
<<<<<<< HEAD
character = drawCapt (charX, charY, -pi/2, 20);

while (1)

  if (crabsDefeated >= 2 && !pistol)
    pistol = true;
    g2X = randi(400) + 100;
    g2Y = randi(100) + 200;
    gun2 = drawGun2 (g2X, g2Y, 0, 10);
  endif

  if ((sqrt((charX - g2X)^2 + ((charY - g2Y)^2))) < 10 && pistol)
    bulletSpeed = equipGun('pistol');
    if (isgraphics(gun2))
      delete(gun2);
    endif
  endif

  if (crabsDefeated >= 8 && !rifle)
    rifle = true
    g1X = randi(400) + 100;
    g1Y = randi(100) + 200;
    gun1 = drawGun1 (g1X, g1Y, 0, 10);
  endif

  if ((sqrt((charX - g1X)^2 + ((charY - g1Y)^2))) < 10 && rifle)
    bulletSpeed = equipGun('rifle');
    if (isgraphics(gun1))
      delete(gun1);
    endif
  endif
=======
charGraph = drawCapt (charX, charY, -pi/2, 20);

while (1)

  %testing out weapons
  gun1 = drawGun1 (400, 400, 0, 10);
  gun2 = drawGun2 (200, 400, 0, 10);
  sword = drawSword (300, 400, 0, 10);
>>>>>>> 8e3979f6aa4d4bd578ee7b8b6e828a3b3d0fe5b6

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

    if (cmd == " ")
        shotsFired += 1;
        bX(shotsFired) = charX;
        bY(shotsFired) = charY;
    endif

    if (shotsFired > 0)
        for i = 1:shotsFired
            bY(i) = bY(i) + bulletSpeed; % Move bullets upward
            bullet{i} = drawBullet(bX(i), bY(i), -pi/2, 2);

            % Check if bullet reached the top of the map
            if bY(i) > mapHeight
                delete(bullet{i});
            endif
        endfor
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
