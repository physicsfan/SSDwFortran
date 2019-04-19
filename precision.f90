! file: precision.f90
! This program investigates the precision of the computer
program precision

double precision r1,r2
r1 = 1.00000000e10
r2 = 0.00000001e10
print *, r1 == r1 + r2
end program precision
