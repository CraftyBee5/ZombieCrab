function [xCrab, yCrab, dStep] = moveCrab (xCrab, yCrab, dStep)

if (yCrab - dStep <= dStep)
  xCrab = randi(500) + 50;
  yCrab = 360;
else
  yCrab -= dStep;
  xCrab = xCrab + sin(yCrab/dStep) * 5;
endif

endfunction
