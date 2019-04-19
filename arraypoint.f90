! Working with array pointers.

program ArrayPoint

implicit none

real, pointer :: a(:,:), b(:,:)
real, pointer :: c(:)

allocate(a(5,5))
a = 0.0
b => a(3:5,3:5)
b = 1.0
c => a(3,:)

print *, 'c is ', c

deallocate(a)
end program ArrayPoint
