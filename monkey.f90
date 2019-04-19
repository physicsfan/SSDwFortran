! This program explores the user-defined types as they work in a Module.
! 

module MonkeyModule
  implicit none
  save
  private
  public Monkey, Grow

  type Monkey
     character(32) :: name
     real          :: height
     logical       :: isMale
  end type Monkey

  interface assignment(=)
     module procedure AssignMonkeys
  end interface assignment(=)

contains

  subroutine AssignMonkeys(lhs,rhs)
    type (Monkey), intent(inout) :: lhs
    type (Monkey), intent(in)    :: rhs
    print *, 'Assigning monkeys'
    lhs%name = rhs%name
    lhs%height = rhs%height
    lhs%isMale = rhs%isMale
  end subroutine AssignMonkeys

  subroutine Grow(theMonkey)
    type (Monkey), intent(inout) :: theMonkey
    theMonkey%height = theMonkey%height * 2
  end subroutine Grow

end module MonkeyModule


program MonkeyTest
  use MonkeyModule
  implicit none
  type (Monkey) :: m1,m2
  m1%name = 'Bo Bo'
  m1%height = 1.25
  m1%isMale = .true.
  m2 = m1
  call Grow(m1)
  print *, 'The height of m2 is ', m2%height
  print *, 'Monkey 1 grows ', m1%height
end program MonkeyTest
