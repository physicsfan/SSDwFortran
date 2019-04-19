program str_slice
! This program investigates string slicing
implicit none

character(27) string
string = 'a stitch in time saves nine'
print *, string(13:23), string(:12), string(24:)

end program str_slice
