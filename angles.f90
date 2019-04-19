program FindingAngles
! calculates the angle bewteen two vectors
! using the dot_product intrinsic
implicit none

real :: vec1(3) = (/0, 2, 0/)
real :: vec2(3) = (/2, 0, 0/)
real :: v1_dot_v2, length1, length2, angle

v1_dot_v2 = dot_product(vec1, vec2)
length1 = sqrt(dot_product(vec1, vec1))
length2 = sqrt(dot_product(vec2, vec2))
angle = acos(v1_dot_v2/(length1*length2))

print *, "Angle Finding Program"
print *, "vec1 =", vec1
print *, "vec2 =", vec2
print *, "vec1 . vec2 =", v1_dot_v2
print *, "Length of vec1 =", length1
print *, "Length of vec2 =", length2
print *, "Angle between vec1 and vec2 =", angle 

end program FindingAngles
