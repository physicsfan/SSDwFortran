module StoreManagerModule
  use StoreModule
  implicit none
  save
  private
  public New, Delete, SetDataInStore, GetDataInStore

  type StoreManagerType
     private
     type (StoreType), pointer :: stores(:)
  end type StoreManagerType

  interface New
     module procedure NewPrivate
  end interface New

  interface Delete
     module procedure DeletePrivate
  end interface Delete

contains

  subroutine NewPrivate(self, numStores, dataLength)
    type (StoreManagerType), intent(out)    :: self
    integer, intent(in)                     :: numStores, dataLength
    integer                                 :: i
    allocate(self%stores(numStores))
    do i = 1, size(self%stores)
       call New(self%stores(i), dataLength)
    end do
  end subroutine NewPrivate

  subroutine DeletePrivate(self)
    type (StoreManagerType), intent(inout) :: self
    integer                                :: i
    do i = 1, size(self%stores)
       call Delete(self%stores(i))
    end do
    deallocate(self%stores)
  end subroutine DeletePrivate

  subroutine GetDataInStore(self, storeIndex, data)
    type (StoreManagerType), intent(in)     :: self
    integer, intent(in)                     :: storeIndex
    real, intent(in)                        :: data(:)
    call GetData(self%stores(storeIndex), data)
  end subroutine GetDataInStore
