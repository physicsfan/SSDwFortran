program Element_Wise_Ops
! This program declares two one-dimensional real arrays, itializes
! the arrays by element-wise operation.
implicit none

integer :: i
real  :: a(1:50), b(51:100)

a = (/(0.1*i, i=1,50)/)
b = 3 * sqrt(a)

print *, b

end program Element_Wise_Ops
