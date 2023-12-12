
function gun1 = getGun1 (gunSize, xGun, yGun, thetaGun)
  
  %left side
  gunPt1 = [0; 0; 1];
  gunPt2 = [0; gunSize; 1];
  gunPt3 = [gunSize; gunSize; 1];
  
  %right side
  gunPt4 = [gunSize; 0; 1];
  gunPt5 = [4.5 * gunSize; 0; 1];
  gunPt6 = [4.5 * gunSize; -1.5 * gunSize; 1];
  
  %head
  gunPt7 = [-1.5 * gunSize; -1.5 * gunSize; 1]; %right neck
  gunPt8 = [-4 * gunSize; -gunSize; 1]; %right top of head
  gunPt9 = [-4 * gunSize; 1.5 * gunSize; 1]; %left top of head
  gunPt10 = [-1.5 * gunSize; 0; 1]; %left neck
  
  %extra long part
  gunPt11 = [7.5 * gunSize; -0.5 * gunSize; 1]; %left
  gunPt12 = [7.5 * gunSize; -1 * gunSize; 1]; %right
  gunPt13=[4.5 * gunSize; -1 * gunSize; 1]; % spear point
  gunPt14=[4.5 * gunSize; -0.5 * gunSize; 1]; % spear end
  
  
  %gun matrix
  gun1 = [ gunPt1, gunPt2, gunPt3, gunPt4, gunPt5, gunPt6, gunPt7, gunPt8, gunPt9, gunPt10, gunPt11, gunPt12, gunPt13, gunPt14];

endfunction
