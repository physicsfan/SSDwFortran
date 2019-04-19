  Subroutine Square(x)
    ! This short subroutine squares the input
    implicit none
    real :: x
    x=x*x
    Print *, x
  end Subroutine Square

  ! Calling portion
  real :: x
  x = 5.0
  call Square(x)
  print *, x
  end
    
    
