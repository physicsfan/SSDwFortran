module ArrayAssumptionsModule
implicit none
save
private
public SquareAndSum
contains
  
  subroutine SquareAndSum(a)
    real, intent(in) :: a(:)
    real             :: copy(size(a))
    
    if(size(a) < 10) then
       print *, "Array too small...exiting."
       return
    end if
    print *, a(:10)
    copy = a**2
    print *, sum(copy)
  end subroutine SquareAndSum

end module ArrayAssumptionsModule

program Test
  use ArrayAssumptionsModule
  real :: a(15)
  a = 2.0
  call SquareAndSum(a)
end program Test
