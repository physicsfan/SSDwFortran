  real Function Square(x)
    ! This short subroutine squares the input
    implicit none
    real :: x
    Square = x*x
  end Function Square

  ! Calling portion
  real :: x
  x = 5.0
  print *, Square(x)
  print *, x
  end
    
    
