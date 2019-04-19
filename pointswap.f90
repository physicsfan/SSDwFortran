program PointSwap
! This program demonstrates how to use pointers to swap
! elements of an array
implicit none

real, pointer, dimension(:) :: a, b, c

allocate(a(5),b(10))
a = 0.1
b = 0.2

! Swap a and b, using temporary c
c => a
a => b
b => c

print *, 'a is ', a
print *, 'b is ',b

deallocate(a,b)
end program PointSwap
