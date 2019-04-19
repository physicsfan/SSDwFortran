program LazyTest2
  ! illustrates Assignment in the LazyModule
  use LazyModule

  ! define variables
  type (LazyType) :: lazy1, lazy2

  ! create two instances of the Lazy ADT
  call New(lazy1, 5.0)    ! state of ADT - 5 minutes
  call New(lazy2, 10.0)   ! state of ADT - 10 minutes

  lazy2 = lazy1           ! assign state of lazy1 to lazy2
  
  call Sleep(lazy2)       ! Will sleep for 5 minutes

  ! Delete states of the ADT
  call Delete(lazy1)  ! Delete state of lazy1
  call Delete(lazy2)  ! Delete state ot lazy2

end program LazyTest2
