function play()
    numCrabs = 2;
    wave = 1;
    lives = 10;
    crabsDefeated = 0;
    totalCrabsKilled = 0;  % New counter for total crabs killed

    rifle = false;
    pistol = false;

    shotsFired = 0;
    bulletSpeed = 10;

    g1X = 0;
    g1Y = 0;
    g2X = 0;
    g2Y = 0;
    bX = zeros(1, 100);  % Preallocate array for bullet X positions
    bY = zeros(1, 100);  % Preallocate array for bullet Y positions
    bullet = cell(1, 100);  % Preallocate cell array for bullet graphics handles

    [mapHeight, mapWidth] = drawMap("Beach.jpg");

    % x, y, theta, size, dStep
    for i = 1:numCrabs
        [xCrab(i), yCrab(i), thetaC(i), sizeC(i), cStep(i)] = newCrab(wave);
        crabGraph{i} = drawCrab(xCrab(i), yCrab(i), thetaC(i), sizeC(i));
    endfor

    charX = 300;
    charY = 150;
    character = drawCapt(charX, charY, -pi/2, 20);

    infoText = text(10, mapHeight - 10, sprintf('Wave %d Lives %d Crabs Killed %d', wave, lives, totalCrabsKilled), 'Color', 'white', 'FontSize', 12);

    while (lives > 0)

    commandwindow();

        % Check if all crabs are defeated
        if crabsDefeated == numCrabs
            wave += 1;  % Increment the wave
            crabsDefeated = 0;  % Reset crab defeated count

            % Add a new crab for the next wave
            numCrabs = numCrabs + 1;

            % Create new crabs for the next wave
            for i = 1:numCrabs
                [xCrab(i), yCrab(i), thetaC(i), sizeC(i), cStep(i)] = newCrab(wave);
                crabGraph{i} = drawCrab(xCrab(i), yCrab(i), thetaC(i), sizeC(i));
            endfor
        endif

        if (crabsDefeated >= 2 && ~pistol)
            pistol = true;
            g2X = randi(400) + 100;
            g2Y = randi(100) + 200;
            gun2 = drawGun2(g2X, g2Y, 0, 10);
        endif

        if ((sqrt((charX - g2X)^2 + ((charY - g2Y)^2))) < 10 && pistol)
            bulletSpeed = equipGun('pistol');
            if (isgraphics(gun2))
                delete(gun2);
            endif
        endif

        if (crabsDefeated >= 8 && ~rifle)
            rifle = true;
            g1X = randi(400) + 100;
            g1Y = randi(100) + 200;
            gun1 = drawGun1(g1X, g1Y, 0, 10);
        endif

        if ((sqrt((charX - g1X)^2 + ((charY - g1Y)^2))) < 10 && rifle)
            bulletSpeed = equipGun('rifle');
            if (isgraphics(gun1))
                delete(gun1);
            endif
        endif

        delete(character); % Delete the character before redrawing
        character = drawCapt(charX, charY, -pi/2, 20);

        cmd = kbhit(0.1);

        if (cmd == "Q")
            break
        endif

        if (cmd == "w")
            charY -= 10;
        endif

        if (cmd == "a")
            charX -= 10;
        endif

        if (cmd == "s")
            charY += 10;
        endif

        if (cmd == "d")
            charX += 10;
        endif

        % Fire Bullets
        if (cmd == " ")
            shotsFired += 1;
            bX(shotsFired) = charX;
            bY(shotsFired) = charY;
            bullet{shotsFired} = drawBullet(bX(shotsFired), bY(shotsFired), -pi/2, 2);
        endif

% Move Bullets
for j = 1:shotsFired
    if isgraphics(bullet{j})
        % Check if the bullet is out of the map boundaries
        if bY(j) > mapHeight
            delete(bullet{j});
        else
            delete(bullet{j});  % Delete the previous bullet
            bY(j) = bY(j) + bulletSpeed;
            bullet{j} = drawBullet(bX(j), bY(j), -pi/2, 2);

            % Check for bullet and crab collision
            for i = 1:numCrabs
                % Check if bullet touches a crab
                if isgraphics(crabGraph{i}) && norm([bX(j) - xCrab(i), bY(j) - yCrab(i)]) < sizeC(i)
                    totalCrabsKilled += 1;  % Increment crab defeated count
                    delete(crabGraph{i});  % Eliminate the crab
                    delete(bullet{j});  % Eliminate the bullet
                end
            end
        end
    end
end

 % Display the total crabs killed count
 if isgraphics(infoText)
    delete(infoText);
end

        infoText = text(10, mapHeight - 10, sprintf('Wave %d Lives %d Crabs Killed %d', wave, lives, totalCrabsKilled), 'Color', 'white', 'FontSize', 12);

        % Move Crabs
        for i = 1:numCrabs
            if isgraphics(crabGraph{i})
                delete(crabGraph{i});
                [xCrab(i), yCrab(i), cStep(i)] = moveCrab(xCrab(i), yCrab(i), cStep(i));
                crabGraph{i} = drawCrab(xCrab(i), yCrab(i), thetaC(i), sizeC(i));
            endif
        endfor

        pause(0.01);
    endwhile

    close all
endfunction
