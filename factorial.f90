program Factorials

! This program calls a function Factorial(n) that calculates the 
! factorial of n: n!

implicit none

integer :: num, Factorial

!Print *, 'Enter the requested integer'
!Read *, Num

do num=0,10
   print *,  num,'! =', Factorial(Num)
end do

end program Factorials

!*********************************************************************

  integer function Factorial(n)
    implicit none
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
       end Do
    end if
  end function Factorial
