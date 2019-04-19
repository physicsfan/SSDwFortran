! This program rewrites the Factorials program to use a module

module Factorials
  implicit none
  save
  private
  public :: PrintFactorials


contains
  
  subroutine PrintFactorials(num)
    ! This subroutine calls a function Factorial(n) that calculates the 
    ! factorial of n: n! for the first 10 integers
    integer, intent(in) :: num
    integer :: i
    do i=0,num
       print *,  i,'! =', Factorial(i)
    end do
  end subroutine PrintFactorials


  integer function Factorial(n)
    integer, intent(in) :: n
    integer :: i
    Factorial = 1
    if(n < 0) then
       print *, 'n should not be negative'
       return
    else if(n == 0) then
       Factorial = 1
    else
       do i=1,n
          Factorial = Factorial*i
       end do
    end if
  end function Factorial

end module Factorials

!************************************************************************

program TestFactorial
  use Factorials
  Print *, 'Enter the maximum integer wanted (<14 to prevent overflow):'
  Read *, num
  call PrintFactorials(num)
end program TestFactorial
