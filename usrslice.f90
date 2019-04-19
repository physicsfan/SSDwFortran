program UserSlice
! This program practices the technique of slicing user types
implicit none

type Source
   real :: value
end type Source

type Sink
   real :: value
end type Sink

type (Source) :: src(50)
type (Sink) :: snk(100)

call random_number(src%value)

snk(:50)%value = src%value

print *, snk(1:50)

end program UserSlice
