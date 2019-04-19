program PointerPractice3
! This program practices the technique of pointers with arrays
implicit none

real, pointer :: a(:,:)
real, pointer :: b(:)

allocate(a(3,3))
a = 0.1

b => a(1,:)
b = 0.2

print *, 'a(1,1) is ', a(1,1)
print *, 'a(2,1) is ', a(2,1)

deallocate(a)
end program PointerPractice3
