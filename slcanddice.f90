program SliceNDice
! This program practices the technique of slicing arrays
implicit none

real    :: a(5,3), b(3)

a(4:5,:) = 0.
a(1:3,:) = 1.
a(:,3) = sqrt(a(:,3))
b(:) = 10. * a(2,:)

print *, 'b is', b

end program SliceNDice
