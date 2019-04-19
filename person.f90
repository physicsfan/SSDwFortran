module PersonModule
  implicit none
  save
  private
  public Person, IsOverweight

  type Person
     character(10) :: name
     real          :: height
     real          :: weight
  end type Person

contains

  subroutine IsOverweight(input)
    type (Person), intent(inout) :: input
    if((input%height/input%weight) < 2.0) then
       print *,input%name,'is overweight'
    else
       print *,input%name,'is not overweight'
    end if
  end subroutine IsOverweight


end module PersonModule


program PersonTest
use PersonModule
implicit none
type (Person) :: p1
p1 = Person('John',185.,100.)
call IsOverweight(p1)
end program PersonTest
