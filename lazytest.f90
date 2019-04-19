program LazyTest
! This program tests the Lazy ADT.
use LazyModule
implicit none

! Create an instance of the ADT
type (LazyType) :: lazy

! Initialize the ADT variable to a valid state (5.0 minutes)
call New(lazy, 5.0)    ! Sleeps for five minutes

! Call the ADT method
call Sleep(lazy)

! Deconstruct the ADT variable
call Delete(lazy)

end program LazyTest
