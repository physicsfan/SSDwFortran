program ElemWiseOps
!This program explores the concept of element-wise operations on arrays
implicit none

integer :: i
real :: a1(1:50), a2(51:100)

a1 = (/ (0.1*i, i=1,50) /)
a2 = sqrt(3*a1)

print *, a2

end program ElemWiseOps
