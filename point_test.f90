program Point_Test
! This program demonstrates the test for a pointer that is pointed
! at something.  Such a pointer is said to be associated.
  implicit none

  real, pointer :: a
  real, pointer :: b => null()  ! pointer must be nullified first
  nullify(a)
  allocate(b)
  print *, 'a is associated: ', associated(a)
  print *, 'b is associated: ', associated(b)
  deallocate(b)
end program Point_Test
