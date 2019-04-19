program UserSlice
use UserSliceMod
implicit none

type (Source) :: src(50)
type (Sink) :: snk(100)

call random_number(src%value)

snk(:50)%value = src%value

print *, snk(:50)

end program UserSlice

!*************************************************************
module UserSliceMod
implicit none
save
private
public Source, Sink

type Source
   real :: value
end type Source

type Sink
   real :: value
end type Sink


end module UserSliceMod
