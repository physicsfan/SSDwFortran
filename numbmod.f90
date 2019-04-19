! This program explores "overloading" in the Module construct.
module NumbersModule
  implicit none
  save
  private
  public AddNumber, PrintNumbers
  
  interface AddNumber
     module procedure AddInteger
     module procedure AddReal
  end interface AddNumber

  integer :: i = 0
  real    :: r = 0.0

contains
  
  subroutine AddInteger(arg)
    integer, intent(in) :: arg
    i = i + arg
  end subroutine AddInteger

  subroutine AddReal(arg)
    real, intent(in) :: arg
    r = r + arg
  end subroutine AddReal

  subroutine PrintNumbers()
    print *, 'Real is', r
    print *, 'Integer is', i
  end subroutine PrintNumbers

end module NumbersModule

!***************************************************************************

program TestProg
  use NumbersModule
  call PrintNumbers()
  call AddNumber(5)
  call AddNumber(7.0)
  call PrintNumbers()
end program TestProg
