
function sword = getSword (swordSize, xSword, ySword, thetaSword)

%left side
swordPt1 = [0; swordSize; 1];
swordPt2 = [2 * swordSize; 1.25 * swordSize; 1];
swordPt3 = [3 * swordSize; 0; 1];

%right side
swordPt4 = [2 * swordSize; -1.25 * swordSize; 1];
swordPt5 = [0; -1 * swordSize; 1];
swordPt6 = [0; -2 * swordSize; 1];

%head
swordPt7 = [-0.5 * swordSize; -2 * swordSize; 1]; %right neck
swordPt8 = [-0.5 * swordSize; -swordSize; 1]; %right top of head
swordPt9 = [-1.5 * swordSize; -swordSize; 1]; %left top of head
swordPt10 = [-1.5 * swordSize; swordSize; 1]; %left neck

%extra long part
swordPt11 = [-0.5 * swordSize; -swordSize; 1]; %left
swordPt12 = [-0.5 * swordSize; 2 * swordSize; 1]; %right
swordPt13=[0; 2 * swordSize; 1]; % spear point

%sword matrix
sword = [ swordPt1, swordPt2, swordPt3, swordPt4, swordPt5, swordPt6, swordPt7, swordPt8, swordPt9, swordPt10, swordPt11, swordPt12, swordPt13];

endfunction
