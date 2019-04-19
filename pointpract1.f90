program PointerPractice
! This program practices the technique of pointers
implicit none

real, pointer :: a
real, target :: b

b = 5.0
a => b

print *, a

end program PointerPractice
