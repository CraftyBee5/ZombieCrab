function capt = getCapt (captSize, xCapt, yCapt, thetaCapt)

  %captains head
  captPt1 = [ 2*captSize; 0; 1]; % center top of head
  captPt2 = [ 1.75*captSize; -0.25*captSize; 1]; % right top of head
  captPt3 = [ 1.75*captSize; 0.25*captSize; 1]; % left top of head
  captPt4 = [ 1.5*captSize; -0.5*captSize; 1]; % right center side of head
  captPt5 = [ 1.5*captSize; 0.5*captSize; 1]; % left center side of head
  captPt6 = [ 1.25*captSize; -0.25*captSize; 1]; % right bottom of head
  captPt7 = [ 1.25*captSize; 0.25*captSize; 1]; % left bottom of head
  captPt8 = [ captsize; 0; 1]; % center bottom of head
  
  %captains shoulders
  captPt9 = [ 1.5*captSize; -0.75*captSize; 1]; % right top of shoulder
  captPt10 = [ 1.25*captSize; -0.75*captSize; 1]; % right bottom of shoulder
  captPt11 = [ 1.5*captSize; 0.75*captSize; 1]; % left top of shoulder
  captPt12 = [ 1.25*captSize; 0.75*captSize; 1]; % left bottom of shoulder
  
  %captains body and legs
  captPt13 = [ 0; 0.25*captSize; 1]; % left hip
  captPt14 = [ -0.25*captSize; 0.25*captSize; 1]; % right foot
  captPt15 = [ -0.25*aptSize; 0.15*captSize; 1]; % right foot
  captPt16 = [ 0; 0.15*captSize; 1]; % inside right hip
  captPt17 = [ 0; -0.15*captSize; 1]; % inside left hip
  captPt18 = [ -0.25*captSize; -0.15*captSize; 1]; % left foot
  captPt19 = [ -0.25*captSize; -0.25*captSize; 1]; % left foot
  captPt20 = [ 0; -0.25*captSize; 1]; % right hip
  
  %captains arms
  captPt21 = [ 1.25*captSize; 0.5*captSize; 1]; % top of left arm
  captPt22 = [ 0; 0.5*captSize; 1]; % bottom of left arm 
  captPt23 = [ 0; 0.5*captSize; 1]; % bottom of left arm
  captPt24 = [ 0; -0.5*captSize; 1]; % bottom of right arm
  
  %captains weapon
  captPt25 = [ -1.25captSize; -0.35*captSize; 1]; % base of weapon
  captPt26 = [ -1.25captSize; -0.5*captSize; 1]; % base of weapon
  captPt27 = [ 1.25captSize; -0.5*captSize; 1]; % top of weapon

  %captains matrix
  capt = [ captPt1, captPt2, captPt3, captPt4, captPt5, captPt6, captPt7, captPt8, captPt9, captPt10, captPt11, captPt12, captPt13, captPt14,  captPt15, captPt16, captPt17, captPt18, captPt19, captPt20, captPt21, captPt22, captPt23, captPt24, captPt25, captPt26, captPt27];

endfunction
