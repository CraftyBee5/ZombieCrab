function bulletSpeed = equipGun (gunName)

  if (gunName == 'pistol')
    bulletSpeed = 10;
  elseif (gunName == 'rifle')
    bulletSpeed = 15;
  elseif (gunName == 'wunderwaffe')
    bulletSpeed = 100;
  endif

endfunction
