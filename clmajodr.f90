module ArrayMod
  implicit none
  save
  private
  public ArrayInit

contains

  subroutine ArrayInit(a,nmax)
    integer, intent(in) :: nmax
    integer, intent(inout) :: a(nmax,nmax)
    integer :: i, j
    do i = 1, 5
       do j = 1, 5
          a(j,i) = i 
       enddo
    enddo
    print *, a
  end subroutine ArrayInit

end module ArrayMod


program Column_Major_Order
! This program investigates the use of arrays in Fortran.
! Specifically the column major order of elements.
  use ArrayMod
  implicit none

  integer :: a(5,5)

  call ArrayInit(a,5)

end program Column_Major_Order
