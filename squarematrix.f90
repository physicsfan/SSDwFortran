module SquareMatrix

  ! An ADT that stores a square matrix of real numbers. The dimensions
  ! are passed to the constructor but it does not need to be mutable

  implicit none
  save
  private
  public SqrMatType, New, Delete, GetMatrix, SetMatrix

  type SqrMatType
     private
     real, pointer :: matrix(:,:)
  end type SqrMatType

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
    type (SqrMatType), intent(inout) :: self
    type (SqrMatType), intent(in)    :: other
    call Delete(self)
    call New(self, other)
  end subroutine AssignPrivate

  subroutine NewPrivate(self, matrixRowLength, matrixColumnLength)
    type (SqrMatType), intent(out)  :: self
    integer, intent(in)  :: matrixRowLength, matrixColumnLength
    allocate(self%matrix(matrixRowLength,matrixColumnLength))
    self%matrix = 0.0
  end subroutine NewPrivate

  subroutine NewCopyPrivate(self, other)
    type (SqrMatType), intent(out)   :: self
    type (SqrMatType), intent(in)    :: other
    integer                          :: m, n
    m = size(other%matrix,1)
    n = size(other%matrix,2)
    allocate(self%matrix(m,n))
    self%matrix = other%matrix
  end subroutine NewCopyPrivate

  subroutine DeletePrivate(self)
    type (SqrMatType), intent(inout) :: self
    deallocate(self%matrix)
  end subroutine DeletePrivate

  subroutine GetMatrix(self, matrix)
    type (SqrMatType), intent(in)   :: self
    real, intent(out)               :: matrix(:,:)
    if(size(matrix,1) < size(self%matrix,1)) then 
       stop 'Row argument too small in GetMatrix'
    endif
    if(size(matrix,2) < size(self%matrix,2)) then 
       stop 'Column argument too small in GetMatrix'
    endif
    matrix(:size(self%matrix,1),:size(self%matrix,2)) = self%matrix
    matrix(size(self%matrix,1)+1:,size(self%matrix,2)+1:) = 0.0 ! Zero any excess
  end subroutine GetMatrix

  subroutine SetMatrix(self, matrix)
    type (SqrMatType), intent(in)   :: self
    real, intent(in)                :: matrix(:,:)
    if(size(matrix,1) > size(self%matrix,1)) then
       stop 'Row argument too big in SetMatrix'
    endif
    if(size(matrix,2) > size(self%matrix,2)) then
       stop 'Column argument too big in SetMatrix'
    endif
    self%matrix(:size(self%matrix,1),:size(self%matrix,2)) = matrix
    self%matrix(size(self%matrix,1)+1:,size(self%matrix,2)+1:) = 0.0 ! Zero any excess
  end subroutine SetMatrix

end module SquareMatrix


program SquareTest
use SquareMatrix

type (SqrMatType) :: mat1, mat2
real              :: temp(3,3), array9(1:9)=(/1.5,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0/)
integer           :: i,j


! Initiallize mat1 and mat2
call New(mat1, 3, 3)
!call New(mat2, 10, 10)
call SetMatrix(mat1, reshape(array9(1:9),[3,3]))

! Initilaize mat2 as a copy of mat1
call New(mat2, mat1)
!mat2 = mat1

!Get data from mat2, and print out
call GetMatrix(mat2, temp)
write(*,'(a,/)') 'The data in mat2 is:'
do i=1,3
   write(*,'(100f7.3)') (temp(j,i), j=1,3)
enddo

! Delete mat1 and mat2
call Delete(mat2)
call Delete(mat1)

end program SquareTest
