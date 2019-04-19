module Mod
contains
  subroutine RoutineWithOpt(nonOpt, opt)
    integer :: nonOpt
    integer, optional :: opt
    if (present(opt)) then
       print *, 'optional argument was present'
    else
       print *, 'optional argument was not present'
    endif
  end subroutine RoutineWithOpt
end module Mod

program Main
  use Mod
  call RoutineWithOpt(1,1)
  call RoutineWithOpt(1)
end program Main
