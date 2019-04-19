! This program explores the Module construct in Fortran with the default
! accessability set to private. This is good practice because hiding
! data from outside use can lead to more robust and easy to understand code.

module Stuff
  implicit none

  save
  private

  integer, public             :: numThings = 0
  integer, parameter          :: MAX_THINGS = 100

  public                      :: IncrementThings, PrintNumThings

contains

  subroutine IncrementThings
    if (numThings == MAX_THINGS) stop 'Too many things'
    numThings = numThings + 1
  end subroutine IncrementThings

  subroutine PrintNumThings
    print *, numThings
  end subroutine PrintNumThings

end module Stuff

!************************************************************************

Program TestStuff
  use Stuff
  call IncrementThings
  call PrintNumThings
end Program TestStuff
