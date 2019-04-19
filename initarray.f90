program Init_Arrays
  implicit none

  integer i,j
  real, dimension(5) :: a,b,c

  a = (/ (0.1,i=1,5) /)
  b = (/10, 20, 30, 40, 50/)

  do i = 1,5
     c(i) = a(i) * b(i)
  enddo

  print *, c

end program Init_Arrays
