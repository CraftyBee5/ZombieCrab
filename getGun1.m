
function rifle = getGun1 (gunSize, xGun, yGun, thetaGun)

%left side
gunPt1 = [0; 0; 1];
gunPt2 = [0; gunSize; 1];
gunPt3 = [0.5 * gunSize; gunSize; 1];

%right side
gunPt4 = [0.5 * gunSize; gunSize; 1];
gunPt5 = [2.5 * gunSize; 0; 1];
gunPt6 = [2.5 * gunSize; -gunSize; 1];

%head
gunPt7 = [-gunSize; -1.25 * gunSize; 1]; %right neck
gunPt8 = [-2 * gunSize; -gunSize; 1]; %right top of head
gunPt9 = [-2 * gunSize; 2 * gunSize; 1]; %left top of head
gunPt10 = [-gunSize; 0; 1]; %left neck

%extra long part
gunPt11 = [3.5 * gunSize; -0.25 * gunSize; 1]; %left
gunPt12 = [3.5 * gunSize; -0.75 * gunSize; 1]; %right
gunPt13=[2.5 * gunSize; -0.75 * gunSize; 1]; % spear point
gunPt14=[2.5 * gunSize; -0.25 * gunSize; 1]; % spear end


%gunain matrix
gun = [ gunPt1, gunPt2, gunPt3, gunPt4, gunPt5, gunPt6, gunPt7, gunPt8, gunPt9, gunPt10, gunPt11, gunPt12, gunPt13, gunPt14];

endfunction
