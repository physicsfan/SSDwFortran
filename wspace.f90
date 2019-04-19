! This program investigates some simple properties
! of string manipulation.
program wspace
implicit none

character(32) :: line
line = 'The quick brown fox'
print *, 'The length with whitespace is ', len(line)
print *, 'The length without whitespace', len_trim(line)
print *, 'The line with whitespace is "', line, '"'
print *, 'The line is "', trim(line), '"'

end program wspace
