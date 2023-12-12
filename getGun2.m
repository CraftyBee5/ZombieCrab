
function gun2 = getGun2 (gunSize, xGun, yGun, thetaGun)

%left side
gunPt1 = [0; gunSize; 1];
gunPt2 = [gunSize; gunSize; 1];
gunPt3 = [gunSize; 0; 1];

%right side
gunPt4 = [3 * gunSize; 0; 1];
gunPt5 = [3 * gunSize; -gunSize; 1];
gunPt6 = [0; -gunSize; 1];

%head
gunPt7 = [-0.5 * gunSize; -0.5 * gunSize; 1]; %right neck
gunPt8 = [-gunSize; gunSize; 1]; %right top of head
gunPt9 = [-gunSize; 2 * gunSize; 1]; %left top of head
gunPt10 = [0; 2 * gunSize; 1]; %left neck

gunPt11 = [0; 0; 1]; %left neck

%gun matrix
gun2 = [ gunPt1, gunPt2, gunPt3, gunPt4, gunPt5, gunPt6, gunPt7, gunPt8, gunPt9, gunPt10, gunPt11];

endfunction
