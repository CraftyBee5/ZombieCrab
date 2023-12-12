function bullet = getBullet (size, x, y)
  
  %left side
  gunPt1 = [-1*size; 0; 1];
  gunPt2 = [1*size; 0; 1];
  
  %gun matrix
  bullet = [ gunPt1, gunPt2];

endfunction
