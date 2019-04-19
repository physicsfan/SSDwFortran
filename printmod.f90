! This program explores the Module construct in Fortran.

module PrintNumbers
  implicit none
  save
  private
  public PrintInteger, PrintReal

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
  call PrintInteger(10)
  call PrintReal(20.)
end Program TestProg
