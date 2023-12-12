function [xCrab, yCrab, dStep, lives] = moveCrab (xCrab, yCrab, dStep, lives)

if (yCrab - dStep <= dStep)
  xCrab = randi(500) + 50;
  yCrab = 360;
  lives -= 1;
else
  yCrab -= dStep;
  xCrab = xCrab + sin(yCrab/dStep) * 5;
endif

endfunction
