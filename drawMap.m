function [height, width] = drawMap(imageName)
  clf
  
  %create game figure
  figure(1);
  
  %read background image and get its size
  img = imread(imageName);
  [height,width] = size(img);
  
  %display background image in figure(1)
  imshow(imageName);
  
  hold on

endfunction
