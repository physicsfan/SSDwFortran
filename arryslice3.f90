program ArraySlice3
! This program uses an index array (array of integers representing
! elements) to extract elements

implicit none

real    :: a(5) = (/1.,2.,3.,4.,5./)
real    :: b(5)
integer :: ia(5) = (/2,1,3,5,4/)
b = a(ia)
a((/1,3,5/)) = 10.0
print *, 'a is', a
print *, 'b is', b
end program ArraySlice3
