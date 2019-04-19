module SimilarArraysModule
contains
  subroutine DoubleAndPrint(a)
    real, intent(in) :: a(:)
    real             :: copy(size(a))
    copy = 2 * a
    print *, copy
  end subroutine DoubleAndPrint
end module SimilarArraysModule

program Test
use SimilarArraysModule
implicit none
real :: a(10)
a = 0.1
call DoubleAndPrint(a)
end program Test
