function [xCrab, yCrab, thetaCrab, sizeCrab, dStep] = newCrab()

%300, 180, -pi/2, 10, 10

xCrab = randi(550) + 20;
yCrab = 360;

dStep = randi(10) + 5;

thetaCrab = -pi/2;
sizeCrab = 10;

endfunction
