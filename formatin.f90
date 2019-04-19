program FormattedInput
implicit none

integer :: i, num, sumint
real :: x, sumreal, total
open(7,file='formatout.dat')

sumint = 0
sumreal = 0.0

do i = 1, 100
   read(7,'(1x,i3,13x,f4.1)') num, x
   sumint = sumint + num
   sumreal = sumreal + x
end do

total = sumint + sumreal

write (*,'(/a,1x,f12.7)') "The sum of the two columns is", total
close(7)
end program FormattedInput
