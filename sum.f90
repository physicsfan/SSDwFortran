program summing_up
implicit none

integer :: i, sum

sum = 0

sumloop:do i = 19, 37
   sum = sum + i
end do sumloop

print *, 'The sum of 19 to 37 is', sum

end program summing_up
