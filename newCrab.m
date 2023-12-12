function [xCrab, yCrab, thetaCrab, sizeCrab, dStep] = newCrab(wave)

%300, 180, -pi/2, 10, 10

xCrab = randi(500) + 50;
yCrab = 360;

dStep = randi(2.0) + wave;

thetaCrab = -pi/2;
sizeCrab = 10;

endfunction
