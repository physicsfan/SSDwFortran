program Slicing_Strings
! This program uses slicing to rearrange a string of text
implicit none

character(30) :: string
string = 'a stitch in time saves nine'

print *, string(13:23),string(:12),string(24:)

end program Slicing_Strings
