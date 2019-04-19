program FormattedOutput
implicit none

integer :: i
real :: x
open (7,file='formatout.dat')

do i = 1, 100
   call random_number(x)
   write(7,'(1x,i3,13x,f4.1)') i, 50.0*x 
end do
close(7)
end program FormattedOutput

