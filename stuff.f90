! This program explores the module construct

module Stuff
  implicit none
  
  save
  private

  integer, public    :: numThings = 0
  integer, parameter :: MAX_THINGS = 100
  
  public             :: IncrementThings
  
contains

  subroutine IncrementThings
    if (numThings == MAX_THINGS) stop 'Too many things'
    numThings = numThings + 1
    call PrintNumThings
  end subroutine IncrementThings

  subroutine PrintNumThings
    print *, numThings
  end subroutine PrintNumThings

end module Stuff


program TestStuff
  use Stuff
  call IncrementThings
end program TestStuff
