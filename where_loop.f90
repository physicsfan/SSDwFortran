program where_loop
  implicit none

  real :: a(20)
  
  call random_number(a)
  
  where (abs(a) < 1.e-6)
     a = sign(1.e-6,a)
  endwhere
  
  print *, a

end program where_loop
