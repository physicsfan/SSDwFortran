program intrinsically_interesting
  ! This program gives practice using intrinsic functions

  implicit none

  real :: r1, r2

  r1 = 5.02
  r2 = -10.50

  print *, 'The value of r1, with the sign of r2 is ', sign(r1,r2)
  print *, 'The maximum of r1 and r2 is ', max(r1,r2)
  print *, 'The closest integer to r1 is ', nint(r1)
  print *, 'The value of r1 without fractional componenet is ', int(r1)
  print *, 'The value of r2 rounded up is ', ceiling(r2)

end program intrinsically_interesting 
