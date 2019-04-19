! This program demonstrates how to pass an array pointer to a subroutine
! for allocation.

module AllocMod
contains
  subroutine Alloc(a, n)
    real, pointer       :: a(:)
    integer, intent(in) :: n
    allocate(a(n))
  end subroutine Alloc
end module AllocMod

program AllocTest
  use AllocMod
  real, pointer :: r(:)
  call Alloc(r,10)
  r = 100.0
  print *, r
  deallocate(r)
end program AllocTest
