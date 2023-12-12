function capt = getCapt (captSize, xCapt, yCapt, thetaCapt)


  captPt1 = [ 2*captSize; 0; 1]; % center top of head
  captPt2 = [ 1.75*captSize; -0.25*captSize; 1]; % right top of head
  captPt3 = [ 1.75*captSize; 0.25*captSize; 1]; % left top of head

  captPt4 = [ 1.5*captSize; -0.5*captSize; 1]; % right center side of head
  captPt5 = [ 1.5*captSize; 0.5*captSize; 1]; % left center side of head

  captPt6 = [ 1.25*captSize; -0.25*captSize; 1]; % right bottom of head
  captPt7 = [ 1.25*captSize; 0.25*captSize; 1]; % left bottom of head

  captPt8 = [ captSize; 0; 1]; % center bottom of head

  captPt9 = [ 1.5*captSize; -0.75*captSize; 1]; % right top of shoulder
  captPt10 = [ 1.25*captSize; -0.75*captSize; 1]; % right bottom of shoulder

  captPt11 = [ 1.5*captSize; 0.75*captSize; 1]; % left top of shoulder
  captPt12 = [ 1.25*captSize; 0.75*captSize; 1]; % left bottom of shoulder

  captPt13 = [ captSize; 0.25*captSize; 1]; % left hip
  captPt14 = [ -0.25*captSize; 0.25*captSize; 1]; % right foot

  captPt15 = [ -0.25*captSize; 0.15*captSize; 1]; % right foot
  captPt16 = [ captSize; 0.15*captSize; 1]; % inside right hip

  captPt17 = [ captSize; 0.15*captSize; 1]; % inside left hip
  captPt18 = [ -0.25*captSize; -0.15*captSize; 1]; % left foot

  captPt19 = [ -0.25*captSize; -0.25*captSize; 1]; % left foot
  captPt20 = [ captSize; -0.25*captSize; 1]; % right hip

  captPt19 = [ -0.25*captSize; -0.25*captSize; 1]; % left foot
  captPt20 = [ captSize; -0.25*captSize; 1]; % right hip

##%left side
##captPt1 = [captSize; captSize; 1];
##captPt2 = [-captSize; captSize; 1];
##captPt3 = [-3 * captSize; captSize; 1];
##
##%right side
##captPt4 = [-3 * captSize; -captSize; 1];
##captPt5 = [-captSize; -captSize; 1];
##captPt6 = [captSize; -captSize; 1];
##
##%head
##captPt7 = [ captSize; -captSize/2; 1]; %right neck
##captPt8 = [ 2 *captSize; -captSize/2; 1]; %right top of head
##captPt9 = [ 2*captSize; captSize/2; 1]; %left top of head
##captPt10 = [ captSize; captSize/2; 1]; %left neck
##
##%hands
##captPt11 = [ 0; 2*captSize; 1]; %left
##captPt12 = [ 0; -2*captSize; 1]; %right
##
##%spear
##captPt13=[ 2*captSize;-2 * captSize; 1]; % spear point
##captPt14=[ -captSize; -2*captSize; 1]; % spear end
##
##%net
##captPt15=[ 2*captSize; -captSize; 1 ];
##captPt16=[ 2*captSize; -3*captSize; 1 ];
##captPt17=[ 4*captSize; -captSize; 1 ];
##captPt18=[ 4*captSize; -3*captSize; 1 ];
##
##%middle of net
##captPt19=[ 3*captSize; -2*captSize; 1 ];
##captPt20=[ 3*captSize + 1; -2*captSize + 1; 1 ];

  %captain matrix
  capt = [ captPt1, captPt2, captPt3, captPt4, captPt5, captPt6, captPt7, captPt8, captPt9, captPt10, captPt11, captPt12, captPt13, captPt14,  captPt15, captPt16, captPt17, captPt18, captPt19, captPt20];

endfunction
