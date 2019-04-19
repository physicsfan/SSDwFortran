module LazyModule
  implicit none
  ! A simple ADT demonstrating the basic compnents
  save
  private
  public LazyType, New, Delete
  public GetSleepTime, SetSleepTime, Sleep

  ! Declare ADT Type
  type LazyType
     private
     real :: sleepTime
  end type LazyType

  ! Overloaded procedure interfaces
  interface New
     module procedure NewPrivate
  end interface New

  interface Delete
     module procedure DeletePrivate
  end interface Delete

contains

! ------------------------
! Standard ADT Methods. Construction, Destruction, Copying, Assignemnt
!-------------------------  
  subroutine NewPrivate(self, time)
    type (LazyType), intent(out)    :: self
    real, intent(in)                :: time
    call SetSleepTime(self, time)
  end subroutine NewPrivate

  subroutine DeletePrivate(self)
    type (LazyType), intent(inout) :: self
  end subroutine DeletePrivate

!-----------------------
! Accessors.
!-----------------------
  real function GetSleepTime(self) result (time)
    type (LazyType), intent(in)    :: self
    time = self%sleepTime
  end function GetSleepTime

  subroutine SetSleepTime(self, time)
    type (LazyType), intent(out)     :: self
    real, intent(in)                :: time
    self%sleepTime = time
  end subroutine SetSleepTime

!-----------------------
! Output methods
!---------------------- 
  subroutine Sleep(self)
    type (LazyType), intent(inout) :: self
    print *, 'Sleeping ', self%sleepTime, ' minutes'
  end subroutine Sleep
  
end module LazyModule


!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

!program LazyTest
!  use LazyModule
!
  ! Create an instance of the ADT
!  type(LazyType) :: lazy
  
  ! Initialize the ADT variable to a valid state (5.0 minutes)
!  call New(lazy, 5.0)    ! Sleeps for five minutes
  
  ! Call the ADT method
!  call Sleep(lazy)
  
  ! Deconstruct the ADT variable
!  call Delete(lazy)
  
!end program LazyTest
