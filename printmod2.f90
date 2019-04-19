! This program explores the Module construct with Overloading.

module PrintNumbers
  implicit none
  save
  private
  public PrintNumber

  interface PrintNumber
     module procedure PrintInteger
     module procedure PrintReal
  end interface PrintNumber

contains

  subroutine PrintInteger(arg)
    integer, intent(in) :: arg
    print *, 'The integer number is', arg
  end subroutine PrintInteger

  subroutine PrintReal(arg)
    real, intent(in) :: arg
    print *, 'The real number is', arg
  end subroutine PrintReal

end module PrintNumbers

!************************************************************************

Program TestProg
  use PrintNumbers
  call PrintNumber(10.)
  call PrintNumber(20)
end Program TestProg
