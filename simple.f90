! file: simple.f90
! This short program illustrates the basic features of Fortran 90.
program simple

  complex c1, c2
  logical areEqual
  areEqual = .false.

  c1 = cmplx(1.0, 2.0)      ! 1.0 + 2.0 i
  c2 = cmplx(-1.0, -2.0)    ! -1.0 - 2.0 i
  areEqual = ( c1 == c2 )
  print *, 'Are the complex numbers equal? ', areEqual
end program simple
