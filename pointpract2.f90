program PointerPractice2
! This program practices the technique of pointers using allocate
implicit none

real, pointer :: r
allocate(r)
r = 5.0
print *, r
deallocate(r)

end program PointerPractice2
