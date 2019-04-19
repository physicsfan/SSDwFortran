program loop_test
! This program explores what happens when a loop has either no, 
! only one iteration
  
  implicit none

  integer :: i
  do i = 1, 1
     print *, 'In loop'
  end do
  
end program loop_test
