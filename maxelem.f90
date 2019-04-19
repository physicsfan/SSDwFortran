program Max_Element
  implicit none

  integer index,j
  real tempMax
  real a(100)
  
  call random_number(a)

  tempMax = a(1)
  index = 1
  do j = 1,100
     if (a(j) > tempMax) then
        tempMax = a(j)
        index = j
     endif
  enddo

  print *, index, tempMax

end program Max_Element
