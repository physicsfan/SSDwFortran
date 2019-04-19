program Reshaping
! demonstrates the reshape intrinsic routine
implicit none

integer :: vec(9) = (/1,2,3,4,5,6,7,8,9/)
integer :: matrix(3,3)

matrix =reshape(vec, (/3,3/))

print *, vec
print *, matrix

end program Reshaping
