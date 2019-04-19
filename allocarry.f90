program AllocateArray
! This program practices the technique of array allocation
implicit none

integer :: i, n=50
real, allocatable :: r(:)

allocate(r(n))
r = (/(30.+ 0.1*i, i=0,n-1)/)
print *, 'r is', r
deallocate(r)

end program AllocateArray
