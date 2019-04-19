module StoreModule

  ! An ADT that stores an array of real numbers

  implicit none
  save
  private
  public StoreType, New, Delete, GetData, SetData
  public assignment(=)

  type StoreType
     private
     real, pointer :: data(:)
  end type StoreType

  interface assignment(=)
     module procedure AssignPrivate
  end interface assignment(=)

  interface New
     module procedure NewPrivate
     module procedure NewCopyPrivate
  end interface New

  interface Delete
     module procedure DeletePrivate
  end interface Delete

contains

  subroutine AssignPrivate(self, other)
    type (StoreType), intent(inout) :: self
    type (StoreType), intent(in)    :: other
    call Delete(self)
    call New(self, other)
  end subroutine AssignPrivate

  subroutine NewPrivate(self, dataLength)
    type (StoreType), intent(out)    :: self
    integer, intent(in)              :: dataLength
    allocate(self%data(dataLength))
    self%data = 0.0
  end subroutine NewPrivate

  subroutine NewCopyPrivate(self, other)
    type (StoreType), intent(out)    :: self
    type (StoreType), intent(in)     :: other
    integer                          :: n
    n = size(other%data)
    allocate(self%data(n))
    self%data = other%data
  end subroutine NewCopyPrivate

  subroutine DeletePrivate(self)
    type (StoreType), intent(inout) :: self
    deallocate(self%data)
  end subroutine DeletePrivate

  subroutine GetData(self, data)
    type (StoreType), intent(in)    :: self
    real, intent(out)               :: data(:)
    if ( size(data) < size(self%data) ) stop 'Array argument too small in GetData'
    data(:size(self%data)) = self%data
    data(size(self%data)+1:) = 0.0   ! Zero any excess
  end subroutine GetData

  subroutine SetData(self, data)
    type (StoreType), intent(in)    :: self
    real, intent(in)                :: data(:)
    if ( size(data) > size(self%data) ) stop 'Array argument too big in SetData'
    self%data(:size(self%data)) = data
    self%data(size(self%data)+1:) = 0.0   ! Zero any excess
  end subroutine SetData

end module StoreModule

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

program StoreAssignmentTest
use StoreModule
type(StoreType) :: a,b
real            :: temp(3)

! Initialize a and b
call New(a, 3)
call New(b, 10)
call SetData(a, (/1.0, 2.0, 3.0/))

b = a

call GetData(b, temp)
write(*,'(a,3f7.3)') 'Data in b is', temp

! Delete a and b
call Delete(b)
call Delete(a)

end program StoreAssignmentTest
